//+------------------------------------------------------------------+
//|                                             z_VAC_values_RSI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador RSI
*/

string z_VAC_values_RSI(string _sep, int _shift, int _digits){
   double RSI_7            = iRSI(NULL, 0, 7, PRICE_CLOSE, _shift);
   double RSI_14           = iRSI(NULL, 0, 14, PRICE_CLOSE, _shift);
   double RSI_21           = iRSI(NULL, 0, 21, PRICE_CLOSE, _shift);
   double RSI_28           = iRSI(NULL, 0, 28, PRICE_CLOSE, _shift);
   double RSI_50           = iRSI(NULL, 0, 50, PRICE_CLOSE, _shift);
   double RSI_100          = iRSI(NULL, 0, 100, PRICE_CLOSE, _shift);
   double RSI_200          = iRSI(NULL, 0, 200, PRICE_CLOSE, _shift);   
   return DoubleToStr(RSI_7, _digits) + _sep + DoubleToStr(RSI_14, _digits) + _sep + DoubleToStr(RSI_21, _digits) + _sep + DoubleToStr(RSI_28, _digits) + _sep + DoubleToStr(RSI_50, _digits) + _sep + DoubleToStr(RSI_100, _digits) + _sep + DoubleToStr(RSI_200, _digits) + _sep;
}


