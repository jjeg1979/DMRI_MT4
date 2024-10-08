//+------------------------------------------------------------------+
//|                                             z_VAC_values_SMA.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Media Móvil Simple (SMA)
*/

string z_VAC_values_SMA(string _sep, int _shift, int _digits){
   double SMA_7            = iMA(NULL, 0, 7, 0, MODE_SMA, PRICE_CLOSE, _shift);
   double SMA_14           = iMA(NULL, 0, 14, 0, MODE_SMA, PRICE_CLOSE, _shift);
   double SMA_21           = iMA(NULL, 0, 21, 0, MODE_SMA, PRICE_CLOSE, _shift);
   double SMA_28           = iMA(NULL, 0, 28, 0, MODE_SMA, PRICE_CLOSE, _shift);
   double SMA_50           = iMA(NULL, 0, 50, 0, MODE_SMA, PRICE_CLOSE, _shift);
   double SMA_100          = iMA(NULL, 0, 100, 0, MODE_SMA, PRICE_CLOSE, _shift);
   double SMA_200          = iMA(NULL, 0, 200, 0, MODE_SMA, PRICE_CLOSE, _shift);
   
   return DoubleToStr(SMA_7, _digits) + _sep + DoubleToStr(SMA_14, _digits) + _sep + DoubleToStr(SMA_21, _digits) + _sep + DoubleToStr(SMA_28, _digits) + _sep + DoubleToStr(SMA_50, _digits) + _sep + DoubleToStr(SMA_100, _digits) + _sep + DoubleToStr(SMA_200, _digits) + _sep;
}


