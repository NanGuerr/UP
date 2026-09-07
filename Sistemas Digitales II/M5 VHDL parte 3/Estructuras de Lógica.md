# 🔌💻 Diseño y Estructuras de Lógica en VHDL

## 📋 Resumen Ejecutivo
Este documento técnico sintetiza los principios fundamentales para la descripción de lógica combinacional utilizando VHDL (*Hardware Description Language*). El análisis se centra en la transición de un diseño basado en ecuaciones booleanas hacia una metodología de mayor abstracción orientada a la resolución de problemas mediante procesos concurrentes y secuenciales. Se destacan como puntos críticos: la distinción entre procesos implícitos y explícitos, la importancia de la lista de sensibilidad para evitar la inferencia de memoria no deseada (*latches*), y el uso de `Generics` para crear bloques de hardware parametrizables y reutilizables. Asimismo, se detallan las implementaciones de estructuras esenciales como comparadores, multiplexores, sumadores y decodificadores, subrayando la capacidad del sintetizador para optimizar estas descripciones en arquitecturas FPGA.



## 🏗️ 1. Arquitectura y Tipos de Procesos en VHDL
El diseño en VHDL se fundamenta en la jerarquía, la concurrencia y la reutilización de bloques. Una de las herramientas primordiales para describir circuitos son los procesos, que representan bloques de hardware ejecutados en simultáneo.

### ⚡ 1.1 Procesos Implícitos (Declaraciones Concurrentes)
Se ejecutan fuera de la estructura formal de un proceso y el orden en que se escriben no altera el resultado lógico. Son ideales para describir conexiones simples o cables.
* **Asignación simple:** Ejemplo: `sal <= s;`.
* **When-Else:** Permite modelar condicionales de flujo de datos. Es altamente escalable y permite un anidamiento prioritario (la primera condición tiene mayor relevancia).
* **With-Select-When:** Utilizado para asignar valores a una señal basados en el valor de otra señal previamente seleccionada, similar al `switch-case` en C.

### 🔄 1.2 Procesos Explícitos (Declaraciones Secuenciales)
Se definen mediante la estructura `process`. A diferencia de las concurrentes, el orden de las sentencias dentro de un proceso es crítico para la lógica del programa.
* **Lista de Sensibilidad:** Es el listado de puertos o señales entre paréntesis que activan el proceso ante cualquier cambio. En lógica combinacional, debe incluir todas las entradas para asegurar que las salidas se recalculen correctamente.
* **Estructuras de Control:** Utiliza `if-then-elsif-else` y `case-when`.

### ⚠️ 1.3 El Riesgo de la Inferencia de Memoria
Es fundamental que las descripciones dentro de un proceso sean "cerradas". Si un condicional `if` no tiene un `else` correspondiente, el sintetizador asume que el circuito debe mantener el valor anterior ante condiciones no especificadas. Esto infiere la creación de un *latch* (unidad de memoria asíncrona), lo cual es generalmente un error en el diseño de lógica puramente combinacional.



## 📊 2. Operadores y Tipos de Datos Estándares
VHDL utiliza el estándar `ieee.std_logic_1164` para manejar señales con mayor versatilidad que el tipo `bit`.

### 🏷️ 2.1 Tipos Lógicos Estándares (`std_logic`)
El tipo `std_logic` permite nueve valores posibles, esenciales para la simulación y síntesis:

| Valor | Significado |
| :---: | :--- |
| `'U'` | No inicializado |
| `'X'` | Desconocido fuerte |
| `'0'` | 0 fuerte |
| `'1'` | 1 fuerte |
| `'Z'` | Alta impedancia |
| `'W'` | Desconocido débil |
| `'L'` | 0 débil |
| `'H'` | 1 débil |
| `'-'` | No importa (*don't care*) |

### 🔢 2.2 Jerarquía de Operadores Lógicos
El compilador evalúa las expresiones en el siguiente orden de prioridad:
1. Expresiones entre paréntesis.
2. Complementos (`not`).
3. Función `and`.
4. Función `or`.

*Nota:* Los operadores `xor` y `xnor` son interpretados por el compilador como sumas de productos.



## 🛠️ 3. Implementación de Estructuras Básicas

### ⚖️ 3.1 Comparadores de Magnitud
Evalúan igualdad, desigualdad o magnitud entre dos vectores del mismo tamaño. Se implementan típicamente mediante sentencias `if-elsif-else` dentro de un proceso, utilizando operadores relacionales como `=`, `/=`, `<`, `>`, `<=`, `>=`.

### 🔌 3.2 Buffers Tri-estado
Permiten que una salida adopte un valor de alta impedancia (`'Z'`) cuando una señal de habilitación (*enable*) está desactivada. Esto es fundamental para sistemas de bus compartido.

### 🔀 3.3 Multiplexores (MUX)
Pueden describirse mediante:
* **Ecuaciones booleanas:** Definiendo la salida bit a bit.
* **With-Select-When:** Una forma clara de mapear entradas de selección a salidas.
* **Case-When:** Estructura secuencial dentro de un proceso que ejecuta instrucciones basadas en el valor de una señal.

### ➕ 3.4 Sumadores
* **Medio Sumador (MS):** Realiza la suma de dos bits generando un resultado ($Suma = A \oplus B$) y un acarreo ($C_{out} = A \land B$).
* **Sumador Completo (SC):** Incorpora un acarreo de entrada ($C_{in}$).
* **Sumador Paralelo:** Conecta en cascada un MS y varios SC. Requiere el uso de señales internas (`signal`) para retroalimentar los acarreos que no tienen pines externos.
* **Uso de `std_arith`:** Para realizar sumas directas entre vectores (`Suma <= A + B`), se debe invocar el paquete `std_arith` de la librería `work`.

### 🔢 3.5 Decodificadores y Codificadores
* **Decodificador BCD a Decimal:** Activa una de diez salidas basándose en una entrada de 4 bits. Se suele usar un valor inicial de desactivación (ej. `'1'`) al principio del proceso para asegurar que solo la salida evaluada cambie.
* **Decodificador BCD a 7 Segmentos:** Mapea un código BCD a la configuración de segmentos ($a, b, c, d, e, f, g$) de un *display*.
* **Codificador:** Realiza la operación inversa, como convertir una entrada decimal (0-9) a un vector BCD de 4 bits.



## ⚙️ 4. Parametrización mediante `Generics`
La capacidad de crear bloques genéricos es una de las potencias de VHDL para la reutilización de código.
* **Definición:** Los `Generics` se declaran en la entidad y permiten definir parámetros como el ancho de un bus ($N$).
* **Uso:** Un bloque `comp_andGen` puede diseñarse una sola vez y luego ser instanciado múltiples veces con diferentes anchos de bus (ej. 5 bits, 8 bits, 32 bits) mediante la sentencia `generic map`.
* **Ventaja:** Facilita el mantenimiento y la escalabilidad del diseño, permitiendo que el mismo código se adapte a diferentes necesidades sin modificar la arquitectura interna.



## 🎯 5. Conclusiones del Análisis Técnico
El diseño eficiente en VHDL no requiere necesariamente la simplificación manual de ecuaciones mediante mapas de Karnaugh; esta tarea es delegada al sintetizador, que traduce las descripciones abstractas en compuertas optimizadas para las tablas de búsqueda (LUTs) de las FPGAs. La clave del éxito en el diseño combinacional reside en la correcta definición de las listas de sensibilidad y en el uso de abstracciones (como procesos explícitos y `generics`) que permitan un código legible, jerárquico y fácilmente adaptable a cambios en las especificaciones del sistema.
