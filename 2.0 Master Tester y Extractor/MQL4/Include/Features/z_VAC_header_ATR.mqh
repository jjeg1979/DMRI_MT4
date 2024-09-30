//+------------------------------------------------------------------+
//|                                             z_VAC_header_ATR.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador ATR
*/

string z_VAC_header_ATR(string _sep){
   return "ATR_7"+_sep+"ATR_14"+_sep+"ATR_21"+_sep+"ATR_28"+_sep+"ATR_50"+_sep+"ATR_100"+_sep+"ATR_200"+_sep;
}

