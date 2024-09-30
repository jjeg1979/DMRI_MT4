//+------------------------------------------------------------------+
//|                                                  VAC_Toolbox.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO Academy (c) 2024 |
//+------------------------------------------------------------------+
/*
Version 0: Versión inicial para el curso DMRI de VTALGO Academy

/*

GESTIÓN DE LAS ÓRDENES ====================
CerrarOrdenDespuesdeXVelas()

FUNCIONES AUXILIARES ======================
SafeDivide()
ibs()
EsNuevaVela()
Punto()
EsBisiesto()

FILTROS ===================================
ShouldFilterMonth()
ShouldFilterDay()
*/

#property strict

#include <stdlib.mqh>

enum tipo_orden{
   COMPRA = 1,
   VENTA = -1,
   FLAT = INT_MIN,
};

// Función para división segura
double SafeDivide(double numerator, double denominator) {
    if (denominator == 0) return 0;
    return numerator / denominator;
}

long SafeDivide(long numerador, long denominador, long ret_val = 0)
{
   if(denominador==0) return ret_val;
   
   return (numerador/denominador);
}


double ibs(int _shift)
{
   return SafeDivide(Close[_shift] - Low[_shift], High[_shift] - Low[_shift]);
}


// Cierra una orden abierta (total o parcialmente) después de X velas
void CerrarOrdenDespuesdeXVelas(int _Ticket, int _NumeroVelas = 1, int _TF = PERIOD_CURRENT, int _PorcentajeLotaje = 0, string _Simbolo = NULL, double _MaxSlippage = 2.0) {
	
	// Si _Simbolo está vacío asignamos el símbolo del gráfico
	if (_Simbolo == NULL)
	   _Simbolo = Symbol();
	   
	double _ClosePrice = 0.0;
	
	
	if ( OrderSelect(_Ticket, SELECT_BY_TICKET) ) {
		
		// Devuelve el número de la vela de apertura de la orden
		int _NumVelaApertura = iBarShift(_Simbolo, _TF, OrderOpenTime());	
		
		int _orderType = OrderType();
		if (_orderType == OP_BUY) 	_ClosePrice = Bid;
		else _ClosePrice = Ask;
	
		if (_NumVelaApertura >= _NumeroVelas) {
			int _CloseOrder = OrderClose(_Ticket, _PorcentajeLotaje / 100 * OrderLots(), _ClosePrice, int(_MaxSlippage), clrAqua);
		}
	}
}


// ============================================================================


// Determina si ha llegado una nueva vela
bool EsNuevaVela(bool _CadaVela ) {
	
	if ( _CadaVela ) {
	
		static datetime _MomentoInicial = iTime( NULL, PERIOD_CURRENT, 0);	// 24 Noviembre 2017, 12:00:00 (segundos desde el 1 de Enero de 1970)
		
		// Comparamos el Momento Inical con el Valor Time de la Vela
		if ( _MomentoInicial == iTime( NULL, PERIOD_CURRENT, 0) ) {
	
			return(false);
		
		} else {
	
			_MomentoInicial = iTime( NULL, PERIOD_CURRENT, 0);
			return(true);
		}
		
	} else return(true);
}




// Calcula el valor del punto
double Punto(string _Simbolo = NULL) {
	
	// Si _Simbolo está vacío asignamos el símbolo del gráfico
	if (_Simbolo == NULL)
	   _Simbolo = Symbol();
	
	double _PointSimbolo = MarketInfo(_Simbolo, MODE_POINT);
	int _Decimales = (int)MarketInfo(_Simbolo, MODE_DIGITS);
	
	double _Punto = _PointSimbolo * 10;
	
	if ( _Decimales == 2 || _Decimales == 4 ) _Punto = _PointSimbolo;
	else if ( _Decimales == 0 || _Decimales == 1 ) _Punto = 1;
	
	return(_Punto);
}



// Devuelve true si es un año Bisiesto
bool EsBisiesto(int _Anno) {
 	
     return ( 366 == TimeDayOfYear( StringToTime( StringConcatenate(_Anno, ".12.31") ) ) ? true : false );
}



