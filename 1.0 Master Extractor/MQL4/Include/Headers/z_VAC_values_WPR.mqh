//+------------------------------------------------------------------+
//|                                             z_VAC_values_WPR.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Williams (WPR)
*/

string z_VAC_values_WPR(string _sep, int _shift, int _digits){
   double WPR_7            = iWPR(NULL, 0, 7, _shift);
   double WPR_14           = iWPR(NULL, 0, 14, _shift);
   double WPR_21           = iWPR(NULL, 0, 21, _shift);
   double WPR_28           = iWPR(NULL, 0, 28, _shift);
   double WPR_50           = iWPR(NULL, 0, 50, _shift);
   double WPR_100          = iWPR(NULL, 0, 100, _shift);
   double WPR_200          = iWPR(NULL, 0, 200, _shift);  
   
   return DoubleToStr(WPR_7, _digits) + _sep + DoubleToStr(WPR_14, _digits) + _sep + DoubleToStr(WPR_21, _digits) + _sep + DoubleToStr(WPR_28, _digits) + _sep + DoubleToStr(WPR_50, _digits) + _sep + DoubleToStr(WPR_100, _digits) + _sep + DoubleToStr(WPR_200, _digits) + _sep;
}



