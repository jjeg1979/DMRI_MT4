//+------------------------------------------------------------------+
//|                                       z_VAC_values_DonchDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la banda superior del canal de DonchDownian
*/

string z_VAC_values_DonchDown(string _sep, int _shift, int _digits){
   double DonchDown_7          = iCustom(NULL, 0, "Custom/DonchianChannel", 7, 1, _shift);
   double DonchDown_14         = iCustom(NULL, 0, "Custom/DonchianChannel", 14, 1, _shift);
   double DonchDown_21         = iCustom(NULL, 0, "Custom/DonchianChannel", 21, 1, _shift);
   double DonchDown_28         = iCustom(NULL, 0, "Custom/DonchianChannel", 28, 1, _shift);
   double DonchDown_50         = iCustom(NULL, 0, "Custom/DonchianChannel", 50, 1, _shift);

   return DoubleToStr(DonchDown_7, _digits) + _sep + DoubleToStr(DonchDown_14, _digits) + _sep + DoubleToStr(DonchDown_21, _digits) + _sep + DoubleToStr(DonchDown_28, _digits) + _sep + DoubleToStr(DonchDown_50, _digits) + _sep;
}

