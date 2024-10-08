//+------------------------------------------------------------------+
//|                                             z_VAC_header_ADX.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador ADX
*/

string z_VAC_header_ADX(string _sep){
   return "ADX_7"+_sep+"ADX_14"+_sep+"ADX_21"+_sep+"ADX_28"+_sep+"ADX_50"+_sep+"ADX_100"+_sep;
}

