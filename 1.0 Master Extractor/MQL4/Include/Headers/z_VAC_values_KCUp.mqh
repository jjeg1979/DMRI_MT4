//+------------------------------------------------------------------+
//|                                            z_VAC_values_KCUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la banda superior del indicador
 * canal de Keltner
*/

string z_VAC_values_KCUp(string _sep, int _shift, int _digits){
   double KCUp_7_25_25       = iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 2.5, 0, _shift);
   double KCUp_14_25_25      = iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 2.5, 0, _shift);
   double KCUp_21_25_25      = iCustom(NULL, 0, "Custom/KeltnerChannel", 21, 25, 2.5, 0, _shift);
   double KCUp_28_25_25      = iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 2.5, 0, _shift);
   double KCUp_7_25_30       = iCustom(NULL, 0, "Custom/KeltnerChannel", 7, 25, 3.0, 0, _shift);
   double KCUp_14_25_30      = iCustom(NULL, 0, "Custom/KeltnerChannel", 14, 25, 3.0, 0, _shift);
   double KCUp_21_25_30      = iCustom(NULL, 0, "Custom/KeltnerChannel", 21, 25, 3.0, 0, _shift);
   double KCUp_28_25_30      = iCustom(NULL, 0, "Custom/KeltnerChannel", 28, 25, 3.0, 0, _shift);   
   
   return DoubleToStr(KCUp_7_25_25, _digits) + _sep + DoubleToStr(KCUp_14_25_25, _digits) + _sep + DoubleToStr(KCUp_21_25_25, _digits) + _sep + DoubleToStr(KCUp_28_25_25, _digits) + _sep + DoubleToStr(KCUp_7_25_30, _digits) + _sep + DoubleToStr(KCUp_14_25_30, _digits) + _sep + DoubleToStr(KCUp_21_25_30, _digits) + _sep + DoubleToStr(KCUp_28_25_30, _digits) + _sep;
}

