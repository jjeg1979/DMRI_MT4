# Change Log

Los cambios significativos del proyecto irán documentados en este archivo.

El formato está basado en [Keep a Changelog](http://keepachangelog.com/)
y este proyecto intenta adherirse a las directrices marcadas en [Semantic Versioning](http://semver.org/).

## [Unreleased] - yyyy-mm-dd

Información de lo que se viene...

## [1.1.1] - 2024-10-03

Aquí se muestran los principales cambios introducidos en la versión 1.1.1

### Added

#- [**Indicators**] Indicadores personalizados de la extracción

### Fixed

#- [**Features/z_VAC_values_CCBBRDown**] Corregido para que los nombres de variables se correspondan con la cabecera `Features/z_VAC_header-CCBBRDown`.
#- [Headers/VAC_Ensemembles_Header] Añadido enumeración con el tipo de Ensamblado en la cabecera.

## [1.1.0] - 2024-09-30

Aquí se muestran los principales cambios introducidos en la versión 1.1.

### Added

#- [**VAC_RULES_TESTER_PLANTILLA-v.1**] Añadido el archivo principal para el testeo de las reglas y su combinación y ensamblado posterior.
#- [**Features/**] Directorio donde se encuentran las librerías para la escritura de la cabecera y el cálculo de los indicadores.
#- [**Filters/**] Directorio donde se encuentra la librería de filtros (mes, día, hora...)
#- [**Headers/**] Directorio donde se encuentran las librerías de encabezado generales del proyecto, que permiten extraer características, calcularlas y ensamblarlas.
#- [**Toobox/**] Directorio con librerías que permiten escribir datos en archivos `.csv` con la información de los backtests, incorpora funciones para calcular las métricas correspondientes (`VAC_Metrics_Toolbox.mqh`), para el etiquetado en la extracción (`VAC_Labeling_Toolbox.mqh`) y otras utilidades necesarias para el testeo.
#- [**TradeInfo/**] Directorio que implementa la clase `TradeInfo` y que permite almacenar datos de las operaciones del backtest y algunas métricas de utilidad.
#- [**Rules/**] Directorio con la implementación en MQL4 de las reglas.
#- [**Experts/Extractor/**] Se incluye aquí la versión 1.0 del extractor maestro. Se ha modificado para poder manejar la nueva estructura de librerías.

#- [**EXTRACTOR MASTER-v.1**] Se han movido el cálculo de indicadores y las cabeceras a la carpeta `Features` dentro del directorio `MQL4`.

### Fixed

#- [**rules_dict.json**] Se han corregidos errores: - Indicador parabolic SAR: Se ha cambiado SAR por iSAR en la fórmula MQL4. - Se ha quitado la coma del final del archivo
#- [**Toolbox/VAC_Backtest_Toolbox.mqh**] Corregidos errores en la creación de los nombres de los archivos cuando se testean las reglas.
#- [**Toolbox/VAC_FO_Toolbox.mqh**] Adaptado para poder generar los nombres de los archivos de forma correcta.

## [1.0.0] - 2024-09-20

### Added

#- [**EXTRACTOR MASTER-v.0**] Primera versión del extractor

### Changed

### Fixed
