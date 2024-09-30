# Change Log

Los cambios significativos del proyecto irán documentados en este archivo.

El formato está basado en [Keep a Changelog](http://keepachangelog.com/)
y este proyecto intenta adherirse a las directrices marcadas en [Semantic Versioning](http://semver.org/).

## [Unreleased] - yyyy-mm-dd

Información de lo que se viene...

## [1.1.0] - 2024-09-30

Aquí se muestran los principales cambios introducidos en la versión 1.1.

### Added

#- [**VAC_RULES_TESTER_PLANTILLA-v.1**] Añadido el archivo principal para el testeo de las reglas y su combinación y ensamblado posterior.
#- [**Features/**] Directorio donde se encuentran las librerías para la escritura de la cabecera y el cálculo de los indicadores.
#- [**Filters/**] Directorio donde se encuentra la librería de filtros (mes, día, hora...)
#- [**Headers/**] Directorio donde se encuentran las librerías de encabezado generales del proyecto, que permiten extraer características, calcularlas y ensamblarlas.
#- [**Toobox/**] Directorio con librerías que permiten escribir datos en archivos `.csv` con la información de los backtests, incorpora funciones para calcular las métricas correspondientes (`VAC_Metrics_Toolbox.mqh`), para el etiquetado en la extracción (`VAC_Labeling_Toolbox.mqh`) y otras utilidades necesarias para el testeo.
#- [**TradeInfo/**] Directorio que implementa la clase `TradeInfo` y que permite almacenar datos de las operaciones del backtest y algunas métricas de utilidad.

#- [**EXTRACTOR MASTER-v.1**] Se han movido el cálculo de indicadores y las cabeceras a la carpeta `Features` dentro del directorio `MQL4`.

### Fixed

#- [**rules_dict.json**] Se han corregidos errores: - Indicador parabolic SAR: Se ha cambiado SAR por iSAR en la fórmula MQL4. - Se ha quitado la coma del final del archivo

## [1.0.0] - 2024-09-20

### Added

#- [**EXTRACTOR MASTER-v.0**] Primera versión del extractor

### Changed

### Fixed