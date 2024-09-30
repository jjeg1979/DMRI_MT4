//+------------------------------------------------------------------+
//|                                          VAC_Header_Labeling.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict


#include <Headers/VAC_Header_Labeling.mqh>

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| FUNCIÓN DE ETIQUETADO                                            |
//+------------------------------------------------------------------+

string label_candle(int _shift){   
   if (sesgo_extraccion == alcista) {
         
         label = "DOWN";

         
         if(label_method == unbalanced_candles){
            if(Open[0] > Open[_shift-1] && Open[0]/Open[_shift-1] >= (1+_sesgo)) {
               label = "UP";
            }
         }
         
         if(label_method == donchian_average){
            double donchianAv = (iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 0, _shift)+iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 1, _shift))/2;
            if(Open[0] > Open[_shift-1] && Open[0] > donchianAv){
               label = "UP";               
            }
         }
      }
      
      if (sesgo_extraccion == bajista) {
         
         label = "UP";
         
         if(label_method == unbalanced_candles){
            if(Open[0] < Open[_shift-1] && Open[0]/Open[_shift-1] <= (1 - _sesgo)) {
               label = "DOWN";
            }
         }
         
         if(label_method == donchian_average){
            double donchianAv = (iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 0, _shift)+iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 1, _shift))/2;
            if(Open[0] < Open[_shift-1] && Open[0] < donchianAv){
               label = "UP";
            }
         }
         
      }
      
      if (sesgo_extraccion == sin_sesgo) {
         label = "UP";

         
         if(label_method == unbalanced_candles){
            if (Open[0]>Open[_shift-1]) {
               label = "UP";
            }
            
            if (Open[0]<Open[_shift-1]) {
               label = "DOWN";
            }
         }
         
         if(label_method == donchian_average){
            double donchianAv = (iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 0, _shift)+iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 1, _shift))/2;
            if(Open[0] > Open[_shift-1] && Open[0] > donchianAv){
               label = "UP";               
            }
            
            if(Open[0] < Open[_shift-1] && Open[0] < donchianAv){
               label = "UP";
            }
         }
      }
      
      return label;
}

//+------------------------------------------------------------------+