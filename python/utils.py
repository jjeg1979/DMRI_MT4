from typing import Literal, Final, Dict, List, Tuple, Union
import pandas as pd

from rules_extractor import extract_rules, save_rules_to_file
from load_rules_dict import load_config
from rules_transformation import process_rule


RULES_DICT: Final = "rules_dict.json"


def get_all_rules(
    filename: str,
    target: Literal["UP", "DOWN"],
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
