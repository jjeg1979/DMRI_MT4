//+------------------------------------------------------------------+
//|                                          VAC_Header_Labeling.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+
#include <Headers/VAC_Header_Min_Label.mqh>
//+------------------------------------------------------------------+
//| VARIABLES DE ENTRADA                                             |
//+------------------------------------------------------------------+

enum labeling{
   unbalanced_candles   = 0,
   donchian_average     = 1,
   close_sma_ratio      = 2,
};

enum extraccion{
   alcista              = 0,
   bajista              = 1,
   sin_sesgo            = 2,
};


//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| PARÁMETROS DE ENTRADA                                            |
//+------------------------------------------------------------------+

sinput   string      sunbalanced          = "========================> ETIQUETADO DESBALANCE <========================";
input    labeling    label_method         = unbalanced_candles;
input    double      sesgo                = 0.001;             // Sesgo de extracción
input    extraccion  sesgo_extraccion     = alcista;    // Tipo de extracción
sinput   string      sdonchian            = "========================> ETIQUETADO DONCHIAN <========================";
input    int         donchianPd           = 20;
sinput   string      sSMA                 = "========================> ETIQUETADO SMA <========================";
input    int         smaPd                = 200;

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| VARIABLES INTERNAS                                               |
//+------------------------------------------------------------------+
// Comprobación del sesgo
double _sesgo = 0.0;