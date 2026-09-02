# ⚡ Conceptos y Aplicaciones de VHDL: Organización, Arquitectura y Diseño Jerárquico

## 📋 Resumen Ejecutivo

**VHDL** (*Hardware Description Language*) es un lenguaje de programación orientado al modelado, análisis y descripción del comportamiento de sistemas electrónicos digitales, desde componentes simples hasta sistemas complejos integrados en dispositivos como FPGAs y CPLDs. 

Este documento sintetiza los principios fundamentales del lenguaje, destacando que un programa VHDL se estructura mediante unidades de diseño esenciales: la **entidad** (que define la interfaz externa) y la **arquitectura** (que describe el funcionamiento interno). Se analizan los diversos estilos de descripción (funcional, flujo de datos y estructural), la organización mediante bibliotecas y paquetes, y la metodología de diseño jerárquico que permite la integración de múltiples sub-bloques en un algoritmo de nivel superior o *Top Level*. Asimismo, se abordan conceptos críticos como el manejo de vectores de bits, los tipos de retardos de propagación y las reglas de sintaxis para identificadores.



## 1️⃣ Unidades Básicas de Diseño en VHDL

La estructura de un programa en VHDL se compone de módulos o unidades de diseño que contienen declaraciones e instrucciones para definir un sistema digital.

### 1.1 Clasificación de Unidades
Existen cinco tipos de unidades de diseño, divididas por su jerarquía de análisis:

| Tipo de Unidad | Clasificación | Función Principal |
| :--- | :--- | :--- |
| **Entidad (Entity)** | Primaria | Define las entradas y salidas del sistema (interfaz). |
| **Arquitectura (Architecture)** | Secundaria | Describe el comportamiento o funcionamiento de una entidad. |
| **Paquete (Package)** | Primaria | Almacena declaraciones de tipos, constantes y componentes. |
| **Cuerpo del Paquete (Body)** | Secundaria | Contiene la implementación local de funciones y procedimientos. |
| **Configuración** | Primaria | Define qué arquitectura se asocia a una entidad específica. |

> 💡 **Nota importante:** La entidad y la arquitectura son los dos módulos indispensables para la estructuración de cualquier programa en VHDL.



## 2️⃣ La Entidad y sus Puertos

La entidad representa el bloque elemental de diseño, identificando los límites físicos del sistema (terminales o pines).

### 2.1 Modos de los Puertos
Cada señal de entrada o salida se denomina **puerto** y requiere un nombre, un tipo de dato y un modo:
* **In:** 📥 Entrada unidireccional de datos hacia la entidad.
* **Out:** 📤 Salida de señales desde la entidad.
* **Inout:** 🔄 Puerto bidireccional que permite la entrada, salida y retroalimentación de señales.
* **Buffer:** 🔀 Terminal de salida que permite realizar retroalimentaciones internas.

### 2.2 Tipos de Datos Comunes
* **Bit:** Valores lógicos `'0'` y `'1'`.
* **Boolean:** Valores de verdadero o falso.
* **Integer:** Números enteros.
* **Std_logic:** Tipo estándar para modelar bits con mayor precisión (definido en la librería IEEE).
* **Std_logic_vector / Bit_vector:** Conjuntos de bits o palabras binarias.

### 2.3 Reglas para Identificadores
Los nombres asignados a variables, señales o entidades deben seguir especificaciones estrictas:
* Deben iniciar siempre con una letra.
* No pueden contener dos guiones bajos seguidos ni terminar en guion bajo.
* No se permiten símbolos especiales (como `#`) ni espacios.



## 3️⃣ Bibliotecas y Paquetes

Una biblioteca es un conjunto de paquetes que agilizan el diseño mediante el uso de unidades predeterminadas.

* 📚 **Librería IEEE:** Es un estándar industrial que incluye paquetes esenciales como `std_logic_1164` (para tipos de datos lógicos) y `numeric_std` (para manejo de enteros y datos signados).
* 🗂️ **Librería Work:** Es la carpeta de trabajo por defecto donde se almacenan los diseños generados por el usuario. No requiere ser declarada explícitamente.
* 📦 **Paquetes:** Pueden ser de dos tipos:
  * **De módulos o bloques:** Nuclean "prototipos" o componentes sintetizables para ser usados en múltiples proyectos.
  * **Generales:** Contienen tipos de datos, constantes y funciones. El *Package Body* se reserva exclusivamente para los paquetes que poseen funciones o procedimientos.



## 4️⃣ Estilos de Descripción de Arquitecturas

La arquitectura define la lógica interna del sistema. El diseñador puede elegir entre tres estilos principales:

### 4.1 Descripción Funcional
Se basa en algoritmos que exponen cómo trabaja el sistema mediante relaciones entre entradas y salidas. Utiliza la sentencia `process` y declaraciones secuenciales como `if-then-else`. Es ideal para modelar funciones con rapidez sin detallar la estructura interna.

### 4.2 Descripción por Flujo de Datos
Indica el camino que siguen los datos mediante el uso de instrucciones concurrentes.
* **When-else:** Asignaciones condicionales sin necesidad de procesos.
* **Ecuaciones booleanas:** Uso de operadores lógicos (`AND`, `OR`, `XNOR`, etc.) para definir la salida.

### 4.3 Descripción Estructural
Basa su comportamiento en la interconexión de modelos lógicos preestablecidos (componentes). Requiere:
* **Jerarquización:** Dividir el diseño en bloques más pequeños.
* **Componentes:** Declarar las estructuras que se van a utilizar.
* **Señales (Signals):** Declaradas dentro de la arquitectura para conectar bloques internamente; no representan pines externos.
* **Port map:** Sentencia utilizada para mapear los puertos de un componente con las señales locales.



## 5️⃣ Manipulación de Vectores y Señales

### 5.1 Vectores de Bits (`std_logic_vector`)
Permiten agrupar bits en buses. Es crucial definir el orden de los bits:
* **Downto:** Orden descendente (MSb a la izquierda). Ejemplo: `(3 downto 0)`.
* **To:** Orden ascendente (MSb a la derecha). Ejemplo: `(0 to 3)`.

### 5.2 Operadores Especiales
* **Concatenación (`&`):** Permite unir arrays pequeños para formar uno más grande. *Ejemplo:* `'1' & '0' & "1011"` resulta en `"101011"`.
* **Others:** Palabra reservada para asignar un mismo valor a todos los bits de una señal (habitual en condiciones de reset). *Ejemplo:* `b <= (others => '0');`.
* **Asignación (`<=`):** Indica una asignación entre señales, lo que implica un tiempo mínimo de propagación.

### 5.3 Modelado de Retardos
VHDL permite simular comportamientos reales mediante dos modelos de retardo:
* ⏱️ **Inercial (Inertial):** Modelo por defecto. Rechaza pulsos de corta duración (inferiores al tiempo de retraso), simulando una línea real con ancho de banda limitado.
* 🚀 **Transporte (Transport):** Modela una línea de transmisión ideal; toda la información en un extremo se transporta al otro sin importar la duración del pulso.



## 6️⃣ Diseño Jerárquico: Metodología Top Level

El diseño jerárquico permite abordar proyectos extensos mediante la unión de pequeños bloques coordinados por un algoritmo de nivel superior.

### 6.1 Pasos Metodológicos
1. **Análisis y Descomposición:** Dividir la estructura global en bloques individuales.
2. **Diseño de Módulos:** Programar cada componente por separado.
3. **Creación de Paquete:** Agrupar los componentes para facilitar su invocación.
4. **Top Level:** Diseñar el programa de alto nivel que coordina el funcionamiento de todos los componentes.

### 6.2 Instanciación y Port Map
Para integrar componentes en un nivel superior, se utiliza la sentencia `port map`. Existen dos formas de asignar puertos:
* **Nominativa:** Se asigna unívocamente el puerto del componente a la señal local usando el signo `=>`. Es la más segura para evitar errores en diseños con muchas señales.
* **Posicional:** Los parámetros se pasan en el orden exacto de la declaración, similar a una función. Es más compacta pero propensa a errores difíciles de detectar.
