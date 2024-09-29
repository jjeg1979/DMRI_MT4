import io
import re
from typing import List, Literal


def extract_rules(filename: str, target: Literal["UP", "DOWN"]) -> List[str]:
    """
    Extrae reglas específicas de un archivo de texto.

    Esta función lee un archivo de texto, busca reglas JRIP y extrae aquellas
    que coinciden con el target especificado (UP o DOWN).

    Args:
        filename (str): El nombre del archivo a leer.
        target (Literal['UP', 'DOWN']): El tipo de reglas a extraer ('UP' o 'DOWN').

    Returns:
        List[str]: Una lista de reglas que coinciden con el target especificado.

    Raises:
        ValueError: Si el target no es 'UP' o 'DOWN'.
        FileNotFoundError: Si el archivo especificado no se encuentra.
        Exception: Para cualquier otro error inesperado.
    """
    # Verificar que el target sea válido
    if target not in ["UP", "DOWN"]:
        raise ValueError("El target debe ser 'UP' o 'DOWN'")

    # Leer el archivo
    with open(filename, "r", encoding="utf-8") as file:
        content: str = file.read()  # type: ignore

    # Definir el patrón para extraer las reglas
    pattern = r"JRIP rules:\n===========\n(.*?)\n\nNumber of Rules :"

    # Encontrar todas las coincidencias
    matches = re.findall(pattern, content, re.DOTALL)

    # Lista para almacenar todas las reglas
    all_rules: List[str] = []

    # Procesar cada coincidencia
    for match in matches:
        # Dividir las reglas individuales
        rules = match.strip().split("\n")
        # Añadir las reglas a la lista, eliminando líneas vacías y filtrando por target
        all_rules.extend(
            [
                rule.strip()
                for rule in rules
                if rule.strip() and f"LABEL={target}" in rule
            ]
        )

    return all_rules


def save_rules_to_file(
    rules: List[str], output_filename: str, include_rule_no: bool = False
) -> None:
    """
    Guarda las reglas extraídas en un archivo y lo guarda en un archivo

    Args:
        rules (List[str]): Lista de reglas a guardar.
        output_filename (str): Nombre del archivo de salida.
    """
    # Crear un objeto StringIO para escribir las reglas
    output = io.StringIO()
    for i, rule in enumerate(rules, 1):
        if include_rule_no:
            output.write(f"{i}. {rule}\n")
        output.write(f"{rule}\n")

    # Guardar el archivo
    with open(output_filename, "w", encoding="utf-8") as f:
        f.write(output.getvalue())
