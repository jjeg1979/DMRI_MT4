//+------------------------------------------------------------------+
//|                                   VAC_RULES_TESTER_PLANTILLA.mq4 |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict


//+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+
#include <Headers/VAC_Tester_General_Header.mqh>
#include <Filters/VAC_Filters_Toolbox.mqh>
#include <Headers/VAC_Ensembles_Header.mqh>
#include <Headers/VAC_Header_Min_Label.mqh>
#include <Headers/VAC_Exit_Header.mqh>
#include <Rules/TradingRulesBuy.mqh>
// #include <Rules/SelectedRules.mqh>
//#include <Rules/EnsembleBuyRules.mqh>
#include <Toolbox/VAC_FO_Toolbox.mqh>


//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
//| Internal variables                                               |
//+------------------------------------------------------------------+
bool compra = false;
bool venta = false;
tipo_orden enviarOrden = FLAT;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---


//---

//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   

  }
  
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
 {
//---  
 
   
   // Cierre de operaciones según el criterio establecido
   for(int order = 0; order <= OrdersTotal() - 1; order++)
   {
      bool selected = OrderSelect(order, SELECT_BY_POS);
      
      int _OrderType = OrderType();
      double _ClosePrice = 0.0;
      if (_OrderType == OP_BUY) _ClosePrice = Ask;
      else _ClosePrice = Bid;
         
      
      switch(exit_mode) {
         case SignaLost:
         {      
            // CIERRE DE LAS ÓRDENES SI DEJA DE HABER SEÑAL
            if(OrderMagicNumber() == MagicNumber && selected && OrderType() == OP_BUY && compra==False)
            {
               int _OrderClose = OrderClose(OrderTicket(), OrderLots(),_ClosePrice, (int)MaxSlippage, clrRoyalBlue) ;
            }
            // CIERRE DE LAS ÓRDENES SI DEJA DE HABER SEÑAL
            if(OrderMagicNumber() == MagicNumber && selected && OrderType() == OP_SELL && venta==False)
            {
               int _OrderClose = OrderClose(OrderTicket(), OrderLots(),_ClosePrice, (int)MaxSlippage, clrRoyalBlue) ;
            }                   
         }
         break;
         case AfterNCandles:
         {
            // CIERRE DE LAS ÓRDENES tras N_Candles
            if(OrderMagicNumber() == MagicNumber && OrderComment() == Comentario && selected == true)
            {      
               // Cerramos el 100% de la orden tras N_Candles      
               CerrarOrdenDespuesdeXVelas(OrderTicket(), N_Candles, 0, 100, NULL);         
            }        
         }
         break;
      } // end switch
      
          
   }    
     
//    Ejecutar cada nueva vela
   if (!EsNuevaVela(CadaVela)) return;  
   compra = false;
   venta = false;
   enviarOrden = FLAT;     
   
   // Aplicamos el filtro mensual que hemos utilizado para la extracción
   
   if (ShouldFilterMonth(ExcludeJan, ExcludeFeb, ExcludeMar, ExcludeApr, ExcludeMay, ExcludeJun,
                             ExcludeJul, ExcludeAug, ExcludeSep, ExcludeOct, ExcludeNov, ExcludeDec)) return;
   
   // Aplicamos el filtro diario que hemos utilizado para la extracción                             
   if (ShouldFilterDay(ExcludeMonday, ExcludeTuesday, ExcludeWednesday, ExcludeThursday, ExcludeFriday, ExcludeSaturday, ExcludeSunday)) return;
   
   // CONDICIONES DE ENTRADA
   if (1==1) {
      // Condición para el máximo número de operaciones
      if (OrdersTotal() >= MaxOrdenesAbiertas) return;
      
      if (test_mode == RuleByRule && system_type == LONG)
         enviarOrden = ExecuteBuyRule(test_rule);

      if (test_mode == RuleCombination && system_type == LONG)
         enviarOrden = ExecuteBuyRules();
         
      if (test_mode == RuleByRule && system_type == SHORT)
         enviarOrden = ExecuteSellRule(test_rule);
         
      if (test_mode == RuleCombination && system_type == SHORT)
         enviarOrden = ExecuteSellRules();
      
      if (test_mode == RuleByRule && system_type == BOTH){
         enviarOrden = ExecuteBuyRule(test_rule);
         enviarOrden = ExecuteSellRule(test_rule);
      }
      
      if (test_mode == RuleCombination && system_type == BOTH){
         enviarOrden = ExecuteBuyRules();
         enviarOrden = ExecuteSellRules();
      }
      
            
      compra = (enviarOrden == COMPRA);
      venta = (enviarOrden == VENTA);
      
      
      // ENTRADA A MERCADO
      // LARGOS
      if(compra && system_type == LONG){         
         int _OrderSend = OrderSend(NULL, OP_BUY, Lots, Ask, (int)MaxSlippage, 0.0, 0.0, Comentario, MagicNumber, 0, clrGreen);
      } 
      // CORTOS
      if(venta && system_type == SHORT){         
         int _OrderSend = OrderSend(NULL, OP_SELL, Lots, Bid, (int)MaxSlippage, 0.0, 0.0, Comentario, MagicNumber, 0, clrGreen);
      }
      
      // AMBOS
      if (system_type == BOTH){
         if (compra) int _OrderSend = OrderSend(NULL, OP_BUY, Lots, Ask, (int)MaxSlippage, 0.0, 0.0, Comentario, MagicNumber, 0, clrGreen); return;
         if (venta) int _OrderSend = OrderSend(NULL, OP_SELL, Lots, Bid, (int)MaxSlippage, 0.0, 0.0, Comentario, MagicNumber, 0, clrGreen); 
      }
     
      
   } // 1==1  
   
 }
