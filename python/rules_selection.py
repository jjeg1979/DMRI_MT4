import pandas as pd
from typing import List


def find_valid_rules(
    filename: str, pf_min: float = 1.8, num_ops_min: int = 150, pct_win_min: int = 60
) -> List[str]:
    df_back_results = pd.read_csv(filename)

    # Crear una nueva columna 'ID' con números consecutivos
    df_back_results["ID"] = range(1, len(df_back_results) + 1)

    # Guardamos los nombres de los archivos del backtest
    backtest_names: pd.DataFrame = df_back_results[["BT_id"]]

    # Filtrar por Profit Factor (PF) mayor o igual a 1.8
    pf_minimo = pf_min
    df_back_results_fil1 = df_back_results[df_back_results["PF"] >= pf_minimo]

    # Filtrar por número mínimo de operaciones (Num_Ops) mayor o igual a 150
    num_ops_minimo = num_ops_min
    df_back_results_fil2 = df_back_results_fil1[
        df_back_results_fil1["Num_Ops"] >= num_ops_minimo
    ]

    # Filtrar por porcentaje mínimo de ganadoras (PctWin) mayor o igual a 60%
    pctwin_minimo = pct_win_min
    df_filtrado_final = df_back_results_fil2[
        df_back_results_fil2["PctWin"] >= pctwin_minimo
    ]

    # Extraer los IDs de las filas filtradas como una lista de enteros
    ids_resultantes: List[int] = df_filtrado_final["ID"].tolist()

    # Unir los IDs como una cadena de texto separada por comas, pero sin comillas
    ids_txt = ",".join(map(str, ids_resultantes))

    print(
        f"Se han seleccionado un total de {len(ids_resultantes)} reglas que cumplen con los criterios establecidos"
    )
    print(f"Los IDs de las reglas seleccionadas son: {ids_txt}")

    return backtest_names.iloc[ids_resultantes]["BT_id"].values.tolist()  # type: ignore


def extract_text_rule_from(rule_name: str, left_text: str, right_text str) -> int:
    """
    Extrae el índice del identificador (nombre) de una regla

    Args:
        rule_name (str): Identificador de la regla
        left_text (str): Texto a la izquierda del índice
        right_text (str): Texto a la derecha del índice

    Returns:
        int: número índice correspondiente a "test_rule" en la optimización
    """
    if right_text == "":
        return int(rule_name.split(left_text)[-1])
    return int(rule_name.split(left_text)[-1].split(right_text)[0])


def select_rules(input_file: str, output_file: str, rule_indices: list[int]) -> bool:
    """
    Selecciona reglas específicas de un archivo de entrada y las escribe en un archivo de salida.

    Args:
    input_file (str): Nombre del archivo que contiene todas las reglas.
    output_file (str): Nombre del archivo donde se guardarán las reglas seleccionadas.
    rule_indices (list[int]): Lista de índices de reglas a seleccionar (comenzando desde 1).

    Returns:
    bool: True si el proceso se completó con éxito, False en caso contrario.
    """
    try:
        # Ordenar los índices de menor a mayor
        rule_indices.sort()

        with open(input_file, "r", encoding="utf-8") as infile, open(
            output_file, "w", encoding="utf-8"
        ) as outfile:
            rules = infile.readlines()

            for index in rule_indices:
                if 1 <= index <= len(rules):
                    # outfile.write(f"Rule_{index}: {rules[index-1]}")
                    rule = rules[index - 1].split(":")[-1]
                    outfile.write(f"{rule}")
                else:
                    print(f"Advertencia: El índice {index} está fuera de rango.")

        print(f"Reglas seleccionadas guardadas en {output_file}")
        return True

    except IOError as e:
        print(f"Error al procesar los archivos: {e}")
        return False
