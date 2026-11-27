# Cómputo aproximado para procesamiento digital de señales

[English](README.md) | **Español**

## Descripción

Este proyecto explora técnicas de cómputo aproximado
aplicadas al procesamiento digital de señales,
estudiando el compromiso entre precisión aritmética,
complejidad del hardware y consumo de potencia.

El proyecto se desarrolla como parte de la asignatura
Diseño de Sistemas CMOS VLSI de la Universidad
Autónoma de San Luis Potosí (UASLP), México.

La metodología sigue un enfoque ascendente
(bottom-up), comenzando con sumadores completos
CMOS a nivel de transistor y avanzando hacia
unidades aritméticas aproximadas y arquitecturas
de filtros digitales.

## Objetivos

- Implementar sumadores CMOS convencionales y aproximados.
- Evaluar la precisión aritmética mediante simulación
  funcional exhaustiva.
- Analizar el consumo de potencia y la complejidad
  del hardware.
- Integrar sumadores aproximados en un multiplicador.
- Implementar un filtro FIR simétrico utilizando
  unidades aritméticas aproximadas.
- Evaluar el impacto de la aproximación aritmética
  en aplicaciones de procesamiento digital de señales.

## Implementación actual

### 1. Mirror Adders CMOS a nivel de transistor

Se implementaron seis arquitecturas de sumadores
completos CMOS de un bit mediante modelado a nivel
de transistor en Verilog:

- Mirror Adder convencional (MA).
- Mirror Adder aproximado 1 (MA1).
- Mirror Adder aproximado 2 (MA2).
- Mirror Adder aproximado 3 (MA3).
- Mirror Adder aproximado 4 (MA4).
- Mirror Adder aproximado 5 (MA5).

Se utiliza un testbench común para evaluar el
comportamiento funcional de las seis arquitecturas.

### 2. Sumadores aproximados de ocho bits

Se implementaron diecisiete configuraciones de
sumadores de ocho bits utilizando dos arquitecturas
de aproximación seleccionadas.

Los diseños exploran diferentes configuraciones de
celdas de sumadores completos convencionales y
aproximados.

Un testbench exhaustivo evalúa todas las combinaciones
posibles de entrada y genera archivos CSV para su
posterior análisis numérico.

### 3. Análisis de error aritmético

Un Jupyter Notebook desarrollado en Python procesa
los resultados de simulación y evalúa la precisión
aritmética mediante las siguientes métricas:

- Cantidad de resultados erróneos.
- Tasa de error (ER).
- Distancia media de error (MED).
- Error máximo absoluto (WCE).
- Error medio (ME).

El notebook genera tres gráficas comparativas para
visualizar las características de error de las
arquitecturas evaluadas.

## Estructura del repositorio

| Directorio | Descripción |
|---|---|
| `rtl/` | Implementaciones en Verilog |
| `testbench/` | Verificación funcional |
| `data/` | Datos de entrada y salida de simulación |
| `analysis/` | Análisis de errores mediante Python |
| `results/` | Figuras y resultados de simulación |

## Herramientas de desarrollo

- Verilog HDL
- ModelSim
- Python
- Pandas
- Jupyter Notebook

## Plan de desarrollo

- [x] Mirror Adder CMOS convencional.
- [x] Cinco arquitecturas de Mirror Adder aproximado.
- [x] Verificación funcional de un bit.
- [x] Diecisiete configuraciones de sumadores de 8 bits.
- [x] Verificación funcional exhaustiva de 8 bits.
- [x] Generación de conjuntos de datos CSV.
- [x] Análisis y visualización de errores aritméticos.
- [ ] Análisis de potencia a nivel de transistor.
- [ ] Selección de arquitectura de sumador aproximado.
- [ ] Integración en un multiplicador aproximado.
- [ ] Filtro FIR simétrico convencional.
- [ ] Filtro FIR simétrico aproximado.
- [ ] Evaluación de calidad de señal y compromiso
      entre potencia y precisión.

## Estado actual

Proyecto en desarrollo.

La etapa actual se centra en la verificación funcional
y la caracterización del error aritmético. El análisis
de consumo de potencia y la integración a nivel de
sistema corresponden a las siguientes etapas.

Este repositorio se actualizará conforme avance
el proyecto.

## Contexto académico

Asignatura: Diseño de Sistemas CMOS VLSI

Institución: Universidad Autónoma de San Luis Potosí

Programa: Ingeniería Electrónica

Año: 2026

## Colaboradores

- Rodrigo Paniagua Meza

## Referencias

La implementación del Mirror Adder convencional y
las cinco arquitecturas aproximadas se basan en los
diseños presentados por Gupta et al. [1], particularmente
en la sección II-A, "Approximation Strategies for the MA."

[1] V. Gupta, D. Mohapatra, A. Raghunathan, and K. Roy,
"Low-Power Digital Signal Processing Using Approximate
Adders," *IEEE Transactions on Computer-Aided Design
of Integrated Circuits and Systems*, vol. 32, no. 1,
pp. 124–137, Jan. 2013.

[DOI: 10.1109/TCAD.2012.2217962](https://doi.org/10.1109/TCAD.2012.2217962)
