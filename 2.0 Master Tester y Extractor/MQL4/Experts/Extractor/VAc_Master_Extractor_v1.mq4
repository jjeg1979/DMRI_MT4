//+------------------------------------------------------------------+
//|                                      VAC_Master_Extractor_v1.mq4 |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict

//+------------------------------------------------------------------+
//| IMPORTACIÓN DE LIBRERÍAS                                         |
//+------------------------------------------------------------------+
#include <Headers/VAC_Filters_Header.mqh>
#include <Toolbox/VAC_Extracciones_Toolbox.mqh>
#include <Toolbox/VAC_Labeling_Toolbox.mqh>


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   // Corrección del sesgo para el caso alcista
   if (sesgo > 1) _sesgo = sesgo -1;
   else _sesgo = sesgo;
   
   if (sesgo_extraccion == alcista){
      file_handler = FileOpen("EXTRACCION_ALCISTA_"+Symbol()+"_"+
         IntegerToString(Period())+"_"+DoubleToStr(sesgo, 4)+"_"+
         IntegerToString(velas)+".csv", FILE_READ|FILE_WRITE);
   }
   if (sesgo_extraccion == bajista){
      file_handler = FileOpen("EXTRACCION_BAJISTA_"+Symbol()+"_"+
         IntegerToString(Period())+"_"+DoubleToStr(sesgo, 4)+"_"+
         IntegerToString(velas)+".csv", FILE_READ|FILE_WRITE);
   }
   if (sesgo_extraccion == sin_sesgo){
      file_handler = FileOpen("EXTRACCION_SIN_SESGO"+Symbol()+"_"+
         IntegerToString(Period())+"_"+DoubleToStr(sesgo, 4)+"_"+
         IntegerToString(velas)+".csv", FILE_READ|FILE_WRITE);
   }
   
   string header = write_header();
      
   FileWrite(file_handler, header);
         
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   FileClose(file_handler);
   
  
   total_candles = up_candles + down_candles;
   pct_up_candles = SafeDivide(double(up_candles* 100),double(total_candles));
   pct_dwn_candles = SafeDivide(double(down_candles* 100),double(total_candles));
   // Mostramos las estadísticas
   if (total_candles>0) {
     
      Print("Velas totales procesadas: ", IntegerToString(total_candles));
      Print("Velas alcistas procesadas: ", IntegerToString(up_candles) +
            ". Porcentaje sobre el total: ", DoubleToString(pct_up_candles, 2), "%");
      Print("Velas bajistas procesadas: ", IntegerToString(down_candles) +
            ". Porcentaje sobre el total: ", DoubleToString(pct_dwn_candles, 2), "%");
   }
   else {
      Print("¡Ninguna vela se ha procesado!");
   }
   
  }  



//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
  
   if (iBars(NULL, 0) >= shift + min_bars){

      // --------------------------------------------------------------------------------------------------------
      
      // Determinar el valor de la etiqueta, recordad el masterclas 1 impartido por el MSc Jhon Jairo Realpe
      
      // --------------------------------------------------------------------------------------------------------
      
      label = label_candle(shift);
      
      // Actualización de estadísticas
      if (label == "UP") up_candles++;
      if (label == "DOWN") down_candles++;      
      
      
      // --------------------------------------------------------------------------------------------------------
      
      // Escribir datos en el archivo
      
      // --------------------------------------------------------------------------------------------------------
      
      if (ShouldFilterMonth(ExcludeJan, ExcludeFeb, ExcludeMar, ExcludeApr, ExcludeMay, ExcludeJun,
                             ExcludeJul, ExcludeAug, ExcludeSep, ExcludeOct, ExcludeNov, ExcludeDec)) return;
                             
      if (ShouldFilterDay(ExcludeMonday, ExcludeTuesday, ExcludeWednesday, ExcludeThursday, ExcludeFriday, ExcludeSaturday, ExcludeSunday)) return;
      string linea = calculate_indicators(label);   
                             // linea += label;
      
      if (label!=NULL) FileWrite(file_handler, linea);
            
      FileFlush(file_handler);         

      
      // --------------------------------------------------------------------------------------------------------
      
      
   } // if Bars
  
 } // OnTick
//+------------------------------------------------------------------+
