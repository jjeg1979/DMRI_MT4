//+------------------------------------------------------------------+
//| VotingEnsamble.mqh |
//| Juan José Expósito González |
//| VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
///+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS |
//+------------------------------------------------------------------+
#include <Toolbox/VAC_Toolbox.mqh>
//+------------------------------------------------------------------+
enum tipo_ensamble{
   NO_ENSEMBLE=-1,
   ENSEMBLE_VOTING=0,
};

sinput string voting_ensemble = "===================== ENSAMBLADO POR VOTO =====================";
input tipo_ensamble ensemble  = ENSEMBLE_VOTING;
input int min_votos = 0;


int RuleBuy_5() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.61) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.741))  
        return 1; 
     return 0; }

int RuleBuy_11() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.059) && (ibs(1+17) >= 0.604) && (ibs(1+11) >= 0.26))  
        return 1; 
     return 0; }

int RuleBuy_21() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.377) && (ibs(1+7) <= 0.523) && (ibs(1+2) <= 0.785))  
        return 1; 
     return 0; }

int RuleBuy_22() {
    if ((ibs(1+5) >= 0.559) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 51.852) && (ibs(1+7) <= 0.467))  
        return 1; 
     return 0; }

int RuleBuy_23() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.65) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.889) && (iATR(NULL, 0, 7, 1) >= 0.819))  
        return 1; 
     return 0; }

int RuleBuy_27() {
    if ((ibs(1+2) <= 0.636) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 85.06) && (iATR(NULL, 0, 200, 1) >= 0.684) && (iATR(NULL, 0, 100, 1) <= 0.724))  
        return 1; 
     return 0; }

int RuleBuy_31() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.478) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.144) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 15.526) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.01))  
        return 1; 
     return 0; }

int RuleBuy_37() {
    if ((iATR(NULL, 0, 100, 1) >= 0.927) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.748) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.565))  
        return 1; 
     return 0; }

int RuleBuy_38() {
    if ((SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.985) && (SafeDivide(High[1], Close[1]) <= 1.004) && (ibs(1+13) <= 0.6))  
        return 1; 
     return 0; }

int RuleBuy_40() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.532) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.456) && (iDeMarker(NULL, 0, 14, 1) >= 0.322))  
        return 1; 
     return 0; }

int RuleBuy_41() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.504) && (ibs(1+7) >= 0.368) && (ibs(1+11) >= 0.393) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.473))  
        return 1; 
     return 0; }

tipo_orden ExecuteEnsembleBuyRules() {
    int pool_result = 0;
    pool_result += RuleBuy_5();
    pool_result += RuleBuy_11();
    pool_result += RuleBuy_21();
    pool_result += RuleBuy_22();
    pool_result += RuleBuy_23();
    pool_result += RuleBuy_27();
    pool_result += RuleBuy_31();
    pool_result += RuleBuy_37();
    pool_result += RuleBuy_38();
    pool_result += RuleBuy_40();
    pool_result += RuleBuy_41();

    if (pool_result >= min_votos) {
        return COMPRA;
    }
    return FLAT;
}


//Dummy code
tipo_orden ExecuteBuyRule(int ruleNumber) { return FLAT; }
tipo_orden ExecuteBuyRules() { return FLAT; }
tipo_orden ExecuteSellRule(int ruleNumber) { return FLAT; }
tipo_orden ExecuteSellRules() { return FLAT; }
tipo_orden ExecuteEnsembleSellRules() { return FLAT; }