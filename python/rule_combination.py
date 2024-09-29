from typing import Literal


def generate_mql4_rules_combination(
    input_file: str, output_file: str, direction: Literal["UP", "DOWN"]
) -> bool:
    """
    Genera un archivo .mqh con funciones MQL4 para cada regla seleccionada,
    incluyendo funciones auxiliares y parámetros de entrada para optimización.

    Args:
    input_file (str): Nombre del archivo que contiene las reglas seleccionadas.
    output_file (str): Nombre del archivo .mqh de salida.
    direction (Literal['UP', 'DOWN']): Dirección de las reglas (compra o venta).

    Returns:
    bool: True si el proceso se completó con éxito, False en caso contrario.
    """
    try:
        with open(input_file, "r", encoding="utf-8") as infile, open(
            output_file, "w", encoding="utf-8"
        ) as outfile:
            rules = infile.readlines()

            # Escribir encabezado del archivo
            outfile.write(
                "//+------------------------------------------------------------------+\n"
            )
            outfile.write(
                "//|                                                SelectedRules.mqh |\n"
            )
            outfile.write(
                "//|                                      Juan José Expósito González |\n"
            )
            outfile.write(
                "//|                                          VTALGO ACADEMY (C) 2024 |\n"
            )
            outfile.write(
                "//+------------------------------------------------------------------+\n\n"
            )

            # Añadir funciones auxiliares
            outfile.write(
                "///+------------------------------------------------------------------+\n"
            )
            outfile.write(
                "//| IMPORTAMOS LIBRERÍAS                                             |\n"
            )
            outfile.write(
                "//+------------------------------------------------------------------+\n"
            )
            outfile.write("#include <Toolbox/VAC_Toolbox.mqh>\n")
            outfile.write(
                "//+------------------------------------------------------------------+\n\n"
            )

            # Añadir parámetros de entrada
            valid_rule_count = sum(1 for rule in rules if rule.strip())
            outfile.write(
                'sinput string rule_combiner = "===================== COMBINACIÓN DE REGLAS =====================";\n'
            )
            for i in range(valid_rule_count):
                outfile.write(
                    f"input int Rule{i} = 1; // Activar/Desactivar Regla {i} (1 = Activada, 0 = Desactivada)\n"
                )
            outfile.write("\n")

            # Generar funciones para cada regla
            valid_rule_count = 0
            for i, rule in enumerate(rules):
                rule = rule.strip()
                if not rule:  # Saltar reglas vacías
                    print(f"Advertencia: Regla {i+1} está vacía. Saltando.")
                    continue

                function_name = (
                    f"Rule{'Buy' if direction == 'UP' else 'Sell'}_{valid_rule_count}"
                )

                outfile.write(f"tipo_orden {function_name}() {{\n")
                outfile.write(f"    if ({rule})  \n")
                outfile.write(
                    f"        return {'COMPRA' if direction == 'UP' else 'VENTA'}; \n"
                )
                outfile.write("     return FLAT; }\n")

                valid_rule_count += 1

            # Generar función para ejecutar combinación de reglas
            outfile.write(
                f"tipo_orden Execute{'Buy' if direction == 'UP' else 'Sell'}Rules() {{\n"
            )
            outfile.write("    tipo_orden result = FLAT;\n")
            for i in range(valid_rule_count):
                outfile.write(f"    if (Rule{i} == 1) {{\n")
                outfile.write(
                    f"       if ((result == {'COMPRA' if direction == 'UP' else 'VENTA'}) || (Rule{'Buy' if direction == 'UP' else 'Sell'}_{i}() == {'COMPRA' if direction == 'UP' else 'VENTA'}))\n"
                )
                outfile.write(
                    f"           return {'COMPRA' if direction == 'UP' else 'VENTA'};\n"
                )
                outfile.write("    }\n")
            outfile.write("    return result;\n")
            outfile.write("}\n")

            outfile.write("//Dummy code\n")
            outfile.write(
                f"tipo_orden Execute{'Buy' if direction == 'UP' else 'Sell'}Rule(int ruleNumber) {{ return FLAT; }}\n"
            )
            outfile.write(
                f"tipo_orden Execute{'Sell' if direction == 'UP' else 'Buy'}Rule(int ruleNumber) {{ return FLAT; }}\n"
            )
            outfile.write(
                f"tipo_orden Execute{'Sell' if direction == 'UP' else 'Buy'}Rules() {{ return FLAT; }}"
            )

        print(f"Archivo MQL4 generado y guardado en {output_file}")
        print(f"Total de reglas válidas procesadas: {valid_rule_count}")
        return True

    except IOError as e:
        print(f"Error al procesar los archivos: {e}")
        return False


def generar_opti_comb(num_reglas: int, max_number_rules: int = 62) -> str:
    """
    Genrates the OPT_SET.set file for the optimisation of the combination of rules.
    """
    comb_str: str = ""
    if num_reglas > max_number_rules:
        for i in range(max_number_rules):
            comb_str += (
                f"Rule{i}=1\nRule{i},F=1\nRule{i},1=0\nRule{i},2=1\nRule{i},3=1\n"
            )
        for i in range(max_number_rules, num_reglas):
            comb_str += (
                f"Rule{i}=0\nRule{i},F=0\nRule{i},1=0\nRule{i},2=1\nRule{i},3=1\n"
            )

    else:
        for i in range(num_reglas):
            comb_str += (
                f"Rule{i}=1\nRule{i},F=1\nRule{i},1=0\nRule{i},2=1\nRule{i},3=1\n"
            )
    return comb_str


def generate_combi_file(output_file: str, rules_comb: str) -> None:
    common_text = f"""sz==============================
Lots=0.10000000
Lots,F=0
Lots,1=0.10000000
Lots,2=0.00000000
Lots,3=0.00000000
MagicNumber=10
MagicNumber,F=0
MagicNumber,1=-1
MagicNumber,2=0
MagicNumber,3=0
Comentario=VAC_RULES_TESTER_PLANTILLA
MaxOrdenesAbiertas=1
MaxOrdenesAbiertas,F=0
MaxOrdenesAbiertas,1=1
MaxOrdenesAbiertas,2=0
MaxOrdenesAbiertas,3=0
MaxSpread=3.00000000
MaxSpread,F=0
MaxSpread,1=2.00000000
MaxSpread,2=0.00000000
MaxSpread,3=0.00000000
MaxSlippage=1.00000000
MaxSlippage,F=0
MaxSlippage,1=1.00000000
MaxSlippage,2=0.00000000
MaxSlippage,3=0.00000000
CadaVela=1
CadaVela,F=0
CadaVela,1=0
CadaVela,2=1
CadaVela,3=1
sext001===================> MODO DE SALIDA <=========================
exit_mode=1
exit_mode,F=0
exit_mode,1=0
exit_mode,2=0
exit_mode,3=0
N_Candles=1
N_Candles,F=0
N_Candles,1=1
N_Candles,2=0
N_Candles,3=0
testt001===================> MODO DE TESTEO <=========================
test_mode=1
test_mode,F=0
test_mode,1=0
test_mode,2=0
test_mode,3=0
rule_combiner====================== COMBINACIÓN DE REGLAS =====================
{rules_comb}srule_tester=================> TEST RULES ONE BY ONE <================
test_rule=1
test_rule,F=0
test_rule,1=1
test_rule,2=1
test_rule,3=356
FO_OPTIM=================================> FUNCIONES OBJETIVO <================================
FO_CODES = "0: NP. 1: NPxPF^2. 2: NP^2xPF. 3: SQN, 4: K-Ratio, 5: Sortino, 6: Sharpe, 7: Stagnation"
FO=1
FO,F=0
FO,1=0
FO,2=0
FO,3=0"""
    with open(output_file, "w", encoding="utf-8") as file:
        file.write(common_text)
    print(f"Archivo generado: {output_file}")
