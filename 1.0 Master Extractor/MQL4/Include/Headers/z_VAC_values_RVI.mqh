//+------------------------------------------------------------------+
//|                                             z_VAC_values_RVI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador RVI
*/

string z_VAC_values_RVI(string _sep, int _shift, int _digits){
   double RVI_7            = iRVI(NULL, 0, 7, PRICE_CLOSE, _shift);
   double RVI_14           = iRVI(NULL, 0, 14, PRICE_CLOSE, _shift);
   double RVI_21           = iRVI(NULL, 0, 21, PRICE_CLOSE, _shift);
   double RVI_28           = iRVI(NULL, 0, 28, PRICE_CLOSE, _shift);
   double RVI_50           = iRVI(NULL, 0, 50, PRICE_CLOSE, _shift);
   double RVI_100          = iRVI(NULL, 0, 100, PRICE_CLOSE, _shift);
   double RVI_200          = iRVI(NULL, 0, 200, PRICE_CLOSE, _shift);
   
   return DoubleToStr(RVI_7, _digits) + _sep + DoubleToStr(RVI_14, _digits) + _sep + DoubleToStr(RVI_21, _digits) + _sep + DoubleToStr(RVI_28, _digits) + _sep + DoubleToStr(RVI_50, _digits) + _sep + DoubleToStr(RVI_100, _digits) + _sep + DoubleToStr(RVI_200, _digits) + _sep;
}


