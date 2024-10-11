# Importaciones de la librería estándar
import asyncio
from typing import List, Literal, Tuple

# Importaciones de librerías de terceros
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Importaciones de librerías propias del proyecto (no aplicable en este contexto)


class MarketData:
    """
    Clase para manejar y procesar los datos del mercado.
    """

    def __init__(self, asset_name: str, csv_separator: str = ","):
        """
        Inicializa la clase MarketData cargando los datos del activo.

        :param asset_name: Nombre del activo (e.g., 'USDJPY')
        """
        self.asset_name = asset_name
        self.csv_separator = csv_separator
        self.data = self.load_market_data()

    def load_market_data(self) -> pd.DataFrame:
        """
        Carga los datos de mercado desde un archivo CSV.

        :return: DataFrame con los datos de mercado.
        """
        try:
            data = pd.read_csv(f"{self.asset_name}_ohlcv.csv", sep=self.csv_separator)
            if "DateTime" in data.columns:
                data["DateTime"] = pd.to_datetime(data["DateTime"])
            else:
                data["DateTime"] = pd.to_datetime(data["Date"] + " " + data["Time"])
            data.set_index("DateTime", inplace=True)
            return data
        except FileNotFoundError as exc:
            raise FileNotFoundError(
                f"El archivo {self.asset_name}_ohlcv.csv no se encontró."
            ) from exc

    def calculate_n_bar_returns(self, n: int = 1) -> pd.Series:  # type: ignore
        """
        Calcula los retornos a n velas de la serie temporal.

        :param n: Número de velas para calcular el retorno.
        :return: Serie con los retornos calculados.
        """
        returns = self.data["Close"].pct_change(n).dropna()  # type: ignore
        returns.name = "Returns"
        return returns  # type: ignore


class StrategyEvaluator:
    """
    Clase para cargar y procesar los datos de las estrategias.
    """

    def __init__(self, csv_file: str, col_sep: str = ","):
        """
        Inicializa la clase StrategyEvaluator cargando los datos de las estrategias.

        :param csv_file: Nombre del archivo CSV con los resultados de los backtests.
        """
        self.csv_file = csv_file
        self.col_sep = col_sep
        self.strategies = self.load_strategy_data()

    def load_strategy_data(self) -> pd.DataFrame:
        """
        Carga los datos de las estrategias desde un archivo CSV.

        :return: DataFrame con los datos de las estrategias.
        """
        try:
            data = pd.read_csv(self.csv_file, sep=self.col_sep)
            return data
        except FileNotFoundError as exc:
            raise FileNotFoundError(
                f"El archivo {self.csv_file} no se encontró."
            ) from exc


class MonkeyTest:
    """
    Clase principal para ejecutar el Monkey Test en las estrategias.
    """

    def __init__(
        self,
        strategies: pd.DataFrame,
        market_returns: pd.Series,  # type: ignore
        n_sim: int = 1000,
        a_value: float = 2.0,
        mode: Literal["standard", "pctWwin"] = "standard",
    ):
        """
        Inicializa la clase MonkeyTest.

        :param strategies: DataFrame con los datos de las estrategias.
        :param market_returns: Serie con los retornos del mercado.
        :param n_sim: Número de simulaciones a ejecutar.
        :param a_value: Valor de 'A' para el criterio de aceptación.
        :param mode: Modo del test ('standard' o 'pctwin').
        """
        self.strategies = strategies
        self.market_returns = market_returns
        self.n_sim = n_sim
        self.a_value = a_value
        self.mode = mode.lower()
        self.results = []

    async def simulate_monkey(self, num_ops: int, pct_win: float = None) -> float:  # type: ignore
        """
        Simula el retorno de un mono seleccionando retornos aleatorios.

        :param num_ops: Número de operaciones a simular.
        :param pct_win: Porcentaje de acierto de la estrategia (opcional).
        :return: Retorno simulado por el mono.
        """
        if self.mode == "pctwin" and pct_win is not None:  # type: ignore
            # Modo 'pctwin': selecciona retornos positivos o negativos basado en pct_win
            positive_returns = self.market_returns[self.market_returns > 0]  # type: ignore
            negative_returns = self.market_returns[self.market_returns <= 0]  # type: ignore
            num_wins = int(num_ops * pct_win / 100)
            num_losses = num_ops - num_wins
            samples = np.concatenate(
                (
                    np.random.choice(positive_returns, num_wins, replace=False),  # type: ignore
                    np.random.choice(negative_returns, num_losses, replace=False),  # type: ignore
                )
            )
        else:
            # Modo 'standard': selecciona retornos aleatorios sin reemplazo
            samples = np.random.choice(self.market_returns, num_ops, replace=False)  # type: ignore
        return np.sum(samples)

    async def run_simulation(
        self,
        strategy: pd.Series,  # type: ignore
    ) -> Tuple[str, float, float, float, float]:
        """
        Ejecuta el Monkey Test para una estrategia específica.

        :param strategy: Serie con los datos de la estrategia.
        :return: Tupla con los resultados de la simulación.
        """
        num_ops = int(strategy["Num_Ops"])  # type: ignore
        pct_win = strategy["PctWin"] if "PctWin" in strategy else None  # type: ignore
        benefit = strategy["Beneficio"]  # type: ignore
        bt_id = strategy["BT_id"]  # type: ignore

        # Ejecutar simulaciones de monos
        monkey_returns = []
        tasks = [self.simulate_monkey(num_ops, pct_win) for _ in range(self.n_sim)]  # type: ignore
        monkey_returns = await asyncio.gather(*tasks)
        monkey_returns = np.array(monkey_returns)

        # Calcular estadísticas
        mean_return = monkey_returns.mean()
        std_return = monkey_returns.std()
        threshold = mean_return + self.a_value * std_return

        # Determinar si la estrategia pasa el test
        passes_test = benefit > threshold  # type: ignore

        # Almacenar resultados
        self.results.append(
            {
                "BT_id": bt_id,
                "Benefit": benefit,
                "Mean_Monkey_Return": mean_return,
                "Std_Monkey_Return": std_return,
                "Threshold": threshold,
                "Passes_Test": passes_test,
            }
        )

        return bt_id, benefit, mean_return, std_return, threshold  # type: ignore

    def run(self):
        """
        Ejecuta el Monkey Test para todas las estrategias.
        """
        loop = asyncio.get_event_loop()
        tasks = [
            self.run_simulation(strategy)  # type: ignore
            for _, strategy in self.strategies.iterrows()  # type: ignore
        ]
        loop.run_until_complete(asyncio.gather(*tasks))
        loop.close()

    def get_passing_strategies(self) -> List[str]:
        """
        Obtiene los BT_id de las estrategias que pasan el Monkey Test.

        :return: Lista de BT_id de las estrategias que pasan el test.
        """
        passing = [result["BT_id"] for result in self.results if result["Passes_Test"]]  # type: ignore
        return passing  # type: ignore

    def get_number_of_passing_strategies(self) -> int:
        """
        Obtiene el número de estrategias que pasan el Monkey Test.

        :return: Número de estrategias que pasan el test.
        """
        return len(self.get_passing_strategies())

    def visualize_results(self):
        """
        Genera la visualización de los resultados.
        """
        # Convertir resultados a DataFrame
        results_df = pd.DataFrame(self.results)

        # Categorizar estrategias según el criterio
        conditions = [
            (results_df["Benefit"] < results_df["Mean_Monkey_Return"]),
            (results_df["Benefit"] >= results_df["Mean_Monkey_Return"])
            & (results_df["Benefit"] < results_df["Threshold"]),
            (results_df["Benefit"] >= results_df["Threshold"]),
        ]
        choices = ["Baja", "Media", "Alta"]
        results_df["Category"] = np.select(conditions, choices)

        # Mapear categorías a colores
        color_map = {"Baja": "red", "Media": "yellow", "Alta": "green"}
        colors = results_df["Category"].map(color_map)

        # Crear el gráfico
        plt.figure(figsize=(12, 6))
        plt.scatter(results_df["BT_id"], results_df["Benefit"], c=colors)  # type: ignore
        plt.axhline(
            y=results_df["Mean_Monkey_Return"].mean(),
            color="red",
            linestyle="--",
            label="Retorno Medio Monos",
        )
        plt.axhline(
            y=(
                results_df["Mean_Monkey_Return"]
                + self.a_value * results_df["Std_Monkey_Return"]
            ).mean(),
            color="green",
            linestyle="--",
            label=f"Umbral ({self.a_value}σ)",
        )
        plt.xlabel("BT_id")
        plt.ylabel("Beneficio")
        plt.title("Resultados del Monkey Test por Estrategia")
        plt.legend()
        plt.show()


def parse_strategy_number(strategy: str) -> int:
    """
    Parsea el número de la estrategia a partir del nombre.

    :param strategy: Nombre de la estrategia.
    :return: Número de la estrategia.
    """
    return int(strategy.split("_")[-1])


# Ejecución del código
def execute_monkey_test(
    n_sim: int,
    a_value: float,
    asset_name: str,
    strategies_file: str,
    mode: Literal["standard", "pctwin", "both"],
    csv_separator: str = ",",
) -> List[int]:
    # Cargar datos del mercado

    market_data = MarketData(asset_name, csv_separator)
    market_returns = market_data.calculate_n_bar_returns(n=1)  # type: ignore

    # Cargar datos de las estrategias

    evaluator = StrategyEvaluator(strategies_file, col_sep=csv_separator)
    strategies = evaluator.strategies

    # Ejecutar Monkey Test
    monkey_test = MonkeyTest(
        strategies=strategies,
        market_returns=market_returns,
        n_sim=n_sim,
        a_value=a_value,
        mode=mode,  # type: ignore
    )
    monkey_test.run()

    # Obtener estrategias que pasan el test
    passing_strategies = monkey_test.get_passing_strategies()
    print("Estrategias que pasan el Monkey Test:", passing_strategies)

    # Visualizar resultados
    monkey_test.visualize_results()

    return [parse_strategy_number(strategy) for strategy in passing_strategies]
