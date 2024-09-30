
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


tipo_orden RuleBuy_1() {
    if ((iATR(NULL, 0, 50, 1) >= 0.688) && (ibs(1+3) <= 0.594) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 84.86) && (iMomentum(NULL, 0, 21, PRICE_CLOSE, 1) <= 101.978) && (iATR(NULL, 0, 200, 1) >= 0.695))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_2() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.027))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_3() {
    if ((iATR(NULL, 0, 14, 1) >= 0.818) && (ibs(1+3) <= 0.59) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.077))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_4() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (ibs(1+7) <= 0.426) && (iATR(NULL, 0, 200, 1) >= 0.712))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_5() {
    if ((SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.013) && (iATR(NULL, 0, 28, 1) >= 0.952))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_6() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.258) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.032))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_7() {
    if ((ibs(1+17) >= 0.524) && (ibs(1+5) >= 0.422) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 35))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_8() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.725) && (iDeMarker(NULL, 0, 28, 1) <= 0.702) && (iCustom(NULL, 0, "Custom/Aroon", 100, 1, 1) >= 17) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) >= 87.064))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_9() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 38) && (ibs(1+2) <= 0.698) && (SafeDivide(Close[1], iBands(NULL, 0, 15, 2, 0, 0, MODE_UPPER, 1)) <= 0.974))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_10() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 0.999) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) >= 9.369))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_11() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.478) && (SafeDivide(High[1], Close[1]) <= 1.005) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (ibs(1+7) <= 0.481))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_12() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 89.884) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.985) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.52))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_13() {
    if ((SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.022) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) >= 1.242) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) <= 3.685) && (iCustom(NULL, 0, "Custom/Aroon", 21, 1, 1) <= 42.857))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_14() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.486) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.022))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_15() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 66.667) && (iATR(NULL, 0, 200, 1) >= 0.712))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_16() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_17() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iATR(NULL, 0, 200, 1) >= 0.697) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.866))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_18() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(Close[1], Close[1 + 15]) <= 1.006) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.094))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_19() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.049) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7)) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_20() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 100.224) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 77.773) && (ibs(1+3) <= 0.524))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_21() {
    if ((ibs(1+17) >= 0.527) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 38) && (ibs(1+2) <= 0.698) && (iDeMarker(NULL, 0, 28, 1) <= 0.519))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_22() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.015) && (iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MINUSDI, 1) <= 21.118))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_23() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (ibs(1+7) <= 0.25))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_24() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 2.041))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_25() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 38) && (ibs(1+2) <= 0.698) && (ibs(1+17) >= 0.302) && (iDeMarker(NULL, 0, 28, 1) <= 0.521))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_26() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.759) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 78.571) && (iATR(NULL, 0, 50, 1) >= 0.674))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_27() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (ibs(1+2) <= 0.748) && (ibs(1+17) >= 0.541))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_28() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.49) && (ibs(1+5) >= 0.397) && (SafeDivide(High[1], Close[1]) <= 1.005) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_29() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 66.667))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_30() {
    if ((ibs(1+17) >= 0.524) && (ibs(1+17) <= 0.662) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_31() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 39) && (ibs(1+17) >= 0.294) && (ibs(1+2) <= 0.701))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_32() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.135) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.985) && (iATR(NULL, 0, 14, 1) >= 0.774) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.638))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_33() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) >= 1.001) && (ibs(1+2) <= 0.769))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_34() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(High[1], High[1 + 3]) <= 0.996) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 92.309))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_35() {
    if ((ibs(1+5) >= 0.49) && (SafeDivide(High[1], High[1 + 1]) >= 1.005) && (ibs(1+7) <= 0.577))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_36() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (ibs(1+5) >= 0.412) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 91.299))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_37() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(Close[1], iBands(NULL, 0, 50, 3, 0, 0, MODE_UPPER, 1)) <= 0.957) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 0.893))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_38() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (ibs(1+3) <= 0.647) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.756) && (ibs(1+17) >= 0.528))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_39() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.003) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_40() {
    if ((iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.956) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) >= 0.981) && (iATR(NULL, 0, 7, 1) >= 0.823))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_41() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(Low[1], Low[1 + 8]) <= 1.003) && (iATR(NULL, 0, 14, 1) >= 0.973))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_42() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.478) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.598) && (SafeDivide(High[1], Close[1]) <= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_43() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.143) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.555) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_44() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_45() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 66.667) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= -0.02))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_46() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.567) && (ibs(1+7) <= 0.59) && (ibs(1+5) >= 0.417))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_47() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_48() {
    if ((ibs(1+2) <= 0.673) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 90.344) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 6.751))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_49() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (ibs(1+2) <= 0.775) && (ibs(1+17) >= 0.274) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.031))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_50() {
    if ((iATR(NULL, 0, 21, 1) >= 0.828) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_51() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iATR(NULL, 0, 7, 1) <= 1) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, 1)) >= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_52() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iATR(NULL, 0, 200, 1) >= 0.695) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.052))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_53() {
    if ((SafeDivide(High[1], High[1 + 15]) <= 0.997) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 92.445))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_54() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 86.238) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 40.461))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_55() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.573) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.145))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_56() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (ibs(1+3) <= 0.592) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.544))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_57() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.539) && (ibs(1+2) <= 0.748) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_58() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.486) && (SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.063) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.022))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_59() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 104.584) && (iAO(NULL, 0, 1) <= -0.257))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_60() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.57) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_61() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.812) && (ibs(1+2) <= 0.748) && (ibs(1+17) >= 0.523))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_62() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1) && (iATR(NULL, 0, 200, 1) <= 0.823))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_63() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 99.805) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 77.463) && (ibs(1+2) <= 0.677) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_64() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.573) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_65() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 44) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iAO(NULL, 0, 1) >= -0.677))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_66() {
    if ((ibs(1+17) >= 0.279) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (ibs(1+2) <= 0.72) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_67() {
    if ((iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.954) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.478) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.751))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_68() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.293) && (ibs(1+7) <= 0.63) && (ibs(1+3) <= 0.583))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_69() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (iATR(NULL, 0, 200, 1) >= 0.715) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_70() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (ibs(1+5) >= 0.535) && (ibs(1+7) <= 0.521))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_71() {
    if ((iCustom(NULL, 0, "Custom/MMI", 21, 0, 1) <= 55) && (iCustom(NULL, 0, "Custom/Aroon", 100, 1, 1) >= 32) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) <= 0.26) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) >= 35.714))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_72() {
    if ((ibs(1+5) >= 0.492) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.128) && (ibs(1+7) <= 0.608) && (iATR(NULL, 0, 14, 1) >= 0.817))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_73() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (ibs(1+7) <= 0.466) && (iATR(NULL, 0, 200, 1) >= 0.78))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_74() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 49.111) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.786) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_75() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.974) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_76() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (iDeMarker(NULL, 0, 21, 1) <= 0.509))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_77() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 106.95) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 38.109) && (SafeDivide(High[1], High[1 + 29]) <= 0.984))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_78() {
    if ((ibs(1+17) >= 0.5) && (ibs(1+5) >= 0.422) && (iATR(NULL, 0, 100, 1) >= 0.868) && (ibs(1+7) <= 0.577))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_79() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (ibs(1+17) >= 0.287) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.003) && (ibs(1+7) >= 0.338))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_80() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.302) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.13) && (iDeMarker(NULL, 0, 21, 1) <= 0.458) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.534))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_81() {
    if ((ibs(1+5) >= 0.604) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.205) && (ibs(1+7) <= 0.603) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.059))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_82() {
    if ((iATR(NULL, 0, 7, 1) >= 0.797) && (ibs(1+5) >= 0.481) && (SafeDivide(High[1], High[1 + 1]) >= 1.005) && (ibs(1+7) <= 0.499))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_83() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Low[1], Low[1 + 4]) <= 0.991) && (SafeDivide(Close[1], Close[1 + 1]) <= 0.987))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_84() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 89.986) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 1) && (iDeMarker(NULL, 0, 21, 1) <= 0.461))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_85() {
    if ((iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.367) && (ibs(1+5) >= 0.568) && (iCustom(NULL, 0, "Custom/MMI", 100, 0, 1) <= 50.505))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_86() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (ibs(1+3) <= 0.618) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 82.115))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_87() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.049) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 1) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.006) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 90.476))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_88() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.005) && (ibs(1+7) <= 0.467) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 85.255))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_89() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.005) && (ibs(1+7) <= 0.481) && (ibs(1+5) >= 0.666))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_90() {
    if ((iATR(NULL, 0, 200, 1) >= 0.682) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 1.003) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.204) && (SafeDivide(Close[1], Close[1 + 29]) <= 1.011))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_91() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 82.409) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.26))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_92() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.029))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_93() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (ibs(1+2) <= 0.82) && (ibs(1+7) <= 0.417) && (ibs(1+3) <= 0.803))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_94() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.049) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.001) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_95() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (ibs(1+2) <= 0.705) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.841) && (iAO(NULL, 0, 1) <= 0.878) && (iATR(NULL, 0, 200, 1) >= 0.717))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_96() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) <= -1.095) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 81.484))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_97() {
    if ((SafeDivide(High[1], High[1 + 3]) <= 0.996) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 17.021) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 85.076))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_98() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_99() {
    if ((iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.979) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) >= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_100() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.336) && (SafeDivide(High[1], High[1 + 15]) <= 1.002) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= -0.048))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_101() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 89.924) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.986) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 0.999) && (ibs(1+17) >= 0.619))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_102() {
    if ((SafeDivide(Close[1], Open[1 + 31]) >= 1.022) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 83.62) && (SafeDivide(Close[1], Close[1 + 29]) <= 1.035) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) >= 102.157))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_103() {
    if ((SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.058) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.083) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -1.323))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_104() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) >= 100))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_105() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_106() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (ibs(1+5) >= 0.583) && (ibs(1+7) <= 0.584))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_107() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 38.485) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 96.507) && (iATR(NULL, 0, 200, 1) >= 0.715) && (iATR(NULL, 0, 100, 1) <= 1.057) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 90.448))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_108() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (ibs(1+7) <= 0.594) && (ibs(1+3) <= 0.606))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_109() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.317) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7)) <= 0.997) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.016))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_110() {
    if ((iATR(NULL, 0, 7, 1) >= 0.808) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.611) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.744) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 1.15))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_111() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 44) && (SafeDivide(Close[1], Close[1 + 22]) <= 0.998) && (iATR(NULL, 0, 200, 1) >= 0.675) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.543) && (iBearsPower(NULL, 0, 7, PRICE_CLOSE, 1) <= -0.206))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_112() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.293) && (ibs(1+3) <= 0.86))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_113() {
    if ((ibs(1+17) >= 0.505) && (ibs(1+5) >= 0.564) && (ibs(1+7) <= 0.59) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.057))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_114() {
    if ((SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.997) && (iATR(NULL, 0, 7, 1) >= 1.051))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_115() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 85.96) && (SafeDivide(Close[1], Close[1 + 15]) <= 1.015) && (iATR(NULL, 0, 200, 1) >= 0.693) && (ibs(1+3) <= 0.592) && (SafeDivide(High[1], Close[1]) <= 1.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_116() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 28, 1) <= 0.417) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.029))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_117() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 99.667) && (ibs(1+2) <= 0.637))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_118() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.496) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 102.874))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_119() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 89.374) && (ibs(1+7) <= 0.287))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_120() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 86.238) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.071))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_121() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 35.366) && (iATR(NULL, 0, 50, 1) >= 0.759) && (iATR(NULL, 0, 50, 1) <= 0.897))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_122() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.016) && (iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.095) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.984))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_123() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.302) && (ibs(1+17) >= 0.677))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_124() {
    if ((ibs(1+5) >= 0.53) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.182) && (ibs(1+7) <= 0.575) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_125() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.804) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.213))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_126() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.471) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.009) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, 1)) <= 0.974))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_127() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.003) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 40.461) && (ibs(1+7) <= 0.609) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.084))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_128() {
    if ((iATR(NULL, 0, 28, 1) >= 0.713) && (ibs(1+3) <= 0.6) && (ibs(1+11) >= 0.7) && (ibs(1+3) >= 0.319))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_129() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.996) && (ibs(1+17) >= 0.32))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_130() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 86.47) && (SafeDivide(Close[1], Open[1 + 16]) <= 1.003) && (SafeDivide(Close[1], Low[1]) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_131() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_132() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 38.485) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 49) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 45.265) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.533))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_133() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.571) && (ibs(1+7) <= 0.623) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.994))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_134() {
    if ((ibs(1+5) >= 0.608) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) >= 2.634) && (ibs(1+3) >= 0.399))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_135() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.992) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.757) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_136() {
    if ((ibs(1+5) >= 0.531) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.823) && (ibs(1+7) <= 0.512) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.734))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_137() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 35.366) && (iATR(NULL, 0, 200, 1) >= 0.689) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 43) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) >= 17))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_138() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (ibs(1+3) <= 0.544) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.496) && (ibs(1+11) >= 0.443))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_139() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (ibs(1+7) <= 0.534) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.759) && (iDeMarker(NULL, 0, 28, 1) <= 0.441))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_140() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.954) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.123))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_141() {
    if ((iDeMarker(NULL, 0, 21, 1) <= 0.461) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 102.455) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 8.98))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_142() {
    if ((ibs(1+5) >= 0.523) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) >= 7.722) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) >= 1.002) && (ibs(1+7) <= 0.76))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_143() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.486) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) >= 64.315))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_144() {
    if ((iDeMarker(NULL, 0, 21, 1) <= 0.461) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 102.926))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_145() {
    if ((ibs(1+2) <= 0.701) && (ibs(1+17) >= 0.53) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 39) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 101.138))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_146() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.057) && (ibs(1+7) <= 0.56) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.839) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) <= 0.314) && (ibs(1+2) <= 0.788))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_147() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (iATR(NULL, 0, 7, 1) >= 1.093))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_148() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 105.945) && (ibs(1+7) <= 0.23) && (SafeDivide(Close[1], Low[1]) >= 1.003) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 95.12))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_149() {
    if ((ibs(1+5) >= 0.608) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) >= 2.29) && (iDeMarker(NULL, 0, 21, 1) <= 0.752) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 89.345))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_150() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.989) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 97.951))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_151() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.547) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.721))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_152() {
    if ((iATR(NULL, 0, 28, 1) >= 0.713) && (ibs(1+3) <= 0.596) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.496))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_153() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 89.514) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_154() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 42.788) && (SafeDivide(Close[1], Open[1 + 16]) <= 0.993) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (SafeDivide(High[1], High[1 + 1]) >= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_155() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.442) && (iMFI(NULL, 0, 28, 1) <= 60.549) && (ibs(1+5) >= 0.637) && (iCustom(NULL, 0, "Custom/Aroon", 100, 1, 1) >= 8))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_156() {
    if ((SafeDivide(High[1], High[1 + 3]) <= 0.996) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.049) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 92.311))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_157() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (ibs(1+17) >= 0.279) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.045) && (ibs(1+7) <= 0.412))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_158() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.989) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 96.692) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.63))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_159() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.988) && (iRVI(NULL, 0, 28, MODE_MAIN, 1) <= 0.054) && (iATR(NULL, 0, 50, 1) >= 0.671) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.529))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_160() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, 1) <= 102.359) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.371))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_161() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 106.95) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.001) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7)) <= 0.998) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_162() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.101) && (iCCI(NULL, 0, 50, PRICE_CLOSE, 1) <= 55.095) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_163() {
    if ((iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, 1) >= 113.644) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 11.867) && (iCustom(NULL, 0, "Custom/MMI", 100, 0, 1) <= 54.545))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_164() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.61) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.741))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_165() {
    if ((ibs(1+2) <= 0.758) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.11) && (ibs(1+7) <= 0.465) && (ibs(1+3) <= 0.78) && (SafeDivide(High[1], High[1 + 29]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_166() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 14.604) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) >= 7.341) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 2, 0, 0, MODE_UPPER, 1)) <= 0.973))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_167() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.032) && (ibs(1+3) <= 0.339) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.405))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_168() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 107.237) && (ibs(1+7) <= 0.467) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) >= 0.995) && (SafeDivide(High[1], High[1 + 1]) >= 1.005) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.502) && (ibs(1+3) >= 0.28))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_169() {
    if ((iATR(NULL, 0, 28, 1) >= 0.712) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 14.604) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 89.527) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.013) && (ibs(1+2) >= 0.108))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_170() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) >= 24.794) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_171() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (ibs(1+3) <= 0.341))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_172() {
    if ((ibs(1+5) >= 0.504) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 59.259) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.143) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) <= 3.55))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_173() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (ibs(1+17) >= 0.523) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 77.453))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_174() {
    if ((iATR(NULL, 0, 200, 1) >= 0.684) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (SafeDivide(Close[1], Close[1 + 22]) <= 0.998) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 50.446))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_175() {
    if ((iATR(NULL, 0, 7, 1) >= 0.832) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.62) && (iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MINUSDI, 1) <= 19.68) && (ibs(1+2) <= 0.532))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_176() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.623) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.039))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_177() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (SafeDivide(Close[1], Close[1 + 29]) <= 1.007) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 12.388) && (SafeDivide(Close[1], Close[1 + 1]) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_178() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 97.796) && (ibs(1+3) <= 0.552))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_179() {
    if ((ibs(1+5) >= 0.492) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.128) && (ibs(1+7) <= 0.608) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_180() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.608) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.751) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 1.172))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_181() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.893) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 81.183) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.725) && (ibs(1+3) <= 0.565))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_182() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(High[1], High[1 + 29]) <= 0.989) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_183() {
    if ((ibs(1+5) >= 0.504) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.082) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 92.557))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_184() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (ibs(1+17) >= 0.752) && (ibs(1+5) >= 0.422))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_185() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 44) && (SafeDivide(Close[1], iBands(NULL, 0, 50, 3, 0, 0, MODE_UPPER, 1)) <= 0.952) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.995))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_186() {
    if ((iDeMarker(NULL, 0, 21, 1) <= 0.461) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 102.926))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_187() {
    if ((iATR(NULL, 0, 200, 1) >= 0.682) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.999) && (iATR(NULL, 0, 14, 1) >= 0.835) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.003) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.429))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_188() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.941) && (ibs(1+17) >= 0.678) && (SafeDivide(Close[1], Low[1]) <= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_189() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.988) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 97.938) && (ibs(1+3) <= 0.339))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_190() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 38) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 40.209))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_191() {
    if ((iATR(NULL, 0, 200, 1) >= 0.682) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.898) && (ibs(1+7) <= 0.483))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_192() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 40.984) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 62.364))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_193() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (ibs(1+7) <= 0.466) && (SafeDivide(High[1], High[1 + 1]) >= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_194() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (ibs(1+5) >= 0.481) && (ibs(1+7) <= 0.218))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_195() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.989) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.458) && (SafeDivide(High[1], High[1 + 3]) <= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_196() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.049) && (SafeDivide(Close[1], Close[1 + 4]) <= 0.988))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_197() {
    if ((iATR(NULL, 0, 200, 1) >= 0.682) && (ibs(1+7) <= 0.485) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.839) && (SafeDivide(High[1], High[1 + 1]) >= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_198() {
    if ((ibs(1+5) >= 0.481) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (ibs(1+7) <= 0.59) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.138) && (ibs(1+3) <= 0.763) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.033))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_199() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.823) && (SafeDivide(Close[1], Close[1 + 4]) <= 0.99) && (iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MINUSDI, 1) <= 19.618) && (SafeDivide(High[1], High[1 + 4]) >= 0.989))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_200() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.912) && (iAO(NULL, 0, 1) <= -0.057) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.817))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_201() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 49.153) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 90.509) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) >= 1.22))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_202() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.003) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 100.21) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.035) && (ibs(1+3) <= 0.368))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_203() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.491))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_204() {
    if ((iATR(NULL, 0, 200, 1) >= 0.683) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 89.986) && (SafeDivide(High[1], High[1 + 15]) <= 1.018) && (SafeDivide(High[1], High[1 + 3]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_205() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (iATR(NULL, 0, 100, 1) >= 0.871) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 48.977) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= -0.103))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_206() {
    if ((ibs(1+2) <= 0.771) && (SafeDivide(High[1], High[1 + 4]) <= 0.99) && (SafeDivide(High[1], Close[1]) <= 1.002) && (ibs(1+17) >= 0.645))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_207() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 105.267) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 77.773) && (iDeMarker(NULL, 0, 21, 1) <= 0.461) && (ibs(1+3) <= 0.618))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_208() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.073) && (ibs(1+7) <= 0.223))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_209() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (ibs(1+11) >= 0.762) && (iATR(NULL, 0, 21, 1) >= 0.966))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_210() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 15.287) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (iRVI(NULL, 0, 28, MODE_MAIN, 1) <= -0.07))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_211() {
    if ((ibs(1+5) >= 0.422) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.836) && (ibs(1+7) <= 0.527) && (iATR(NULL, 0, 14, 1) >= 0.801))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_212() {
    if ((iATR(NULL, 0, 200, 1) >= 0.689) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.801) && (ibs(1+7) <= 0.559) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) <= 0.279))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_213() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iDeMarker(NULL, 0, 28, 1) <= 0.434) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.392))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_214() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.592) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 0.145) && (ibs(1+5) >= 0.564))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_215() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.989) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 96.587) && (iBearsPower(NULL, 0, 7, PRICE_CLOSE, 1) <= -0.373))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_216() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.126) && (ibs(1+17) >= 0.606))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_217() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.066) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.571) && (ibs(1+7) <= 0.675))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_218() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iMACD(NULL, 0, 18, 22, 14, PRICE_CLOSE, MODE_MAIN, 1) <= -0.031) && (ibs(1+7) <= 0.64))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_219() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.204) && (iDeMarker(NULL, 0, 21, 1) <= 0.5) && (iBearsPower(NULL, 0, 7, PRICE_CLOSE, 1) >= -0.903))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_220() {
    if ((ibs(1+5) >= 0.492) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.611) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.104) && (ibs(1+7) <= 0.584))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_221() {
    if ((ibs(1+2) <= 0.701) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.323) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 4.296) && (ibs(1+17) >= 0.684))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_222() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.002) && (ibs(1+5) >= 0.64) && (ibs(1+3) <= 0.763))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_223() {
    if ((iATR(NULL, 0, 14, 1) >= 0.84) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 86.79) && (ibs(1+2) <= 0.622) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.147) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= -0.32))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_224() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (SafeDivide(Close[1], Close[1 + 15]) >= 1.012))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_225() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (ibs(1+5) >= 0.41) && (iCustom(NULL, 0, "Custom/MMI", 100, 0, 1) <= 51.515) && (ibs(1+7) <= 0.56))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_226() {
    if ((iCustom(NULL, 0, "Custom/MMI", 21, 0, 1) <= 55) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) >= 1.274) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.007) && (iATR(NULL, 0, 100, 1) >= 0.748) && (iATR(NULL, 0, 21, 1) <= 1.111))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_227() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 38) && (ibs(1+2) <= 0.714) && (ibs(1+17) >= 0.5) && (SafeDivide(Close[1], Close[1 + 29]) <= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_228() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.509) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, 1)) >= 0.966) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, 1)) <= 0.969))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_229() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 91.465) && (ibs(1+7) <= 0.287))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_230() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.97) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.533))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_231() {
    if ((iATR(NULL, 0, 100, 1) >= 0.787) && (ibs(1+7) <= 0.414) && (iCustom(NULL, 0, "Custom/MMI", 100, 0, 1) <= 54.545) && (ibs(1+5) >= 0.433))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_232() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.472) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.008) && (SafeDivide(High[1], High[1 + 15]) <= 1.017))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_233() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (ibs(1+7) <= 0.499) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_234() {
    if ((SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.999) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (SafeDivide(Close[1], iBands(NULL, 0, 50, 3, 0, 0, MODE_UPPER, 1)) <= 0.966) && (SafeDivide(High[1], High[1 + 1]) >= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_235() {
    if ((SafeDivide(Close[1], Open[1 + 16]) <= 0.993) && (ibs(1+2) <= 0.637) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.81))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_236() {
    if ((ibs(1+5) >= 0.594) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.611) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.737))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_237() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.347) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 92.309))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_238() {
    if ((ibs(1+5) >= 0.554) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 51.852) && (ibs(1+7) <= 0.559) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.031))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_239() {
    if ((SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.039) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 87.631) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.033) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.613))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_240() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (ibs(1+5) >= 0.423) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 1.172) && (ibs(1+11) >= 0.253) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_241() {
    if ((iATR(NULL, 0, 200, 1) >= 0.717) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.323) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.05))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_242() {
    if ((SafeDivide(Close[1], iBands(NULL, 0, 33, 2, 0, 0, MODE_UPPER, 1)) <= 0.971) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_243() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 105.875) && (ibs(1+7) <= 0.466) && (ibs(1+2) <= 0.783) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_244() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.828) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.049))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_245() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (ibs(1+3) <= 0.59) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.475) && (ibs(1+11) >= 0.468))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_246() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.003) && (ibs(1+7) <= 0.228))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_247() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.059) && (ibs(1+17) >= 0.604) && (ibs(1+11) >= 0.26))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_248() {
    if ((SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.983) && (SafeDivide(Close[1], Open[1 + 31]) >= 0.999) && (iCCI(NULL, 0, 50, PRICE_CLOSE, 1) <= 49.914))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_249() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.598) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.003) && (SafeDivide(High[1], High[1 + 15]) <= 1.019))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_250() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 82.409) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.26))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_251() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 14.559) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 96.424) && (iDeMarker(NULL, 0, 21, 1) >= 0.269))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_252() {
    if ((ibs(1+5) >= 0.53) && (ibs(1+7) <= 0.521) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.005) && (iBearsPower(NULL, 0, 7, PRICE_CLOSE, 1) >= -0.212))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_253() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 90.344) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.233))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_254() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.849) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.419) && (ibs(1+5) >= 0.465))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_255() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.988) && (iATR(NULL, 0, 200, 1) >= 1.084) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 96.528))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_256() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.049) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1) && (iCustom(NULL, 0, "Custom/MMI", 100, 0, 1) <= 54.545) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 96.289))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_257() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.849) && (ibs(1+5) >= 0.494) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_258() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.991) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_259() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.986) && (iATR(NULL, 0, 200, 1) >= 1.081))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_260() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (SafeDivide(High[1], High[1 + 15]) <= 1.018) && (ibs(1+11) >= 0.426) && (iATR(NULL, 0, 200, 1) >= 0.686) && (iATR(NULL, 0, 200, 1) <= 1.041) && (iDeMarker(NULL, 0, 28, 1) >= 0.51))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_261() {
    if ((iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) <= 32.612) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 96.244) && (SafeDivide(Close[1], Low[1]) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_262() {
    if ((ibs(1+5) >= 0.424) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.142) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.056) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.017))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_263() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MINUSDI, 1) <= 18.974) && (SafeDivide(Close[1], Low[1]) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_264() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.003) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.727) && (iDeMarker(NULL, 0, 21, 1) <= 0.503))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_265() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 39) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 14, 0, 1)) <= 0.981) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.788))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_266() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.968) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_267() {
    if ((iATR(NULL, 0, 200, 1) >= 0.689) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.637) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_268() {
    if ((ibs(1+5) >= 0.531) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 92.235) && (ibs(1+7) <= 0.223))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_269() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 97.938) && (ibs(1+7) <= 0.426))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_270() {
    if ((SafeDivide(High[1], High[1 + 4]) <= 0.99) && (SafeDivide(High[1], Close[1]) <= 1.002) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.335))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_271() {
    if ((ibs(1+17) >= 0.422) && (SafeDivide(High[1], High[1 + 3]) <= 0.996) && (iATR(NULL, 0, 21, 1) >= 1.086))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_272() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (ibs(1+17) >= 0.535) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.116))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_273() {
    if ((iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) <= -0.16) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 17.857) && (ibs(1+5) >= 0.496))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_274() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.991) && (ibs(1+11) >= 0.64))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_275() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.606) && (SafeDivide(Close[1], Close[1 + 15]) <= 1.016) && (ibs(1+2) <= 0.718))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_276() {
    if ((iATR(NULL, 0, 28, 1) >= 0.709) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iATR(NULL, 0, 200, 1) >= 1.081) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_277() {
    if ((iATR(NULL, 0, 28, 1) >= 0.696) && (iATR(NULL, 0, 200, 1) <= 1.041) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.032) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 100.21) && (ibs(1+3) <= 0.631))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_278() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.486) && (ibs(1+7) <= 0.499) && (SafeDivide(Low[1], Low[1 + 8]) >= 1.008) && (SafeDivide(High[1], Close[1]) <= 1.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_279() {
    if ((iATR(NULL, 0, 14, 1) >= 0.757) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.489) && (SafeDivide(High[1], Close[1]) <= 1.003) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.19))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_280() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.632) && (SafeDivide(Low[1], Low[1 + 8]) <= 1.015))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_281() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.003) && (ibs(1+7) <= 0.488) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.468) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) >= 13))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_282() {
    if ((iATR(NULL, 0, 7, 1) >= 0.806) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (ibs(1+7) >= 0.57) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 70))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_283() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (ibs(1+7) <= 0.427) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.06) && (iATR(NULL, 0, 200, 1) >= 0.728))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_284() {
    if ((iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.415) && (iDeMarker(NULL, 0, 21, 1) <= 0.507) && (SafeDivide(High[1], High[1 + 1]) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_285() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.398) && (ibs(1+17) >= 0.542))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_286() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (iATR(NULL, 0, 200, 1) <= 0.823) && (ibs(1+5) >= 0.632) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_287() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (ibs(1+17) >= 0.266) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.405) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= 0.084))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_288() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (ibs(1+11) >= 0.534) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_289() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) >= 90.177) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.555) && (iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MINUSDI, 1) >= 12.201) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 21, 25, 25, 0, 1)) <= 0.841))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_290() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.27) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) <= -0.346) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.064))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_291() {
    if ((iCCI(NULL, 0, 50, PRICE_CLOSE, 1) <= 56.061) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.856) && (SafeDivide(Close[1], Open[1 + 16]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_292() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_293() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_294() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.018) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (ibs(1+3) <= 0.59))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_295() {
    if ((ibs(1+17) >= 0.523) && (ibs(1+2) <= 0.705) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.51))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_296() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.985) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.848) && (ibs(1+2) <= 0.713) && (ibs(1+17) >= 0.283))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_297() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.48) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.058) && (iCustom(NULL, 0, "Custom/Aroon", 100, 1, 1) >= 26))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_298() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.442) && (SafeDivide(High[1], High[1 + 1]) >= 1.005) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) <= 83.012))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_299() {
    if ((SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.013) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.777))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_300() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (ibs(1+7) <= 0.25))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_301() {
    if ((ibs(1+7) >= 0.365) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 0.997) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_302() {
    if ((SafeDivide(High[1], High[1 + 15]) <= 0.997) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 49) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 93.386))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_303() {
    if ((SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.058) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.08))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_304() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 105.945) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.985) && (ibs(1+3) <= 0.462))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_305() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) >= 0.984) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.942))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_306() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (SafeDivide(Low[1], Low[1 + 8]) <= 1.012) && (iATR(NULL, 0, 200, 1) >= 0.683) && (ibs(1+7) <= 0.636))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_307() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 105.945) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 77.773) && (iATR(NULL, 0, 50, 1) >= 0.688) && (iDeMarker(NULL, 0, 21, 1) <= 0.496))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_308() {
    if ((iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 55.556) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.923) && (iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MINUSDI, 1) >= 11.845))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_309() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 86.013) && (ibs(1+2) <= 0.748) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.006) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.057) && (SafeDivide(Low[1], Low[1 + 29]) <= 1.05))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_310() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 105.875) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.081) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1) && (SafeDivide(Close[1], Close[1 + 15]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_311() {
    if ((iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.926) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.549) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.741))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_312() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.783) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.994) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.043))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_313() {
    if ((SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.059) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 93.195) && (SafeDivide(High[1], High[1 + 15]) <= 1.018) && (ibs(1+2) <= 0.701))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_314() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.575) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.009))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_315() {
    if ((SafeDivide(High[1], High[1 + 15]) <= 0.998) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 41) && (iCCI(NULL, 0, 100, PRICE_CLOSE, 1) >= -60.195))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_316() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 91.748))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_317() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.448) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.02) && (iATR(NULL, 0, 100, 1) >= 0.699))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_318() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.577) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) <= 4.842))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_319() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.144) && (SafeDivide(Low[1], Low[1 + 4]) <= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_320() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.024) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 41) && (ibs(1+2) <= 0.698) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.05) && (ibs(1+17) >= 0.266))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_321() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 57.143) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_322() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) >= 0.794))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_323() {
    if ((ibs(1+17) >= 0.524) && (ibs(1+2) <= 0.689) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 44))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_324() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 100.224) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.541))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_325() {
    if ((SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.009) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.127))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_326() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.371) && (SafeDivide(High[1], High[1 + 15]) <= 1.018) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 90.584))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_327() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.997))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_328() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 105.875) && (iMACD(NULL, 0, 18, 22, 14, PRICE_CLOSE, MODE_MAIN, 1) <= -0.064))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_329() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.152) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.003) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 4.303) && (SafeDivide(Low[1], Low[1 + 29]) >= 1.019))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_330() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.57) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.154))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_331() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.623) && (iATR(NULL, 0, 200, 1) >= 0.682) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.052))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_332() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (iMACD(NULL, 0, 18, 22, 14, PRICE_CLOSE, MODE_MAIN, 1) <= 0.013) && (ibs(1+3) <= 0.28))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_333() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 85.96) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.008) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_334() {
    if ((SafeDivide(High[1], High[1 + 15]) <= 0.997) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 102.455) && (iCustom(NULL, 0, "Custom/Aroon", 21, 1, 1) >= 57.143))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_335() {
    if ((SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.985) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.066) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 34))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_336() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (SafeDivide(High[1], Close[1]) <= 1.005) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_337() {
    if ((ibs(1+17) >= 0.499) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.285) && (ibs(1+2) <= 0.696))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_338() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_UPPER, 1)) >= 0.982) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.751))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_339() {
    if ((iATR(NULL, 0, 7, 1) >= 0.815) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.571) && (ibs(1+11) >= 0.592) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.737))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_340() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.516) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.071) && (iATR(NULL, 0, 200, 1) >= 0.728) && (ibs(1+7) <= 0.684))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_341() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 94.447) && (SafeDivide(High[1], High[1 + 3]) <= 0.995))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_342() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.18) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.985) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) >= 0.994))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_343() {
    if ((ibs(1+17) >= 0.516) && (ibs(1+5) >= 0.422) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, 1)) <= 0.985))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_344() {
    if ((iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.959) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) >= 0.981) && (iATR(NULL, 0, 7, 1) >= 0.823))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_345() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 105.267) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.033) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.766))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_346() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (iATR(NULL, 0, 200, 1) >= 0.695) && (ibs(1+7) <= 0.433) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) >= 0.997))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_347() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (iATR(NULL, 0, 7, 1) >= 0.773) && (iDeMarker(NULL, 0, 21, 1) <= 0.496) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.579))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_348() {
    if ((iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.699) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.446) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7)) <= 1.018))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_349() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.412) && (ibs(1+2) <= 0.748) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.049) && (iCustom(NULL, 0, "Custom/Aroon", 21, 1, 1) >= 47.619))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_350() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 85.96) && (iATR(NULL, 0, 200, 1) >= 0.683) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.015))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_351() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_352() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.396) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.48) && (ibs(1+3) <= 0.606))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_353() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (ibs(1+2) <= 0.72) && (iCCI(NULL, 0, 50, PRICE_CLOSE, 1) <= 22.049) && (iATR(NULL, 0, 200, 1) >= 0.658) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.143))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_354() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.049) && (iATR(NULL, 0, 200, 1) <= 0.826) && (ibs(1+5) >= 0.636))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_355() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.029))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_356() {
    if ((ibs(1+17) >= 0.524) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.758) && (iATR(NULL, 0, 50, 1) <= 1.231))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_357() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.143) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.886) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.587))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_358() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.013) && (SafeDivide(Close[1], Low[1]) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_359() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 14.559) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_360() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 91.796) && (ibs(1+7) <= 0.496) && (ibs(1+2) <= 0.725))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_361() {
    if ((SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.032) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.988) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) >= -0.297))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_362() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.419) && (iAO(NULL, 0, 1) <= -0.242) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.839))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_363() {
    if ((iATR(NULL, 0, 28, 1) >= 0.777) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.013) && (ibs(1+3) <= 0.567) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_364() {
    if ((iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.36) && (iATR(NULL, 0, 28, 1) >= 0.709) && (iATR(NULL, 0, 200, 1) <= 0.858) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.666))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_365() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (iDeMarker(NULL, 0, 21, 1) <= 0.507))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_366() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.596) && (ibs(1+2) <= 0.741) && (iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.033))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_367() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.611) && (SafeDivide(Close[1], Low[1]) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_368() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.448) && (ibs(1+17) >= 0.523) && (ibs(1+2) <= 0.725))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_369() {
    if ((SafeDivide(High[1], High[1 + 15]) <= 0.996) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 41) && (iATR(NULL, 0, 200, 1) >= 0.67) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_370() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.49) && (ibs(1+5) >= 0.463) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) >= 46.788) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.332))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_371() {
    if ((SafeDivide(High[1], High[1 + 4]) <= 0.99) && (SafeDivide(High[1], Close[1]) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_372() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.337) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.003) && (ibs(1+7) <= 0.488))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_373() {
    if ((iATR(NULL, 0, 28, 1) >= 0.712) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 0.906) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, 1)) <= 0.971))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_374() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.056) && (iATR(NULL, 0, 200, 1) <= 0.823) && (ibs(1+5) >= 0.605))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_375() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_376() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.806) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.336))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_377() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 1.001) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= -0.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_378() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.377) && (ibs(1+7) <= 0.523) && (ibs(1+2) <= 0.785))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_379() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, 1)) <= 0.976) && (iATR(NULL, 0, 100, 1) >= 0.836) && (SafeDivide(Close[1], Close[1 + 4]) <= 0.993) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= -1.972))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_380() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.592) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.491) && (SafeDivide(High[1], Close[1]) <= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_381() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (SafeDivide(Close[1], Close[1 + 22]) <= 0.998) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 47.455) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.533) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.832))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_382() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (ibs(1+2) <= 0.771) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.015) && (ibs(1+3) <= 0.762) && (ibs(1+7) <= 0.689))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_383() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.105) && (SafeDivide(Close[1], Close[1 + 4]) <= 0.99))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_384() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.61) && (SafeDivide(Low[1], Low[1 + 4]) <= 1.002) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= -1.918))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_385() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.804) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 90.707))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_386() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.988) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.777) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.034))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_387() {
    if ((ibs(1+5) >= 0.417) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.375) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) <= 1) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.705) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.018))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_388() {
    if ((iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.105) && (ibs(1+5) >= 0.58) && (ibs(1+7) <= 0.568) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.058))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_389() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.786) && (ibs(1+3) <= 0.468) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 14.286))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_390() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 105.875) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.029) && (ibs(1+5) >= 0.484) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.229))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_391() {
    if ((ibs(1+5) >= 0.559) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 51.852) && (ibs(1+7) <= 0.467))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_392() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) >= 16.581) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_393() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.609) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (ibs(1+11) >= 0.242))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_394() {
    if ((iRVI(NULL, 0, 14, MODE_MAIN, 1) <= 0.017) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 85.696))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_395() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (ibs(1+17) >= 0.615) && (ibs(1+5) >= 0.445) && (SafeDivide(High[1], Close[1]) >= 1.002) && (SafeDivide(High[1], High[1 + 29]) >= 1.009))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_396() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.997) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.801) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 38.249) && (ibs(1+3) <= 0.624))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_397() {
    if ((ibs(1+5) >= 0.535) && (ibs(1+7) <= 0.59) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.104) && (ibs(1+11) >= 0.79))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_398() {
    if ((iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 7.86) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 102.805) && (SafeDivide(Low[1], Low[1 + 15]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_399() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.249) && (SafeDivide(High[1], High[1 + 1]) >= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_400() {
    if ((iATR(NULL, 0, 200, 1) >= 0.697) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.496) && (SafeDivide(Low[1], Low[1 + 8]) <= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_401() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.571) && (ibs(1+7) <= 0.604) && (ibs(1+3) <= 0.611))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_402() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 38) && (ibs(1+17) >= 0.51) && (SafeDivide(Close[1], Close[1 + 15]) <= 1.016) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 0.999) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.039))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_403() {
    if ((iATR(NULL, 0, 200, 1) >= 0.714) && (ibs(1+7) <= 0.485) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.744) && (SafeDivide(High[1], High[1 + 15]) <= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_404() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.504) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.725))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_405() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 86.238) && (SafeDivide(Close[1], Close[1 + 15]) <= 1.016) && (iATR(NULL, 0, 200, 1) >= 0.69) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_406() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.611) && (ibs(1+3) <= 0.606))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_407() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (ibs(1+17) >= 0.503) && (ibs(1+2) <= 0.701) && (ibs(1+2) >= 0.243))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_408() {
    if ((iATR(NULL, 0, 100, 1) >= 0.926) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (SafeDivide(Close[1], Close[1 + 22]) <= 1.013))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_409() {
    if ((ibs(1+5) >= 0.505) && (ibs(1+7) <= 0.481) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 90.647))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_410() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.65) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.889) && (iATR(NULL, 0, 7, 1) >= 0.819))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_411() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.65) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 40.461) && (ibs(1+3) <= 0.339))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_412() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 93.97) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_413() {
    if ((ibs(1+17) >= 0.505) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.824) && (ibs(1+5) >= 0.549) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.202))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_414() {
    if ((ibs(1+2) <= 0.679) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.693) && (ibs(1+7) <= 0.433))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_415() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.589) && (ibs(1+2) <= 0.744) && (ibs(1+7) <= 0.464) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.07))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_416() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.478) && (ibs(1+2) <= 0.62) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.015))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_417() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.756) && (ibs(1+11) >= 0.188) && (ibs(1+7) >= 0.452) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 62.963))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_418() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 90.425) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.834) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.002) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 1.295) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) >= 0.98))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_419() {
    if ((ibs(1+7) <= 0.466) && (iATR(NULL, 0, 21, 1) >= 0.854) && (SafeDivide(Close[1], iBands(NULL, 0, 15, 2, 0, 0, MODE_UPPER, 1)) >= 0.989) && (iATR(NULL, 0, 200, 1) <= 0.978))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_420() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.893) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.004) && (iATR(NULL, 0, 200, 1) >= 0.697) && (SafeDivide(High[1], High[1 + 22]) <= 1.008) && (ibs(1+3) <= 0.796))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_421() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.004) && (SafeDivide(Close[1], Close[1 + 1]) <= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_422() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (ibs(1+3) <= 0.592) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.858) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 39.096))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_423() {
    if ((ibs(1+5) >= 0.568) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.075) && (iMFI(NULL, 0, 28, 1) <= 56.16) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 7.069))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_424() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.823) && (ibs(1+3) <= 0.585) && (SafeDivide(Close[1], Close[1 + 1]) >= 1) && (iATR(NULL, 0, 200, 1) >= 0.886) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.258))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_425() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.003) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.085) && (ibs(1+3) <= 0.672))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_426() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.293))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_427() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 82.071) && (ibs(1+3) <= 0.555) && (ibs(1+11) >= 0.446))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_428() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+5) >= 0.423) && (ibs(1+17) >= 0.645) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 92.308))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_429() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.577) && (ibs(1+5) >= 0.726))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_430() {
    if ((iATR(NULL, 0, 7, 1) >= 0.797) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 90.425) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.258))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_431() {
    if ((SafeDivide(Close[1], Close[1 + 4]) <= 0.989) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 21.836) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 1.028))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_432() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.003) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 75.635) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 1.147))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_433() {
    if ((ibs(1+5) >= 0.604) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) >= 2.634) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.627) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_434() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.974) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_435() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 49.153) && (SafeDivide(Close[1], Close[1 + 15]) >= 1.011) && (SafeDivide(Low[1], Low[1 + 8]) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_436() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iATR(NULL, 0, 50, 1) <= 0.905) && (SafeDivide(Low[1], Low[1 + 22]) >= 1.02))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_437() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.598) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.987) && (ibs(1+3) <= 0.595) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_UPPER, 1)) >= 0.982))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_438() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.988) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 44) && (iATR(NULL, 0, 50, 1) >= 1.109))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_439() {
    if ((iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 55.556) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 39.498) && (ibs(1+5) >= 0.492))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_440() {
    if ((ibs(1+5) >= 0.604) && (ibs(1+17) >= 0.5) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 77.323) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_441() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 105.875) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (ibs(1+3) <= 0.437))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_442() {
    if ((iATR(NULL, 0, 28, 1) >= 0.709) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 13.817) && (iCustom(NULL, 0, "Custom/MMI", 14, 0, 1) <= 61.538) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_443() {
    if ((iATR(NULL, 0, 200, 1) >= 0.727) && (iATR(NULL, 0, 200, 1) <= 0.834) && (ibs(1+7) <= 0.789) && (ibs(1+3) >= 0.282) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) >= 4.16))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_444() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.49) && (ibs(1+7) <= 0.604) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.097) && (iATR(NULL, 0, 50, 1) <= 1.188))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_445() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.129) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.305))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_446() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.015))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_447() {
    if ((iATR(NULL, 0, 200, 1) >= 0.682) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 45.972) && (iMFI(NULL, 0, 28, 1) >= 52.308) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, 1) <= 105.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_448() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (ibs(1+5) >= 0.795) && (ibs(1+7) <= 0.333))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_449() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 107.185) && (ibs(1+7) <= 0.22) && (SafeDivide(Low[1], Low[1 + 4]) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_450() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.753) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.667))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_451() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 50.268) && (ibs(1+3) <= 0.334))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_452() {
    if ((ibs(1+5) >= 0.53) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.186) && (iMFI(NULL, 0, 28, 1) <= 55.152))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_453() {
    if ((iATR(NULL, 0, 7, 1) >= 0.792) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.018) && (ibs(1+7) <= 0.436))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_454() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 40.984) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_455() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.003) && (iCCI(NULL, 0, 50, PRICE_CLOSE, 1) <= 20.343) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.533) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_456() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 91.838) && (SafeDivide(High[1], High[1 + 15]) <= 1.019) && (ibs(1+7) <= 0.426))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_457() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.003) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.774))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_458() {
    if ((ibs(1+2) <= 0.636) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 85.06) && (iATR(NULL, 0, 200, 1) >= 0.684) && (iATR(NULL, 0, 100, 1) <= 0.724))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_459() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.758) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= -0.087))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_460() {
    if ((iATR(NULL, 0, 200, 1) >= 0.694) && (SafeDivide(High[1], High[1 + 3]) <= 0.996) && (ibs(1+5) >= 0.45) && (ibs(1+17) >= 0.436))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_461() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.18) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_462() {
    if ((ibs(1+2) <= 0.783) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.975) && (ibs(1+7) <= 0.465) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1.001) && (SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.052))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_463() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.611) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.776) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.009))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_464() {
    if ((iATR(NULL, 0, 200, 1) >= 0.682) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.918) && (ibs(1+7) <= 0.521) && (iMFI(NULL, 0, 28, 1) <= 55.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_465() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (ibs(1+2) <= 0.692) && (ibs(1+7) <= 0.564) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.41))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_466() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 82.509) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.212))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_467() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.571) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.741) && (ibs(1+7) <= 0.592))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_468() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.846) && (ibs(1+2) <= 0.521) && (iATR(NULL, 0, 200, 1) >= 0.691) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.042) && (ibs(1+17) <= 0.568))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_469() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 28, 1) <= 0.434) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.392) && (ibs(1+7) <= 0.583))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_470() {
    if ((ibs(1+5) >= 0.53) && (iCustom(NULL, 0, "Custom/Aroon", 7, 0, 1) <= 42.857) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.296))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_471() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 86.139) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.004) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) >= 1.004) && (ibs(1+3) <= 0.613))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_472() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.489) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (SafeDivide(Low[1], Low[1 + 15]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_473() {
    if ((iATR(NULL, 0, 200, 1) >= 0.683) && (ibs(1+5) >= 0.481) && (ibs(1+7) <= 0.422) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 91.518))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_474() {
    if ((ibs(1+2) <= 0.701) && (iCustom(NULL, 0, "Custom/MMI", 14, 0, 1) <= 53.846) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_475() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 42.794) && (SafeDivide(Close[1], Close[1 + 15]) >= 1.012) && (ibs(1+7) <= 0.428))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_476() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 7, 0, 1) <= 57.143) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 12.745))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_477() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+17) >= 0.524) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.486))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_478() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.489) && (ibs(1+7) <= 0.594) && (ibs(1+5) >= 0.577) && (SafeDivide(High[1], Close[1]) <= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_479() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.098) && (ibs(1+7) <= 0.423) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) <= 40.634) && (ibs(1+3) <= 0.658))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_480() {
    if ((iATR(NULL, 0, 200, 1) >= 0.689) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 35.366) && (iATR(NULL, 0, 14, 1) >= 0.969) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_481() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 0.906) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.614))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_482() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.337) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.004) && (SafeDivide(High[1], High[1 + 1]) >= 1) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) >= 0.611))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_483() {
    if ((iATR(NULL, 0, 200, 1) >= 0.689) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, 1) <= 110.394) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 40) && (SafeDivide(Low[1], Low[1 + 29]) <= 1.022))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_484() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.734) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.351))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_485() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (ibs(1+5) >= 0.481) && (ibs(1+7) <= 0.516) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.231))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_486() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.293))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_487() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.898) && (iATR(NULL, 0, 200, 1) >= 0.686) && (SafeDivide(Close[1], Close[1 + 29]) <= 1.012))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_488() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 7, 0, 1) <= 57.143) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (iCustom(NULL, 0, "Custom/MMI", 14, 0, 1) <= 53.846))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_489() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+5) >= 0.422) && (ibs(1+7) <= 0.521))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_490() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 14.604) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) >= 7.881))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_491() {
    if ((iATR(NULL, 0, 50, 1) >= 0.777) && (ibs(1+11) >= 0.687) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.806))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_492() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.572) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= 0.741) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 1.132))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_493() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.734) && (ibs(1+7) <= 0.297))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_494() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.057) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.01) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.489))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_495() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 42.678) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 58.498) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.533))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_496() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 89.434) && (ibs(1+7) <= 0.287))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_497() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 7, 0, 1) <= 57.143) && (iATR(NULL, 0, 100, 1) >= 0.835) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.285) && (ibs(1+3) <= 0.454) && (SafeDivide(Close[1], Open[1 + 16]) <= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_498() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.005) && (iCCI(NULL, 0, 100, PRICE_CLOSE, 1) >= 110.613) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.646))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_499() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.186) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.814))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_500() {
    if ((ibs(1+2) <= 0.771) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.049) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.898) && (ibs(1+7) <= 0.498))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_501() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.835) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) >= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_502() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+5) >= 0.421) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.75) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, 1) <= 121.333))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_503() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.997) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.222) && (SafeDivide(High[1], High[1 + 1]) >= 0.998) && (ibs(1+17) >= 0.29))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_504() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.059) && (ibs(1+17) >= 0.568))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_505() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 14.604) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) >= 7.782))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_506() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.041) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.977))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_507() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.988) && (ibs(1+2) <= 0.324) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 79.389))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_508() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (ibs(1+5) >= 0.481) && (ibs(1+7) <= 0.521))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_509() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.032) && (ibs(1+3) <= 0.341))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_510() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (ibs(1+2) <= 0.645) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1.001) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.607) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.13))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_511() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.804) && (ibs(1+7) <= 0.285) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_512() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (SafeDivide(Close[1], iBands(NULL, 0, 50, 3, 0, 0, MODE_UPPER, 1)) <= 0.952))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_513() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.577) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, 1) >= 118.755) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_LOWER, 1)) <= 1.012))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_514() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 57.143) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.649))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_515() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (ibs(1+2) <= 0.701) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.022))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_516() {
    if ((ibs(1+5) >= 0.605) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.243) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 94.258))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_517() {
    if ((iATR(NULL, 0, 100, 1) >= 0.926) && (iDeMarker(NULL, 0, 28, 1) <= 0.399))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_518() {
    if ((iATR(NULL, 0, 100, 1) >= 0.836) && (iCustom(NULL, 0, "Custom/Aroon", 7, 0, 1) <= 42.857) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 91.04))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_519() {
    if ((SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.009) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.144) && (SafeDivide(High[1], High[1 + 29]) <= 1.033))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_520() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 40.721))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_521() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.608) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.971) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.009))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_522() {
    if ((iATR(NULL, 0, 7, 1) >= 0.819) && (iATR(NULL, 0, 7, 1) <= 0.907) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) >= 0.994))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_523() {
    if ((iATR(NULL, 0, 28, 1) >= 0.709) && (ibs(1+3) <= 0.647) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.496) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_524() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.972) && (SafeDivide(Close[1], Close[1 + 1]) <= 0.987))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_525() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (ibs(1+2) <= 0.696) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.755) && (SafeDivide(High[1], High[1 + 15]) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_526() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+5) >= 0.53) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.082) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_527() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, 1)) <= 0.972) && (SafeDivide(Close[1], Close[1 + 1]) <= 0.987))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_528() {
    if ((SafeDivide(High[1], High[1 + 1]) >= 1.004) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 6.41) && (ibs(1+11) >= 0.203) && (ibs(1+3) <= 0.583))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_529() {
    if ((iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.442) && (ibs(1+5) >= 0.578) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) >= 1) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 93.799))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_530() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.318) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.336) && (ibs(1+5) >= 0.451) && (ibs(1+17) >= 0.745))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_531() {
    if ((iATR(NULL, 0, 200, 1) >= 0.682) && (SafeDivide(High[1], High[1 + 22]) <= 1.002) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 99.031) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_532() {
    if ((SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iHighest(NULL, 0, MODE_HIGH, 100, 1) <= 1.239) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 83.415))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_533() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.478) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) >= 0.144) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 15.526) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_534() {
    if ((SafeDivide(High[1], High[1 + 4]) <= 0.99) && (SafeDivide(High[1], Close[1]) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_535() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+17) >= 0.528) && (SafeDivide(High[1], Close[1]) >= 1.002) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) <= -0.011))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_536() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (ibs(1+3) <= 0.6) && (ibs(1+11) >= 0.681) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_537() {
    if ((ibs(1+2) <= 0.641) && (SafeDivide(Close[1], Open[1 + 16]) <= 0.996) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.255))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_538() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 28, 1) <= 0.434) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_539() {
    if ((ibs(1+2) <= 0.718) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.012) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) <= 28.552))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_540() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.478) && (ibs(1+7) <= 0.253) && (ibs(1+5) >= 0.465))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_541() {
    if ((ibs(1+5) >= 0.559) && (iATR(NULL, 0, 200, 1) >= 0.678) && (SafeDivide(High[1], High[1 + 3]) <= 0.998) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, 1) <= 103.637))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_542() {
    if ((iATR(NULL, 0, 28, 1) >= 0.718) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (ibs(1+7) <= 0.594) && (ibs(1+5) >= 0.483))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_543() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 88.216) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.985) && (ibs(1+3) <= 0.394))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_544() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+17) >= 0.527) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.076) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_545() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 102.874))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_546() {
    if ((ibs(1+17) >= 0.406) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 77.542) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iMomentum(NULL, 0, 21, PRICE_CLOSE, 1) <= 99.668))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_547() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.172) && (SafeDivide(Close[1], Close[1 + 15]) >= 1.012))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_548() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+2) <= 0.35) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 84.292))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_549() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.65) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 40.721) && (ibs(1+3) <= 0.388))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_550() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (ibs(1+7) <= 0.585) && (ibs(1+11) >= 0.814))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_551() {
    if ((ibs(1+5) >= 0.53) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.082) && (iMFI(NULL, 0, 28, 1) <= 55.152))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_552() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.066) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.61) && (ibs(1+7) <= 0.592))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_553() {
    if ((iDeMarker(NULL, 0, 21, 1) <= 0.509) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 103.61) && (SafeDivide(Low[1], Low[1 + 29]) <= 0.989) && (ibs(1+11) >= 0.363))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_554() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (ibs(1+2) <= 0.705) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 37) && (SafeDivide(High[1], High[1 + 22]) <= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_555() {
    if ((iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 55.556) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 39.219) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) >= 25.719))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_556() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 41.012) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (iATR(NULL, 0, 200, 1) >= 0.681) && (ibs(1+2) <= 0.384))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_557() {
    if ((ibs(1+5) >= 0.417) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (iMFI(NULL, 0, 28, 1) <= 55.369))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_558() {
    if ((iCCI(NULL, 0, 100, PRICE_CLOSE, 1) >= 123.002) && (iCCI(NULL, 0, 100, PRICE_CLOSE, 1) <= 160.031) && (ibs(1+11) >= 0.57))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_559() {
    if ((iATR(NULL, 0, 200, 1) >= 0.691) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 89.983) && (ibs(1+7) <= 0.467))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_560() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) <= -0.722) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.841) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.018))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_561() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 49.153) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 42) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) >= 15) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_562() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 103.967) && (ibs(1+7) <= 0.251) && (SafeDivide(Close[1], Close[1 + 1]) >= 1.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_563() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 90.406) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.318))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_564() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.594) && (ibs(1+5) >= 0.528))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_565() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 100.224) && (SafeDivide(High[1], High[1 + 29]) <= 0.988))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_566() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.791) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.587))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_567() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 46.084) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 0.233) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) >= -0.331) && (iMomentum(NULL, 0, 21, PRICE_CLOSE, 1) >= 101.423))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_568() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.966) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.293))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_569() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.322) && (ibs(1+2) <= 0.478) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) >= 74.697))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_570() {
    if ((iATR(NULL, 0, 200, 1) >= 0.689) && (ibs(1+5) >= 0.414) && (ibs(1+7) <= 0.577) && (iCustom(NULL, 0, "Custom/Aroon", 21, 1, 1) <= 19.048))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_571() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.056) && (iATR(NULL, 0, 200, 1) <= 0.826) && (ibs(1+5) >= 0.662))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_572() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.55) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= -0.014))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_573() {
    if ((iATR(NULL, 0, 100, 1) >= 0.869) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 3.0, 0, 1) <= 115.07) && (iRSI(NULL, 0, 50, PRICE_CLOSE, 1) >= 53.198))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_574() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.258) && (iMACD(NULL, 0, 18, 22, 14, PRICE_CLOSE, MODE_MAIN, 1) <= -0.032) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 50, 1)) <= 4.604))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_575() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 103.967) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) >= 90.177) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.078))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_576() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (iWPR(NULL, 0, 50, 1) <= -63.909))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_577() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.995))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_578() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.001) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1) && (iWPR(NULL, 0, 28, 1) <= -37.293) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) <= 0.837))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_579() {
    if ((iATR(NULL, 0, 200, 1) >= 0.692) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.939) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.759) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.341))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_580() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 97.162) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_581() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, 1)) <= 0.992) && (SafeDivide(High[1], Close[1]) <= 1.006) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.368))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_582() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.468) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 99.42) && (SafeDivide(High[1], Close[1]) <= 1.005) && (iCCI(NULL, 0, 21, PRICE_CLOSE, 1) <= 129.22))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_583() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iCustom(NULL, 0, "Custom/Aroon", 7, 1, 1) >= 85.714) && (ibs(1+13) <= 0.684) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_584() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 86.922) && (iATR(NULL, 0, 200, 1) >= 0.693) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.887) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 62.963))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_585() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.007) && (iDeMarker(NULL, 0, 21, 1) <= 0.498))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_586() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.018) && (iDeMarker(NULL, 0, 100, 1) <= 0.439))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_587() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 104.517) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 7.192) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) <= 0.991) && (iDeMarker(NULL, 0, 21, 1) <= 0.497))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_588() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iATR(NULL, 0, 200, 1) >= 0.695) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.866) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_UPPER, 1)) >= 0.974) && (iWPR(NULL, 0, 100, 1) <= -43.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_589() {
    if ((iATR(NULL, 0, 21, 1) >= 0.804) && (iRSI(NULL, 0, 50, PRICE_CLOSE, 1) >= 54.734) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.334))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_590() {
    if ((iATR(NULL, 0, 21, 1) >= 0.772) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (ibs(1+7) <= 0.322) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.147))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_591() {
    if ((iATR(NULL, 0, 7, 1) >= 0.823) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.039) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_592() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 106.95) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.635) && (SafeDivide(Close[1], Close[1 + 4]) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_593() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.712) && (SafeDivide(Low[1], Low[1 + 8]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_594() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 0.998) && (iMFI(NULL, 0, 21, 1) >= 45.069))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_595() {
    if ((iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.485) && (iATR(NULL, 0, 100, 1) >= 0.869) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_596() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 44) && (ibs(1+2) <= 0.701) && (SafeDivide(iBands(NULL, 0, 21, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.005) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 96.084))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_597() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (ibs(1+2) <= 0.748) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 78.071) && (ibs(1+3) <= 0.505))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_598() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Low[1], Low[1 + 4]) <= 0.993) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_599() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iMACD(NULL, 0, 18, 22, 14, PRICE_CLOSE, MODE_MAIN, 1) <= -0.029) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 0.999) && (iDeMarker(NULL, 0, 21, 1) <= 0.497))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_600() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) <= 0.837) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 103.967) && (ibs(1+3) <= 0.595) && (ibs(1+7) <= 0.29))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_601() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (iDeMarker(NULL, 0, 21, 1) <= 0.51) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) >= 19.048))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_602() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.164) && (iWPR(NULL, 0, 50, 1) <= -60.591))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_603() {
    if ((iATR(NULL, 0, 21, 1) >= 0.801) && (iWPR(NULL, 0, 200, 1) >= -39.655) && (iMFI(NULL, 0, 100, 1) <= 56.871) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.719))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_604() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 91.404))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_605() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.516) && (SafeDivide(High[1], High[1 + 22]) <= 1.008) && (ibs(1+2) <= 0.775))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_606() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.797) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+9), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+9))) >= 1.013) && (SafeDivide(High[1], Close[1]) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_607() {
    if ((iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 3.0, 0, 1) >= 113.916) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, 1)) <= 1.02) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 56))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_608() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 7.199) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) >= 15.907) && (ibs(1+2) <= 0.734))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_609() {
    if ((iATR(NULL, 0, 28, 1) >= 0.719) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 105.267) && (iDeMarker(NULL, 0, 21, 1) <= 0.5) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) >= 9.524))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_610() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iATR(NULL, 0, 200, 1) >= 0.682) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, 1)) <= 1.035) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) >= 0.834))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_611() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) >= 1.608) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.999) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 0.996))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_612() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.478) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.013) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.315))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_613() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.002) && (ibs(1+11) <= 0.553) && (iWPR(NULL, 0, 100, 1) <= -56.901))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_614() {
    if ((iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 77.773) && (ibs(1+2) <= 0.742) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 82.484))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_615() {
    if ((iATR(NULL, 0, 21, 1) >= 0.794) && (SafeDivide(High[1], High[1 + 4]) <= 0.983) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) >= -0.502))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_616() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 103.967) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) >= 15.976) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) <= 73.084))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_617() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.894) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_618() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.214) && (iATR(NULL, 0, 50, 1) >= 0.679))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_619() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.134) && (ibs(1+3) <= 0.777))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_620() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.797) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, 1)) <= 1.022) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) <= 0.966) && (SafeDivide(Low[1], Low[1 + 22]) >= 0.977))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_621() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.152) && (SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.059) && (SafeDivide(High[1], High[1 + 15]) <= 1.018) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_622() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) >= 68.779) && (iMFI(NULL, 0, 100, 1) <= 56.885) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.497))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_623() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.598) && (iRVI(NULL, 0, 21, MODE_MAIN, 1) <= 0.041))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_624() {
    if ((iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.896) && (iATR(NULL, 0, 100, 1) >= 0.929) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, 1)) <= 1.022))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_625() {
    if ((iATR(NULL, 0, 7, 1) >= 0.815) && (iATR(NULL, 0, 21, 1) <= 1.087) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.638) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 15.526))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_626() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) <= 90.165) && (iRSI(NULL, 0, 14, PRICE_CLOSE, 1) <= 57.706) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 82.161) && (iRVI(NULL, 0, 28, MODE_MAIN, 1) <= 0.06))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_627() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.781) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 13.817) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.012))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_628() {
    if ((iATR(NULL, 0, 100, 1) >= 0.869) && (iWPR(NULL, 0, 21, 1) <= -62.877) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 45))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_629() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) <= 0.795) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001) && (SafeDivide(Low[1], Low[1 + 8]) <= 0.993))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_630() {
    if ((iATR(NULL, 0, 200, 1) >= 0.697) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.759) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.853))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_631() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.039) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_632() {
    if ((iATR(NULL, 0, 7, 1) >= 0.815) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.496) && (iDeMarker(NULL, 0, 21, 1) <= 0.495) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) >= 0.994))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_633() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.001) && (ibs(1+2) <= 0.428) && (iATR(NULL, 0, 200, 1) >= 0.957))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_634() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) <= 0.795) && (ibs(1+5) >= 0.422) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) >= 72.883) && (SafeDivide(Close[1], Close[1 + 29]) <= 1.049))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_635() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.264) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 7.192) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) >= 17.616) && (iCustom(NULL, 0, "Custom/MMI", 7, 0, 1) >= 66.667))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_636() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iMFI(NULL, 0, 100, 1) <= 56.885) && (iRSI(NULL, 0, 50, PRICE_CLOSE, 1) >= 54.792))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_637() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iDeMarker(NULL, 0, 100, 1) <= 0.418) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.533))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_638() {
    if ((iATR(NULL, 0, 28, 1) >= 0.712) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+9), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+9))) >= 1.006) && (ibs(1+3) <= 0.645) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_639() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.623) && (ibs(1+2) <= 0.748) && (SafeDivide(High[1], High[1 + 22]) <= 1.008) && (iATR(NULL, 0, 200, 1) >= 0.671))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_640() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.804) && (ibs(1+7) <= 0.29))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_641() {
    if ((iATR(NULL, 0, 7, 1) >= 0.839) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.478) && (SafeDivide(High[1], High[1 + 15]) <= 1.018))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_642() {
    if ((iATR(NULL, 0, 14, 1) >= 0.845) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.013) && (ibs(1+3) <= 0.65) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.009))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_643() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 48.961) && (ibs(1+5) >= 0.663) && (ibs(1+7) <= 0.56))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_644() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.815) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.693) && (ibs(1+7) <= 0.285))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_645() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) <= 88.005) && (ibs(1+2) <= 0.54) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) >= 84.469))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_646() {
    if ((iATR(NULL, 0, 21, 1) >= 0.854) && (ibs(1+7) <= 0.466) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) >= 22.435))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_647() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(Close[1], iBands(NULL, 0, 33, 2, 0, 0, MODE_UPPER, 1)) <= 0.974))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_648() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iATR(NULL, 0, 200, 1) >= 0.683) && (ibs(1+7) <= 0.479) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.916))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_649() {
    if ((iATR(NULL, 0, 100, 1) >= 0.927) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, 1)) <= 0.98) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_650() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 107.185) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MINUSDI, 1) >= 16.774) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 8.559) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_651() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.597) && (ibs(1+2) <= 0.356) && (iDeMarker(NULL, 0, 14, 1) <= 0.591))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_652() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.594) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.618) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.41))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_653() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iDeMarker(NULL, 0, 21, 1) <= 0.503) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 39) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_654() {
    if ((iATR(NULL, 0, 14, 1) >= 0.84) && (ibs(1+7) <= 0.274) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 102.805) && (SafeDivide(High[1], High[1 + 4]) <= 1.013))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_655() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (SafeDivide(Close[1], Close[1 + 3]) <= 0.997) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 50, 1)) <= 2.242))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_656() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.747) && (ibs(1+5) >= 0.413) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.409))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_657() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.059) && (iDeMarker(NULL, 0, 100, 1) <= 0.443) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_658() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (ibs(1+13) <= 0.705) && (ibs(1+2) <= 0.816) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.03))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_659() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 90.618) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= 0.065) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) >= 17.651))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_660() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.068) && (ibs(1+11) >= 0.759) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) <= 90.118))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_661() {
    if ((iATR(NULL, 0, 7, 1) >= 0.795) && (ibs(1+11) >= 0.758) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.21))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_662() {
    if ((iATR(NULL, 0, 7, 1) >= 0.789) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 0.992) && (ibs(1+13) <= 0.59))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_663() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (ibs(1+5) >= 0.758) && (SafeDivide(Close[1], iBands(NULL, 0, 33, 2, 0, 0, MODE_UPPER, 1)) <= 0.98) && (SafeDivide(Close[1], iBands(NULL, 0, 33, 2, 0, 0, MODE_UPPER, 1)) >= 0.959))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_664() {
    if ((iATR(NULL, 0, 50, 1) >= 0.692) && (iWPR(NULL, 0, 21, 1) <= -60.479) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_665() {
    if ((iATR(NULL, 0, 7, 1) >= 0.81) && (iWPR(NULL, 0, 200, 1) <= -73.326) && (SafeDivide(Close[1], iBands(NULL, 0, 33, 2, 0, 0, MODE_UPPER, 1)) <= 0.935))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_666() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.597) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.164) && (SafeDivide(Close[1], Open[1 + 31]) >= 0.964) && (ibs(1+3) <= 0.57))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_667() {
    if ((iATR(NULL, 0, 21, 1) >= 0.857) && (ibs(1+7) <= 0.493) && (ibs(1+5) >= 0.454) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_668() {
    if ((iATR(NULL, 0, 7, 1) >= 0.836) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, 1)) <= 0.976) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_669() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.067) && (iMFI(NULL, 0, 21, 1) <= 48.359) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) >= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_670() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 95.874) && (ibs(1+7) <= 0.275))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_671() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.977))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_672() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= -0.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_673() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iATR(NULL, 0, 100, 1) >= 0.871) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.996) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 96.55))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_674() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (ibs(1+5) >= 0.423) && (ibs(1+7) <= 0.5) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 91.987))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_675() {
    if ((iATR(NULL, 0, 100, 1) >= 0.927) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.748) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.565))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_676() {
    if ((SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.985) && (SafeDivide(High[1], Close[1]) <= 1.004) && (ibs(1+13) <= 0.6))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_677() {
    if ((iATR(NULL, 0, 21, 1) >= 0.841) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 0.993) && (ibs(1+13) <= 0.578))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_678() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 38.516) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 67.445))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_679() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, 1)) <= 0.976) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 92.073))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_680() {
    if ((iATR(NULL, 0, 21, 1) >= 0.857) && (ibs(1+7) <= 0.594) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.579) && (ibs(1+3) <= 0.606))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_681() {
    if ((iATR(NULL, 0, 100, 1) >= 0.871) && (iCustom(NULL, 0, "Custom/Aroon", 7, 0, 1) <= 42.857) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.576))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_682() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) <= 87.82) && (SafeDivide(Low[1], Low[1 + 3]) <= 1.006) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_683() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.687) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, 1)) <= 0.976) && (ibs(1+3) <= 0.583))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_684() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (iRSI(NULL, 0, 50, PRICE_CLOSE, 1) >= 53.993) && (iATR(NULL, 0, 7, 1) <= 0.991) && (iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.455))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_685() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.598) && (iRVI(NULL, 0, 21, MODE_MAIN, 1) <= 0.03) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_686() {
    if ((iATR(NULL, 0, 7, 1) >= 0.791) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.693) && (SafeDivide(Low[1], Low[1 + 22]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_687() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (iATR(NULL, 0, 50, 1) <= 0.9) && (SafeDivide(iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.001) && (SafeDivide(Close[1], Open[1 + 31]) >= 0.971))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_688() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) <= -3.949) && (ibs(1+2) <= 0.611))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_689() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.073) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.821) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (ibs(1+7) <= 0.426))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_690() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 3.0, 0, 1) <= 114.913) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) >= 97))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_691() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.002) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.575) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) <= 31.848))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_692() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (ibs(1+3) <= 0.823) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 100.21) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.976))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_693() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 35.366) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) >= 1.017) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.474))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_694() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 1.004) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) <= 9.535) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 4.284) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 1) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) >= 0.982))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_695() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 105.17) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (ibs(1+7) <= 0.521))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_696() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_697() {
    if ((iATR(NULL, 0, 7, 1) >= 0.788) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) <= 90.119) && (ibs(1+2) <= 0.788) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MAIN, 1) <= 33.242) && (SafeDivide(High[1], High[1 + 29]) <= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_698() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Close[1], Low[1]) <= 1.006) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.002) && (iATR(NULL, 0, 28, 1) >= 0.951))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_699() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (iWPR(NULL, 0, 28, 1) <= -19.467) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 0.999) && (ibs(1+2) <= 0.338))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_700() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.532) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.456) && (iDeMarker(NULL, 0, 14, 1) >= 0.322))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_701() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.073) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (ibs(1+3) <= 0.333))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_702() {
    if ((SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.999) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.062) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_703() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.045) && (ibs(1+7) <= 0.509) && (SafeDivide(Close[1], Close[1 + 8]) >= 1.007) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) <= 1.002) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+9), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+9))) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_704() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 102.874) && (iATR(NULL, 0, 28, 1) <= 1.178))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_705() {
    if ((iATR(NULL, 0, 14, 1) >= 0.818) && (ibs(1+5) >= 0.481) && (ibs(1+7) <= 0.521) && (ibs(1+3) <= 0.583))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_706() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.045) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.842) && (iATR(NULL, 0, 7, 1) >= 0.79))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_707() {
    if ((iATR(NULL, 0, 7, 1) >= 0.839) && (SafeDivide(High[1], High[1 + 3]) <= 0.991) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.7) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+9), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+9))) >= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_708() {
    if ((iATR(NULL, 0, 21, 1) >= 0.812) && (ibs(1+7) <= 0.237) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.705))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_709() {
    if ((iATR(NULL, 0, 200, 1) >= 0.714) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 85.255) && (iRSI(NULL, 0, 14, PRICE_CLOSE, 1) <= 58.835) && (ibs(1+7) <= 0.426))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_710() {
    if ((iATR(NULL, 0, 7, 1) >= 0.795) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) <= 1.236) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.163))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_711() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.018) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.225))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_712() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 14.559) && (SafeDivide(Close[1], Low[1]) <= 1.001) && (iCustom(NULL, 0, "Custom/MMI", 21, 0, 1) <= 60))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_713() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 89.942) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.808) && (iATR(NULL, 0, 28, 1) >= 0.66) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.123))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_714() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (SafeDivide(Close[1], Close[1 + 4]) <= 0.991) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.481))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_715() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.981) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 99.406) && (ibs(1+3) <= 0.583) && (SafeDivide(Close[1], Low[1]) >= 1.004) && (SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.081))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_716() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iDeMarker(NULL, 0, 14, 1) <= 0.592) && (iCustom(NULL, 0, "Custom/MMI", 7, 0, 1) >= 66.667) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_717() {
    if ((iATR(NULL, 0, 28, 1) >= 0.719) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 21, 1)) >= 21.538) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) >= 41.911))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_718() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.504) && (ibs(1+7) >= 0.368) && (ibs(1+11) >= 0.393) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.473))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_719() {
    if ((iATR(NULL, 0, 28, 1) >= 0.718) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) <= 90.124) && (ibs(1+2) <= 0.467) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MAIN, 1) <= 23.56))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_720() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 107.237) && (iDeMarker(NULL, 0, 14, 1) <= 0.591) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (iCustom(NULL, 0, "Custom/MMI", 7, 0, 1) >= 66.667))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_721() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.018) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.981) && (ibs(1+3) <= 0.59))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_722() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (ibs(1+7) >= 0.338) && (ibs(1+11) >= 0.524))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_723() {
    if ((ibs(1+7) <= 0.418) && (iATR(NULL, 0, 21, 1) >= 0.855) && (iDeMarker(NULL, 0, 50, 1) >= 0.574))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_724() {
    if ((iATR(NULL, 0, 28, 1) >= 0.718) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 102.455))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_725() {
    if ((iATR(NULL, 0, 28, 1) >= 0.708) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 0.999) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.534))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_726() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.073) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, 1)) <= 0.992) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) <= 35.585) && (SafeDivide(Low[1], Low[1 + 4]) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_727() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "Custom/Aroon", 7, 1, 1) >= 85.714) && (SafeDivide(High[1], Close[1]) >= 1.016))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_728() {
    if ((iATR(NULL, 0, 100, 1) >= 0.868) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 91.838) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.979) && (ibs(1+3) <= 0.777))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_729() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 95.018) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.954) && (SafeDivide(Low[1], Low[1 + 22]) <= 0.993))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_730() {
    if ((SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.005) && (iATR(NULL, 0, 7, 1) >= 0.811) && (iDeMarker(NULL, 0, 21, 1) <= 0.507) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MAIN, 1) <= 32.687))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_731() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 107.237) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.981) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) >= 0.994) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 99.146))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_732() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.005) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 101.403) && (iDeMarker(NULL, 0, 28, 1) >= 0.464))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_733() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 0.999) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.581))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_734() {
    if ((iATR(NULL, 0, 50, 1) >= 0.79) && (iRSI(NULL, 0, 7, PRICE_CLOSE, 1) <= 48.625) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(Close[1], iBands(NULL, 0, 50, 3, 0, 0, MODE_UPPER, 1)) <= 0.918))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_735() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 105.875) && (ibs(1+7) <= 0.426) && (SafeDivide(High[1], High[1 + 1]) >= 1.005) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.017))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_736() {
    if ((iATR(NULL, 0, 28, 1) >= 0.713) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.255) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 59.259) && (iDeMarker(NULL, 0, 14, 1) >= 0.322) && (iATR(NULL, 0, 21, 1) <= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_737() {
    if ((iATR(NULL, 0, 7, 1) >= 0.81) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.683) && (ibs(1+7) <= 0.453) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) >= 22.435))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_738() {
    if ((iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 40.984) && (SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.075) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 96.587))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_739() {
    if ((iATR(NULL, 0, 200, 1) >= 0.715) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 33.875) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.912) && (SafeDivide(Low[1], Low[1 + 29]) <= 1.019) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 0.984))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_740() {
    if ((iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(Close[1], iBands(NULL, 0, 33, 2, 0, 0, MODE_UPPER, 1)) <= 0.979) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.782) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_741() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iATR(NULL, 0, 200, 1) >= 0.692) && (ibs(1+7) <= 0.44) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.853))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_742() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.536) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 46) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_743() {
    if ((iATR(NULL, 0, 100, 1) >= 0.869) && (ibs(1+3) <= 0.641) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_744() {
    if ((iATR(NULL, 0, 7, 1) >= 0.815) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.002) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1.001) && (SafeDivide(High[1], Close[1]) <= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_745() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.734) && (ibs(1+2) <= 0.685) && (iRVI(NULL, 0, 21, MODE_MAIN, 1) <= 0.076))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_746() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.316) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.395))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_747() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 8.025) && (iCustom(NULL, 0, "Custom/MMI", 7, 0, 1) >= 66.667) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_748() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.841) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.144))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_749() {
    if ((SafeDivide(High[1], High[1 + 3]) <= 0.993) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008) && (ibs(1+13) <= 0.75))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_750() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 89.404) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.084) && (SafeDivide(Close[1], iBands(NULL, 0, 50, 3, 0, 0, MODE_UPPER, 1)) <= 0.965))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_751() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (ibs(1+13) <= 0.43) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.596) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, 1)) <= 1.041))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_752() {
    if ((iATR(NULL, 0, 14, 1) >= 0.968) && (ibs(1+3) <= 0.65) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+9), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+9))) >= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_753() {
    if ((iATR(NULL, 0, 200, 1) >= 0.68) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.614))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_754() {
    if ((iATR(NULL, 0, 14, 1) >= 0.811) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) >= 0.601) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= 0.972))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_755() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.414) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.041) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_756() {
    if ((iATR(NULL, 0, 21, 1) >= 0.772) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 35.46) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_757() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 7.197) && (ibs(1+7) <= 0.255) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) <= 1.014))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_758() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(High[1], High[1 + 3]) <= 0.992) && (ibs(1+13) <= 0.679) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_759() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.045) && (iBullsPower(NULL, 0, 100, PRICE_CLOSE, 1) <= 0.824) && (iDeMarker(NULL, 0, 100, 1) >= 0.485))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_760() {
    if ((iATR(NULL, 0, 50, 1) >= 0.691) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.216) && (iDeMarker(NULL, 0, 14, 1) <= 0.613) && (iMFI(NULL, 0, 100, 1) >= 49.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_761() {
    if ((SafeDivide(High[1], High[1 + 3]) <= 0.979))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_762() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iMACD(NULL, 0, 18, 22, 14, PRICE_CLOSE, MODE_MAIN, 1) <= -0.029) && (ibs(1+3) <= 0.718))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_763() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.004) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) <= 1.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_764() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 8.038) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.859) && (ibs(1+7) <= 0.426))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_765() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 7.23) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.827))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_766() {
    if ((iATR(NULL, 0, 100, 1) >= 0.872) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.015))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_767() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (iATR(NULL, 0, 14, 1) >= 0.84) && (ibs(1+7) <= 0.339))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_768() {
    if ((iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.04) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.001) && (ibs(1+13) <= 0.761) && (iDeMarker(NULL, 0, 21, 1) <= 0.502))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_769() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 91.684) && (iATR(NULL, 0, 200, 1) >= 0.696) && (ibs(1+7) <= 0.509) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.954))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_770() {
    if ((iATR(NULL, 0, 14, 1) >= 0.807) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 105.021) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) >= 0.984))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_771() {
    if ((iATR(NULL, 0, 100, 1) >= 0.873) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.99) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_772() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.337) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.022) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, 1)) >= 0.996))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_773() {
    if ((iATR(NULL, 0, 7, 1) >= 0.788) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.001) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.075))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_774() {
    if ((iATR(NULL, 0, 50, 1) >= 0.693) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.841) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.275))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_775() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 99.031) && (iATR(NULL, 0, 14, 1) >= 0.839) && (ibs(1+7) <= 0.322))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_776() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= 0.001) && (ibs(1+3) <= 0.59))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_777() {
    if ((iATR(NULL, 0, 100, 1) >= 0.869) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.005) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.992) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_778() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 6.68) && (SafeDivide(High[1], High[1 + 1]) >= 1.002) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= 0.128))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_779() {
    if ((iATR(NULL, 0, 50, 1) >= 0.691) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (iWPR(NULL, 0, 100, 1) <= -54.651) && (iRVI(NULL, 0, 28, MODE_MAIN, 1) >= -0.08))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_780() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) <= 0.795) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.285) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 93.132))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_781() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.025) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) >= 0.985))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_782() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 14, 1)) >= 7.235) && (SafeDivide(High[1], High[1 + 15]) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_783() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 100.498) && (iDeMarker(NULL, 0, 21, 1) <= 0.496) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.213))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_784() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (ibs(1+2) <= 0.746) && (SafeDivide(High[1], High[1 + 22]) <= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_785() {
    if ((iATR(NULL, 0, 100, 1) >= 0.869) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.998) && (iCCI(NULL, 0, 200, PRICE_CLOSE, 1) <= -43.062))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_786() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, 1) <= -0.022) && (SafeDivide(Low[1], Low[1 + 8]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_787() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iRVI(NULL, 0, 21, MODE_MAIN, 1) <= 0.078) && (ibs(1+2) <= 0.746) && (ibs(1+7) <= 0.496) && (ibs(1+3) <= 0.78))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_788() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (iBullsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 2.137) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MAIN, 1) <= 40.638) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) >= 1.573))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_789() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.258) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.838) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.335) && (ibs(1+7) <= 0.26) && (iMFI(NULL, 0, 100, 1) <= 56.778))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_790() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (iCCI(NULL, 0, 21, PRICE_CLOSE, 1) <= -145.249) && (ibs(1+13) <= 0.539))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_791() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.998) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_792() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iATR(NULL, 0, 7, 1) >= 0.773) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.954) && (iWPR(NULL, 0, 200, 1) >= -56.452))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_793() {
    if ((iATR(NULL, 0, 7, 1) >= 0.839) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (iATR(NULL, 0, 100, 1) >= 0.926) && (SafeDivide(High[1], High[1 + 4]) <= 0.981))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_794() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 107.121) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1) && (ibs(1+7) <= 0.682))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_795() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.594) && (ibs(1+5) >= 0.481) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.683))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_796() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.599) && (iWPR(NULL, 0, 28, 1) <= -58.092))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_797() {
    if ((iATR(NULL, 0, 200, 1) >= 0.748) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 86.238) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_798() {
    if ((iATR(NULL, 0, 21, 1) >= 0.857) && (ibs(1+7) <= 0.237) && (ibs(1+3) <= 0.499))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_799() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.599) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.981) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) >= 1.449) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, 1)) <= 1.033) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MAIN, 1) >= 17.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_800() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (SafeDivide(High[1], High[1 + 22]) <= 1.002) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_801() {
    if ((iATR(NULL, 0, 7, 1) >= 0.795) && (ibs(1+7) <= 0.241) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) <= 0.996))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_802() {
    if ((iATR(NULL, 0, 7, 1) >= 0.814) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.988) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 97.013))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_803() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 90.027) && (ibs(1+7) <= 0.44) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.399))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_804() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iRSI(NULL, 0, 7, PRICE_CLOSE, 1) <= 44.485) && (iATR(NULL, 0, 50, 1) >= 0.978) && (iMomentum(NULL, 0, 28, PRICE_CLOSE, 1) <= 96.628))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_805() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.749) && (ibs(1+3) <= 0.645) && (iDeMarker(NULL, 0, 14, 1) >= 0.282))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_806() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.823) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 100.776) && (iDeMarker(NULL, 0, 21, 1) <= 0.492) && (SafeDivide(Close[1], Low[1]) >= 1.004) && (SafeDivide(High[1], High[1 + 4]) <= 1.011))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_807() {
    if ((iATR(NULL, 0, 7, 1) >= 0.795) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.687) && (SafeDivide(High[1], High[1 + 22]) <= 1.001) && (SafeDivide(Low[1], Low[1 + 3]) <= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_808() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.006) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.056) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_809() {
    if ((SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 0.992) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.747) && (SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.127))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_810() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.306) && (iATR(NULL, 0, 200, 1) >= 0.779) && (ibs(1+7) <= 0.484) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1.011) && (SafeDivide(Close[1], Close[1 + 8]) >= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_811() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 87.654) && (iRSI(NULL, 0, 7, PRICE_CLOSE, 1) <= 66.723) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_812() {
    if ((iATR(NULL, 0, 21, 1) >= 0.867) && (ibs(1+5) >= 0.421) && (ibs(1+7) <= 0.582) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.493))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_813() {
    if ((iATR(NULL, 0, 100, 1) >= 0.889) && (iBullsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= 0.611) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.002) && (iCustom(NULL, 0, "Custom/MMI", 21, 0, 1) >= 60))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_814() {
    if ((iATR(NULL, 0, 200, 1) >= 0.747) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 88.724) && (ibs(1+7) <= 0.479) && (ibs(1+3) <= 0.507))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_815() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.748) && (iRVI(NULL, 0, 28, MODE_MAIN, 1) <= -0.069))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_816() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.623) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.386))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_817() {
    if ((iATR(NULL, 0, 7, 1) >= 0.839) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.976) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_818() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.599) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.993) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_819() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (SafeDivide(High[1], High[1 + 4]) <= 0.98) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) >= -0.511))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_820() {
    if ((iATR(NULL, 0, 50, 1) >= 0.809) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (iATR(NULL, 0, 50, 1) <= 0.892) && (iCCI(NULL, 0, 21, PRICE_CLOSE, 1) >= -96.952))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_821() {
    if ((iATR(NULL, 0, 100, 1) >= 0.921) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (SafeDivide(Close[1], Close[1 + 22]) <= 1.014))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_822() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.998) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001) && (SafeDivide(Close[1], Open[1 + 16]) <= 1.015))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_823() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.734) && (ibs(1+2) <= 0.645) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 1.041))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_824() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (ibs(1+2) <= 0.786) && (iMFI(NULL, 0, 100, 1) <= 51.727) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_825() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.073) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iWPR(NULL, 0, 21, 1) <= -60.792))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_826() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (SafeDivide(Close[1], Open[1 + 16]) <= 0.989) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_827() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.478) && (ibs(1+7) <= 0.274))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_828() {
    if ((iATR(NULL, 0, 7, 1) >= 0.797) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.002) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) <= 0.093) && (iDeMarker(NULL, 0, 14, 1) >= 0.385))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_829() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (ibs(1+11) >= 0.687) && (iATR(NULL, 0, 200, 1) <= 1.011) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) <= 0.792) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.078))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_830() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.734) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.318))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_831() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCCI(NULL, 0, 21, PRICE_CLOSE, 1) <= -132.684) && (iATR(NULL, 0, 28, 1) >= 0.961))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_832() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.993) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.156))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_833() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (iDeMarker(NULL, 0, 28, 1) <= 0.423) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MAIN, 1) <= 33.979))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_834() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.693) && (SafeDivide(Low[1], Low[1 + 15]) <= 1.015) && (ibs(1+2) <= 0.79) && (iOsMA(NULL, 0, 12, 26, 6, PRICE_CLOSE, 1) <= 0.125))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_835() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.503) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 102.874) && (ibs(1+7) <= 0.5))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_836() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.604) && (ibs(1+2) <= 0.629) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.483))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_837() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.598) && (ibs(1+7) <= 0.275))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_838() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.683) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) <= 0.225) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (SafeDivide(Low[1], Low[1 + 3]) <= 1.007))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_839() {
    if ((SafeDivide(High[1], High[1 + 22]) <= 0.988) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.763) && (iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, 1) >= 19.018))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_840() {
    if ((iATR(NULL, 0, 7, 1) >= 0.791) && (ibs(1+13) <= 0.628) && (iRVI(NULL, 0, 200, MODE_MAIN, 1) >= 0.04) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_841() {
    if ((iATR(NULL, 0, 7, 1) >= 0.81) && (ibs(1+5) >= 0.422) && (iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, 1) >= 76.83) && (iMFI(NULL, 0, 28, 1) <= 60.449))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_842() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.337) && (ibs(1+2) <= 0.769) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 77.755) && (SafeDivide(High[1], High[1 + 1]) >= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_843() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 0.993) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MAIN, 1) <= 33.354) && (SafeDivide(High[1], High[1 + 1]) >= 0.991))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_844() {
    if ((iATR(NULL, 0, 7, 1) >= 0.816) && (ibs(1+7) <= 0.466) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 93.741) && (iRVI(NULL, 0, 21, MODE_MAIN, 1) <= 0.037))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_845() {
    if ((iATR(NULL, 0, 7, 1) >= 0.836) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001) && (iDeMarker(NULL, 0, 21, 1) <= 0.503) && (iATR(NULL, 0, 21, 1) >= 0.958))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_846() {
    if ((iATR(NULL, 0, 200, 1) >= 0.748) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, 1)) <= 0.974) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 45) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.995))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_847() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.597) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= -0.042) && (iBearsPower(NULL, 0, 7, PRICE_CLOSE, 1) <= -0.404))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_848() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.303))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_849() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.497) && (iATR(NULL, 0, 100, 1) >= 0.926) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.764))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_850() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 106.981) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.255) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.067))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_851() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.004) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.972))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_852() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.285) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 87.304))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_853() {
    if ((iATR(NULL, 0, 7, 1) >= 0.791) && (ibs(1+5) >= 0.45) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 19.447) && (iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MINUSDI, 1) <= 22.064))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_854() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 98.889) && (ibs(1+3) <= 0.769))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_855() {
    if ((SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.097) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) <= 24.718) && (iWPR(NULL, 0, 21, 1) <= -62.128))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_856() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (ibs(1+7) <= 0.426) && (iATR(NULL, 0, 200, 1) >= 0.717) && (iBullsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= 0.917))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_857() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.65) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.982) && (ibs(1+3) <= 0.856))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_858() {
    if ((iATR(NULL, 0, 7, 1) >= 0.81) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 47.667) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_859() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.585) && (ibs(1+5) >= 0.421) && (iATR(NULL, 0, 50, 1) <= 1.172) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 92.428))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_860() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.976) && (SafeDivide(Close[1], Low[1]) <= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_861() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 100.073) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 61.905) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (SafeDivide(Low[1], Low[1 + 8]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_862() {
    if ((iDeMarker(NULL, 0, 21, 1) <= 0.534) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 103.987) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= -0.049) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.352))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_863() {
    if ((iATR(NULL, 0, 100, 1) >= 0.869) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 97.268) && (SafeDivide(High[1], High[1 + 29]) <= 0.99) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MAIN, 1) <= 32.856) && (iDeMarker(NULL, 0, 21, 1) <= 0.452))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_864() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.981) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.78))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_865() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.492) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.981) && (SafeDivide(Low[1], Low[1 + 8]) <= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_866() {
    if ((iATR(NULL, 0, 100, 1) >= 0.803) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.583) && (iWPR(NULL, 0, 100, 1) <= -74.675))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_867() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 102.874))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_868() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) >= 20.538) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_UPPER, 1)) >= 0.985))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_869() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.599) && (iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, 1) <= -0.038) && (iWPR(NULL, 0, 21, 1) <= -61.106))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_870() {
    if ((iATR(NULL, 0, 200, 1) >= 0.693) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.65) && (iBullsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= 0.614) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.075))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_871() {
    if ((iATR(NULL, 0, 7, 1) >= 0.81) && (iCCI(NULL, 0, 21, PRICE_CLOSE, 1) <= -31.372) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_872() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 105.304) && (ibs(1+7) <= 0.255) && (iATR(NULL, 0, 7, 1) >= 0.842) && (SafeDivide(iBands(NULL, 0, 21, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_873() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 87.65) && (iATR(NULL, 0, 200, 1) >= 0.692) && (iRSI(NULL, 0, 28, PRICE_CLOSE, 1) <= 52.47))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_874() {
    if ((iATR(NULL, 0, 28, 1) >= 0.72) && (iDeMarker(NULL, 0, 100, 1) <= 0.425) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 1) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_875() {
    if ((iATR(NULL, 0, 100, 1) >= 0.927) && (SafeDivide(iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 14, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) <= 0.998) && (ibs(1+3) <= 0.293))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_876() {
    if ((iATR(NULL, 0, 14, 1) >= 0.838) && (ibs(1+7) <= 0.592) && (ibs(1+5) >= 0.481) && (iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 102.874))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_877() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.401) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.318))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_878() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) <= 0.985) && (SafeDivide(High[1], High[1 + 4]) <= 0.98) && (iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, 1) >= -0.609))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_879() {
    if ((iATR(NULL, 0, 14, 1) >= 0.84) && (ibs(1+7) <= 0.594) && (ibs(1+5) >= 0.481) && (iRSI(NULL, 0, 50, PRICE_CLOSE, 1) >= 55.161))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_880() {
    if ((iATR(NULL, 0, 100, 1) >= 0.857) && (ibs(1+11) >= 0.77) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_UPPER, 1) <= 87.085))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_881() {
    if ((iATR(NULL, 0, 7, 1) >= 0.79) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 49.153) && (SafeDivide(High[1], High[1 + 4]) <= 0.98) && (iDeMarker(NULL, 0, 14, 1) >= 0.189))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_882() {
    if ((iATR(NULL, 0, 7, 1) >= 0.81) && (ibs(1+7) <= 0.523) && (iRVI(NULL, 0, 28, MODE_MAIN, 1) <= -0.058) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_883() {
    if ((iATR(NULL, 0, 100, 1) >= 0.869) && (ibs(1+3) <= 0.645) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.015))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_884() {
    if ((iATR(NULL, 0, 21, 1) >= 0.854) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.993) && (ibs(1+3) <= 0.436))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_885() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.975) && (ibs(1+7) <= 0.56))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_886() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 107.118) && (iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, 1) <= 82.015) && (ibs(1+3) <= 0.327) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.048))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_887() {
    if ((iATR(NULL, 0, 200, 1) >= 0.768) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 51.852) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) <= -1.676))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_888() {
    if ((iATR(NULL, 0, 21, 1) >= 0.997) && (iCCI(NULL, 0, 21, PRICE_CLOSE, 1) <= -132.559))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_889() {
    if ((SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.059) && (ibs(1+2) <= 0.641) && (iMFI(NULL, 0, 100, 1) <= 49.12) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.783))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_890() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.001) && (iDeMarker(NULL, 0, 21, 1) <= 0.503) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_891() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) <= -1.27) && (iCustom(NULL, 0, "Custom/Aroon", 7, 0, 1) <= 42.857) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) <= 31))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_892() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, 1) >= 18.455) && (ibs(1+11) >= 0.276) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_893() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) <= 0.816) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 81.838) && (ibs(1+2) <= 0.514) && (iMFI(NULL, 0, 100, 1) <= 49.208))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_894() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.249) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 67.857))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_895() {
    if ((iATR(NULL, 0, 7, 1) >= 0.819) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.968) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, 1) >= 14.852) && (iATR(NULL, 0, 7, 1) <= 0.983))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_896() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.19) && (iATR(NULL, 0, 7, 1) >= 0.773) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.224))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_897() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 99.5) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.838) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 46.429) && (SafeDivide(High[1], High[1 + 1]) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_898() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 99.5) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.974))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_899() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.241) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 84.676))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_900() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.821) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.429) && (ibs(1+2) <= 0.685) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 72.372))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_901() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.322) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.139) && (iMFI(NULL, 0, 100, 1) <= 56.534) && (SafeDivide(iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 31, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.07) && (SafeDivide(iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7)) <= 1.026))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_902() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.258) && (iAD(NULL, 0, 1) <= 13416340.963) && (SafeDivide(Close[1], iBands(NULL, 0, 25, 2, 0, 0, MODE_LOWER, 1)) <= 1.049) && (iWPR(NULL, 0, 200, 1) >= -41.959))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_903() {
    if ((iATR(NULL, 0, 7, 1) >= 0.819) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_UPPER, 1)) >= 0.981) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) >= 1.994))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_904() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.537) && (SafeDivide(Close[1], Low[1]) >= 1.006) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 78.571) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.267))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_905() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iMFI(NULL, 0, 100, 1) <= 49.208) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 59.259) && (ibs(1+2) <= 0.696))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_906() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.537) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) <= -0.346) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.315) && (ibs(1+3) <= 0.529))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_907() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (iATR(NULL, 0, 50, 1) >= 0.675) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.216) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_908() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.34) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (iDeMarker(NULL, 0, 28, 1) <= 0.433))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_909() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.817) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.51) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.315) && (iBearsPower(NULL, 0, 50, PRICE_CLOSE, 1) <= -0.316))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_910() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.448) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.817) && (iDeMarker(NULL, 0, 21, 1) <= 0.493))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_911() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 99.422) && (iDeMarker(NULL, 0, 21, 1) <= 0.491) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.309))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_912() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.19) && (iDeMarker(NULL, 0, 21, 1) <= 0.51) && (iBearsPower(NULL, 0, 200, PRICE_CLOSE, 1) <= -2.606))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_913() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iMFI(NULL, 0, 100, 1) <= 50.929) && (ibs(1+7) <= 0.705) && (ibs(1+3) <= 0.523) && (ibs(1+5) >= 0.513))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_914() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.098) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.839) && (iDeMarker(NULL, 0, 21, 1) <= 0.503) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.204) && (SafeDivide(Close[1], Low[1]) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_915() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.19) && (iATR(NULL, 0, 7, 1) >= 0.773) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.21))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_916() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.152) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (SafeDivide(Close[1], iBands(NULL, 0, 25, 2, 0, 0, MODE_UPPER, 1)) <= 0.989) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.739))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_917() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.258) && (ibs(1+2) <= 0.745) && (iCustom(NULL, 0, "Custom/Aroon", 21, 0, 1) <= 57.143) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3))) >= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_918() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.623) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.349))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_919() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.841) && (iATR(NULL, 0, 200, 1) >= 0.695) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.232))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_920() {
    if ((iATR(NULL, 0, 100, 1) >= 0.836) && (ibs(1+7) <= 0.584) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 90.63) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+9), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+9))) >= 1.021))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_921() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.823) && (iBands(NULL, 0, 33, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.933) && (ibs(1+2) <= 0.467) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_922() {
    if ((iATR(NULL, 0, 7, 1) >= 0.823) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.804) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.002) && (ibs(1+3) <= 0.778) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.568))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_923() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.804) && (ibs(1+7) <= 0.258) && (ibs(1+3) <= 0.625))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_924() {
    if ((iATR(NULL, 0, 21, 1) >= 0.859) && (ibs(1+5) >= 0.421) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.83) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) >= 61) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.078))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_925() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.817) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.323) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.253) && (SafeDivide(Close[1], Close[1 + 29]) <= 1.012))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_926() {
    if ((iATR(NULL, 0, 21, 1) >= 0.868) && (SafeDivide(High[1], High[1 + 3]) <= 1) && (ibs(1+7) <= 0.707) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 90.649) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, 1)) <= 1.022))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_927() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (ibs(1+3) <= 0.523) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.606) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_928() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 91.909) && (ibs(1+7) <= 0.285) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.399) && (ibs(1+3) <= 0.813))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_929() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.428) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.355) && (SafeDivide(High[1], High[1 + 29]) <= 1.011))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_930() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.817) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.804) && (iClose(NULL, 0, iLowest(NULL, 0, MODE_LOW, 100, 1)) <= 2.346) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.568) && (ibs(1+7) <= 0.258))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_931() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.949) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.815) && (iDeMarker(NULL, 0, 21, 1) <= 0.498) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.244))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_932() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.817) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.83) && (SafeDivide(High[1], High[1 + 29]) <= 1.011) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.368) && (ibs(1+7) <= 0.521))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_933() {
    if ((iATR(NULL, 0, 7, 1) >= 0.788) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 91.451) && (ibs(1+2) <= 0.645) && (iBWMFI(NULL, 0, 1) >= 0.01) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_LOWER, 1)) <= 1.046))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_934() {
    if ((iATR(NULL, 0, 7, 1) >= 0.793) && (iCustom(NULL, 0, "Custom/MMI", 14, 0, 1) <= 53.846) && (ibs(1+2) <= 0.636) && (iMFI(NULL, 0, 100, 1) <= 49.644))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_935() {
    if ((iATR(NULL, 0, 200, 1) >= 0.734) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (ibs(1+7) <= 0.483) && (ibs(1+3) <= 0.523))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_936() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.225) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) <= 19.745) && (iDeMarker(NULL, 0, 21, 1) <= 0.458))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_937() {
    if ((SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.056) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.015) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 89.501) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.019))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_938() {
    if ((iATR(NULL, 0, 200, 1) >= 0.727) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.949) && (ibs(1+7) <= 0.488) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.269))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_939() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iBands(NULL, 0, 33, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.908) && (ibs(1+2) <= 0.479) && (iDeMarker(NULL, 0, 200, 1) >= 0.461))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_940() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.063) && (ibs(1+2) <= 0.369) && (ibs(1+3) <= 0.636))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_941() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 92.091) && (ibs(1+2) <= 0.215) && (SafeDivide(Close[1], Close[1 + 3]) >= 0.993))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_942() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.82) && (ibs(1+2) <= 0.776) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.828) && (iDeMarker(NULL, 0, 21, 1) <= 0.411))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_943() {
    if ((SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.094) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.021) && (iWPR(NULL, 0, 200, 1) <= -76.373))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_944() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (ibs(1+7) <= 0.436) && (iATR(NULL, 0, 200, 1) >= 0.714) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.249))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_945() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.687) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3)) >= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_946() {
    if ((iATR(NULL, 0, 21, 1) >= 0.878) && (ibs(1+7) <= 0.414) && (ibs(1+3) <= 0.499) && (ibs(1+5) >= 0.485))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_947() {
    if ((iATR(NULL, 0, 14, 1) >= 0.839) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.011) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MAIN, 1) <= 11.123))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_948() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 93.97) && (SafeDivide(High[1], High[1 + 29]) <= 0.989) && (ibs(1+3) <= 0.333))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_949() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2)) >= 1) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.458) && (ibs(1+5) >= 0.467) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.017))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_950() {
    if ((SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+9), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+9))) >= 1.009) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.035))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_951() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.981) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.259) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 0.996))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_952() {
    if ((iATR(NULL, 0, 7, 1) >= 0.797) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 89.505) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.015) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.017))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_953() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (ibs(1+3) <= 0.523) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.949) && (ibs(1+7) <= 0.5))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_954() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.991) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_UPPER, 1)) >= 0.987))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_955() {
    if ((iATR(NULL, 0, 7, 1) >= 0.822) && (iAD(NULL, 0, 1) <= 7486523.717) && (ibs(1+11) <= 0.562) && (ibs(1+2) <= 0.78) && (SafeDivide(iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 21, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 0.998))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_956() {
    if ((iATR(NULL, 0, 7, 1) >= 0.832) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.478) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, 1)) <= 0.979) && (SafeDivide(Close[1], iBands(NULL, 0, 6, 2, 0, 0,  MODE_UPPER, 1)) >= 0.987))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_957() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iBearsPower(NULL, 0, 100, PRICE_CLOSE, 1) <= -3.327) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.021))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_958() {
    if ((iATR(NULL, 0, 7, 1) >= 0.807) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.886) && (ibs(1+7) <= 0.243) && (SafeDivide(SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 0.997))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_959() {
    if ((iATR(NULL, 0, 28, 1) >= 0.66) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 87.633) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 78.571) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.264) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_960() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 93.97) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.992) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+3)) >= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_961() {
    if ((iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.83) && (SafeDivide(Close[1], Close[1 + 29]) <= 0.993) && (iMomentum(NULL, 0, 100, PRICE_CLOSE, 1) <= 99.16) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 0.986))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_962() {
    if ((iATR(NULL, 0, 7, 1) >= 0.839) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.623) && (ibs(1+7) <= 0.636) && (SafeDivide(High[1], High[1 + 29]) <= 1.01))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_963() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.597) && (iATR(NULL, 0, 7, 1) >= 0.779) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.253) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2)) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_964() {
    if ((iATR(NULL, 0, 21, 1) >= 0.868) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.918) && (iWPR(NULL, 0, 100, 1) <= -64.653) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_LOWER, 1)) <= 1.046) && (SafeDivide(High[1], High[1 + 29]) <= 0.965))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_965() {
    if ((iATR(NULL, 0, 7, 1) >= 0.808) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.728) && (ibs(1+2) <= 0.446) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.355))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_966() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.019) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.018))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_967() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.537) && (iATR(NULL, 0, 7, 1) >= 0.773) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.214))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_968() {
    if ((iATR(NULL, 0, 7, 1) >= 0.815) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.214) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 96.249) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_969() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.797) && (SafeDivide(Close[1], Close[1 + 4]) <= 0.993) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) >= 1.554))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_970() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.258) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.835) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.218) && (ibs(1+3) <= 0.583))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_971() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.822) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 94.55) && (iDeMarker(NULL, 0, 21, 1) <= 0.493) && (SafeDivide(Close[1], Low[1]) >= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_972() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 93.993) && (iATR(NULL, 0, 7, 1) >= 0.779) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.213))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_973() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.816) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 85.055) && (ibs(1+2) <= 0.718) && (ibs(1+3) <= 0.829) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_LOWER, 1)) <= 1.065))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_974() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.797) && (iMFI(NULL, 0, 100, 1) <= 50.317) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.204))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_975() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.336) && (iATR(NULL, 0, 7, 1) >= 0.773) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.228))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_976() {
    if ((iATR(NULL, 0, 7, 1) >= 0.731) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.207))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_977() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (iATR(NULL, 0, 7, 1) >= 0.779) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.218) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 93.652))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_978() {
    if ((iCustom(NULL, 0, "Custom/MMI", 14, 0, 1) <= 53.846) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 25, 0, 1)) <= 0.835) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.082) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.25))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_979() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iMFI(NULL, 0, 100, 1) <= 49.208) && (iATR(NULL, 0, 28, 1) <= 1.003) && (iCustom(NULL, 0, "Custom/MMI", 28, 0, 1) <= 55.556))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_980() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.19) && (iATR(NULL, 0, 7, 1) >= 0.793) && (iDeMarker(NULL, 0, 21, 1) <= 0.503))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_981() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.336) && (iATR(NULL, 0, 7, 1) >= 0.773) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.213) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) <= 1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_982() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.098) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.839) && (SafeDivide(Close[1], iBands(NULL, 0, 50, 3, 0, 0, MODE_UPPER, 1)) >= 0.976) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.409) && (iMFI(NULL, 0, 100, 1) <= 56.154))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_983() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 100.498) && (iATR(NULL, 0, 7, 1) >= 0.822) && (iDeMarker(NULL, 0, 21, 1) <= 0.504))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_984() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.797) && (SafeDivide(High[1], High[1 + 3]) <= 0.993) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) >= 1.554))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_985() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.179) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 21, 25, 25, 0, 1)) <= 0.824) && (iBands(NULL, 0, 15, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 83.183) && (ibs(1+2) <= 0.72) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 2, 0, 0, MODE_LOWER, 1)) <= 1.052))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_986() {
    if ((iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.19) && (SafeDivide(High[1], High[1 + 1]) >= 1.001) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.33))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_987() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.258) && (iATR(NULL, 0, 7, 1) >= 0.779) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) >= 15.174) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) <= 1.125) && (SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.052))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_988() {
    if ((iATR(NULL, 0, 50, 1) >= 0.69) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.195) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.336) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 78.571))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_989() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 25, 0, 1)) <= 0.797) && (iMFI(NULL, 0, 100, 1) <= 50.854) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.016))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_990() {
    if ((iATR(NULL, 0, 7, 1) >= 0.79) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.537) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.213) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, 1) >= 15.174))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_991() {
    if ((iCustom(NULL, 0, "SuperTrend", 21, 2.0, 0, 1) <= 94.161) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 21, 25, 25, 0, 1)) <= 0.817) && (ibs(1+3) <= 0.606) && (ibs(1+7) <= 0.29))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_992() {
    if ((iATR(NULL, 0, 7, 1) >= 0.743) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 94.336) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.228) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 82.143))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_993() {
    if ((iATR(NULL, 0, 7, 1) >= 0.81) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.918) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.55) && (SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.1))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_994() {
    if ((iATR(NULL, 0, 200, 1) >= 0.728) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (ibs(1+7) <= 0.433) && (SafeDivide(Close[1], iBands(NULL, 0, 33, 2, 0, 0, MODE_LOWER, 1)) <= 1.046))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_995() {
    if ((iATR(NULL, 0, 100, 1) >= 0.927) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.954) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.361) && (SafeDivide(iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 7, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5)) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_996() {
    if ((iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.687) && (iCustom(NULL, 0, "Custom/Aroon", 28, 0, 1) <= 75) && (iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 78.526) && (iMFI(NULL, 0, 100, 1) >= 49.452) && (ibs(1+3) <= 0.861))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_997() {
    if ((SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.097) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.021) && (iCCI(NULL, 0, 200, PRICE_CLOSE, 1) <= -116.349))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_998() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.817) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 91.606) && (ibs(1+2) <= 0.492) && (SafeDivide(Close[1], iBands(NULL, 0, 25, 2, 0, 0, MODE_UPPER, 1)) >= 0.986) && (SafeDivide(Close[1], iBands(NULL, 0, 25, 2, 0, 0, MODE_UPPER, 1)) <= 0.993))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_999() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.398) && (ibs(1+2) <= 0.356) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 93.674))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1000() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.819) && (iCustom(NULL, 0, "SuperTrend", 17, 2.0, 0, 1) <= 91.502) && (ibs(1+3) <= 0.632) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) <= 1.368) && (SafeDivide(High[1], Close[1]) <= 1.006))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1001() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iBands(NULL, 0, 33, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.908) && (ibs(1+2) <= 0.397) && (iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, 1) <= 19.645))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1002() {
    if ((iATR(NULL, 0, 7, 1) >= 0.807) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.009) && (iBands(NULL, 0, 20, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 90.804) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 13.79))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1003() {
    if ((iATR(NULL, 0, 21, 1) >= 0.847) && (ibs(1+7) <= 0.584) && (iBands(NULL, 0, 15, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 90.013) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.515) && (SafeDivide(High[1], High[1 + 3]) <= 1.005))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1004() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iMFI(NULL, 0, 100, 1) <= 50.583) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.353) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2)) <= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1005() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.824) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.651) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.244) && (iWPR(NULL, 0, 100, 1) <= -48.673) && (SafeDivide(High[1], High[1 + 1]) >= 1.001))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1006() {
    if ((iATR(NULL, 0, 28, 1) >= 0.711) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.39) && (iBands(NULL, 0, 33, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.885) && (ibs(1+2) <= 0.479))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1007() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 25, 0, 1)) <= 0.818) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.516) && (iBearsPower(NULL, 0, 21, PRICE_CLOSE, 1) <= -0.277) && (SafeDivide(High[1], Close[1]) <= 1.004))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1008() {
    if ((SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.057) && (SafeDivide(iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5)) >= 1.007) && (SafeDivide(SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+2), iBands(NULL, 0, 13, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+2))) >= 1.011))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1009() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (ibs(1+3) <= 0.6) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.429) && (ibs(1+7) <= 0.5) && (iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MAIN, 1) >= 9.09))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1010() {
    if ((iATR(NULL, 0, 28, 1) >= 0.832) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.021) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 89.639) && (SafeDivide(iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1), iBands(NULL, 0, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+3)) <= 0.999))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1011() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iMFI(NULL, 0, 100, 1) <= 50.62) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) >= -0.361) && (SafeDivide(Close[1], iBands(NULL, 0, 14, 3, 0, 0, MODE_UPPER, 1)) <= 0.972))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1012() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.39) && (iATR(NULL, 0, 28, 1) >= 0.684) && (iBands(NULL, 0, 33, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 80.875) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_LOWER, 1)) <= 1.05) && (SafeDivide(High[1], High[1 + 1]) >= 1.002))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1013() {
    if ((iATR(NULL, 0, 7, 1) >= 0.842) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 91.451) && (SafeDivide(SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 25, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.015) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.008))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1014() {
    if ((iATR(NULL, 0, 7, 1) >= 0.788) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 94.687) && (SafeDivide(High[1], High[1 + 4]) <= 1.013) && (ibs(1+7) <= 0.255))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1015() {
    if ((iATR(NULL, 0, 21, 1) >= 0.868) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.954) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.021))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1016() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.812) && (ibs(1+3) <= 0.523) && (ibs(1+7) <= 0.707) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.912))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1017() {
    if ((SafeDivide(iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 37, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.062) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.02) && (iWPR(NULL, 0, 200, 1) <= -74.226))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1018() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 90.623) && (iBearsPower(NULL, 0, 14, PRICE_CLOSE, 1) <= -0.351) && (SafeDivide(Close[1], Close[1 + 3]) >= 0.992))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1019() {
    if ((iATR(NULL, 0, 14, 1) >= 0.841) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, 1)) <= 0.976) && (iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 89.628) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 14, 0, 1)) >= 1.43))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1020() {
    if ((SafeDivide(iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 14, 3.0, 0, PRICE_CLOSE, MODE_LOWER, 1)) >= 1.056) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+5), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+5))) >= 1.013) && (iDeMarker(NULL, 0, 100, 1) <= 0.436))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1021() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.912) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, 1)) <= 0.988) && (ibs(1+3) <= 0.318) && (SafeDivide(High[1], High[1 + 1]) >= 0.996))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1022() {
    if ((SafeDivide(Close[1], iCustom(NULL, 0, "Custom/KeltnerChannel", 50, 25, 25, 0, 1)) <= 0.813) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 91.949) && (ibs(1+7) <= 0.458) && (ibs(1+3) <= 0.523) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) <= 1.003))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1023() {
    if ((iATR(NULL, 0, 100, 1) >= 0.836) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.954) && (iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, 1) <= 47.692) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 28, 0, 1)) >= 1.536))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1024() {
    if ((iATR(NULL, 0, 200, 1) >= 0.691) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.324) && (iWPR(NULL, 0, 100, 1) <= -38.939) && (iCustom(NULL, 0, "SuperTrend", 10, 2.0, 0, 1) <= 89.841) && (SafeDivide(Close[1], iBands(NULL, 0, 20, 3, 0, 0, MODE_LOWER, 1)) <= 1.046))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1025() {
    if ((iATR(NULL, 0, 7, 1) >= 0.789) && (iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 91.04) && (SafeDivide(SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1)), SafeDivide(iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+7), iBands(NULL, 0, 6, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+7))) >= 1.015) && (iBearsPower(NULL, 0, 3, PRICE_CLOSE, 1) <= -0.747))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1026() {
    if ((iATR(NULL, 0, 7, 1) >= 0.809) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.954) && (iCustom(NULL, 0, "VROC", 7, 0, 1) >= 2600))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1027() {
    if ((iATR(NULL, 0, 100, 1) >= 0.835) && (iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 88.96) && (ibs(1+7) <= 0.651) && (iMFI(NULL, 0, 100, 1) <= 50.854) && (ibs(1+3) <= 0.523))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1028() {
    if ((iATR(NULL, 0, 7, 1) >= 0.77) && (iCustom(NULL, 0, "SuperTrend", 28, 2.0, 0, 1) <= 93.167) && (iCustom(NULL, 0, "Custom/Aroon", 100, 0, 1) >= 21) && (ibs(1+2) <= 0.397) && (SafeDivide(Close[1], iCustom(NULL, 0, "Custom/MMI", 7, 0, 1)) <= 1.398))  return COMPRA;

    return FLAT;
}

tipo_orden RuleBuy_1029() {
    if ((iATR(NULL, 0, 21, 1) >= 0.863) && (ibs(1+7) <= 0.414) && (iBands(NULL, 0, 25, 2, 0, PRICE_CLOSE, MODE_LOWER, 1) <= 82.321) && (iATR(NULL, 0, 21, 1) <= 1.111))  return COMPRA;

    return FLAT;
}

// Función maestra para ejecutar las reglas
tipo_orden ExecuteBuyRule(int ruleNumber) {
    switch(ruleNumber) {
        case 1: return RuleBuy_1();
        case 2: return RuleBuy_2();
        case 3: return RuleBuy_3();
        case 4: return RuleBuy_4();
        case 5: return RuleBuy_5();
        case 6: return RuleBuy_6();
        case 7: return RuleBuy_7();
        case 8: return RuleBuy_8();
        case 9: return RuleBuy_9();
        case 10: return RuleBuy_10();
        case 11: return RuleBuy_11();
        case 12: return RuleBuy_12();
        case 13: return RuleBuy_13();
        case 14: return RuleBuy_14();
        case 15: return RuleBuy_15();
        case 16: return RuleBuy_16();
        case 17: return RuleBuy_17();
        case 18: return RuleBuy_18();
        case 19: return RuleBuy_19();
        case 20: return RuleBuy_20();
        case 21: return RuleBuy_21();
        case 22: return RuleBuy_22();
        case 23: return RuleBuy_23();
        case 24: return RuleBuy_24();
        case 25: return RuleBuy_25();
        case 26: return RuleBuy_26();
        case 27: return RuleBuy_27();
        case 28: return RuleBuy_28();
        case 29: return RuleBuy_29();
        case 30: return RuleBuy_30();
        case 31: return RuleBuy_31();
        case 32: return RuleBuy_32();
        case 33: return RuleBuy_33();
        case 34: return RuleBuy_34();
        case 35: return RuleBuy_35();
        case 36: return RuleBuy_36();
        case 37: return RuleBuy_37();
        case 38: return RuleBuy_38();
        case 39: return RuleBuy_39();
        case 40: return RuleBuy_40();
        case 41: return RuleBuy_41();
        case 42: return RuleBuy_42();
        case 43: return RuleBuy_43();
        case 44: return RuleBuy_44();
        case 45: return RuleBuy_45();
        case 46: return RuleBuy_46();
        case 47: return RuleBuy_47();
        case 48: return RuleBuy_48();
        case 49: return RuleBuy_49();
        case 50: return RuleBuy_50();
        case 51: return RuleBuy_51();
        case 52: return RuleBuy_52();
        case 53: return RuleBuy_53();
        case 54: return RuleBuy_54();
        case 55: return RuleBuy_55();
        case 56: return RuleBuy_56();
        case 57: return RuleBuy_57();
        case 58: return RuleBuy_58();
        case 59: return RuleBuy_59();
        case 60: return RuleBuy_60();
        case 61: return RuleBuy_61();
        case 62: return RuleBuy_62();
        case 63: return RuleBuy_63();
        case 64: return RuleBuy_64();
        case 65: return RuleBuy_65();
        case 66: return RuleBuy_66();
        case 67: return RuleBuy_67();
        case 68: return RuleBuy_68();
        case 69: return RuleBuy_69();
        case 70: return RuleBuy_70();
        case 71: return RuleBuy_71();
        case 72: return RuleBuy_72();
        case 73: return RuleBuy_73();
        case 74: return RuleBuy_74();
        case 75: return RuleBuy_75();
        case 76: return RuleBuy_76();
        case 77: return RuleBuy_77();
        case 78: return RuleBuy_78();
        case 79: return RuleBuy_79();
        case 80: return RuleBuy_80();
        case 81: return RuleBuy_81();
        case 82: return RuleBuy_82();
        case 83: return RuleBuy_83();
        case 84: return RuleBuy_84();
        case 85: return RuleBuy_85();
        case 86: return RuleBuy_86();
        case 87: return RuleBuy_87();
        case 88: return RuleBuy_88();
        case 89: return RuleBuy_89();
        case 90: return RuleBuy_90();
        case 91: return RuleBuy_91();
        case 92: return RuleBuy_92();
        case 93: return RuleBuy_93();
        case 94: return RuleBuy_94();
        case 95: return RuleBuy_95();
        case 96: return RuleBuy_96();
        case 97: return RuleBuy_97();
        case 98: return RuleBuy_98();
        case 99: return RuleBuy_99();
        case 100: return RuleBuy_100();
        case 101: return RuleBuy_101();
        case 102: return RuleBuy_102();
        case 103: return RuleBuy_103();
        case 104: return RuleBuy_104();
        case 105: return RuleBuy_105();
        case 106: return RuleBuy_106();
        case 107: return RuleBuy_107();
        case 108: return RuleBuy_108();
        case 109: return RuleBuy_109();
        case 110: return RuleBuy_110();
        case 111: return RuleBuy_111();
        case 112: return RuleBuy_112();
        case 113: return RuleBuy_113();
        case 114: return RuleBuy_114();
        case 115: return RuleBuy_115();
        case 116: return RuleBuy_116();
        case 117: return RuleBuy_117();
        case 118: return RuleBuy_118();
        case 119: return RuleBuy_119();
        case 120: return RuleBuy_120();
        case 121: return RuleBuy_121();
        case 122: return RuleBuy_122();
        case 123: return RuleBuy_123();
        case 124: return RuleBuy_124();
        case 125: return RuleBuy_125();
        case 126: return RuleBuy_126();
        case 127: return RuleBuy_127();
        case 128: return RuleBuy_128();
        case 129: return RuleBuy_129();
        case 130: return RuleBuy_130();
        case 131: return RuleBuy_131();
        case 132: return RuleBuy_132();
        case 133: return RuleBuy_133();
        case 134: return RuleBuy_134();
        case 135: return RuleBuy_135();
        case 136: return RuleBuy_136();
        case 137: return RuleBuy_137();
        case 138: return RuleBuy_138();
        case 139: return RuleBuy_139();
        case 140: return RuleBuy_140();
        case 141: return RuleBuy_141();
        case 142: return RuleBuy_142();
        case 143: return RuleBuy_143();
        case 144: return RuleBuy_144();
        case 145: return RuleBuy_145();
        case 146: return RuleBuy_146();
        case 147: return RuleBuy_147();
        case 148: return RuleBuy_148();
        case 149: return RuleBuy_149();
        case 150: return RuleBuy_150();
        case 151: return RuleBuy_151();
        case 152: return RuleBuy_152();
        case 153: return RuleBuy_153();
        case 154: return RuleBuy_154();
        case 155: return RuleBuy_155();
        case 156: return RuleBuy_156();
        case 157: return RuleBuy_157();
        case 158: return RuleBuy_158();
        case 159: return RuleBuy_159();
        case 160: return RuleBuy_160();
        case 161: return RuleBuy_161();
        case 162: return RuleBuy_162();
        case 163: return RuleBuy_163();
        case 164: return RuleBuy_164();
        case 165: return RuleBuy_165();
        case 166: return RuleBuy_166();
        case 167: return RuleBuy_167();
        case 168: return RuleBuy_168();
        case 169: return RuleBuy_169();
        case 170: return RuleBuy_170();
        case 171: return RuleBuy_171();
        case 172: return RuleBuy_172();
        case 173: return RuleBuy_173();
        case 174: return RuleBuy_174();
        case 175: return RuleBuy_175();
        case 176: return RuleBuy_176();
        case 177: return RuleBuy_177();
        case 178: return RuleBuy_178();
        case 179: return RuleBuy_179();
        case 180: return RuleBuy_180();
        case 181: return RuleBuy_181();
        case 182: return RuleBuy_182();
        case 183: return RuleBuy_183();
        case 184: return RuleBuy_184();
        case 185: return RuleBuy_185();
        case 186: return RuleBuy_186();
        case 187: return RuleBuy_187();
        case 188: return RuleBuy_188();
        case 189: return RuleBuy_189();
        case 190: return RuleBuy_190();
        case 191: return RuleBuy_191();
        case 192: return RuleBuy_192();
        case 193: return RuleBuy_193();
        case 194: return RuleBuy_194();
        case 195: return RuleBuy_195();
        case 196: return RuleBuy_196();
        case 197: return RuleBuy_197();
        case 198: return RuleBuy_198();
        case 199: return RuleBuy_199();
        case 200: return RuleBuy_200();
        case 201: return RuleBuy_201();
        case 202: return RuleBuy_202();
        case 203: return RuleBuy_203();
        case 204: return RuleBuy_204();
        case 205: return RuleBuy_205();
        case 206: return RuleBuy_206();
        case 207: return RuleBuy_207();
        case 208: return RuleBuy_208();
        case 209: return RuleBuy_209();
        case 210: return RuleBuy_210();
        case 211: return RuleBuy_211();
        case 212: return RuleBuy_212();
        case 213: return RuleBuy_213();
        case 214: return RuleBuy_214();
        case 215: return RuleBuy_215();
        case 216: return RuleBuy_216();
        case 217: return RuleBuy_217();
        case 218: return RuleBuy_218();
        case 219: return RuleBuy_219();
        case 220: return RuleBuy_220();
        case 221: return RuleBuy_221();
        case 222: return RuleBuy_222();
        case 223: return RuleBuy_223();
        case 224: return RuleBuy_224();
        case 225: return RuleBuy_225();
        case 226: return RuleBuy_226();
        case 227: return RuleBuy_227();
        case 228: return RuleBuy_228();
        case 229: return RuleBuy_229();
        case 230: return RuleBuy_230();
        case 231: return RuleBuy_231();
        case 232: return RuleBuy_232();
        case 233: return RuleBuy_233();
        case 234: return RuleBuy_234();
        case 235: return RuleBuy_235();
        case 236: return RuleBuy_236();
        case 237: return RuleBuy_237();
        case 238: return RuleBuy_238();
        case 239: return RuleBuy_239();
        case 240: return RuleBuy_240();
        case 241: return RuleBuy_241();
        case 242: return RuleBuy_242();
        case 243: return RuleBuy_243();
        case 244: return RuleBuy_244();
        case 245: return RuleBuy_245();
        case 246: return RuleBuy_246();
        case 247: return RuleBuy_247();
        case 248: return RuleBuy_248();
        case 249: return RuleBuy_249();
        case 250: return RuleBuy_250();
        case 251: return RuleBuy_251();
        case 252: return RuleBuy_252();
        case 253: return RuleBuy_253();
        case 254: return RuleBuy_254();
        case 255: return RuleBuy_255();
        case 256: return RuleBuy_256();
        case 257: return RuleBuy_257();
        case 258: return RuleBuy_258();
        case 259: return RuleBuy_259();
        case 260: return RuleBuy_260();
        case 261: return RuleBuy_261();
        case 262: return RuleBuy_262();
        case 263: return RuleBuy_263();
        case 264: return RuleBuy_264();
        case 265: return RuleBuy_265();
        case 266: return RuleBuy_266();
        case 267: return RuleBuy_267();
        case 268: return RuleBuy_268();
        case 269: return RuleBuy_269();
        case 270: return RuleBuy_270();
        case 271: return RuleBuy_271();
        case 272: return RuleBuy_272();
        case 273: return RuleBuy_273();
        case 274: return RuleBuy_274();
        case 275: return RuleBuy_275();
        case 276: return RuleBuy_276();
        case 277: return RuleBuy_277();
        case 278: return RuleBuy_278();
        case 279: return RuleBuy_279();
        case 280: return RuleBuy_280();
        case 281: return RuleBuy_281();
        case 282: return RuleBuy_282();
        case 283: return RuleBuy_283();
        case 284: return RuleBuy_284();
        case 285: return RuleBuy_285();
        case 286: return RuleBuy_286();
        case 287: return RuleBuy_287();
        case 288: return RuleBuy_288();
        case 289: return RuleBuy_289();
        case 290: return RuleBuy_290();
        case 291: return RuleBuy_291();
        case 292: return RuleBuy_292();
        case 293: return RuleBuy_293();
        case 294: return RuleBuy_294();
        case 295: return RuleBuy_295();
        case 296: return RuleBuy_296();
        case 297: return RuleBuy_297();
        case 298: return RuleBuy_298();
        case 299: return RuleBuy_299();
        case 300: return RuleBuy_300();
        case 301: return RuleBuy_301();
        case 302: return RuleBuy_302();
        case 303: return RuleBuy_303();
        case 304: return RuleBuy_304();
        case 305: return RuleBuy_305();
        case 306: return RuleBuy_306();
        case 307: return RuleBuy_307();
        case 308: return RuleBuy_308();
        case 309: return RuleBuy_309();
        case 310: return RuleBuy_310();
        case 311: return RuleBuy_311();
        case 312: return RuleBuy_312();
        case 313: return RuleBuy_313();
        case 314: return RuleBuy_314();
        case 315: return RuleBuy_315();
        case 316: return RuleBuy_316();
        case 317: return RuleBuy_317();
        case 318: return RuleBuy_318();
        case 319: return RuleBuy_319();
        case 320: return RuleBuy_320();
        case 321: return RuleBuy_321();
        case 322: return RuleBuy_322();
        case 323: return RuleBuy_323();
        case 324: return RuleBuy_324();
        case 325: return RuleBuy_325();
        case 326: return RuleBuy_326();
        case 327: return RuleBuy_327();
        case 328: return RuleBuy_328();
        case 329: return RuleBuy_329();
        case 330: return RuleBuy_330();
        case 331: return RuleBuy_331();
        case 332: return RuleBuy_332();
        case 333: return RuleBuy_333();
        case 334: return RuleBuy_334();
        case 335: return RuleBuy_335();
        case 336: return RuleBuy_336();
        case 337: return RuleBuy_337();
        case 338: return RuleBuy_338();
        case 339: return RuleBuy_339();
        case 340: return RuleBuy_340();
        case 341: return RuleBuy_341();
        case 342: return RuleBuy_342();
        case 343: return RuleBuy_343();
        case 344: return RuleBuy_344();
        case 345: return RuleBuy_345();
        case 346: return RuleBuy_346();
        case 347: return RuleBuy_347();
        case 348: return RuleBuy_348();
        case 349: return RuleBuy_349();
        case 350: return RuleBuy_350();
        case 351: return RuleBuy_351();
        case 352: return RuleBuy_352();
        case 353: return RuleBuy_353();
        case 354: return RuleBuy_354();
        case 355: return RuleBuy_355();
        case 356: return RuleBuy_356();
        case 357: return RuleBuy_357();
        case 358: return RuleBuy_358();
        case 359: return RuleBuy_359();
        case 360: return RuleBuy_360();
        case 361: return RuleBuy_361();
        case 362: return RuleBuy_362();
        case 363: return RuleBuy_363();
        case 364: return RuleBuy_364();
        case 365: return RuleBuy_365();
        case 366: return RuleBuy_366();
        case 367: return RuleBuy_367();
        case 368: return RuleBuy_368();
        case 369: return RuleBuy_369();
        case 370: return RuleBuy_370();
        case 371: return RuleBuy_371();
        case 372: return RuleBuy_372();
        case 373: return RuleBuy_373();
        case 374: return RuleBuy_374();
        case 375: return RuleBuy_375();
        case 376: return RuleBuy_376();
        case 377: return RuleBuy_377();
        case 378: return RuleBuy_378();
        case 379: return RuleBuy_379();
        case 380: return RuleBuy_380();
        case 381: return RuleBuy_381();
        case 382: return RuleBuy_382();
        case 383: return RuleBuy_383();
        case 384: return RuleBuy_384();
        case 385: return RuleBuy_385();
        case 386: return RuleBuy_386();
        case 387: return RuleBuy_387();
        case 388: return RuleBuy_388();
        case 389: return RuleBuy_389();
        case 390: return RuleBuy_390();
        case 391: return RuleBuy_391();
        case 392: return RuleBuy_392();
        case 393: return RuleBuy_393();
        case 394: return RuleBuy_394();
        case 395: return RuleBuy_395();
        case 396: return RuleBuy_396();
        case 397: return RuleBuy_397();
        case 398: return RuleBuy_398();
        case 399: return RuleBuy_399();
        case 400: return RuleBuy_400();
        case 401: return RuleBuy_401();
        case 402: return RuleBuy_402();
        case 403: return RuleBuy_403();
        case 404: return RuleBuy_404();
        case 405: return RuleBuy_405();
        case 406: return RuleBuy_406();
        case 407: return RuleBuy_407();
        case 408: return RuleBuy_408();
        case 409: return RuleBuy_409();
        case 410: return RuleBuy_410();
        case 411: return RuleBuy_411();
        case 412: return RuleBuy_412();
        case 413: return RuleBuy_413();
        case 414: return RuleBuy_414();
        case 415: return RuleBuy_415();
        case 416: return RuleBuy_416();
        case 417: return RuleBuy_417();
        case 418: return RuleBuy_418();
        case 419: return RuleBuy_419();
        case 420: return RuleBuy_420();
        case 421: return RuleBuy_421();
        case 422: return RuleBuy_422();
        case 423: return RuleBuy_423();
        case 424: return RuleBuy_424();
        case 425: return RuleBuy_425();
        case 426: return RuleBuy_426();
        case 427: return RuleBuy_427();
        case 428: return RuleBuy_428();
        case 429: return RuleBuy_429();
        case 430: return RuleBuy_430();
        case 431: return RuleBuy_431();
        case 432: return RuleBuy_432();
        case 433: return RuleBuy_433();
        case 434: return RuleBuy_434();
        case 435: return RuleBuy_435();
        case 436: return RuleBuy_436();
        case 437: return RuleBuy_437();
        case 438: return RuleBuy_438();
        case 439: return RuleBuy_439();
        case 440: return RuleBuy_440();
        case 441: return RuleBuy_441();
        case 442: return RuleBuy_442();
        case 443: return RuleBuy_443();
        case 444: return RuleBuy_444();
        case 445: return RuleBuy_445();
        case 446: return RuleBuy_446();
        case 447: return RuleBuy_447();
        case 448: return RuleBuy_448();
        case 449: return RuleBuy_449();
        case 450: return RuleBuy_450();
        case 451: return RuleBuy_451();
        case 452: return RuleBuy_452();
        case 453: return RuleBuy_453();
        case 454: return RuleBuy_454();
        case 455: return RuleBuy_455();
        case 456: return RuleBuy_456();
        case 457: return RuleBuy_457();
        case 458: return RuleBuy_458();
        case 459: return RuleBuy_459();
        case 460: return RuleBuy_460();
        case 461: return RuleBuy_461();
        case 462: return RuleBuy_462();
        case 463: return RuleBuy_463();
        case 464: return RuleBuy_464();
        case 465: return RuleBuy_465();
        case 466: return RuleBuy_466();
        case 467: return RuleBuy_467();
        case 468: return RuleBuy_468();
        case 469: return RuleBuy_469();
        case 470: return RuleBuy_470();
        case 471: return RuleBuy_471();
        case 472: return RuleBuy_472();
        case 473: return RuleBuy_473();
        case 474: return RuleBuy_474();
        case 475: return RuleBuy_475();
        case 476: return RuleBuy_476();
        case 477: return RuleBuy_477();
        case 478: return RuleBuy_478();
        case 479: return RuleBuy_479();
        case 480: return RuleBuy_480();
        case 481: return RuleBuy_481();
        case 482: return RuleBuy_482();
        case 483: return RuleBuy_483();
        case 484: return RuleBuy_484();
        case 485: return RuleBuy_485();
        case 486: return RuleBuy_486();
        case 487: return RuleBuy_487();
        case 488: return RuleBuy_488();
        case 489: return RuleBuy_489();
        case 490: return RuleBuy_490();
        case 491: return RuleBuy_491();
        case 492: return RuleBuy_492();
        case 493: return RuleBuy_493();
        case 494: return RuleBuy_494();
        case 495: return RuleBuy_495();
        case 496: return RuleBuy_496();
        case 497: return RuleBuy_497();
        case 498: return RuleBuy_498();
        case 499: return RuleBuy_499();
        case 500: return RuleBuy_500();
        case 501: return RuleBuy_501();
        case 502: return RuleBuy_502();
        case 503: return RuleBuy_503();
        case 504: return RuleBuy_504();
        case 505: return RuleBuy_505();
        case 506: return RuleBuy_506();
        case 507: return RuleBuy_507();
        case 508: return RuleBuy_508();
        case 509: return RuleBuy_509();
        case 510: return RuleBuy_510();
        case 511: return RuleBuy_511();
        case 512: return RuleBuy_512();
        case 513: return RuleBuy_513();
        case 514: return RuleBuy_514();
        case 515: return RuleBuy_515();
        case 516: return RuleBuy_516();
        case 517: return RuleBuy_517();
        case 518: return RuleBuy_518();
        case 519: return RuleBuy_519();
        case 520: return RuleBuy_520();
        case 521: return RuleBuy_521();
        case 522: return RuleBuy_522();
        case 523: return RuleBuy_523();
        case 524: return RuleBuy_524();
        case 525: return RuleBuy_525();
        case 526: return RuleBuy_526();
        case 527: return RuleBuy_527();
        case 528: return RuleBuy_528();
        case 529: return RuleBuy_529();
        case 530: return RuleBuy_530();
        case 531: return RuleBuy_531();
        case 532: return RuleBuy_532();
        case 533: return RuleBuy_533();
        case 534: return RuleBuy_534();
        case 535: return RuleBuy_535();
        case 536: return RuleBuy_536();
        case 537: return RuleBuy_537();
        case 538: return RuleBuy_538();
        case 539: return RuleBuy_539();
        case 540: return RuleBuy_540();
        case 541: return RuleBuy_541();
        case 542: return RuleBuy_542();
        case 543: return RuleBuy_543();
        case 544: return RuleBuy_544();
        case 545: return RuleBuy_545();
        case 546: return RuleBuy_546();
        case 547: return RuleBuy_547();
        case 548: return RuleBuy_548();
        case 549: return RuleBuy_549();
        case 550: return RuleBuy_550();
        case 551: return RuleBuy_551();
        case 552: return RuleBuy_552();
        case 553: return RuleBuy_553();
        case 554: return RuleBuy_554();
        case 555: return RuleBuy_555();
        case 556: return RuleBuy_556();
        case 557: return RuleBuy_557();
        case 558: return RuleBuy_558();
        case 559: return RuleBuy_559();
        case 560: return RuleBuy_560();
        case 561: return RuleBuy_561();
        case 562: return RuleBuy_562();
        case 563: return RuleBuy_563();
        case 564: return RuleBuy_564();
        case 565: return RuleBuy_565();
        case 566: return RuleBuy_566();
        case 567: return RuleBuy_567();
        case 568: return RuleBuy_568();
        case 569: return RuleBuy_569();
        case 570: return RuleBuy_570();
        case 571: return RuleBuy_571();
        case 572: return RuleBuy_572();
        case 573: return RuleBuy_573();
        case 574: return RuleBuy_574();
        case 575: return RuleBuy_575();
        case 576: return RuleBuy_576();
        case 577: return RuleBuy_577();
        case 578: return RuleBuy_578();
        case 579: return RuleBuy_579();
        case 580: return RuleBuy_580();
        case 581: return RuleBuy_581();
        case 582: return RuleBuy_582();
        case 583: return RuleBuy_583();
        case 584: return RuleBuy_584();
        case 585: return RuleBuy_585();
        case 586: return RuleBuy_586();
        case 587: return RuleBuy_587();
        case 588: return RuleBuy_588();
        case 589: return RuleBuy_589();
        case 590: return RuleBuy_590();
        case 591: return RuleBuy_591();
        case 592: return RuleBuy_592();
        case 593: return RuleBuy_593();
        case 594: return RuleBuy_594();
        case 595: return RuleBuy_595();
        case 596: return RuleBuy_596();
        case 597: return RuleBuy_597();
        case 598: return RuleBuy_598();
        case 599: return RuleBuy_599();
        case 600: return RuleBuy_600();
        case 601: return RuleBuy_601();
        case 602: return RuleBuy_602();
        case 603: return RuleBuy_603();
        case 604: return RuleBuy_604();
        case 605: return RuleBuy_605();
        case 606: return RuleBuy_606();
        case 607: return RuleBuy_607();
        case 608: return RuleBuy_608();
        case 609: return RuleBuy_609();
        case 610: return RuleBuy_610();
        case 611: return RuleBuy_611();
        case 612: return RuleBuy_612();
        case 613: return RuleBuy_613();
        case 614: return RuleBuy_614();
        case 615: return RuleBuy_615();
        case 616: return RuleBuy_616();
        case 617: return RuleBuy_617();
        case 618: return RuleBuy_618();
        case 619: return RuleBuy_619();
        case 620: return RuleBuy_620();
        case 621: return RuleBuy_621();
        case 622: return RuleBuy_622();
        case 623: return RuleBuy_623();
        case 624: return RuleBuy_624();
        case 625: return RuleBuy_625();
        case 626: return RuleBuy_626();
        case 627: return RuleBuy_627();
        case 628: return RuleBuy_628();
        case 629: return RuleBuy_629();
        case 630: return RuleBuy_630();
        case 631: return RuleBuy_631();
        case 632: return RuleBuy_632();
        case 633: return RuleBuy_633();
        case 634: return RuleBuy_634();
        case 635: return RuleBuy_635();
        case 636: return RuleBuy_636();
        case 637: return RuleBuy_637();
        case 638: return RuleBuy_638();
        case 639: return RuleBuy_639();
        case 640: return RuleBuy_640();
        case 641: return RuleBuy_641();
        case 642: return RuleBuy_642();
        case 643: return RuleBuy_643();
        case 644: return RuleBuy_644();
        case 645: return RuleBuy_645();
        case 646: return RuleBuy_646();
        case 647: return RuleBuy_647();
        case 648: return RuleBuy_648();
        case 649: return RuleBuy_649();
        case 650: return RuleBuy_650();
        case 651: return RuleBuy_651();
        case 652: return RuleBuy_652();
        case 653: return RuleBuy_653();
        case 654: return RuleBuy_654();
        case 655: return RuleBuy_655();
        case 656: return RuleBuy_656();
        case 657: return RuleBuy_657();
        case 658: return RuleBuy_658();
        case 659: return RuleBuy_659();
        case 660: return RuleBuy_660();
        case 661: return RuleBuy_661();
        case 662: return RuleBuy_662();
        case 663: return RuleBuy_663();
        case 664: return RuleBuy_664();
        case 665: return RuleBuy_665();
        case 666: return RuleBuy_666();
        case 667: return RuleBuy_667();
        case 668: return RuleBuy_668();
        case 669: return RuleBuy_669();
        case 670: return RuleBuy_670();
        case 671: return RuleBuy_671();
        case 672: return RuleBuy_672();
        case 673: return RuleBuy_673();
        case 674: return RuleBuy_674();
        case 675: return RuleBuy_675();
        case 676: return RuleBuy_676();
        case 677: return RuleBuy_677();
        case 678: return RuleBuy_678();
        case 679: return RuleBuy_679();
        case 680: return RuleBuy_680();
        case 681: return RuleBuy_681();
        case 682: return RuleBuy_682();
        case 683: return RuleBuy_683();
        case 684: return RuleBuy_684();
        case 685: return RuleBuy_685();
        case 686: return RuleBuy_686();
        case 687: return RuleBuy_687();
        case 688: return RuleBuy_688();
        case 689: return RuleBuy_689();
        case 690: return RuleBuy_690();
        case 691: return RuleBuy_691();
        case 692: return RuleBuy_692();
        case 693: return RuleBuy_693();
        case 694: return RuleBuy_694();
        case 695: return RuleBuy_695();
        case 696: return RuleBuy_696();
        case 697: return RuleBuy_697();
        case 698: return RuleBuy_698();
        case 699: return RuleBuy_699();
        case 700: return RuleBuy_700();
        case 701: return RuleBuy_701();
        case 702: return RuleBuy_702();
        case 703: return RuleBuy_703();
        case 704: return RuleBuy_704();
        case 705: return RuleBuy_705();
        case 706: return RuleBuy_706();
        case 707: return RuleBuy_707();
        case 708: return RuleBuy_708();
        case 709: return RuleBuy_709();
        case 710: return RuleBuy_710();
        case 711: return RuleBuy_711();
        case 712: return RuleBuy_712();
        case 713: return RuleBuy_713();
        case 714: return RuleBuy_714();
        case 715: return RuleBuy_715();
        case 716: return RuleBuy_716();
        case 717: return RuleBuy_717();
        case 718: return RuleBuy_718();
        case 719: return RuleBuy_719();
        case 720: return RuleBuy_720();
        case 721: return RuleBuy_721();
        case 722: return RuleBuy_722();
        case 723: return RuleBuy_723();
        case 724: return RuleBuy_724();
        case 725: return RuleBuy_725();
        case 726: return RuleBuy_726();
        case 727: return RuleBuy_727();
        case 728: return RuleBuy_728();
        case 729: return RuleBuy_729();
        case 730: return RuleBuy_730();
        case 731: return RuleBuy_731();
        case 732: return RuleBuy_732();
        case 733: return RuleBuy_733();
        case 734: return RuleBuy_734();
        case 735: return RuleBuy_735();
        case 736: return RuleBuy_736();
        case 737: return RuleBuy_737();
        case 738: return RuleBuy_738();
        case 739: return RuleBuy_739();
        case 740: return RuleBuy_740();
        case 741: return RuleBuy_741();
        case 742: return RuleBuy_742();
        case 743: return RuleBuy_743();
        case 744: return RuleBuy_744();
        case 745: return RuleBuy_745();
        case 746: return RuleBuy_746();
        case 747: return RuleBuy_747();
        case 748: return RuleBuy_748();
        case 749: return RuleBuy_749();
        case 750: return RuleBuy_750();
        case 751: return RuleBuy_751();
        case 752: return RuleBuy_752();
        case 753: return RuleBuy_753();
        case 754: return RuleBuy_754();
        case 755: return RuleBuy_755();
        case 756: return RuleBuy_756();
        case 757: return RuleBuy_757();
        case 758: return RuleBuy_758();
        case 759: return RuleBuy_759();
        case 760: return RuleBuy_760();
        case 761: return RuleBuy_761();
        case 762: return RuleBuy_762();
        case 763: return RuleBuy_763();
        case 764: return RuleBuy_764();
        case 765: return RuleBuy_765();
        case 766: return RuleBuy_766();
        case 767: return RuleBuy_767();
        case 768: return RuleBuy_768();
        case 769: return RuleBuy_769();
        case 770: return RuleBuy_770();
        case 771: return RuleBuy_771();
        case 772: return RuleBuy_772();
        case 773: return RuleBuy_773();
        case 774: return RuleBuy_774();
        case 775: return RuleBuy_775();
        case 776: return RuleBuy_776();
        case 777: return RuleBuy_777();
        case 778: return RuleBuy_778();
        case 779: return RuleBuy_779();
        case 780: return RuleBuy_780();
        case 781: return RuleBuy_781();
        case 782: return RuleBuy_782();
        case 783: return RuleBuy_783();
        case 784: return RuleBuy_784();
        case 785: return RuleBuy_785();
        case 786: return RuleBuy_786();
        case 787: return RuleBuy_787();
        case 788: return RuleBuy_788();
        case 789: return RuleBuy_789();
        case 790: return RuleBuy_790();
        case 791: return RuleBuy_791();
        case 792: return RuleBuy_792();
        case 793: return RuleBuy_793();
        case 794: return RuleBuy_794();
        case 795: return RuleBuy_795();
        case 796: return RuleBuy_796();
        case 797: return RuleBuy_797();
        case 798: return RuleBuy_798();
        case 799: return RuleBuy_799();
        case 800: return RuleBuy_800();
        case 801: return RuleBuy_801();
        case 802: return RuleBuy_802();
        case 803: return RuleBuy_803();
        case 804: return RuleBuy_804();
        case 805: return RuleBuy_805();
        case 806: return RuleBuy_806();
        case 807: return RuleBuy_807();
        case 808: return RuleBuy_808();
        case 809: return RuleBuy_809();
        case 810: return RuleBuy_810();
        case 811: return RuleBuy_811();
        case 812: return RuleBuy_812();
        case 813: return RuleBuy_813();
        case 814: return RuleBuy_814();
        case 815: return RuleBuy_815();
        case 816: return RuleBuy_816();
        case 817: return RuleBuy_817();
        case 818: return RuleBuy_818();
        case 819: return RuleBuy_819();
        case 820: return RuleBuy_820();
        case 821: return RuleBuy_821();
        case 822: return RuleBuy_822();
        case 823: return RuleBuy_823();
        case 824: return RuleBuy_824();
        case 825: return RuleBuy_825();
        case 826: return RuleBuy_826();
        case 827: return RuleBuy_827();
        case 828: return RuleBuy_828();
        case 829: return RuleBuy_829();
        case 830: return RuleBuy_830();
        case 831: return RuleBuy_831();
        case 832: return RuleBuy_832();
        case 833: return RuleBuy_833();
        case 834: return RuleBuy_834();
        case 835: return RuleBuy_835();
        case 836: return RuleBuy_836();
        case 837: return RuleBuy_837();
        case 838: return RuleBuy_838();
        case 839: return RuleBuy_839();
        case 840: return RuleBuy_840();
        case 841: return RuleBuy_841();
        case 842: return RuleBuy_842();
        case 843: return RuleBuy_843();
        case 844: return RuleBuy_844();
        case 845: return RuleBuy_845();
        case 846: return RuleBuy_846();
        case 847: return RuleBuy_847();
        case 848: return RuleBuy_848();
        case 849: return RuleBuy_849();
        case 850: return RuleBuy_850();
        case 851: return RuleBuy_851();
        case 852: return RuleBuy_852();
        case 853: return RuleBuy_853();
        case 854: return RuleBuy_854();
        case 855: return RuleBuy_855();
        case 856: return RuleBuy_856();
        case 857: return RuleBuy_857();
        case 858: return RuleBuy_858();
        case 859: return RuleBuy_859();
        case 860: return RuleBuy_860();
        case 861: return RuleBuy_861();
        case 862: return RuleBuy_862();
        case 863: return RuleBuy_863();
        case 864: return RuleBuy_864();
        case 865: return RuleBuy_865();
        case 866: return RuleBuy_866();
        case 867: return RuleBuy_867();
        case 868: return RuleBuy_868();
        case 869: return RuleBuy_869();
        case 870: return RuleBuy_870();
        case 871: return RuleBuy_871();
        case 872: return RuleBuy_872();
        case 873: return RuleBuy_873();
        case 874: return RuleBuy_874();
        case 875: return RuleBuy_875();
        case 876: return RuleBuy_876();
        case 877: return RuleBuy_877();
        case 878: return RuleBuy_878();
        case 879: return RuleBuy_879();
        case 880: return RuleBuy_880();
        case 881: return RuleBuy_881();
        case 882: return RuleBuy_882();
        case 883: return RuleBuy_883();
        case 884: return RuleBuy_884();
        case 885: return RuleBuy_885();
        case 886: return RuleBuy_886();
        case 887: return RuleBuy_887();
        case 888: return RuleBuy_888();
        case 889: return RuleBuy_889();
        case 890: return RuleBuy_890();
        case 891: return RuleBuy_891();
        case 892: return RuleBuy_892();
        case 893: return RuleBuy_893();
        case 894: return RuleBuy_894();
        case 895: return RuleBuy_895();
        case 896: return RuleBuy_896();
        case 897: return RuleBuy_897();
        case 898: return RuleBuy_898();
        case 899: return RuleBuy_899();
        case 900: return RuleBuy_900();
        case 901: return RuleBuy_901();
        case 902: return RuleBuy_902();
        case 903: return RuleBuy_903();
        case 904: return RuleBuy_904();
        case 905: return RuleBuy_905();
        case 906: return RuleBuy_906();
        case 907: return RuleBuy_907();
        case 908: return RuleBuy_908();
        case 909: return RuleBuy_909();
        case 910: return RuleBuy_910();
        case 911: return RuleBuy_911();
        case 912: return RuleBuy_912();
        case 913: return RuleBuy_913();
        case 914: return RuleBuy_914();
        case 915: return RuleBuy_915();
        case 916: return RuleBuy_916();
        case 917: return RuleBuy_917();
        case 918: return RuleBuy_918();
        case 919: return RuleBuy_919();
        case 920: return RuleBuy_920();
        case 921: return RuleBuy_921();
        case 922: return RuleBuy_922();
        case 923: return RuleBuy_923();
        case 924: return RuleBuy_924();
        case 925: return RuleBuy_925();
        case 926: return RuleBuy_926();
        case 927: return RuleBuy_927();
        case 928: return RuleBuy_928();
        case 929: return RuleBuy_929();
        case 930: return RuleBuy_930();
        case 931: return RuleBuy_931();
        case 932: return RuleBuy_932();
        case 933: return RuleBuy_933();
        case 934: return RuleBuy_934();
        case 935: return RuleBuy_935();
        case 936: return RuleBuy_936();
        case 937: return RuleBuy_937();
        case 938: return RuleBuy_938();
        case 939: return RuleBuy_939();
        case 940: return RuleBuy_940();
        case 941: return RuleBuy_941();
        case 942: return RuleBuy_942();
        case 943: return RuleBuy_943();
        case 944: return RuleBuy_944();
        case 945: return RuleBuy_945();
        case 946: return RuleBuy_946();
        case 947: return RuleBuy_947();
        case 948: return RuleBuy_948();
        case 949: return RuleBuy_949();
        case 950: return RuleBuy_950();
        case 951: return RuleBuy_951();
        case 952: return RuleBuy_952();
        case 953: return RuleBuy_953();
        case 954: return RuleBuy_954();
        case 955: return RuleBuy_955();
        case 956: return RuleBuy_956();
        case 957: return RuleBuy_957();
        case 958: return RuleBuy_958();
        case 959: return RuleBuy_959();
        case 960: return RuleBuy_960();
        case 961: return RuleBuy_961();
        case 962: return RuleBuy_962();
        case 963: return RuleBuy_963();
        case 964: return RuleBuy_964();
        case 965: return RuleBuy_965();
        case 966: return RuleBuy_966();
        case 967: return RuleBuy_967();
        case 968: return RuleBuy_968();
        case 969: return RuleBuy_969();
        case 970: return RuleBuy_970();
        case 971: return RuleBuy_971();
        case 972: return RuleBuy_972();
        case 973: return RuleBuy_973();
        case 974: return RuleBuy_974();
        case 975: return RuleBuy_975();
        case 976: return RuleBuy_976();
        case 977: return RuleBuy_977();
        case 978: return RuleBuy_978();
        case 979: return RuleBuy_979();
        case 980: return RuleBuy_980();
        case 981: return RuleBuy_981();
        case 982: return RuleBuy_982();
        case 983: return RuleBuy_983();
        case 984: return RuleBuy_984();
        case 985: return RuleBuy_985();
        case 986: return RuleBuy_986();
        case 987: return RuleBuy_987();
        case 988: return RuleBuy_988();
        case 989: return RuleBuy_989();
        case 990: return RuleBuy_990();
        case 991: return RuleBuy_991();
        case 992: return RuleBuy_992();
        case 993: return RuleBuy_993();
        case 994: return RuleBuy_994();
        case 995: return RuleBuy_995();
        case 996: return RuleBuy_996();
        case 997: return RuleBuy_997();
        case 998: return RuleBuy_998();
        case 999: return RuleBuy_999();
        case 1000: return RuleBuy_1000();
        case 1001: return RuleBuy_1001();
        case 1002: return RuleBuy_1002();
        case 1003: return RuleBuy_1003();
        case 1004: return RuleBuy_1004();
        case 1005: return RuleBuy_1005();
        case 1006: return RuleBuy_1006();
        case 1007: return RuleBuy_1007();
        case 1008: return RuleBuy_1008();
        case 1009: return RuleBuy_1009();
        case 1010: return RuleBuy_1010();
        case 1011: return RuleBuy_1011();
        case 1012: return RuleBuy_1012();
        case 1013: return RuleBuy_1013();
        case 1014: return RuleBuy_1014();
        case 1015: return RuleBuy_1015();
        case 1016: return RuleBuy_1016();
        case 1017: return RuleBuy_1017();
        case 1018: return RuleBuy_1018();
        case 1019: return RuleBuy_1019();
        case 1020: return RuleBuy_1020();
        case 1021: return RuleBuy_1021();
        case 1022: return RuleBuy_1022();
        case 1023: return RuleBuy_1023();
        case 1024: return RuleBuy_1024();
        case 1025: return RuleBuy_1025();
        case 1026: return RuleBuy_1026();
        case 1027: return RuleBuy_1027();
        case 1028: return RuleBuy_1028();
        case 1029: return RuleBuy_1029();

        default: return FLAT;
    }
}

// Dummy code
tipo_orden ExecuteBuyRules(){ return FLAT; }
tipo_orden ExecuteSellRules(){ return FLAT; }
tipo_orden ExecuteSellRule(int ruleNumber) { return FLAT; }  
tipo_orden ExecuteEnsembleBuyRules() { return FLAT; }
tipo_orden ExecuteEnsembleSellRules() { return FLAT; }  