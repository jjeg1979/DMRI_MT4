//+------------------------------------------------------------------+
//|                                             z_VAC_values_SAR.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Parabolic SAR
*/

string z_VAC_values_SAR(string _sep, int _shift, int _digits){
   double SAR_002_02       = iSAR(NULL, 0, 0.02, 0.2, _shift);
   double SAR_001_02       = iSAR(NULL, 0, 0.01, 0.2, _shift);
   double SAR_002_03       = iSAR(NULL, 0, 0.02, 0.3, _shift);
   double SAR_001_03       = iSAR(NULL, 0, 0.01, 0.3, _shift);
   double SAR_004_02       = iSAR(NULL, 0, 0.04, 0.2, _shift);
   double SAR_004_03       = iSAR(NULL, 0, 0.04, 0.3, _shift);  
   
   return DoubleToStr(SAR_002_02, _digits) + _sep + DoubleToStr(SAR_001_02, _digits) + _sep +  DoubleToStr(SAR_002_03, _digits) + _sep + DoubleToStr(SAR_001_03, _digits) + _sep + DoubleToStr(SAR_004_02, _digits) + _sep + DoubleToStr(SAR_004_03, _digits) + _sep;
}


