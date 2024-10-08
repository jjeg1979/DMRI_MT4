//+------------------------------------------------------------------+
//|                                        z_VAC_values_DeMarker.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador DeMarker
*/

string z_VAC_values_DeMarker(string _sep, int _shift, int _digits){
   double DeMarker_7       = iDeMarker(NULL, 0, 7, _shift);
   double DeMarker_14      = iDeMarker(NULL, 0, 14, _shift);
   double DeMarker_21      = iDeMarker(NULL, 0, 21, _shift);
   double DeMarker_28      = iDeMarker(NULL, 0, 28, _shift);
   double DeMarker_50      = iDeMarker(NULL, 0, 50, _shift);
   double DeMarker_100     = iDeMarker(NULL, 0, 100, _shift);
   double DeMarker_200     = iDeMarker(NULL, 0, 200, _shift); 
   
   return DoubleToStr(DeMarker_7, _digits) + _sep + DoubleToStr(DeMarker_14, _digits) + _sep + DoubleToStr(DeMarker_21, _digits) + _sep + DoubleToStr(DeMarker_28, _digits) + _sep + DoubleToStr(DeMarker_50, _digits) + _sep + DoubleToStr(DeMarker_100, _digits) + _sep + DoubleToStr(DeMarker_200, _digits) + _sep;
}


