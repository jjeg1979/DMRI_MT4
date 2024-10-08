//+------------------------------------------------------------------+
//|                                         z_VAC_values_DMIPlus.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador DMIPlus
*/

string z_VAC_values_DMIPlus(string _sep, int _shift, int _digits){
   double DMIPlus_7       = iADX(NULL, 0, 7, PRICE_CLOSE, MODE_PLUSDI, _shift);
   double DMIPlus_14      = iADX(NULL, 0, 14, PRICE_CLOSE, MODE_PLUSDI, _shift);
   double DMIPlus_21      = iADX(NULL, 0, 21, PRICE_CLOSE, MODE_PLUSDI, _shift);
   double DMIPlus_28      = iADX(NULL, 0, 28, PRICE_CLOSE, MODE_PLUSDI, _shift);
   double DMIPlus_50      = iADX(NULL, 0, 50, PRICE_CLOSE, MODE_PLUSDI, _shift);
   double DMIPlus_100     = iADX(NULL, 0, 100, PRICE_CLOSE, MODE_PLUSDI, _shift);

   return DoubleToStr(DMIPlus_7, _digits) + _sep + DoubleToStr(DMIPlus_14, _digits) + _sep  + DoubleToStr(DMIPlus_21, _digits)+ _sep + DoubleToStr(DMIPlus_28, _digits) + _sep + DoubleToStr(DMIPlus_50, _digits) + _sep + DoubleToStr(DMIPlus_100, _digits) + _sep;
}


