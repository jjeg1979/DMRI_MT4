#property version   "1.00"
#property strict
#property indicator_chart_window

#property indicator_buffers 5
#property indicator_color1  Black
#property indicator_color2  Red
#property indicator_color3  Red
#property indicator_color4  Green
#property indicator_color5  Green

input string InpMovingAverageComment="~~~Settings for Moving Average~~~";
input int InpMAPeriod=10;
input ENUM_MA_METHOD InpMAMethod=MODE_LWMA;
input ENUM_APPLIED_PRICE InpMAPrice=PRICE_TYPICAL;
input string InpATRComment="~~~Settings for ATR~~~";
input int InpATRPeriod=5;
input double InpFirstATRBandRatio=1.5;
input double InpSecondATRBandRatio=2.0;
input string InpSignalComment="~~~Settings for BUY/SELL Signal~~~";
input int InpGapMA=3;

double ExtMABuffer[];
double ExtMAplusATR2Buffer[];
double ExtMAplusATR1Buffer[];
double ExtMAminusATR1Buffer[];
double ExtMAminusATR2Buffer[];

int objCounter = 0;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
{
//--- indicator buffers mapping
   IndicatorShortName("MAATR("+string(InpMAPeriod)+")");
   if(InpATRPeriod < 2 || InpMAPeriod < 2)
      return(INIT_FAILED);
   SetIndexStyle(0,DRAW_LINE,STYLE_SOLID);      
   SetIndexDrawBegin(0,InpMAPeriod-1);
   SetIndexLabel(0,"MA");
   SetIndexBuffer(0,ExtMABuffer);
   
   SetIndexStyle(1,DRAW_LINE,STYLE_SOLID);      
   SetIndexDrawBegin(1,InpATRPeriod-1);
   SetIndexLabel(1,"MA+1.5ATR");
   SetIndexBuffer(1,ExtMAplusATR2Buffer);
   
   SetIndexStyle(2,DRAW_LINE,STYLE_DOT);     
   SetIndexDrawBegin(2,InpATRPeriod-1);
   SetIndexLabel(2,"MA+1.0ATR");
   SetIndexBuffer(2,ExtMAplusATR1Buffer);

   SetIndexStyle(3,DRAW_LINE,STYLE_DOT);   
   SetIndexDrawBegin(3,InpATRPeriod-1);
   SetIndexLabel(3,"MA-1.0ATR");
   SetIndexBuffer(3,ExtMAminusATR1Buffer);
   
   SetIndexStyle(4,DRAW_LINE,STYLE_SOLID);   
   SetIndexDrawBegin(4,InpATRPeriod-1);
   SetIndexLabel(4,"MA-1.5ATR");
   SetIndexBuffer(4,ExtMAminusATR2Buffer);
      
//---
   return(INIT_SUCCEEDED);
}
//+------------------------------------------------------------------+
//| Custom indicator de-initialization function                      |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
{
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
   int i, limit;  
   
   limit = rates_total - prev_calculated;
   if(prev_calculated > 0) limit++;
   
   for(i=0; i<limit; i++)
   {
      ExtMABuffer[i] = iMA(Symbol(), PERIOD_CURRENT, InpMAPeriod, 0, InpMAMethod, InpMAPrice, i);
      double curATR = iATR(Symbol(),PERIOD_CURRENT, InpATRPeriod, i);
      ExtMAplusATR1Buffer[i]  = ExtMABuffer[i]+InpFirstATRBandRatio*curATR;
      ExtMAminusATR1Buffer[i] = ExtMABuffer[i]-InpFirstATRBandRatio*curATR;
      ExtMAplusATR2Buffer[i]  = ExtMABuffer[i]+InpSecondATRBandRatio*curATR;
      ExtMAminusATR2Buffer[i] = ExtMABuffer[i]-InpSecondATRBandRatio*curATR;      
   }
   
//--- return value of prev_calculated for next call
return(rates_total);
}
//+------------------------------------------------------------------+
