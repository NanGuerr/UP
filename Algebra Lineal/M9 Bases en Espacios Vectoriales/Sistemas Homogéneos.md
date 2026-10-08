# 📑 Bases de Espacios Vectoriales a partir de Sistemas Homogéneos

## 🎯 Resumen Ejecutivo
El objetivo principal de esta sesión formativa es demostrar cómo se puede representar un espacio vectorial —un conjunto que contiene infinitos vectores— mediante un número finito y limitado de elementos denominados base. A partir de la definición de una base, es posible establecer el concepto de dimensión de un espacio vectorial.

El procedimiento central consiste en determinar la base del espacio vectorial correspondiente a las soluciones de un sistema homogéneo de ecuaciones lineales. A través de la aplicación del método de Gauss-Jordan para la resolución de sistemas, se reduce la matriz de coeficientes a una forma triangular, identificando los grados de libertad (parámetros) del sistema. Finalmente, al expresar la solución general en forma vectorial, los vectores resultantes constituyen directamente la base buscada. Esta representación no solo resuelve el sistema, sino que actúa como una herramienta clave para comprender propiedades fundamentales de las matrices. 🧮

---

## 🔑 Conceptos Clave e Identificación de Objetivos
- **Espacio Vectorial y Base**: Permite sintetizar un número infinito de vectores en una estructura manejable mediante un número limitado de vectores generadores (base).
- **Dimensión**: Concepto matemático derivado e introducido formalmente a partir del establecimiento de una base. 📏
- **Sistemas Homogéneos de Ecuaciones Lineales**: Marco algebraico cuyo conjunto de soluciones constituye un espacio vectorial. Una vez halladas las soluciones, la extracción de la base es un proceso directo. ⚖️

---

## 🛠️ Metodología de Resolución: Método de Gauss-Jordan
Para encontrar la base de soluciones de un sistema homogéneo, se sigue una secuencia metodológica estructurada:
1. **Representación Matricial**: Transformación del sistema de ecuaciones a su forma matricial considerando únicamente sus coeficientes.
2. **Triangularización Matricial**: Aplicación de operaciones elementales por fila para obtener una matriz triangular superior / escalonada.
3. **Reconstrucción del Sistema**: Conversión de la matriz triangular resultante de nuevo a un sistema de ecuaciones.
4. **Análisis de Grados de Libertad**: Evaluación de la relación entre el número de ecuaciones independientes y el número de incógnitas para asignar variables libres o parámetros (p. ej., el parámetro $T$).
5. **Expresión Vectorial y Extracción de la Base**: Resolución del sistema en función del parámetro e independización de los vectores que forman la solución. Los vectores que multiplican a los parámetros definen la base del espacio vectorial.

---

## 📋 Caso de Estudio Desarrollado
En la fuente se presenta un ejemplo práctico para ilustrar el procedimiento completo de cálculo:

### 1. Sistema Homogéneo Planteado
$$\begin{cases} x - 3y + z = 0 \\ -2x + 2y - 3z = 0 \\ 4x - 8y + 5z = 0 \end{cases}$$

### 2. Transformaciones Matriciales (Eliminación de Gauss-Jordan)
- **Paso 1 (Operaciones de Fila iniciales)**:
  - Fila 2 se transforma en: $F_2 + 2F_1$
  - Fila 3 se transforma en: $F_3 - 4F_1$
- **Paso 2 (Operaciones de Fila secundarias)**:
  - Fila 2 se transforma en: $-F_2$
  - Fila 3 se transforma en: $F_3 + F_2$

### 3. Obtención de Soluciones y Base
- **Triangularización**: Al finalizar las transformaciones se obtiene una matriz triangular.
- **Identificación del Grado de Libertad**: El sistema se reduce a $2$ ecuaciones con $3$ incógnitas, lo que genera $1$ grado de libertad. Este grado de libertad se asigna al parámetro $T$.
- **Solución Vectorial**: Se resuelve el sistema expresando las variables en función del parámetro $T$.
- **Determinación de la Base**: La base del espacio vectorial de las soluciones corresponde exactamente a los vectores que aparecen en la representación vectorial de la solución.

---

## ⭐ Importancia y Conclusiones
La determinación concreta de la base del espacio vectorial de soluciones de un sistema homogéneo posee un valor conceptual que va más allá de la mera resolución algebraica:
- **Simplificación Estructural**: Permite dominar conjuntos infinitos mediante herramientas finitas. 🔍
- **Aplicación Matricial**: Esta forma concreta de expresar las soluciones sirve como un instrumento fundamental para identificar y analizar más adelante propiedades de gran relevancia en la teoría de matrices. 🚀
