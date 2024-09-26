# DMRI_MT4
Librerías, Extractor y Probador de Estrategias para MT4 usando ML


## Instalación

Para instalar este repositorio, ejecuta este código. Se recomienda usar una carpeta diferente a la de la instalación de MT4, para evitar conflictos con los archivos ya existentes. También, es muy recomendable (aunque no obligatorio) utilizar una instalación limpia de MetaTrader 4.

`` git clone https://github.com/jjeg1979/DMRI_MT4.git ``

Después copia todo el contenido de la carpeta MQL4 a la carpeta de datos MQL4 en la instalación de MetaTrader4.

## Indicadores

La primera versión del extractor avanzado incluye un total de 33 indicadores diferentes. Estos indicadores son:

- AC
- AD
- ADX
- Aroon
- ATR
- Awesome
- Bollinger Bands
- BearsPower
- BullsPower
- BWMFI
- CCI
- DeMarker
- Donchian Channel
- Exponential Moving Average (EMA)
- Envelopes
- Force
- IBS
- Keltner Channel
- MACD
- MFI
- Market Meanness Index (MMI)
- Momentum
- OsMA
- RSI
- RVI
- Parablic SAR
- Simple Moving Average (SMA)
- Stochastic Oscillator
- SuperTrend
- Tenkan
- VROC
- Weighted Moving Average (WMA)
- Williams Percentage Range (WPR)

Y el número de "características" resultantes son 264. 

## Diccionario de características

Para poder traducir las reglas a MT4, se proporciona un archivo: `rules_dict.json`. Este es el encargado de realizar la transcripción de las reglas saiidas desde un generador de reglas, tal como Ripper (Jrip en Weka) a MQL4.

## Contribuciones

Se puede contribuir a este repositorio, reportando fallos o realizando sugerencias. Para ambos propósitos, se sugiere hacer un "fork" del repositorio, crear una rama y tras realizar y testear los cambios, pedir mediante "issue" y pull request (PR) la integración con la rama principal.
