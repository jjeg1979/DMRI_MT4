//+------------------------------------------------------------------+
//|                                        z_VAC_values_DMIMinus.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador DMIMinus
*/

string z_VAC_values_DMIMinus(string _sep, int _shift, int _digits){
   double DMIMinus_7       = iADX(NULL, 0, 7, PRICE_CLOSE, MODE_MINUSDI, _shift);
   double DMIMinus_14      = iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MINUSDI, _shift);
   double DMIMinus_21      = iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MINUSDI, _shift);
   double DMIMinus_28      = iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MINUSDI, _shift);
   double DMIMinus_50      = iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MINUSDI, _shift);
   double DMIMinus_100     = iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MINUSDI, _shift);

   return DoubleToStr(DMIMinus_7, _digits) + _sep + DoubleToStr(DMIMinus_14, _digits) + _sep  + DoubleToStr(DMIMinus_21, _digits)+ _sep + DoubleToStr(DMIMinus_28, _digits) + _sep + DoubleToStr(DMIMinus_50, _digits) + _sep + DoubleToStr(DMIMinus_100, _digits) + _sep;
}


