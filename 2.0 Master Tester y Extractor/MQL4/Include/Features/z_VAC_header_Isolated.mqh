//+------------------------------------------------------------------+
//|                                        z_VAC_header_Isolated.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos de varios indicadores
 * que no tienen periodos
 */

string z_VAC_header_Isolated(string _sep){
   return "Awesome"+_sep +"AC"+_sep +"AD"+_sep +"BWMFI"+_sep;
}

