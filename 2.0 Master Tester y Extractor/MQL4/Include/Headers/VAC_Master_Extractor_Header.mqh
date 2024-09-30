//+------------------------------------------------------------------+
//|                                  VAC_Master_Extractor_Header.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict

/*
 * Este archivo es el archivo que importa el resto de cabeceras en 
 * el extractor maestro.
 *
 * La idea es que este archivo permita "reordenar" de forma fácil y
 * sencilla cómo se muestran los parámetros en el extractor. 
*/

//+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+

#include <Headers/VAC_Extractor_Header.mqh>
#include <Filters/VAC_Filters_Toolbox.mqh>
#include <Toolbox/VAC_Toolbox.mqh>

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| IMPORTAMOS CABECERAS                                             |
//+------------------------------------------------------------------+
#include <Features/z_VAC_header_DateTime.mqh>
#include <Features/z_VAC_header_OHLCV.mqh>
#include <Features/z_VAC_header_ADX.mqh>
#include <Features/z_VAC_header_AroonDown.mqh>
#include <Features/z_VAC_header_AroonUp.mqh>
#include <Features/z_VAC_header_ATR.mqh>
#include <Features/z_VAC_header_BBDown.mqh>
#include <Features/z_VAC_header_BBUp.mqh>
#include <Features/z_VAC_header_BearsPower.mqh>
#include <Features/z_VAC_header_BullsPower.mqh>
#include <Features/z_VAC_header_CCI.mqh>
#include <Features/z_VAC_header_DeMarker.mqh>
#include <Features/z_VAC_header_DonchDown.mqh>
#include <Features/z_VAC_header_DonchUp.mqh>
#include <Features/z_VAC_header_DMIMinus.mqh>
#include <Features/z_VAC_header_DMIPlus.mqh>
#include <Features/z_VAC_header_EnvDown.mqh>
#include <Features/z_VAC_header_EnvUp.mqh>
#include <Features/z_VAC_header_EMA.mqh>
#include <Features/z_VAC_header_Force.mqh>
#include <Features/z_VAC_header_IBS.mqh>
#include <Features/z_VAC_header_Isolated.mqh>
#include <Features/z_VAC_header_KCDown.mqh>
#include <Features/z_VAC_header_KCUp.mqh>
#include <Features/z_VAC_header_MACD.mqh>
#include <Features/z_VAC_header_MFI.mqh>
#include <Features/z_VAC_header_MMI.mqh>
#include <Features/z_VAC_header_Mom.mqh>
#include <Features/z_VAC_header_OsMA.mqh>
#include <Features/z_VAC_header_RSI.mqh>
#include <Features/z_VAC_header_RVI.mqh>
#include <Features/z_VAC_header_SAR.mqh>
#include <Features/z_VAC_header_SMA.mqh>
#include <Features/z_VAC_header_SuperTrend.mqh>
#include <Features/z_VAC_header_Stoch.mqh>
#include <Features/z_VAC_header_Tenkan.mqh>
#include <Features/z_VAC_header_VROC.mqh>
#include <Features/z_VAC_header_WMA.mqh>
#include <Features/z_VAC_header_WPR.mqh>

#include <Features/z_VAC_header_CBBRDown.mqh>
#include <Features/z_VAC_header_CBBRUp.mqh>
#include <Features/z_VAC_header_CDonchRDown.mqh>
#include <Features/z_VAC_header_CDonchRUp.mqh>

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| IMPORTAMOS CARACTERÍSTICAS                                       |
//+------------------------------------------------------------------+
#include <Features/z_VAC_values_DateTime.mqh>
#include <Features/z_VAC_values_OHLCV.mqh>
#include <Features/z_VAC_values_ADX.mqh>
#include <Features/z_VAC_values_AroonDown.mqh>
#include <Features/z_VAC_values_AroonUp.mqh>
#include <Features/z_VAC_values_ATR.mqh>
#include <Features/z_VAC_values_BBDown.mqh>
#include <Features/z_VAC_values_BBUp.mqh>
#include <Features/z_VAC_values_BearsPower.mqh>
#include <Features/z_VAC_values_BullsPower.mqh>
#include <Features/z_VAC_values_CCI.mqh>
#include <Features/z_VAC_values_DeMarker.mqh>
#include <Features/z_VAC_values_DMIMinus.mqh>
#include <Features/z_VAC_values_DMIPlus.mqh>
#include <Features/z_VAC_values_DonchDown.mqh>
#include <Features/z_VAC_values_DonchUp.mqh>
#include <Features/z_VAC_values_EnvDown.mqh>
#include <Features/z_VAC_values_EnvUp.mqh>
#include <Features/z_VAC_values_EMA.mqh>
#include <Features/z_VAC_values_Force.mqh>
#include <Features/z_VAC_values_IBS.mqh>
#include <Features/z_VAC_values_Isolated.mqh>
#include <Features/z_VAC_values_KCDown.mqh>
#include <Features/z_VAC_values_KCUp.mqh>
#include <Features/z_VAC_values_MACD.mqh>
#include <Features/z_VAC_values_MFI.mqh>
#include <Features/z_VAC_values_MMI.mqh>
#include <Features/z_VAC_values_Mom.mqh>
#include <Features/z_VAC_values_OsMA.mqh>
#include <Features/z_VAC_values_RSI.mqh>
#include <Features/z_VAC_values_RVI.mqh>
#include <Features/z_VAC_values_SAR.mqh>
#include <Features/z_VAC_values_SMA.mqh>
#include <Features/z_VAC_values_SuperTrend.mqh>
#include <Features/z_VAC_values_Stoch.mqh>
#include <Features/z_VAC_values_Tenkan.mqh>
#include <Features/z_VAC_values_VROC.mqh>
#include <Features/z_VAC_values_WMA.mqh>
#include <Features/z_VAC_values_WPR.mqh>

#include <Features/z_VAC_values_CBBRDown.mqh>
#include <Features/z_VAC_values_CBBRUp.mqh>
#include <Features/z_VAC_values_CDonchRDown.mqh>
#include <Features/z_VAC_values_CDonchRUp.mqh>

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| VARIABLES DE ENTRADA                                             |
//+------------------------------------------------------------------+
sinput string comma = ",";                  // Separador

//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
//| VARIABLES INTERNAS                                               |
//+------------------------------------------------------------------+
int file_handler = 0;
int min_bars = 200;     // Mínimo número de barras en el gráfico


// Para dar información acerca de la extracción
long up_candles = 0;
long down_candles = 0;
long total_candles = 0;

double pct_up_candles = 0.0;
double pct_dwn_candles = 0.0;

//+------------------------------------------------------------------+