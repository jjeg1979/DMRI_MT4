# TODO

En este archivo se recogen las tareas pendientes y las que se han completado. Se ha optado por seguir la convención de [GitHub Flavored Markdown](https://github.github.com/gfm/).

## No es necesario que se siga el orden de las tareas, pero sí que se debe de seguir el formato de las tareas completadas.

## Tareas completadas (marcadas con [x]) y tareas pendientes (marcadas con [])

1. [x] Crear un archivo `TODO.md` en la raíz del repositorio.
2. [x] Añadir Monkey Test.

-   [x] Crear un directorio `monkey-test` en la raíz del repositorio.
-   [x] Crear el monkey test con una variante aleatoria en las entradas.
-   [x] Crear el monkey test con monos con esteroides y que han terminado la Educación Primaria :P.
-   [x] Añadir los cambios al `CHANGELOG.md`.
-   [] Modificar el Monkey Test para que valga también para sistemas de venta.

3. [] Actualizar el programa con un archivo `cli.py`que permita lanzar por línea de comandos. Debería utilizar la librería `argparse`. Añadir los cambios al `CHANGELOG.md`.
4. [] Crear un método para ensamblar reglas basado en un voto ponderado por el porcentaje de acierto de la estrategia.

-   [] Para ello, se debe leer el archivo `all_backtest_results.csv` y leer el porcentaje de acierto de cada regla.
-   [] Después se debe crear el código `mqh` que permita ensamblar las reglas teniendo en cuenta esto. Se puede tener como referencia el código creado para el ensamblado por votación simple.
-   [] Añadir los cambios al `CHANGELOG.md`.

5. [] Crear un backtester para testear las reglas.

-   [] Crear un archivo `backtester.py` que permita testear las reglas.
-   [] Utilizar el archivo de la extracción, que debe contener datos ohlcv y las reglas para testearlas.
-   [] Para cada regla, deberemos de calcular las señales de entrada y salida. Después, deberemos de calcular el beneficio o pérdida de la operación. Es interesante poder mantener las señales de cada regla.
    -   [] Crear un archivo `all_backtest_results.csv` que contenga los resultados de los backtests, con un formato similar al de `all_backtest_results.csv` que se genera en la extracción con MetaTrader 4.
    -   [] Primero, hacer un test de cada condición que tiene la regla. Se puede usar de Python la utilidad `operand` para evaluar las condiciones.
    -   [] Después se evalúan todas las condiciones de la regla.
    -   [] Tener en cuenta que cuando se da la condición, se entra en la siguiente vela (eliminar data-snooping bias en lo posible).
-   [] Añadir los cambios al `CHANGELOG.md`.

6. [] En este estadio, quizás sea mejor "paquetizar" el código. Para ello, se puede utilizar el paquete `setuptools`. Se puede seguir la guía de [Python Packaging User Guide](https://packaging.python.org/). No es obligatorio, pero recomendable seguir una estructura de directorios similar a la que se muestra en la guía. Añadir los cambios al `CHANGELOG.md`.

7. [] Añadir tests unitarios. Se puede utilizar `unittest` o `pytest`. Se puede seguir la guía de [Python Testing](https://realpython.com/python-testing/). Añadir los cambios al `CHANGELOG.md`.

8. [] Implementar `python-mt4` en el repositorio. Este paquete se van a implementar los indicadores que vienen con MT4 para poder realizar la extracción directamente en python y no depender de MetaTrader 4.

-   [] Hacer una extracción con los indicadores de MetaTrader 4 para varios parámetros de cada indicador.
-   [] Utilizar el paquete `polars` para realizar los cálculos.
-   [] Indicadores:
    -   [] `CCI`
    -   [] `MFI`
    -   [] `RSI`
    -   [] `AC`
    -   [] `AD`
    -   [] `ADX`
    -   [] `Aroon`
    -   [] `ATR`
    -   [] `Awesome`
    -   [] `Bollinger Bands`
    -   [] `BearsPower`
    -   [] `BullsPower`
    -   [] `BWMFI`
    -   [] `DeMarker`
    -   [] `Donchian Channel`
    -   [] `Envelopes`
    -   [] `Force`
    -   [] `Keltner Channel`
    -   [] `MACD`
    -   [] `Market Meanness Index (MMI)`
    -   [] `Momentum`
    -   [] `OsMA`
    -   [] `RVI`
    -   [] `Parabolic SAR`
    -   [] `Simple Moving Average (SMA)`
    -   [] `SuperTrend`
    -   [] `Exponential Moving Average (EMA)`
    -   [] `Stochastic Oscillator`
    -   [] `Ichimoku`
    -   [] `VROC`
    -   [] `Weighted Moving Average (WMA)`
    -   [] `Williams Percentage Range (WPR)`
-   [] Añadir los cambios al `CHANGELOG.md`.

9. [] Realizar la extracción en python directamente. Se puede utilizar `asyncio`y paralelización para que el proceso sea más eficiente.

-   [] Añadir los cambios al `CHANGELOG.md`.

10. [] Crear un archivo `requirements.txt` con las librerías necesarias para ejecutar el programa. Añadir los cambios al `CHANGELOG.md`.

11. [] Corregir los errores cuando en Metatrader se hace una optimización para guardar los resultados. Para ello, se puede modificar el código y decidir en función de si se hace un modo `RuleByRule`o `CombinedRules` la forma de proceder. Para el modo `RuleByRule` ya estaría implementado. Añadir los cambios al `CHANGELOG.md`.

12. Añadir otros métodos de etiquetado, como por ejemplo:

-   [] Antes, revisar que los etiquetados actuales sean correctos.
-   [] Se puede añadir el etiquetado según el indicador `SuperTrend`
-   [] Se puede añadir el etiquetado por `IBS`.
-   [] Añadir los cambios al `CHANGELOG.md`.

13. [] Implementar métodos de optimización numérica para la combinación de reglas. Añadir los cambios al `CHANGELOG.md`.
14. [] Implementar un método directo de generación de sistemas, mediante un archivo de configuración.
    - [] Debe indicar si para cada par y dirección se quiere utilizar un enfoque `idea-driven` o `data-driven`.
    - [] Para ello, debe implementarse un buscador de ineficiencias para apoyar el enfoque `idea-driven`.
