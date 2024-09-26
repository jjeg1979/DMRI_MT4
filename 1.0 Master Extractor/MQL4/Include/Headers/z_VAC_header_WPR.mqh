//+------------------------------------------------------------------+
//|                                             z_VAC_header_WPR.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador WPR
 */

string z_VAC_header_WPR(string _sep){
   return "WPR_7"+_sep +"WPR_14"+_sep +"WPR_21"+_sep +"WPR_28"+_sep +"WPR_50"+_sep +"WPR_100"+_sep +"WPR_200"+_sep;
}

