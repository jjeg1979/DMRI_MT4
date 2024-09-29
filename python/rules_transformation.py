import re
from typing import Dict, List, Tuple


def convert_condition(condition: str, dictionary: Dict[str, str]) -> str:
    """
    Convierte una condición individual usando el diccionario proporcionado.

    Args:
        condition (str): La condición a convertir.
        dictionary (Dict[str, str]): El diccionario para la conversión.

    Returns:
        str: La condición convertida.
    """
    parts = condition.split()
    if len(parts) == 3:
        variable, operator, value = parts
        if variable in dictionary:
            return f"({dictionary[variable]} {operator} {value})"
    return condition


def process_rule(
    rule: str, dictionary: Dict[str, str]
) -> Tuple[str, str, float, float, float]:
    """
    Procesa una regla completa, separando la regla de sus métricas y convirtiendo las condiciones.

    Args:
        rule (str): La regla completa a procesar.
        dictionary (Dict[str, str]): El diccionario para la conversión de condiciones.

    Returns:
        Tuple[str, str, float, float, float]: Una tupla que contiene la regla procesada, la etiqueta y las métricas detalladas.
    """
    # Separar la regla de sus métricas
    rule_part, metrics_part = rule.split("=>")

    # Procesar la parte de la regla
    conditions = re.findall(r"\((.*?)\)", rule_part)
    processed_conditions = [convert_condition(cond, dictionary) for cond in conditions]
    processed_rule = " && ".join(processed_conditions)

    # Procesar la parte de las métricas
    label_part, metrics = metrics_part.split("(")
    label = label_part.split("=")[1].strip()
    a, b = map(float, metrics.strip(")").split("/"))

    instancias_cubiertas = a
    instancias_misclasificadas = b
    instancias_correctas = a - b

    return (
        processed_rule,
        label,
        instancias_cubiertas,
        instancias_misclasificadas,
        instancias_correctas,
    )


def save_rules_to_file(rules: List[str], file_path: str) -> None:
    """
    Guarda las reglas procesadas en un archivo de texto.

    Args:
        rules (List[str]): Lista de reglas procesadas para guardar.
        file_path (str): Ruta del archivo donde se guardarán las reglas.
    """
    with open(file_path, "w", encoding="utf-8") as f:
        for i, rule in enumerate(rules, 1):
            f.write(f"Rule_{i}: {rule}\n")
    print(f"Reglas guardadas en {file_path}")
