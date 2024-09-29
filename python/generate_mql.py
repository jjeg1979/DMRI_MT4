import re
from typing import List, Literal


def balance_parentheses(condition: str) -> str:
    """
    Balancea los paréntesis en una condición dada.

    Args:
        condition (str): La condición a balancear.

    Returns:
        str: La condición con paréntesis balanceados.
    """
    open_count = condition.count("(")
    close_count = condition.count(")")
    if open_count > close_count:
        condition += ")" * (open_count - close_count)
    return condition


def fix_safe_divide(condition: str) -> str:
    """
    Corrige las llamadas a SafeDivide en una condición dada.

    Args:
        condition (str): La condición a corregir.

    Returns:
        str: La condición con las llamadas a SafeDivide corregidas.
    """
    safe_divide_calls = re.findall(r"SafeDivide\((.*?)\)", condition)

    for call in safe_divide_calls:
        comma_count = 0
        nested_level = 0
        for char in call:
            if char == "(":
                nested_level += 1
            elif char == ")":
                nested_level -= 1
            elif char == "," and nested_level == 0:
                comma_count += 1

        if comma_count > 1:
            args = re.split(r",\s*(?=[^()]*(?:\(|$))", call)
            corrected_call = f"SafeDivide({args[0]}, {args[1]})"
            condition = condition.replace(f"SafeDivide({call})", corrected_call)

    return condition


def generate_mql4_rules(
    processed_rules: List[str], direction: Literal["UP", "DOWN", "BOTH"]
) -> str:
    """
    Genera código MQL4 a partir de las reglas procesadas.

    Args:
        processed_rules (List[str]): Lista de reglas procesadas.
        direction (Literal['UP', 'DOWN']): Dirección de las reglas (compra o venta).

    Returns:
        str: Código MQL4 generado.
    """
    if direction not in ["UP", "DOWN", "BOTH"]:
        raise ValueError("La dirección debe ser 'UP', 'DOWN' o 'BOTH'.")
    if direction == "UP":
        returned_value = "COMPRA"
    elif direction == "DOWN":
        returned_value = "VENTA"
    else:
        returned_value = "FLAT"
    mql4_code = """
//+------------------------------------------------------------------+
//|                                                 rules_tester.mq4 |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict

//+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+
#include <Toolbox/VAC_Toolbox.mqh>

//+------------------------------------------------------------------+

"""

    for i, rule_condition in enumerate(processed_rules, 1):
        function_name = f"Rule{'Buy' if direction == 'UP' else 'Sell'}_{i}"
        rule_condition = fix_safe_divide(rule_condition)
        rule_condition = balance_parentheses(rule_condition)

        mql4_code += f"""
tipo_orden {function_name}() {{
    if ({rule_condition})  return {returned_value};\n
    return FLAT;
}}
"""

    mql4_code += f"""
// Función maestra para ejecutar las reglas
tipo_orden Execute{'Buy' if direction == 'UP' else 'Sell'}Rule(int ruleNumber) {{
    switch(ruleNumber) {{
"""

    for i in range(1, len(processed_rules) + 1):
        mql4_code += f"        case {i}: return Rule{'Buy' if direction == 'UP' else 'Sell'}_{i}();\n"

    mql4_code += """
        default: return FLAT;
    }
}
"""

    mql4_code += f"""
// Dummy code
tipo_orden Execute{'Buy' if direction == 'UP' else 'Sell'}Rules(){{ return FLAT; }}
tipo_orden Execute{'Sell' if direction == 'UP' else 'Buy'}Rules(){{ return FLAT; }}
tipo_orden Execute{'Sell' if direction == 'UP' else 'Buy'}Rule(int ruleNumber) {{ return FLAT; }}
  """

    return mql4_code


def save_mql4_code(
    mql4_code: str,
    direction: Literal["UP", "DOWN"],
    output_dir: str = "",
    output_file: str = "",
) -> str:
    """
    Guarda el código MQL4 generado en un archivo.

    Args:
        mql4_code (str): Código MQL4 generado.
        direction (Literal['UP', 'DOWN']): Dirección de las reglas (compra o venta).
        output_file (str, optional): Nombre del archivo de salida. Si es None, se genera automáticamente.

    Returns:
        str: Nombre del archivo donde se guardó el código.
    """
    if output_file == "":
        output_file = (
            f"{output_dir}/TradingRules{'Buy' if direction == 'UP' else 'Sell'}.mqh"
        )

    with open(output_file, "w", encoding="utf-8") as file:
        file.write(mql4_code)

    return output_file
