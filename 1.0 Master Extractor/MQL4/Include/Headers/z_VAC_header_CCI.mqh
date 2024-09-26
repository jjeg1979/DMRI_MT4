//+------------------------------------------------------------------+
//|                                             z_VAC_header_CCI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador CCI
*/

string z_VAC_header_CCI(string _sep){
   return "CCI_7"+_sep+"CCI_14"+_sep+"CCI_21"+_sep+"CCI_28"+_sep+"CCI_50"+_sep+"CCI_100"+_sep+"CCI_200"+_sep;
}

