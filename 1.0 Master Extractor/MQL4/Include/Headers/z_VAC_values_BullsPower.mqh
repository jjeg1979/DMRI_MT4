//+------------------------------------------------------------------+
//|                                      z_VAC_values_BullsPower.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador BullsPower
*/

string z_VAC_values_BullsPower(string _sep, int _shift, int _digits){
   double BullsPower_3     = iBullsPower(NULL, 0, 3, PRICE_CLOSE, _shift);
   double BullsPower_7     = iBullsPower(NULL, 0, 7, PRICE_CLOSE, _shift);
   double BullsPower_14    = iBullsPower(NULL, 0, 14, PRICE_CLOSE, _shift);
   double BullsPower_21    = iBullsPower(NULL, 0, 21, PRICE_CLOSE, _shift);
   double BullsPower_50    = iBullsPower(NULL, 0, 50, PRICE_CLOSE, _shift);
   double BullsPower_100   = iBullsPower(NULL, 0, 100, PRICE_CLOSE, _shift);
   double BullsPower_200   = iBullsPower(NULL, 0, 200, PRICE_CLOSE, _shift);
   
   return DoubleToStr(BullsPower_3, _digits) + _sep + DoubleToStr(BullsPower_7, _digits) + _sep + DoubleToStr(BullsPower_14, _digits)+ _sep + DoubleToStr(BullsPower_21, _digits) + _sep + DoubleToStr(BullsPower_50, _digits)+ _sep + DoubleToStr(BullsPower_100, _digits) + _sep + DoubleToStr(BullsPower_200, _digits) + _sep;
}


