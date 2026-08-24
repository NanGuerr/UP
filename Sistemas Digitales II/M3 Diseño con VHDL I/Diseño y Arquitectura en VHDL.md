# ⚡ Metodología de Diseño y Arquitectura en VHDL

> **Resumen Ejecutivo:** Este documento sintetiza los fundamentos del diseño para sistemas digitales utilizando **VHDL** con enfoque en FPGAs. La eficacia del hardware depende de una metodología estructurada que transforma descripciones abstractas en circuitos físicos, apoyándose en la **Entidad** (interfaz) y la **Arquitectura** (comportamiento interno).

---

## 🛠️ 1. Metodología de Trabajo y Flujo de Diseño

El flujo se apoya en herramientas EDA (como ISE WebPack de Xilinx Inc.©) para llevar la lógica hasta el silicio.

### 📋 Definiciones Clave del Flujo

* **⚙️ Síntesis:** Proceso de convertir una descripción de VHDL en una asociación circuital de bloques equivalentes de hardware.
* **🔍 Simulación de Comportamiento:** Proceso para verificar que la descripción cumpla con el comportamiento esperado antes de la implementación física.
* **📍 Place and Route:** Distribución de los circuitos resultantes de la síntesis dentro de una FPGA específica (Place) y su conexión eléctrica (Route).
* **💾 Bitstream:** Conjunto de bits resultante del proceso de implementación; configuración "cruda" grabada en la memoria de la FPGA.

---

## 🧩 2. Unidades de Diseño en VHDL

Los programas se organizan por jerarquía en unidades primarias (entidad, paquete, configuración) y secundarias (arquitectura, cuerpo del paquete).

### 🔌 2.1 La Entidad (Entity)

Bloque elemental que representa el elemento electrónico y declara las terminales o pines de entrada y salida.

* **Puertos:** Cada señal I/O posee un nombre, un modo y un tipo de dato.
* **Modos de Operación:** `in` (entrada unidireccional), `out` (salida), `inout` (bidireccional con retroalimentación) y `buffer` (salida con retroalimentación interna).
* **Tipos de Datos Comunes:** `bit`, `boolean`, `bit_vector` e `integer`.

### 📚 2.2 Librerías y Paquetes

* **Librería ieee:** Contiene paquetes estándar como `std_logic_1164`.
* **Librería work:** Almacena los diseños generados por el usuario por defecto.
* **Paquetes:** Unidades con algoritmos preestablecidos invocados mediante la sentencia `use`.

---

## 🎨 3. Estilos de Descripción de Arquitecturas

La arquitectura define el funcionamiento de la entidad a través de tres niveles de abstracción:

* **🧬 A. Descripción Funcional (Comportamiento):** Se centra en la relación entradas/salidas sin considerar la circuitería interna. Utiliza procesos (`process`) y declaraciones secuenciales (`if-then-else`) para sistemas complejos como máquinas de estado.
* **🌊 B. Descripción por Flujo de Datos (RTL):** Nivel intermedio que representa cómo fluyen y se transforman los datos. Emplea instrucciones concurrentes (`when-else`) o ecuaciones booleanas sin requerir procesos.
* **🔗 C. Descripción Estructural:** Forma más cercana a un diagrama en bloques donde se interconectan submódulos existentes mediante señales internas (`signal`).

---

## 📐 4. Análisis de Abstracción y Conclusiones

El uso de un estilo depende de la complejidad del problema:

* **Bajo Nivel:** Lógica booleana para funciones simples.
* **Nivel Intermedio:** RTL estándar para el flujo de datos.
* **Alto Nivel:** Funcional para comportamientos complejos (ej. microcontroladores o contadores).

> 💡 *Nota de diseño:* "La descripción estructural es habitualmente menos abstracta que la de comportamiento, pero esto puede ser tendencioso. La conexión de un bloque microcontrolador con una memoria, aunque sea estructural, posee un alto nivel de abstracción en su conjunto."

### ⚠️ Reglas Críticas para Identificadores

Para garantizar una compilación exitosa, los nombres de variables o señales deben cumplir con:

* **🔤** Comenzar siempre con una letra.
* **🚫** No usar dos guiones bajos consecutivos.
* **🔚** No terminar con un guion bajo.
* **🛡️** No utilizar símbolos especiales ni palabras reservadas del lenguaje.
