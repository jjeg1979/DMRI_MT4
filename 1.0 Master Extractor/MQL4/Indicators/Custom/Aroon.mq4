//+------------------------------------------------------------------+
//|                                                    aaron FLO.mq4 |
//|                                                   Fernando Lopez |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fernando Lopez"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_separate_window
#property indicator_minimum 1
#property indicator_maximum 100
#property indicator_buffers 3
#property indicator_plots   3


//--- plot Aroon_UPBuffer
#property indicator_label2  "Aroon_UPBuffer"
#property indicator_type2   DRAW_LINE
#property indicator_color2  clrRoyalBlue
#property indicator_style2  STYLE_SOLID
#property indicator_width2  1
//--- plot Arron_DOWNBuffer
#property indicator_label3  "Arron_DOWNBuffer"
#property indicator_type3   DRAW_LINE
#property indicator_color3  clrOrange
#property indicator_style3  STYLE_SOLID
#property indicator_width3  1

extern int MomPeriod=14;

//--- indicator buffers

double         Aroon_UPBufferBuffer[];
double         Arron_DOWNBufferBuffer[];

int limit = 1000;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   SetIndexBuffer(1,Aroon_UPBufferBuffer);
   SetIndexBuffer(2,Arron_DOWNBufferBuffer);
   
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
  
 /*   for (int i=limit ;i>=0; i--)
     {
     
     
      tmpBuffer[i]= max(;
      precio1= iAroon(NULL, 0, periodo_fast,0,MODE_EMA, PRICE_CLOSE,i);
      precio2= iMA(NULL, 0, periodo_slow,0,MODE_EMA, PRICE_CLOSE,i);
      if (precio1 > precio2)
      {
         CompraBuffer[i] = tmpBuffer[i];
         CompraBuffer[i+1] = tmpBuffer[i+1];   
          VentaBuffer[i] = EMPTY_VALUE;
         VentaBuffer[i+1] = EMPTY_VALUE;      
      }else
      {
         CompraBuffer[i] = EMPTY_VALUE;
         CompraBuffer[i+1] = EMPTY_VALUE;   

         VentaBuffer[i] = tmpBuffer[i];
         VentaBuffer[i+1] = tmpBuffer[i+1];
       }
      }

//--- return value of prev_calculated for next call
   return(rates_total);
  */ 
      int i,counted_bars=IndicatorCounted();
//----
      if(Bars<=MomPeriod) return(0);  //bar kurang dari 14 keluar..
   //---- initial zero
      if(counted_bars<1)  
      
         for(i=1;i<=MomPeriod;i++) {
            Aroon_UPBufferBuffer[Bars-i]=0.0;
            Arron_DOWNBufferBuffer[Bars-i]=0.0;
         }
   //----
      i=Bars-MomPeriod-1;
      if(counted_bars>=MomPeriod) i=Bars-counted_bars-1;//15-14-1=0
      int nHigh,nLow;
      while(i>=0)
        {
         double Max=-100000;
         double Min=100000;
         for(int k=i;k<i+MomPeriod;k++){
            double Num=Close[k];
            if(Num>Max){
               Max=Num;
               nHigh=k;
            }
            if(Num<Min){
               Min=Num;
               nLow=k;
            }
         }
         
         //Aroon Indicator math..
         Aroon_UPBufferBuffer[i]=100.0*(MomPeriod-(nHigh-i))/MomPeriod;
         Arron_DOWNBufferBuffer[i]=100.0*(MomPeriod-(nLow-i))/MomPeriod;
         i--;
        }
      return(rates_total);
  }
//+------------------------------------------------------------------+
