//+------------------------------------------------------------------+
//|                                         z_VAC_header_DMIPlus.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador DMI+
*/

string z_VAC_header_DMIPlus(string _sep){
   return "DMIPlus_7"+_sep+"DMIPlus_14"+_sep+"DMIPlus_21"+_sep+"DMIPlus_28"+_sep+"DMIPlus_50"+_sep+"DMIPlus_100"+_sep;
}

