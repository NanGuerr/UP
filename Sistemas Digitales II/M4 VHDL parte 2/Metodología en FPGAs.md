# 📊 Metodología de trabajo en FPGAs: O una ayuda concreta de por dónde encarar la cosa 🚀

¿Cómo empiezo a trabajar con FPGAs 🧩 y el VHDL 💻? ¿Escribo todo junto? ¿Cómo lo pruebo 🔍? Estas son algunas de las tantas dudas que surgen al empezar a utilizar FPGAs ⚡. Nos vamos a apoyar en un flujo de trabajo para transitar las etapas de diseño, desarrollo, implementación y prueba 🛠️.

---

## 1. ⚙️ Análisis de Especificaciones (Inicio)
Comenzaremos por analizar las especificaciones del bloque y los requerimientos que tenga 📝. En otras palabras, trabajaremos en comprender el problema y lograr una especificación detallada 🎯.

---

## 2. 🧱 Partición del Diseño (Top Module)
Es nuestra tarea identificar las funcionalidades básicas y particionar la solución en bloques más pequeños, es decir, establecer un diseño jerárquico modular 🗂️.
* Generalmente, de este análisis nos encontramos con que los bloques de mayor jerarquía comparten bloques iguales o similares que resuelven funcionalidades básicas 🔄.
* De esta forma, podemos reutilizar bloques simples y acelerar los tiempos de desarrollo ⏱️, permitiendo también dividir el trabajo en forma más uniforme dentro del grupo de trabajo 👥.

---

## 3. 🔄 Descripción de Cada Bloque Simple (Fase Iterativa)
Una vez realizado el diseño jerárquico, comienza la tarea de descripción de cada bloque simple ✍️. En esta instancia se suele entrar en una fase iterativa del flujo 🔁: para cada descripción se deberá evaluar tanto los resultados de la síntesis como los resultados de la simulación de comportamiento del bloque 🧪. Estas dos etapas nos aportan resultados complementarios sobre la descripción 💡.

Para estas tareas utilizaremos herramientas de diseño electrónico automatizado, conocidas como **EDA** (*Electronic Design Automation*) 🖥️.

### 🎛️ Síntesis
La síntesis nos arrojará como resultado si la herramienta infirió o entendió adecuadamente el código descrito (por ejemplo, si se describió un multiplexor que se haya inferido un multiplexor), garantizando la **coherencia** entre la descripción y los resultados de la síntesis 📈.

### 🔬 Simulación (Testbench)
La simulación es la herramienta que utilizamos para verificar el comportamiento del bloque, es decir, evaluar que se cumpla el funcionamiento pretendido ✅.
* A la simulación también la llamaremos **Testbench** o **Banco de Pruebas**, por la analogía con un banco de ensayos de laboratorio 🧪.
* Siguiendo con el ejemplo del multiplexor, verificaremos que el cambio de la línea de selección genere el cambio pretendido en la salida ⚡.

En esta instancia, si ambos procesos fueron satisfactorios, daremos este bloque por cerrado y verificado ✔️. En el caso contrario, se deberá ajustar la descripción en función de la anomalía detectada, ya sea de síntesis o de simulación ❌.

---

## 4. 🔗 Integración de Bloques
Si ya se describieron y evaluaron todos los bloques, se pueden ir integrando, es decir, agrupándolos en un sentido jerárquico inverso al que generó la partición 📦.
* Esto implica describir este agrupamiento en otro archivo aparte que invoque a los bloques pequeños 📂.
* Por ende, se tendrá que volver a verificar los resultados de la síntesis y el comportamiento de este nuevo módulo 🔄.
* Esta tarea se desarrollará hasta que se obtenga el bloque de nivel superior, principal o **Top Module** 👑.

---

## 5. 🛠️ Implementación (Place and Route)
Teniendo listo el bloque principal, se pasa a una fase de implementación del diseño. Aquí es donde se realiza el proceso de **Place and Route** mediante una herramienta EDA específica ⚙️:
* **Place (Posicionamiento):** Ubicar el diseño dentro de la FPGA haciendo uso de la arquitectura específica del modelo elegido 🗺️.
* **Route (Ruteo):** Mecanismo mediante el cual las distintas partes del diseño ubicadas en el *place* se interconectan haciendo uso de la matriz de interconexión interna 🔌.

Los resultados de este proceso nos arrojarán datos reales del espacio u área de la FPGA ocupada 📏, la cantidad de pines de entrada/salida en uso 📌, la velocidad máxima que soporta el diseño ($f_{max}$) ⏱️ y el consumo de potencia general 🔋.

A su vez, existe la forma de parametrizar a las herramientas para que optimicen el diseño en uno o varios de estos criterios (por ejemplo, que el diseño opere hasta $400\text{ MHz}$) 📉📈. Estos parámetros son denominados limitaciones o **Constraints** del *Place and Route* 🚧.

---

## 6. 🚀 Generación del Bitstream
Si se cumple con los requisitos de área, consumo y velocidad esperados, se pasa directamente a la generación del **Bitstream**, que es el archivo de más bajo nivel el cual se almacena en la memoria de configuración 💾.

> **Bitstream** = Archivo ejecutable resultante del proceso de compilación y linkeo en software 🖥️.

Este flujo de datos es la información que la memoria de configuración le pasará a la FPGA al momento de energizarse y así configurarse para cumplir los requisitos funcionales ⚡.

---

## 7. 🧪 Validar el Bloque en Hardware
Estamos en la etapa final antes de probar o validar el bloque en hardware 🔌. De esta prueba puede resultar un funcionamiento deseado 🎉 o, en caso de que no, se deberá evaluar la falla, identificarla y empezar a trabajar sobre aquellos bloques involucrados 🔍.

> 💡 *Cuanto más se particione el diseño (es decir, que las funcionalidades de cada bloque sean acotadas) y más rigurosos seamos en el proceso de verificación de cada bloque, más cerca se estará de no tener problemas en esta fase de validación.*

Finalmente, si la prueba es satisfactoria, solo nos queda el disfrute del deber cumplido 🏖️🙌.
