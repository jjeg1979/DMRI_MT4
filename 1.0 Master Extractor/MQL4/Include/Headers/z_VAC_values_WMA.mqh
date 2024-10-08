//+------------------------------------------------------------------+
//|                                             z_VAC_values_WMA.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador WMA
*/

string z_VAC_values_WMA(string _sep, int _shift, int _digits){
   double WMA_7            = iMA(NULL, 0, 7, 0, MODE_LWMA, PRICE_CLOSE, _shift);
   double WMA_14           = iMA(NULL, 0, 14, 0, MODE_LWMA, PRICE_CLOSE, _shift);
   double WMA_21           = iMA(NULL, 0, 21, 0, MODE_LWMA, PRICE_CLOSE, _shift);
   double WMA_28           = iMA(NULL, 0, 28, 0, MODE_LWMA, PRICE_CLOSE, _shift);
   double WMA_50           = iMA(NULL, 0, 50, 0, MODE_LWMA, PRICE_CLOSE, _shift);
   double WMA_100          = iMA(NULL, 0, 100, 0, MODE_LWMA, PRICE_CLOSE, _shift);
   double WMA_200          = iMA(NULL, 0, 200, 0, MODE_LWMA, PRICE_CLOSE, _shift);
   
   return DoubleToStr(WMA_7, _digits) + _sep + DoubleToStr(WMA_14, _digits) + _sep + DoubleToStr(WMA_21, _digits) + _sep + DoubleToStr(WMA_28, _digits) + _sep + DoubleToStr(WMA_50, _digits) + _sep + DoubleToStr(WMA_100, _digits) + _sep + DoubleToStr(WMA_200, _digits) + _sep;
}



