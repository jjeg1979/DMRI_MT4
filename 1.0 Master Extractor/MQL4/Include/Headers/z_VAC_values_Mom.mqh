//+------------------------------------------------------------------+
//|                                             z_VAC_values_Mom.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Momemtum (Mom)
*/

string z_VAC_values_Mom(string _sep, int _shift, int _digits){
   double Mom_7            = iMomentum(NULL, 0, 7, PRICE_CLOSE, _shift);
   double Mom_14           = iMomentum(NULL, 0, 14, PRICE_CLOSE, _shift);
   double Mom_21           = iMomentum(NULL, 0, 21, PRICE_CLOSE, _shift);
   double Mom_28           = iMomentum(NULL, 0, 28, PRICE_CLOSE, _shift);
   double Mom_50           = iMomentum(NULL, 0, 50, PRICE_CLOSE, _shift);
   double Mom_100          = iMomentum(NULL, 0, 100, PRICE_CLOSE, _shift);
   double Mom_200          = iMomentum(NULL, 0, 200, PRICE_CLOSE, _shift);   
   
   return DoubleToStr(Mom_7, _digits) + _sep + DoubleToStr(Mom_14, _digits) + _sep + DoubleToStr(Mom_21, _digits) + _sep + DoubleToStr(Mom_28, _digits) + _sep + DoubleToStr(Mom_50, _digits) + _sep + DoubleToStr(Mom_100, _digits) + _sep + DoubleToStr(Mom_200, _digits) + _sep;
}


     