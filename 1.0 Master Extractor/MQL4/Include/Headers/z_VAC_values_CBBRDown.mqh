//+------------------------------------------------------------------+
//|                                        z_VAC_values_CBBRDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la relación entre el cierre (Close)
 * y la banda inferior de Bollinger.
 * Explicación de la Nomenclatura:
 * C_BBR_Down => Close to Bollinger Ratio using Lower Band
*/

string z_VAC_values_CBBRDown(string _sep, int _shift, int _digits){
   double C_BBR_Dwn_6_2          = SafeDivide(Close[_shift], iBands(NULL, 0, 6, 2, 0, 0,  MODE_LOWER, _shift));
   double C_BBR_Dwn_15_2         = SafeDivide(Close[_shift], iBands(NULL, 0, 15, 2, 0, 0, MODE_LOWER, _shift));
   double C_BBR_Dwn_20_2         = SafeDivide(Close[_shift], iBands(NULL, 0, 20, 2, 0, 0, MODE_LOWER, _shift));
   double C_BBR_Dwn_25_2         = SafeDivide(Close[_shift], iBands(NULL, 0, 25, 2, 0, 0, MODE_LOWER, _shift));
   double C_BBR_Dwn_33_2         = SafeDivide(Close[_shift], iBands(NULL, 0, 33, 2, 0, 0, MODE_LOWER, _shift));
   double C_BBR_Dwn_14_3         = SafeDivide(Close[_shift], iBands(NULL, 0, 14, 3, 0, 0, MODE_LOWER, _shift));
   double C_BBR_Dwn_20_3         = SafeDivide(Close[_shift], iBands(NULL, 0, 20, 3, 0, 0, MODE_LOWER, _shift));
   double C_BBR_Dwn_50_3         = SafeDivide(Close[_shift], iBands(NULL, 0, 50, 3, 0, 0, MODE_LOWER, _shift));
   
   return DoubleToStr(C_BBR_Dwn_6_2, _digits) + _sep + DoubleToStr(C_BBR_Dwn_15_2, _digits) + _sep + DoubleToStr(C_BBR_Dwn_20_2, _digits) + _sep + DoubleToStr(C_BBR_Dwn_25_2, _digits) + _sep + DoubleToStr(C_BBR_Dwn_33_2, _digits) + _sep + DoubleToStr(C_BBR_Dwn_14_3, _digits) + _sep + DoubleToStr(C_BBR_Dwn_20_3, _digits) + _sep + DoubleToStr(C_BBR_Dwn_50_3, _digits) + _sep;
}



