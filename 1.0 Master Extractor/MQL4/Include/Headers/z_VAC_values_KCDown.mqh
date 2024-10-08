//+------------------------------------------------------------------+
//|                                          z_VAC_values_KCDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la banda inferior del indicador
 * canal de Keltner
*/

string z_VAC_values_KCDown(string _sep, int _shift, int _digits){
   double KCDown_7_25_25       = iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 1, _shift);
   double KCDown_14_25_25      = iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 2.5, 1, _shift);
   double KCDown_21_25_25      = iCustom(NULL, 0, "Custom/KeltnerChannel", 21, 25, 2.5, 1, _shift);
   double KCDown_28_25_25      = iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 2.5, 1, _shift);
   double KCDown_7_25_30       = iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 3.0, 1, _shift);
   double KCDown_14_25_30      = iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 3.0, 1, _shift);
   double KCDown_21_25_30      = iCustom(NULL, 0, "Custom/KeltnerChannel", 21, 25, 3.0, 1, _shift);
   double KCDown_28_25_30      = iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 3.0, 1, _shift);   
   
   return DoubleToStr(KCDown_7_25_25, _digits) + _sep + DoubleToStr(KCDown_14_25_25, _digits) + _sep + DoubleToStr(KCDown_21_25_25, _digits) + _sep + DoubleToStr(KCDown_28_25_25, _digits) + _sep + DoubleToStr(KCDown_7_25_30, _digits) + _sep + DoubleToStr(KCDown_14_25_30, _digits) + _sep + DoubleToStr(KCDown_21_25_30, _digits) + _sep + DoubleToStr(KCDown_28_25_30, _digits) + _sep;
}

