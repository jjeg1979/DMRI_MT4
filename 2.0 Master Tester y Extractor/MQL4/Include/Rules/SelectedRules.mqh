//+------------------------------------------------------------------+
//|                                                SelectedRules.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

///+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+
#include <Toolbox/VAC_Toolbox.mqh>
//+------------------------------------------------------------------+

sinput string rule_combiner = "===================== COMBINACIÓN DE REGLAS =====================";
input int Rule0 = 1; // Activar/Desactivar Regla 0 (1 = Activada, 0 = Desactivada)
input int Rule1 = 1; // Activar/Desactivar Regla 1 (1 = Activada, 0 = Desactivada)
input int Rule2 = 1; // Activar/Desactivar Regla 2 (1 = Activada, 0 = Desactivada)
input int Rule3 = 1; // Activar/Desactivar Regla 3 (1 = Activada, 0 = Desactivada)
input int Rule4 = 1; // Activar/Desactivar Regla 4 (1 = Activada, 0 = Desactivada)
input int Rule5 = 1; // Activar/Desactivar Regla 5 (1 = Activada, 0 = Desactivada)
input int Rule6 = 1; // Activar/Desactivar Regla 6 (1 = Activada, 0 = Desactivada)
input int Rule7 = 1; // Activar/Desactivar Regla 7 (1 = Activada, 0 = Desactivada)
input int Rule8 = 1; // Activar/Desactivar Regla 8 (1 = Activada, 0 = Desactivada)
input int Rule9 = 1; // Activar/Desactivar Regla 9 (1 = Activada, 0 = Desactivada)
input int Rule10 = 1; // Activar/Desactivar Regla 10 (1 = Activada, 0 = Desactivada)
input int Rule11 = 1; // Activar/Desactivar Regla 11 (1 = Activada, 0 = Desactivada)
input int Rule12 = 1; // Activar/Desactivar Regla 12 (1 = Activada, 0 = Desactivada)
input int Rule13 = 1; // Activar/Desactivar Regla 13 (1 = Activada, 0 = Desactivada)
input int Rule14 = 1; // Activar/Desactivar Regla 14 (1 = Activada, 0 = Desactivada)
input int Rule15 = 1; // Activar/Desactivar Regla 15 (1 = Activada, 0 = Desactivada)
input int Rule16 = 1; // Activar/Desactivar Regla 16 (1 = Activada, 0 = Desactivada)
input int Rule17 = 1; // Activar/Desactivar Regla 17 (1 = Activada, 0 = Desactivada)
input int Rule18 = 1; // Activar/Desactivar Regla 18 (1 = Activada, 0 = Desactivada)
input int Rule19 = 1; // Activar/Desactivar Regla 19 (1 = Activada, 0 = Desactivada)
input int Rule20 = 1; // Activar/Desactivar Regla 20 (1 = Activada, 0 = Desactivada)
input int Rule21 = 1; // Activar/Desactivar Regla 21 (1 = Activada, 0 = Desactivada)
input int Rule22 = 1; // Activar/Desactivar Regla 22 (1 = Activada, 0 = Desactivada)
input int Rule23 = 1; // Activar/Desactivar Regla 23 (1 = Activada, 0 = Desactivada)
input int Rule24 = 1; // Activar/Desactivar Regla 24 (1 = Activada, 0 = Desactivada)
input int Rule25 = 1; // Activar/Desactivar Regla 25 (1 = Activada, 0 = Desactivada)
input int Rule26 = 1; // Activar/Desactivar Regla 26 (1 = Activada, 0 = Desactivada)
input int Rule27 = 1; // Activar/Desactivar Regla 27 (1 = Activada, 0 = Desactivada)
input int Rule28 = 1; // Activar/Desactivar Regla 28 (1 = Activada, 0 = Desactivada)
input int Rule29 = 1; // Activar/Desactivar Regla 29 (1 = Activada, 0 = Desactivada)
input int Rule30 = 1; // Activar/Desactivar Regla 30 (1 = Activada, 0 = Desactivada)
input int Rule31 = 1; // Activar/Desactivar Regla 31 (1 = Activada, 0 = Desactivada)
input int Rule32 = 1; // Activar/Desactivar Regla 32 (1 = Activada, 0 = Desactivada)
input int Rule33 = 1; // Activar/Desactivar Regla 33 (1 = Activada, 0 = Desactivada)
input int Rule34 = 1; // Activar/Desactivar Regla 34 (1 = Activada, 0 = Desactivada)
input int Rule35 = 1; // Activar/Desactivar Regla 35 (1 = Activada, 0 = Desactivada)
input int Rule36 = 1; // Activar/Desactivar Regla 36 (1 = Activada, 0 = Desactivada)
input int Rule37 = 1; // Activar/Desactivar Regla 37 (1 = Activada, 0 = Desactivada)
input int Rule38 = 1; // Activar/Desactivar Regla 38 (1 = Activada, 0 = Desactivada)
input int Rule39 = 1; // Activar/Desactivar Regla 39 (1 = Activada, 0 = Desactivada)
input int Rule40 = 1; // Activar/Desactivar Regla 40 (1 = Activada, 0 = Desactivada)
input int Rule41 = 1; // Activar/Desactivar Regla 41 (1 = Activada, 0 = Desactivada)
input int Rule42 = 1; // Activar/Desactivar Regla 42 (1 = Activada, 0 = Desactivada)
input int Rule43 = 1; // Activar/Desactivar Regla 43 (1 = Activada, 0 = Desactivada)
input int Rule44 = 1; // Activar/Desactivar Regla 44 (1 = Activada, 0 = Desactivada)
input int Rule45 = 1; // Activar/Desactivar Regla 45 (1 = Activada, 0 = Desactivada)
input int Rule46 = 1; // Activar/Desactivar Regla 46 (1 = Activada, 0 = Desactivada)
input int Rule47 = 1; // Activar/Desactivar Regla 47 (1 = Activada, 0 = Desactivada)
input int Rule48 = 1; // Activar/Desactivar Regla 48 (1 = Activada, 0 = Desactivada)

tipo_orden RuleBuy_0() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iATR(NULL, 0, 7, 1) <= 1) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, 1)) >= 0.992))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_1() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.302) && (ibs(1+17) >= 0.677))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_2() {
    if ((iATR(NULL, 0, 28, 1) >= 0.713) && (ibs(1+3) <= 0.6) && (ibs(1+11) >= 0.7) && (ibs(1+3) >= 0.319))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_3() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.571) && (ibs(1+7) <= 0.623) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.994))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_4() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (ibs(1+3) <= 0.544) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.496) && (ibs(1+11) >= 0.443))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_5() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.61) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.741))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_6() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (ibs(1+17) >= 0.523) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 77.453))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_7() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.941) && (ibs(1+17) >= 0.678) && (SafeDivide(Close[1], Low[1]) <= 1.007))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_8() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.126) && (ibs(1+17) >= 0.606))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_9() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (SafeDivide(Close[1], Close[1 + 15]) >= 1.012))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_10() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (ibs(1+3) <= 0.59) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.475) && (ibs(1+11) >= 0.468))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_11() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.059) && (ibs(1+17) >= 0.604) && (ibs(1+11) >= 0.26))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_12() {
    if ((SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.983) && (SafeDivide(Close[1], Open[1 + 31]) >= 0.999) && (iCCI(NULL, 0, 50, PRICE_CLOSE, 1) <= 49.914))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_13() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.849) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.419) && (ibs(1+5) >= 0.465))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_14() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.849) && (ibs(1+5) >= 0.494) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_15() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (ibs(1+17) >= 0.535) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.116))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_16() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.398) && (ibs(1+17) >= 0.542))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_17() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.144) && (SafeDivide(Low[1], Low[1 + 4]) <= 1.007))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_18() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.143) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.886) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.587))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_19() {
    if ((SafeDivide(High[1], High[1 + 4]) <= 0.99) && (SafeDivide(High[1], Close[1]) <= 1.002))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_20() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 1.001) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= -0.003))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_21() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.377) && (ibs(1+7) <= 0.523) && (ibs(1+2) <= 0.785))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_22() {
    if ((ibs(1+5) >= 0.559) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 51.852) && (ibs(1+7) <= 0.467))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_23() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.65) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.889) && (iATR(NULL, 0, 7, 1) >= 0.819))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_24() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 82.071) && (ibs(1+3) <= 0.555) && (ibs(1+11) >= 0.446))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_25() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iATR(NULL, 0, 50, 1) <= 0.905) && (SafeDivide(Low[1], Low[1 + 22]) >= 1.02))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_26() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 40.984) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.01))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_27() {
    if ((ibs(1+2) <= 0.636) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 85.06) && (iATR(NULL, 0, 200, 1) >= 0.684) && (iATR(NULL, 0, 100, 1) <= 0.724))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_28() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (ibs(1+2) <= 0.692) && (ibs(1+7) <= 0.564) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.41))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_29() {
    if ((iATR(NULL, 0, 50, 1) >= 0.777) && (ibs(1+11) >= 0.687) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.806))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_30() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.059) && (ibs(1+17) >= 0.568))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_31() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.478) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.144) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 15.526) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.01))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_32() {
    if ((SafeDivide(High[1], High[1 + 4]) <= 0.99) && (SafeDivide(High[1], Close[1]) <= 1.002))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_33() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.172) && (SafeDivide(Close[1], Close[1 + 15]) >= 1.012))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_34() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (ibs(1+7) <= 0.585) && (ibs(1+11) >= 0.814))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_35() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.322) && (ibs(1+2) <= 0.478) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) >= 74.697))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_36() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.747) && (ibs(1+5) >= 0.413) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.409))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_37() {
    if ((iATR(NULL, 0, 100, 1) >= 0.927) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.748) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.565))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_38() {
    if ((SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.985) && (SafeDivide(High[1], Close[1]) <= 1.004) && (ibs(1+13) <= 0.6))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_39() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 35.366) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) >= 1.017) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.474))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_40() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.532) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.456) && (iDeMarker(NULL, 0, 14, 1) >= 0.322))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_41() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.504) && (ibs(1+7) >= 0.368) && (ibs(1+11) >= 0.393) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.473))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_42() {
    if ((iATR(NULL, 0, 7, 1) >= 0.815) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.002) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1.001) && (SafeDivide(High[1], Close[1]) <= 1.005))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_43() {
    if ((iATR(NULL, 0, 7, 1) >= 0.814) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.988) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 97.013))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_44() {
    if ((iATR(NULL, 0, 7, 1) >= 0.791) && (ibs(1+5) >= 0.45) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.447) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.064))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_45() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.585) && (ibs(1+5) >= 0.421) && (iATR(NULL, 0, 50, 1) <= 1.172) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 92.428))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_46() {
    if ((iATR(NULL, 0, 7, 1) >= 0.788) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 91.451) && (ibs(1+2) <= 0.645) && (iBWMFI(NULL, 0, 1) >= 0.01) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_LOWER, 1)) <= 1.046))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_47() {
    if ((iATR(NULL, 0, 7, 1) >= 0.815) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.214) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 96.249) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1))  
        return COMPRA; 
     return FLAT; }
tipo_orden RuleBuy_48() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.336) && (iATR(NULL, 0, 7, 1) >= 0.773) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.213) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1))  
        return COMPRA; 
     return FLAT; }
tipo_orden ExecuteBuyRules() {
    tipo_orden result = FLAT;
    if (Rule0 == 1) {
       if ((result == COMPRA) || (RuleBuy_0() == COMPRA))
           return COMPRA;
    }
    if (Rule1 == 1) {
       if ((result == COMPRA) || (RuleBuy_1() == COMPRA))
           return COMPRA;
    }
    if (Rule2 == 1) {
       if ((result == COMPRA) || (RuleBuy_2() == COMPRA))
           return COMPRA;
    }
    if (Rule3 == 1) {
       if ((result == COMPRA) || (RuleBuy_3() == COMPRA))
           return COMPRA;
    }
    if (Rule4 == 1) {
       if ((result == COMPRA) || (RuleBuy_4() == COMPRA))
           return COMPRA;
    }
    if (Rule5 == 1) {
       if ((result == COMPRA) || (RuleBuy_5() == COMPRA))
           return COMPRA;
    }
    if (Rule6 == 1) {
       if ((result == COMPRA) || (RuleBuy_6() == COMPRA))
           return COMPRA;
    }
    if (Rule7 == 1) {
       if ((result == COMPRA) || (RuleBuy_7() == COMPRA))
           return COMPRA;
    }
    if (Rule8 == 1) {
       if ((result == COMPRA) || (RuleBuy_8() == COMPRA))
           return COMPRA;
    }
    if (Rule9 == 1) {
       if ((result == COMPRA) || (RuleBuy_9() == COMPRA))
           return COMPRA;
    }
    if (Rule10 == 1) {
       if ((result == COMPRA) || (RuleBuy_10() == COMPRA))
           return COMPRA;
    }
    if (Rule11 == 1) {
       if ((result == COMPRA) || (RuleBuy_11() == COMPRA))
           return COMPRA;
    }
    if (Rule12 == 1) {
       if ((result == COMPRA) || (RuleBuy_12() == COMPRA))
           return COMPRA;
    }
    if (Rule13 == 1) {
       if ((result == COMPRA) || (RuleBuy_13() == COMPRA))
           return COMPRA;
    }
    if (Rule14 == 1) {
       if ((result == COMPRA) || (RuleBuy_14() == COMPRA))
           return COMPRA;
    }
    if (Rule15 == 1) {
       if ((result == COMPRA) || (RuleBuy_15() == COMPRA))
           return COMPRA;
    }
    if (Rule16 == 1) {
       if ((result == COMPRA) || (RuleBuy_16() == COMPRA))
           return COMPRA;
    }
    if (Rule17 == 1) {
       if ((result == COMPRA) || (RuleBuy_17() == COMPRA))
           return COMPRA;
    }
    if (Rule18 == 1) {
       if ((result == COMPRA) || (RuleBuy_18() == COMPRA))
           return COMPRA;
    }
    if (Rule19 == 1) {
       if ((result == COMPRA) || (RuleBuy_19() == COMPRA))
           return COMPRA;
    }
    if (Rule20 == 1) {
       if ((result == COMPRA) || (RuleBuy_20() == COMPRA))
           return COMPRA;
    }
    if (Rule21 == 1) {
       if ((result == COMPRA) || (RuleBuy_21() == COMPRA))
           return COMPRA;
    }
    if (Rule22 == 1) {
       if ((result == COMPRA) || (RuleBuy_22() == COMPRA))
           return COMPRA;
    }
    if (Rule23 == 1) {
       if ((result == COMPRA) || (RuleBuy_23() == COMPRA))
           return COMPRA;
    }
    if (Rule24 == 1) {
       if ((result == COMPRA) || (RuleBuy_24() == COMPRA))
           return COMPRA;
    }
    if (Rule25 == 1) {
       if ((result == COMPRA) || (RuleBuy_25() == COMPRA))
           return COMPRA;
    }
    if (Rule26 == 1) {
       if ((result == COMPRA) || (RuleBuy_26() == COMPRA))
           return COMPRA;
    }
    if (Rule27 == 1) {
       if ((result == COMPRA) || (RuleBuy_27() == COMPRA))
           return COMPRA;
    }
    if (Rule28 == 1) {
       if ((result == COMPRA) || (RuleBuy_28() == COMPRA))
           return COMPRA;
    }
    if (Rule29 == 1) {
       if ((result == COMPRA) || (RuleBuy_29() == COMPRA))
           return COMPRA;
    }
    if (Rule30 == 1) {
       if ((result == COMPRA) || (RuleBuy_30() == COMPRA))
           return COMPRA;
    }
    if (Rule31 == 1) {
       if ((result == COMPRA) || (RuleBuy_31() == COMPRA))
           return COMPRA;
    }
    if (Rule32 == 1) {
       if ((result == COMPRA) || (RuleBuy_32() == COMPRA))
           return COMPRA;
    }
    if (Rule33 == 1) {
       if ((result == COMPRA) || (RuleBuy_33() == COMPRA))
           return COMPRA;
    }
    if (Rule34 == 1) {
       if ((result == COMPRA) || (RuleBuy_34() == COMPRA))
           return COMPRA;
    }
    if (Rule35 == 1) {
       if ((result == COMPRA) || (RuleBuy_35() == COMPRA))
           return COMPRA;
    }
    if (Rule36 == 1) {
       if ((result == COMPRA) || (RuleBuy_36() == COMPRA))
           return COMPRA;
    }
    if (Rule37 == 1) {
       if ((result == COMPRA) || (RuleBuy_37() == COMPRA))
           return COMPRA;
    }
    if (Rule38 == 1) {
       if ((result == COMPRA) || (RuleBuy_38() == COMPRA))
           return COMPRA;
    }
    if (Rule39 == 1) {
       if ((result == COMPRA) || (RuleBuy_39() == COMPRA))
           return COMPRA;
    }
    if (Rule40 == 1) {
       if ((result == COMPRA) || (RuleBuy_40() == COMPRA))
           return COMPRA;
    }
    if (Rule41 == 1) {
       if ((result == COMPRA) || (RuleBuy_41() == COMPRA))
           return COMPRA;
    }
    if (Rule42 == 1) {
       if ((result == COMPRA) || (RuleBuy_42() == COMPRA))
           return COMPRA;
    }
    if (Rule43 == 1) {
       if ((result == COMPRA) || (RuleBuy_43() == COMPRA))
           return COMPRA;
    }
    if (Rule44 == 1) {
       if ((result == COMPRA) || (RuleBuy_44() == COMPRA))
           return COMPRA;
    }
    if (Rule45 == 1) {
       if ((result == COMPRA) || (RuleBuy_45() == COMPRA))
           return COMPRA;
    }
    if (Rule46 == 1) {
       if ((result == COMPRA) || (RuleBuy_46() == COMPRA))
           return COMPRA;
    }
    if (Rule47 == 1) {
       if ((result == COMPRA) || (RuleBuy_47() == COMPRA))
           return COMPRA;
    }
    if (Rule48 == 1) {
       if ((result == COMPRA) || (RuleBuy_48() == COMPRA))
           return COMPRA;
    }
    return result;
}
//Dummy code
tipo_orden ExecuteBuyRule(int ruleNumber) { return FLAT; }
tipo_orden ExecuteSellRule(int ruleNumber) { return FLAT; }
tipo_orden ExecuteSellRules() { return FLAT; }