//+------------------------------------------------------------------+
//|                                             z_VAC_header_SAR.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador Parabolic SAR
*/

string z_VAC_header_SAR(string _sep){
   return "SAR_002_02"+_sep +"SAR_001_02"+_sep +"SAR_002_03"+_sep +"SAR_001_03"+_sep +"SAR_004_02"+_sep +"SAR_004_03"+_sep;
}



