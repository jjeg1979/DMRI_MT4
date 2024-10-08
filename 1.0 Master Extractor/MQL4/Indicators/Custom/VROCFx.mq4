//+------------------------------------------------------------------+
//|                                                 VROC_Forex.mq4   |
//|                   Copyright © 2024                               |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2024"
#property link      ""
#property version   "1.00"
#property strict
#property indicator_separate_window
#property indicator_buffers 1
#property indicator_color1 Blue

input int VROC_Period = 14;  // VROC calculation period

double VROCBuffer[];

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
{
   SetIndexBuffer(0, VROCBuffer);
   SetIndexStyle(0, DRAW_LINE);
   SetIndexLabel(0, "VROC");
   IndicatorShortName("VROC(" + IntegerToString(VROC_Period) + ")");
   return(INIT_SUCCEEDED);
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
{
   int limit = rates_total - prev_calculated;
   if (prev_calculated > 0) limit++;

   for(int i = limit - 1; i >= 0; i--)
   {
      if(i >= rates_total - VROC_Period)
      {
         VROCBuffer[i] = 0;
      }
      else
      {
         double currentVolume = (high[i] - low[i]);  // Using range as volume proxy
         double pastVolume = (high[i + VROC_Period] - low[i + VROC_Period]);
         
         if(pastVolume != 0)
         {
            VROCBuffer[i] = ((currentVolume - pastVolume) / pastVolume) * 100;
         }
         else
         {
            VROCBuffer[i] = 0;
         }
      }
   }
   
   return(rates_total);
}
//+------------------------------------------------------------------+