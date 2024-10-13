//+------------------------------------------------------------------+
//|                                        VAC_Ensembles_Toolbox.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.04"
#property strict
//+------------------------------------------------------------------+       

//+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+
#include <Toolbox/VAC_Extracciones_Toolbox.mqh>
#include <Headers/VAC_Ensembles_Header.mqh>

//+------------------------------------------------------------------+
//| write_ensemble_info function                                     |
//+------------------------------------------------------------------+    
void write_ensemble_info(int _test_rule){
       int file_handle = FileOpen("ENSAMBLADO_"+Symbol()+"_"+IntegerToString(Period())+"_"+IntegerToString(velas)+(velas>1? "velas" : "vela_regla_")+IntegerToString(_test_rule)+".csv",FILE_READ|FILE_WRITE);
       string header = write_header();
       FileWrite(file_handle, header);   
       string _label = "";    
       
       for (int order = 0; order <= OrdersHistoryTotal() -1; order++)
      
      {  
         bool selected = OrderSelect(order, SELECT_BY_POS, MODE_HISTORY);
         
         if(OrderMagicNumber() == MagicNumber && selected == true){
         if(selected == true){
            _label = "LOSS";
            if (OrderProfit() > 0) _label = "WIN";
            int shift_ensemble = 0;
            shift_ensemble = iBarShift(Symbol(), 0, OrderOpenTime()) + 1;
            string indicators = calculate_indicators(_label, shift_ensemble);
            FileWrite(file_handle, indicators);
            FileFlush(file_handle);
         }
      }
      }
      FileClose(file_handle);
}