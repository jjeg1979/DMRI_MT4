//+------------------------------------------------------------------+
//|                                          z_VAC_values_BBDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador BBDown
*/

string z_VAC_values_BBDown(string _sep, int _shift, int _digits){
   double BBDown_6_2       = iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBDown_15_2      = iBands(NULL, 0, 15, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBDown_20_2      = iBands(NULL, 0, 20, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBDown_25_2      = iBands(NULL, 0, 25, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBDown_33_2      = iBands(NULL, 0, 33, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBDown_14_3      = iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBDown_20_3      = iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBDown_50_3      = iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   return DoubleToStr(BBDown_6_2, _digits) + _sep + DoubleToStr(BBDown_15_2, _digits) + _sep + DoubleToStr(BBDown_20_2, _digits) + _sep + DoubleToStr(BBDown_25_2, _digits) + _sep + DoubleToStr(BBDown_33_2, _digits) + _sep + DoubleToStr(BBDown_14_3, _digits) + _sep + DoubleToStr(BBDown_20_3, _digits) + _sep + DoubleToStr(BBDown_50_3, _digits) + _sep;
}


 