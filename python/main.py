from typing import Literal, Final, Dict, List, Tuple, Union
import pandas as pd
from rule_combination import (
    generar_opti_comb,
    generate_combi_file,
    generate_mql4_rules_combination,
)
from rules_extractor import extract_rules, save_rules_to_file
from load_rules_dict import load_config
from rules_transformation import process_rule
from generate_mql import generate_mql4_rules, save_mql4_code
from rules_selection import extract_text_rule_from, find_valid_rules, select_rules
from monkey_test import execute_monkey_test
from rules_ensemble import process_ensemble


RULES_DICT: Final = "rules_dict.json"
DIRECTION: Final = "UP"


def get_all_rules(
    filename: str,
    target: Literal["UP", "DOWN"] = DIRECTION,
    output_dir: str = "payload/",
    mostrar_reglas: bool = False,
) -> Dict[str, str]:
    """
    Función principal para demostrar el uso de extract_rules y save_rules_to_file.
    """
    output_filename = f"{output_dir}reglas_extraidas_{target}.txt"
    try:
        extracted_rules = extract_rules(filename, target)

        if mostrar_reglas:
            print(f"Reglas extraídas para LABEL={target}:")
            for i, rule in enumerate(extracted_rules, 1):
                print(f"{i}. {rule}")

            print(f"\nTotal de reglas extraídas: {len(extracted_rules)}")

        # Guardar las reglas extraídas
        save_rules_to_file(extracted_rules, output_filename)
        total_rules = len(extracted_rules)
        print(f"\nLas {total_rules} reglas han sido guardadas en '{output_filename}'.")

    except FileNotFoundError:
        print(f"Error: No se pudo encontrar el archivo '{filename}'")
    except ValueError as e:
        print(f"Error: {str(e)}")
    except Exception as e:
        print(f"Ocurrió un error inesperado: {str(e)}")

    # Cargar el diccionario de reglas
    rules_dict = load_config(RULES_DICT)
    print(
        f"Número total de características (features) en el diccionario: {len(rules_dict)}"
    )

    return rules_dict


def transform_rules(
    dictionary: Dict[str, str], raw_rules: str
) -> Tuple[List[str], List[Dict[str, Union[str, int]]]]:
    """
    Función principal que ejecuta el proceso de conversión de reglas WEKA a MQL4.
    """
    # Leer el archivo de reglas
    with open(raw_rules, "r", encoding="utf-8") as f:
        rules = f.readlines()

    # Procesar cada regla
    processed_rules: List[str] = []
    metrics_data: List[Dict[str, str | int]] = []

    for i, rule in enumerate(rules, 1):
        (
            processed_rule,
            label,
            instancias_cubiertas,
            instancias_misclasificadas,
            instancias_correctas,
        ) = process_rule(rule.strip(), dictionary)
        processed_rules.append(processed_rule)
        metrics_data.append(
            {
                "Rule_ID": f"Rule_{i}",
                "Label": label,
                "instancias_cubiertas": int(instancias_cubiertas),
                "instancias_misclasificadas": int(instancias_misclasificadas),
                "instancias_correctas": int(instancias_correctas),
            }
        )

    # Crear DataFrame con las métricas
    df_metrics = pd.DataFrame(metrics_data)

    # Imprimir las reglas procesadas y el DataFrame de métricas
    print("Reglas procesadas:")
    for i, rule in enumerate(processed_rules, 1):
        print(f"Rule_{i}: {rule}")

    print("\nDataFrame de métricas:")
    print(df_metrics)

    # Guardar las reglas procesadas en un archivo
    save_rules_to_file(processed_rules, "payload/processed_rules.txt")

    # Guardar el DataFrame de métricas en un archivo CSV
    df_metrics.to_csv("payload/metrics.csv", index=False)
    print("Métricas guardadas en payload/metrics.csv")
    return processed_rules, metrics_data


if __name__ == "__main__":
    dict_rules = get_all_rules(
        "payload/ReglasMasivas.txt", DIRECTION, mostrar_reglas=False
    )
    final_rules, metrics = transform_rules(
        dict_rules, "payload/reglas_extraidas_UP.txt"
    )
    mql4_code = generate_mql4_rules(
        final_rules, DIRECTION
    )  # Asumimos que todas las reglas son para compra

    output_file = save_mql4_code(mql4_code, DIRECTION, "payload")
    print(f"Código MQL4 generado y guardado en {output_file}")

    try:
        filtered_rules = find_valid_rules(
            "payload/all_backtest_results.csv", csv_separator=";"
        )

        rules_indices = [
            extract_text_rule_from(rule, "_test_rule_", "") for rule in filtered_rules
        ]

        success = select_rules(
            "payload/processed_rules.txt", "payload/SelectedRules.txt", rules_indices
        )

        if success:
            print("Proceso de selección de reglas válidas completado con éxito")
        else:
            print("Hubo un error en el proceso de selección de reglas")

        print(
            "================> GENERANDO ARCHIVO MQL PARA COMBINAR REGLAS <================"
        )
        success = generate_mql4_rules_combination(
            input_file="payload/SelectedRules.txt",
            output_file="payload/SelectedRules.mqh",
            direction=DIRECTION,
        )
        rules_comb = generar_opti_comb(len(rules_indices))
        generate_combi_file("payload/OPTI_COMBI.set", rules_comb)
        print("========================> PROCESO TERMINADO <========================")

        print("================> EJECUTANDO MONKEY TEST <================")
        passing_strategies = execute_monkey_test(
            1000,
            3.0,
            "payload/USDCAD",
            "payload/all_backtest_results.csv",
            "pctwin",
            ";",
        )
        print(
            f"Un total de {len(passing_strategies)} estrategias pasaron el Monkey Test"
        )
        print("================> MONKEY TEST FINALIZADO <================")

        print("\n")
        print("=======> ENSAMBLANDO REGLAS SELECCIONADAS <=======")
        process_ensemble(
            "payload/OPTIMIZED_RULES.set",
            "payload/SelectedRules.mqh",
            f"payload/Ensemble{'Buy' if DIRECTION == 'UP' else 'Sell'}Rules.mqh",
            DIRECTION,
        )
        print(
            "========================> ENSAMBLADO TERMINADO <========================"
        )

    except Exception as exc:
        print(f"Ocurrió un error inesperado {exc}")
