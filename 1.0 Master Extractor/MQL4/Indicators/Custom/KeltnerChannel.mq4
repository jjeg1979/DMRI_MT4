//+------------------------------------------------------------------+
//|                                                Keltner_canal.mq4 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_plots   2
//--- plot Alcista
#property indicator_label1  "Alcista"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrLime
#property indicator_style1  STYLE_SOLID
#property indicator_width1  1
//--- plot Bajista
#property indicator_label2  "Bajista"
#property indicator_type2   DRAW_LINE
#property indicator_color2  clrRed
#property indicator_style2  STYLE_SOLID
#property indicator_width2  1
//--- input parameters
input int      opt_ATR=14;
input int      opt_MA=21;
input double   opt_MT=2.5;
//--- indicator buffers
double         AlcistaBuffer[];
double         BajistaBuffer[];

// Other variables
double maxPeriodoLookback = 0.0;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   SetIndexBuffer(0,AlcistaBuffer);
   SetIndexBuffer(1,BajistaBuffer);
   if (opt_ATR > opt_MA)
      maxPeriodoLookback = opt_ATR;
   else
      maxPeriodoLookback = opt_MA;
   
//---
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
//---
   for(int i=0;i<Bars-maxPeriodoLookback;i++) {
      AlcistaBuffer[i] = iMA(NULL, 0, opt_MA, 0, MODE_EMA, 0, i) + (iATR(NULL, 0, opt_ATR, i)*opt_MT);
      BajistaBuffer[i] = iMA(NULL, 0, opt_MA, 0, MODE_EMA, 0, i) - (iATR(NULL, 0, opt_ATR, i)*opt_MT);
   }
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
