import json
from typing import Dict
import yaml


def load_config(file_content: str, file_type: str = "json") -> Dict[str, str]:
    """
    Carga la configuración desde un contenido de archivo JSON o YAML.

    Args:
        file_content (str): Contenido del archivo de configuración.
        file_type (str): Tipo de archivo ('yaml' o 'json').

    Returns:
        dict: Diccionario con la configuración cargada.
    """
    with open(file_content, "r", encoding="utf-8") as file:
        data = file.read()
    try:
        if file_type == "yaml":
            return yaml.safe_load(data)
        elif file_type == "json":
            return json.loads(data)
        else:
            raise ValueError("Tipo de archivo no soportado. Use 'yaml' o 'json'.")
    except Exception as e:
        print(f"Error al cargar la configuración: {str(e)}")
        return {}
