//+------------------------------------------------------------------+
//|                                                      MMI.mq4     |
//|                        Copyright 2024, MetaQuotes Software Corp. |
//|                                       https://www.mql5.com       |
//+------------------------------------------------------------------+
#property copyright "2024, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property indicator_separate_window
#property indicator_buffers 1
#property indicator_color1 Red

//--- input parameters
input int TimePeriod = 14;

//--- indicator buffers
double MMI_Buffer[];

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
   SetIndexBuffer(0, MMI_Buffer);
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
   if (rates_total < TimePeriod) return(0);

   for (int i = 0; i < rates_total - TimePeriod; i++)
     {
      double m = Median(close, i, TimePeriod);
      int nh = 0, nl = 0;

      for (int j = 1; j < TimePeriod; j++)
        {
         if (close[i + j] > m && close[i + j] > close[i + j - 1]) nl++;
         else if (close[i + j] < m && close[i + j] < close[i + j - 1]) nh++;
        }

      MMI_Buffer[i] = 100.0 * (nl + nh) / (TimePeriod - 1);
     }

   return(rates_total);
  }
//+------------------------------------------------------------------+
//| Median calculation function                                      |
//+------------------------------------------------------------------+
double Median(const double &array[], int start, int length)
  {
   double temp[];
   ArrayResize(temp, length);

   for (int i = 0; i < length; i++)
      temp[i] = array[start + i];

   ArraySort(temp);

   if (length % 2 == 0)
      return (temp[length / 2 - 1] + temp[length / 2]) / 2.0;
   else
      return temp[length / 2];
  }
//+------------------------------------------------------------------+