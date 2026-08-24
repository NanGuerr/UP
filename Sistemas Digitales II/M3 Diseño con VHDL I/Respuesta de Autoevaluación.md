# 📝 Autoevaluación: Diseño con VHDL - Parte I

> **Información General:** Resolución y análisis de la autoevaluación correspondiente a los estilos de descripción, arquitectura y metodología en VHDL.



## 🧩 Pregunta 1: Bloque compuesto por submódulos (*MuxBits*)
* **Enunciado:** Siendo el siguiente un bloque compuesto por tres bloques ya preexistentes (contador, registro fijo y multiplexor), ¿cuál sería el mejor método para resolver el bloque *MuxBits*?
* **Respuesta Correcta:** 🏗️ **Estructural**
* **🔍 Justificación:** La descripción estructural consiste en asociar circuitos ya conocidos o predefinidos (como contadores y multiplexores) para dar solución a una funcionalidad determinada. Es la forma clásica de vincular bloques para lograr una solución compleja a partir de elementos simples preexistentes.



## 🌊 Pregunta 2: Análisis de código por Ecuación Booleana
* **Enunciado:** Indicar el tipo de descripción que se utiliza en el siguiente código:
  $$	ext{salida1} \Leftarrow a 	ext{ AND } b 	ext{ OR } c;$$
* **Respuesta Correcta:** 📊 **Flujo de datos**
* **🔍 Justificación:** Este estilo, también conocido como RTL (*Register Transfer Level*), se orienta a cómo fluyen los datos y suele definirse a partir de ecuaciones booleanas directas que describen qué le sucede al flujo de entrada sin requerir procesos secuenciales.



## 🧠 Pregunta 3: Análisis de código con Estructura Condicional
* **Enunciado:** Indicar el tipo de descripción que se utiliza en el siguiente código:
  $$	ext{salida} \Leftarrow c 	ext{ when } a = '1' 	ext{ else } b;$$
* **Respuesta Correcta:** ⚙️ **Funcional o de comportamiento**
* **🔍 Justificación:** La descripción funcional apunta a describir el comportamiento del bloque basándose en la relación algorítmica entre entradas y salidas. El uso de la estructura condicional `when-else` en este formato es el ejemplo clásico de una arquitectura de comportamiento (por ejemplo, para modelar un multiplexor).



## ⚡ Pregunta 4: Descripción óptima para una compuerta lógica básica
* **Enunciado:** Indicar cuál de las siguientes formas de descripción es la más correcta para describir una compuerta AND.
* **Respuesta Correcta:** 📐 **Flujo de datos vía ecuación booleana**
* **🔍 Justificación:** Para realizar operaciones simples como una compuerta lógica AND entre dos señales, la descripción mediante lógica booleana dentro del flujo de datos es el nivel de abstracción más eficiente y directo. No tendría sentido utilizar una descripción de comportamiento pesada para algo tan elemental.



## 🔀 Pregunta 5: Coexistencia de estilos en un mismo bloque
* **Enunciado:** Indicar el tipo de descripción que se utiliza en un código que combina expresiones booleanas y estructuras condicionales (ej. sentencias concurrentes junto con asignaciones condicionales).
* **Respuesta Correcta:** 🔀 **Combinación de tipos**
* **🔍 Justificación:** El código presenta múltiples sentencias de distinta naturaleza: por un lado, ecuaciones booleanas propias del flujo de datos y, por otro, estructuras condicionales propias de la descripción funcional. Al coexistir ambos estilos dentro de una misma arquitectura, se clasifica formalmente como una combinación de tipos.
