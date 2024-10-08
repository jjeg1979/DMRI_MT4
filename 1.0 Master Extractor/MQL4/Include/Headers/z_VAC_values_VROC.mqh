//+------------------------------------------------------------------+
//|                                          z_VAC_values_VROCFx.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador VROCFx
*/

string z_VAC_values_VROC(string _sep, int _shift, int _digits){
   double VROCFx_3           = iCustom(NULL, 0, "Custom/VROCFx", 3, 0, _shift);
   double VROCFx_7           = iCustom(NULL, 0, "Custom/VROCFx", 7, 0, _shift);
   double VROCFx_14          = iCustom(NULL, 0, "Custom/VROCFx", 14, 0, _shift);
   double VROCFx_21          = iCustom(NULL, 0, "Custom/VROCFx", 21, 0, _shift);
   double VROCFx_28          = iCustom(NULL, 0, "Custom/VROCFx", 28, 0, _shift);
   double VROCFx_50          = iCustom(NULL, 0, "Custom/VROCFx", 50, 0, _shift);
   double VROCFx_100         = iCustom(NULL, 0, "Custom/VROCFx", 100, 0, _shift);
   double VROCFx_200         = iCustom(NULL, 0, "Custom/VROCFx", 200, 0, _shift);   
   return DoubleToStr(VROCFx_3, _digits) + _sep + DoubleToStr(VROCFx_7, _digits) + _sep + DoubleToStr(VROCFx_14, _digits) + _sep + DoubleToStr(VROCFx_21, _digits) + _sep + DoubleToStr(VROCFx_28, _digits) + _sep + DoubleToStr(VROCFx_50, _digits) + _sep + DoubleToStr(VROCFx_100, _digits) + _sep + DoubleToStr(VROCFx_200, _digits) + _sep;
}



