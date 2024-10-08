//+------------------------------------------------------------------+
//|                                           z_VAC_values_Force.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Force
*/

string z_VAC_values_Force(string _sep, int _shift, int _digits){
   double Force_3          = iForce(NULL, 0, 3, MODE_SMA, PRICE_CLOSE, _shift);
   double Force_7          = iForce(NULL, 0, 3, MODE_SMA, PRICE_CLOSE, _shift);
   double Force_14         = iForce(NULL, 0, 3, MODE_SMA, PRICE_CLOSE, _shift);
   double Force_21         = iForce(NULL, 0, 3, MODE_SMA, PRICE_CLOSE, _shift);
   double Force_50         = iForce(NULL, 0, 3, MODE_SMA, PRICE_CLOSE, _shift);
   double Force_100        = iForce(NULL, 0, 3, MODE_SMA, PRICE_CLOSE, _shift);
   double Force_200        = iForce(NULL, 0, 3, MODE_SMA, PRICE_CLOSE, _shift);
      
   return DoubleToStr(Force_3, _digits) + _sep + DoubleToStr(Force_7, _digits) + _sep + DoubleToStr(Force_14, _digits) + _sep + DoubleToStr(Force_21, _digits) + _sep + DoubleToStr(Force_50, _digits) + _sep + DoubleToStr(Force_100, _digits) + _sep + DoubleToStr(Force_200, _digits) + _sep;
}

