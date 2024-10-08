//+------------------------------------------------------------------+
//|                                             z_VAC_values_ATR.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador ATR
*/

string z_VAC_values_ATR(string _sep, int _shift, int _digits){
   double ATR_7            = iATR(NULL, 0, 7, _shift);
   double ATR_14           = iATR(NULL, 0, 14, _shift);
   double ATR_21           = iATR(NULL, 0, 21, _shift);
   double ATR_28           = iATR(NULL, 0, 28, _shift);
   double ATR_50           = iATR(NULL, 0, 50, _shift);
   double ATR_100          = iATR(NULL, 0, 100, _shift);
   double ATR_200          = iATR(NULL, 0, 200, _shift);  
   return DoubleToStr(ATR_7, _digits) + _sep + DoubleToStr(ATR_14, _digits) + _sep + DoubleToStr(ATR_21, _digits) + _sep + DoubleToStr(ATR_28, _digits) + _sep + DoubleToStr(ATR_50, _digits) + _sep + DoubleToStr(ATR_100, _digits) + _sep + DoubleToStr(ATR_200, _digits) + _sep;
}


