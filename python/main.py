from typing import Final
from rule_combination import (
    generar_opti_comb,
    generate_combi_file,
    generate_mql4_rules_combination,
)

from generate_mql import generate_mql4_rules, save_mql4_code
from rules_selection import extract_text_rule_from, find_valid_rules, select_rules
from monkey_test import execute_monkey_test
from rules_ensemble import process_ensemble
from utils import get_all_rules, transform_rules

# DEFINICIÓN DE VARIABLES PARA EL USUARIO
DIRECTION: Final = "UP"
ASSET: Final = "USDCAD"
CSV_SEPARATOR_BT_FILE: Final = ";"
CSV_SEPARATOR_MT: Final = ","

if __name__ == "__main__":
    dict_rules = get_all_rules(
        "payload/ReglasMasivas.txt", DIRECTION, mostrar_reglas=False
    )
    final_rules, metrics = transform_rules(
        dict_rules,
        f"payload/reglas_extraidas_{'UP' if DIRECTION == 'UP' else 'DOWN'}.txt",
    )
    mql4_code = generate_mql4_rules(
        final_rules, DIRECTION
    )  # Asumimos que todas las reglas son para compra

    output_file = save_mql4_code(mql4_code, DIRECTION, "payload")
    print(f"Código MQL4 generado y guardado en {output_file}")

    try:
        filtered_rules = find_valid_rules(
            "payload/all_backtest_results.csv", csv_separator=CSV_SEPARATOR_BT_FILE
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
            f"payload/{ASSET}",
            "payload/all_backtest_results.csv",
            "pctwin",
            CSV_SEPARATOR_MT,
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
