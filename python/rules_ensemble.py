import re
from typing import List, Literal, Tuple, Dict


def read_mqh_file(
    file_content: str, direction: Literal["UP", "DOWN"]
) -> List[Tuple[str, str]]:
    """
    Lee el contenido del archivo .mqh y extrae las funciones de reglas de compra y venta.

    Args:
        file_content (str): Contenido del archivo .mqh
        direction (Literal["UP", "DOWN"]): Dirección de las reglas (COMPRA o VENTA)

    Returns:
        List[Tuple[str, str]]: Lista de tuplas (tipo_regla, contenido_regla)
    """
    pattern = r"(tipo_orden RuleBuy_\d+\(\).*?})"
    if direction == "DOWN":
        pattern = r"(tipo_orden RuleSell_\d+\(\).*?})"

    rules = re.findall(pattern, file_content, re.DOTALL)

    processed_rules: List[Tuple[str, str]] = []
    for rule in rules:
        match = re.search(
            r"RuleBuy_(\d+)" if direction == "UP" else r"RuleSell_(\d+)", rule
        )
        if match:
            # rule_number = match.group(1)
            processed_rules.append(("Buy" if direction == "UP" else "Sell", f"{rule}"))

    return processed_rules


def process(rule: str, rule_type: str) -> str:
    """
    Procesa una regla para que devuelva 1 o 0 en lugar de COMPRA/VENTA o FLAT.

    Args:
        rule (str): Contenido de la función de regla
        rule_type (str): Tipo de regla ('Buy' o 'Sell')

    Returns:
        str: Función de regla modificada
    """
    rule = rule.replace("tipo_orden", "int")
    if rule_type == "Buy":
        rule = rule.replace("return COMPRA;", "return 1;")
    elif rule_type == "Sell":
        rule = rule.replace("return VENTA;", "return 1;")
    rule = rule.replace("return FLAT;", "return 0;")
    return rule


def open_file(file_path: str, encoding: str = "utf-8") -> str:
    """
    Abre un archivo y devuelve su contenido.

    Args:
        file_path (str): Ruta del archivo a abrir

    Returns:
        str: Contenido del archivo
    """
    with open(file_path, "r", encoding=encoding) as file:
        return file.read()


def read_set_file(file_content: str) -> Dict[str, str]:
    """
    Lee el contenido del archivo .set y extrae los parámetros.

    Args:
        file_content (str): Contenido del archivo .set

    Returns:
        Dict[str, str]: Diccionario con los parámetros del archivo .set
    """
    params: Dict[str, str] = {}
    for line in file_content.split("\n"):
        line = line.strip()
        if "=" in line:
            parts = line.split("=", 1)
            if len(parts) == 2:
                key, value = parts
                params[key.strip()] = value.strip()
    return params


def process_rule(rule: str) -> str:
    """
    Procesa una regla para que sea de tipo int y devuelva 1 o 0.

    Args:
        rule (str): Contenido de la función de regla

    Returns:
        str: Función de regla modificada
    """
    # Cambiar el tipo de retorno a int
    rule = rule.replace("tipo_orden", "int")

    # Cambiar el valor de retorno a 1 o 0
    rule = rule.replace("return COMPRA;", "return 1;")
    rule = rule.replace("return VENTA;", "return 1;")
    rule = rule.replace("return FLAT;", "return 0;")

    return rule


def generate_output(selected_rules: List[Tuple[str, str]]) -> str:
    """
    Genera el contenido del archivo de salida.

    Args:
        selected_rules (List[Tuple[str, str]]): Lista de tuplas (tipo_regla, regla_procesada)

    Returns:
        str: Contenido del archivo de salida
    """
    header = """//+------------------------------------------------------------------+
//|                                                     Ensamble.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
///+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS |
//+------------------------------------------------------------------+
#include <Toolbox/VAC_Toolbox.mqh>
#include <Headers/VAC_Ensembles_header.mqh>
//+------------------------------------------------------------------+

"""

    # Procesar cada regla
    processed_rules = [process_rule(rule) for _, rule in selected_rules]
    rules = "\n\n".join(processed_rules)

    # Determine if we're dealing with Buy or Sell rules
    rule_type = "Buy" if "RuleBuy" in rules else "Sell"

    execute_ensemble = f"tipo_orden ExecuteEnsemble{rule_type}Rules() {{\n"
    execute_ensemble += "    int pool_result = 0;\n"

    for _, rule in selected_rules:
        rule_number = re.search(rf"Rule{rule_type}_(\d+)", rule)
        if rule_number:
            execute_ensemble += (
                f"    pool_result += Rule{rule_type}_{rule_number.group(1)}();\n"
            )

    execute_ensemble += (
        """
    if (pool_result >= min_votos) {
        return """
        + ("COMPRA" if rule_type == "Buy" else "VENTA")
        + """;
    }
    return FLAT;
}
"""
    )

    dummy_code = """
//Dummy code
tipo_orden ExecuteBuyRule(int ruleNumber) { return FLAT; }
tipo_orden ExecuteBuyRules() { return FLAT; }
tipo_orden ExecuteSellRule(int ruleNumber) { return FLAT; }
tipo_orden ExecuteSellRules() { return FLAT; }
"""

    if rule_type == "Buy":
        dummy_code += "tipo_orden ExecuteEnsembleSellRules() { return FLAT; }"
    elif rule_type == "Sell":
        dummy_code += "tipo_orden ExecuteEnsembleBuyRules() { return FLAT; }"

    return header + "\n\n" + rules + "\n\n" + execute_ensemble + "\n" + dummy_code


def save_to_file(content: str, rule_type: str, filename: str = "") -> None:
    """
    Guarda el contenido en un archivo .mqh con el nombre apropiado.

    Args:
        content (str): Contenido a guardar en el archivo
        rule_type (str): Tipo de reglas ('Buy' o 'Sell')
    """
    if filename == "":
        file_name = f"Ensemble{rule_type}Rules.mqh"
    else:
        file_name = filename
    with open(file_name, "w", encoding="utf-8") as file:
        file.write(content)
    print(f"Archivo guardado como: {file_name}")


def generate_ensemble(
    set_content: str, mqh_content: str, filename: str, direction: Literal["UP", "DOWN"]
) -> str:
    """
    Función principal que procesa los archivos, genera la salida y la guarda en un archivo.

    Args:
        set_content (str): Contenido del archivo .set
        mqh_content (str): Contenido del archivo .mqh

    Returns:
        str: Contenido del archivo de salida
    """
    set_params = read_set_file(set_content)
    mqh_rules = read_mqh_file(mqh_content, direction)
    selected_rules: List[Tuple[str, str]] = []
    rule_type = "Buy" if "RuleBuy" in mqh_content else "Sell"
    for _, rule in mqh_rules:
        rule_number = re.search(rf"Rule{rule_type}_(\d+)", rule)
        if rule_number:
            rule_index = rule_number.group(1)
            if set_params.get(f"Rule{rule_index}") == "1":
                selected_rules.append((rule_type, rule))

    output = generate_output(selected_rules)
    save_to_file(output, rule_type, filename)
    return output


def process_ensemble(
    set_file: str, mqh_file: str, filename: str, direction: Literal["UP", "DOWN"]
) -> None:
    """
    Procesa los archivos .set y .mqh para generar el archivo de salida.

    Args:
        set_file (str): Ruta del archivo .set
        mqh_file (str): Ruta del archivo .mqh
    """
    set_content = open_file(set_file, "ansi")
    mqh_content = open_file(mqh_file)
    generate_ensemble(set_content, mqh_content, filename, direction)
