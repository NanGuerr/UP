# 📹 Transcripción y Guía Tutorial: Ejemplo de Síntesis con ISE Navigator

**Presentador:** Ariel Dalmas Di Giovanni  
*Ingeniero en Electrónica y Docente en la Universidad de Palermo* 🎓



## 📜 Explicación

En este video veremos cómo se utiliza el ISE para realizar el proceso de síntesis. En primera medida, vamos a destacar que tenemos un entorno con sintaxis coloreada que nos va a permitir editar el texto y poder hacer la descripción del módulo. En este caso, como tenemos un ejemplo ya prearmado, no vamos a editar el archivo. ✍️

**[Menús]**  
Tenemos dos menúes acá principales. Este es un menú donde se puede apreciar cuál es la relación entre los diferentes archivos. En este caso, como hay un solo archivo, no se nota esa jerarquía. A medida que se complexifican los ejemplos y se agreguen más cantidad de archivos, se va a poder empezar a observar cómo esto empieza a tener un árbol jerárquico en términos de jerarquías de bloques. Es por esto que este ícono simboliza que este archivo es el de mayor jerarquía, es decir, el *Top Module*. Si se quiere cambiar el *Top Module*, se puede hacer a través del botón derecho, *Set as Top Module*. En este caso está inhibida esta función puesto que este ya es el *Top Module*. 🌳🔝

**[Testbench]**  
Si se quiere agregar, por ejemplo, archivos de paquetes o de *testbench* cuando se vea la simulación de comportamiento, bastará con agregar a partir del botón derecho, *Add Source*, e ir a buscar en el disco de cada máquina donde esté el archivo fuente que se quiera agregar. 📁➕

**[Synthesize - XST]**  
Bien, tenemos este archivo y con este archivo nos interesa poder elaborar una síntesis, es decir, una interpretación de hardware de esta descripción que hemos realizado. Recordemos que es una descripción que modela una compuerta AND de 8 bits. ⚙️

**[Check Syntax]**  
En este menú tenemos diferentes herramientas. Las herramientas que nos interesan en particular están anidadas bajo el nombre *Synthesize - XST* (*Xilinx Synthesis Tool*). Expandimos este menú y nos encontramos con diferentes opciones. Una de las opciones es *Check Syntax*. Este va a ser el primer estadio que siempre ejecutaremos una vez que terminamos de describir un módulo. Hacemos doble clic, nos pregunta si queremos guardar el archivo, le decimos que sí (eso tiene que ver con que antes modifiqué una línea para mostrar que se podía editar el archivo). Estos procesos demoran habitualmente y nos va a indicar a través de la consola si el chequeo de sintaxis fue correcto. Fíjense que aquí se observa diferentes niveles de información; en caso de haber error, esta cruz suele aparecer en colorado. Bien, la sintaxis está chequeada. 🔍✅

**[Estado de síntesis]**  
Ahora tenemos que pasar al estado de síntesis, con lo cual hacemos doble clic en *Synthesize - XST*. Y aquí el proceso que hace el programa es el de interpretar lo que hemos descrito y elaborar un hardware acorde a esa descripción. 🛠️

**[View Text Report]**  
Bien, acá en consola nos va a informar una cantidad de cosas, pero lo más interesante es que podamos verlo desde tres enfoques diferentes. Un enfoque consiste en, a partir del botón derecho, ir a ver el reporte de síntesis (*View Text Report*). 📊

**[Macros]**  
El reporte de síntesis tiene toda una parte introductoria e incluso tiene un índice. Aquí figura qué archivo se está trabajando, una cantidad de opciones de configuración que no las modificaremos porque usamos las que son por defecto, y aquí empieza la parte interesante: cuando hace el parseo del HDL. Observamos que está parseando la entidad `comp_and8`, que es el nombre de nuestra entidad, y una arquitectura cuyo nombre es `arch`, que es nuestra arquitectura. O sea que está yendo por el camino correcto. Luego empieza el análisis de más alto nivel: va identificando la síntesis y, como esto es una compuerta sumamente básica, no ha identificado *macros*. Las *macros* van a ser, por ejemplo, en el caso de detectar un multiplexor. Acá veremos que en reportes más avanzados empiezan a aparecer bloques conocidos por nosotros que son comunes para cualquier tipo de diseño. 📝

**[*Lookup Tables (LUTs)]**  
Finalmente, como es un reporte sumamente simple, no hay mucha más información; sin embargo, hay algo interesante: hay información sobre lo que sería la cantidad de *Lookup Tables* (LUTs) que está utilizando. Pensemos que tenemos 8 salidas y 16 entradas en total, entonces tiene lógica que haya 8 *slices* de LUT ocupadas. Recuerden que cada *Lookup Table* tiene una única salida. Bueno, el reporte de síntesis nos va a dar una información sobre este uso a nivel recurso y sobre todo a nivel macroestadístico, que son todos estos ítems de distintos desgloses y niveles de jerarquía de análisis del sintetizador. 📈

**[View RTL Schematic]**  
Otra opción para ver esta información es a través del *View RTL Schematic*. Esto nos va a presentar una vista... en esta pantalla siempre le damos a la segunda opción y le damos OK. En esta opción lo vemos al bloque como estamos acostumbrados: como una vista de bloque externa. Fíjense que tenemos las entradas (las dos) y la salida con las dimensiones. Esto ya nos da una idea de si hay o no coherencia entre lo que describimos y lo que ha interpretado el sintetizador. Si hacemos doble clic aquí, en este caso nos encontramos con una compuerta AND. Este ejemplo es muy simple, con lo cual la elaboración de este bloque también lo es. Esto es una buena forma también de verificar si se comprendió o no la descripción por parte del sintetizador. 📐👁️

**[View Technology Schematic]**  
La otra opción es el *View Technology Schematic*. Aquí veremos (le damos otra vez OK) que la vista externa es muy parecida a la del *View RTL Schematic*; sin embargo, este diagrama esquemático que nos presenta está más asociado a la tecnología. Entonces, siempre utiliza para lo que son bloques de entrada o salida *buffers* internos (`ibuf` y `obuf`), y a su vez asocia las *Lookup Tables*. Fíjense que si contamos hay en total LUT 7 a LUT 0, o sea 8 *Lookup Tables*. Como anticipamos, cada *Lookup Table* tiene una salida, por ende voy a necesitar 8 LUTs puesto que tengo 8 salidas (una para cada bit de la AND de 8 bits). Lo interesante es que yo puedo hacer doble clic en esta *Lookup Table* y analizar cuál es la ecuación booleana que tiene esta LUT. En este caso todas van a tener una AND porque se hace la AND bit a bit. Nos presenta el esquemático de la ecuación booleana de la LUT, la ecuación formalmente, una tabla de verdad y hasta el mapa de Karnaugh. Esto es muy interesante porque nos puede dar una cantidad de información sobre cómo es que se está implementando finalmente una lógica combinacional. 🔬⚙️

**[Repaso]**  
A través de estas tres formas, o sea repasemos:
1. El Reporte de Síntesis (*Synthesis Report*) 📝
2. El *View RTL Schematic* 📐
3. El *View Technology Schematic* 🔬

Podemos machear si hubo coherencia entre la descripción y la interpretación del sintetizador sobre un bloque con características determinadas y deseadas. 🎯



## 🛠️ Procedimientos Detallados en Xilinx ISE Navigator

### 1. Entorno de Trabajo y Gestión del Proyecto 🖥️
* **Edición de Código:** El editor integrado posee resaltado de sintaxis VHDL para facilitar el modelado.
* **Jerarquía de Módulos (*Top Module*):**
  * El diseño utiliza una estructura en árbol jerárquico.
  * El bloque superior de la jerarquía se identifica con un icono especial que señala el *Top Module*.
  * Para cambiar el módulo superior: Clic derecho sobre el archivo `.vhd` en la pestaña *Hierarchy* $
ightarrow$ Seleccionar **Set as Top Module**.
* **Agregar Archivos Al Proyecto:**
  * Clic derecho en el panel de jerarquía $
ightarrow$ **Add Source...**
  * Navegar en el almacenamiento local y seleccionar los archivos VHDL (módulos, paquetes o *testbenches*).



### 2. Pasos para la Síntesis de Hardware ⚙️

#### Paso A: Verificación de Sintaxis (*Check Syntax*) 🔍
1. En el panel de procesos (*Processes*), desplegar el menú **Synthesize - XST**.
2. Hacer doble clic en **Check Syntax**.
3. El compilador analiza el código VHDL en busca de errores gramaticales o de tipo de datos.
4. **Resultado:** En la consola inferior (*Console*) se muestra la confirmación (`Process "Check Syntax" completed successfully`). En caso de error, aparecerán marcadores de color rojo.

#### Paso B: Ejecución de la Síntesis (*Synthesize - XST*) 🛠️
1. Hacer doble clic en **Synthesize - XST**.
2. El software elabora y traduce la descripción de alto nivel (HDL) a un circuito lógico equivalente de hardware.



### 3. Métodos de Análisis y Verificación de Resultados 📊

Para validar que la síntesis sea coherente con la especificación requerida, ISE ofrece tres herramientas fundamentales:

#### 1. Reporte de Síntesis (*View Text Report*) 📝
* **Acceso:** Clic derecho sobre *Synthesize - XST* $
ightarrow$ **View Text Report**.
* **Información que contiene:**
  * **HDL Parsing & Elaboration:** Verifica que se hayan leído correctamente la `entity` y la `architecture`.
  * **HDL Synthesis / Advanced HDL Synthesis:** Identifica *macros* de hardware (sumadores, multiplexores, registros, etc.).
  * **Device Utilization Summary:** Muestra el consumo real de recursos de la FPGA:
    * Número de *Input/Output Buffers* (`IBUF`, `OBUF`).
    * Cantidad de *Slices* y *Lookup Tables* (LUTs) utilizadas.

#### 2. Esquema RTL (*View RTL Schematic*) 📐
* **Acceso:** Desplegar *Synthesize - XST* $
ightarrow$ Hacer doble clic en **View RTL Schematic**.
* **Propósito:** Muestra un diagrama de bloques genérico e independiente de la tecnología específica de la FPGA.
* **Niveles de Inspección:**
  * **Vista Externa:** Muestra los puertos de entrada $a(7:0)$, $b(7:0)$ y salida $c(7:0)$ con sus respectivos anchos de bus.
  * **Vista Interna:** Al hacer doble clic en el bloque principal, se observa la representación simbólica de la función lógica (por ejemplo, una compuerta `AND` vectorial de 8 bits).

#### 3. Esquema Tecnológico (*View Technology Schematic*) 🔬
* **Acceso:** Desplegar *Synthesize - XST* $
ightarrow$ Hacer doble clic en **View Technology Schematic**.
* **Propósito:** Muestra la implementación real mapeada sobre las primitivas de la arquitectura específica de la FPGA (familia Xilinx).
* **Componentes visibles:**
  * **Buffers de E/S:** `IBUF` para acondicionamiento de señales de entrada y `OBUF` para las salidas.
  * **Unidades LUT:** Muestra la distribución de las *Lookup Tables* (`LUT2` en este caso). Para un bus de 8 bits, se instancian 8 LUTs paralelas (desde `LUT0` hasta `LUT7`).
* **Análisis Detallado de una LUT:**
  * Al hacer doble clic sobre un bloque `LUT2`, se abre una ventana con cuatro pestañas de análisis:
    1. **Schematic:** Esquemático de la compuerta equivalente.
    2. **Equation:** Expresión booleana booleana de la celda:
       $$O = I_0 \cdot I_1$$
    3. **TruthTable:** Tabla de verdad completa de la celda.
    4. **Karnaugh Map:** Mapa de Karnaugh correspondiente a la función lógica de la LUT.



## 🧮 Demostración Matemática de la Operación (Vectorial de 8 Bits)

El módulo sintetizado en el video corresponde a una compuerta `AND` bit a bit entre dos vectores de 8 bits:

$$a = (a_7, a_6, a_5, a_4, a_3, a_2, a_1, a_0)$$

$$b = (b_7, b_6, b_5, b_4, b_3, b_2, b_1, b_0)$$

La salida $c$ se define término a término como:

$$c_i = a_i \cdot b_i \quad 	ext{para todo } i \in \{0, 1, 2, 3, 4, 5, 6, 7\}$$

Dado que cada bit $c_i$ depende exclusivamente de 2 entradas ($a_i$ y $b_i$), el sintetizador requiere exactamente $N = 8$ celdas `LUT2` para resolver la totalidad del bus:

$$	ext{Total LUTs} = N = 8$$

Cada LUT implementa la función booleana lógica:

$$f(I_0, I_1) = I_0 \land I_1$$

Donde la tabla de verdad implementada en el bloque de memoria de la LUT es:

| $I_1$ ($a_i$) | $I_0$ ($b_i$) | Output $O$ ($c_i$) |
| :---: | :---: | :---: |
| 0 | 0 | **0** |
| 0 | 1 | **0** |
| 1 | 0 | **0** |
| 1 | 1 | **1** |
