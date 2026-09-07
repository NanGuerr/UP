# 🎛️ Metodología de Trabajo en FPGAs: Guía Paso a Paso

**Tema:** Flujo completo de diseño, desarrollo, implementación y prueba en FPGAs  


## 📌 Transcripción Completa del Video

### 🎙️ Transcripción Audio y Texto en Pantalla

> *"¿Cómo empiezo a trabajar con FPGAs? ¿Y el VHDL? ¿Escribo todo junto? ¿Cómo lo pruebo? Estas son algunas de las tantas interrogantes que nos surgen al empezar a utilizar FPGAs.*
>
> *Nos vamos a apoyar en un flujo de trabajo para transitar las etapas de **Diseño**, **Desarrollo**, **Implementación** y **Prueba**.*
>
> *Comenzaremos por analizar las especificaciones del bloque, los requerimientos que tenga. En otras palabras, trabajaremos en **comprender el problema y lograr una especificación detallada**.*
>
> *Es nuestra tarea **identificar las funcionalidades básicas y particionar la solución en bloques más pequeños**. Es decir, establecer un **diseño jerárquico modular**. Esto simplifica la tarea de diseño.*
>
> *Generalmente, de este análisis nos encontramos que los bloques de mayor jerarquía comparten bloques iguales o similares que resuelven funcionalidades básicas (como multiplexores, FSMs, contadores o compuertas). De esta forma, podemos **reutilizar bloques simples y acelerar los tiempos de desarrollo**, lo que permite también dividir el trabajo en forma más uniforme dentro del grupo de trabajo.*
>
> *Una vez realizado el diseño jerárquico, comienza la tarea de **descripción de cada bloque simple**. En esta instancia, se suele entrar en una **fase iterativa del flujo**: para cada descripción se deberá evaluar tanto los resultados de la **síntesis** como los resultados de la **simulación de comportamiento** del bloque. Estas dos etapas nos aportan resultados complementarios sobre la descripción.*
>
> *Para estas tareas utilizaremos herramientas de **Diseño Electrónico Automatizado**, conocidas como **EDA** (*Electronic Design Automation*).*
>
> *La **síntesis** nos arrojará como resultado si la herramienta infirió o entendió adecuadamente el código escrito; en otras palabras, que exista **coherencia** entre la descripción y los resultados de la síntesis (por ejemplo, si se describió un multiplexor, que se haya inferido un multiplexor).*
>
> *La **simulación** es la herramienta que utilizamos para verificar el comportamiento del bloque, es decir, evaluar que se cumpla el funcionamiento pretendido. A la simulación también la llamaremos **Testbench** o **Banco de Pruebas**, por la analogía con un banco de ensayos de laboratorio. Siguiendo con el ejemplo del multiplexor, verificaremos que el cambio de la línea de selección genere el cambio pretendido en la salida.*
>
> *En esta instancia, si ambos procesos fueron satisfactorios, debemos dar este bloque por cerrado y verificado. En el caso contrario, se deberá **ajustar la descripción** en función de la anomalía detectada, tanto sea de síntesis y/o de simulación.*
>
> *Si ya se describieron y evaluaron todos los bloques, se pueden ir **integrando**, es decir, agrupándolos en un sentido jerárquico inverso al que generó la partición. Esto implica describir este agrupamiento en otro archivo aparte que invoque a los bloques pequeños, y por ende se tendrá que volver a verificar los resultados de la síntesis y el comportamiento de este nuevo módulo. Esta tarea se desarrollará hasta que se obtenga el bloque de nivel superior, principal o **Top Module**.*
>
> *Teniendo listo el bloque principal, se pasa a una fase de **implementación del diseño**. Aquí es donde se realiza el proceso de **Place and Route**. En realidad nosotros no hacemos nada, lo realiza una herramienta EDA específica.*
>
> *La idea es, por un lado, **ubicar el diseño dentro de la FPGA** haciendo uso de la arquitectura específica del modelo elegido (esto es lo que llamamos **Place**). El **Route** o ruteo es el mecanismo mediante el cual las distintas partes del diseño ubicadas en el Place se **interconectan haciendo uso de la matriz de interconexión interna**.*
>
> *Los resultados de este proceso nos arrojarán datos reales del **espacio de FPGA ocupado**, la **cantidad de pines en uso**, la **velocidad máxima** que soporta el diseño (es decir, cuán rápido podrá ir el reloj principal) y el **consumo de potencia general**.*
>
> *A su vez, existe la posibilidad de parametrizar a las herramientas para que optimicen el diseño en uno o varios de estos criterios (por ejemplo, que el diseño opere hasta 400 MHz). Estos parámetros son denominados **limitaciones o Constraints del Place and Route**.*
>
> *Si se cumple con los requisitos de área, consumo y velocidad esperados, se pasa directamente a la generación del **Bitstream**, que es el archivo de más bajo nivel el cual se almacena en la memoria de configuración. Haciendo una analogía con software, es el **equivalente al archivo ejecutable resultante del proceso de compilación y linkeo**.*
>
> *Este flujo de datos es la información que la memoria de configuración le pasará a la FPGA al momento de energizarse y así configurarse para cumplir los requisitos funcionales.*
>
> *Estamos en la etapa final antes de probar o **validar el bloque en Hardware**. De esta prueba puede resultar un funcionamiento deseado, y en caso de que no, se deberá evaluar la falla, identificarla y empezar a trabajar sobre aquellos bloques involucrados.*
>
> *Como la detección de las fallas en este estadio es compleja, quiero resaltar que **cuanto más se particione el diseño (es decir, que las funcionalidades de cada bloque sean acotadas) y más rigurosos seamos en el proceso de verificación de cada bloque, más cerca se estará de no tener problemas en esta fase de validación**.*
>
> *Finalmente, si la prueba es satisfactoria, ¡solo nos queda el disfrute del trabajo!"*



## ⚙️ Flujo Metodológico Resumido

```
  [ INICIO ]
      │
      ▼
  [ 1. Comprensión de Especificaciones ]
      │
      ▼
  [ 2. Partición del Diseño ] ────► (Creación de Diseño Jerárquico Modular)
      │
      ▼
  ┌───► [ 3. Descripción VHDL de Bloques Simples ]
  │       │
  │       ├───► [ Síntesis (EDA) ] ─────► ¿Coherencia OK? ──┐ (No: Ajustar)
  │       │                                                  ├──────────────┐
  │       └───► [ Simulación (Testbench) ] ─► ¿Funcionamiento OK? ┘          │
  │                                                                          │
  └────────────────── (No) ◄─── ¿Integración Completa? ◄─────────────────────┘
                                        │ (Sí)
                                        ▼
                            [ 4. Top Module Listo ]
                                        │
                                        ▼
                            [ 5. Implementación (Place & Route) ]
                                        │
                                        ├── Place: Ubicación en celdas lógicas
                                        └── Route: Interconexión en matriz interna
                                        │
                                        ▼
                            ¿Cumple Constraints? (Área, Velocidad, Potencia)
                                        │ (Sí)
                                        ▼
                            [ 6. Generación del Bitstream ]
                                        │
                                        ▼
                            [ 7. Carga en Memoria de Configuración / FPGA ]
                                        │
                                        ▼
                            [ 8. Validación en Hardware ]
                                        │
                                        ├── (No OK) ──► Revisar bloques e iterar
                                        └── (OK) ─────► 🏖️ ¡Éxito y Disfrute!
```



## 📊 Matriz de Criterios y Restricciones (Constraints)

Durante la etapa de **Place and Route**, la herramienta de **EDA** analiza los siguientes parámetros métricos:

| Parámetro / Métrica | Descripción | Unidad / Expresión |
| :--- | :--- | :--- |
| **Área / Ocupación** 📐 | Cantidad de bloques lógicos (LUTs, Flip-Flops, Slices) utilizados en la matriz. | $	ext{Ocupación (\%)} = \left( rac{	ext{Celdas Usadas}}{	ext{Celdas Totales}} 
ight) 	imes 100$ |
| **I/O Pins** 🔌 | Número de pines de entrada/salida físicos mapeados en la FPGA. | $N_{	ext{pines}} = N_{	ext{entradas}} + N_{	ext{salidas}}$ |
| **Frecuencia Máxima ($f_{\max}$)** ⚡ | Límite máximo de conmutación del reloj principal determinado por el camino crítico ($T_{	ext{prop}}$). | $f_{\max} = rac{1}{T_{	ext{prop}} + T_{	ext{setup}}}$ |
| **Consumo de Potencia ($P_{	ext{total}}$)** 🔋 | Disipación total dividida en potencia estática y dinámica. | $P_{	ext{total}} = P_{	ext{estática}} + P_{	ext{dinámica}}$ |



## 🧮 Modelos Matemáticos del Flujo en FPGAs

### 1. Frecuencia Máxima de Operación ($f_{\max}$)

El desempeño temporal del hardware implementado depende del retraso de propagación en el camino crítico ($T_{	ext{camino\_crítico}}$), la demora de establecimiento de los registros ($T_{	ext{setup}}$) y el desfase de reloj ($T_{	ext{skew}}$):

$$T_{	ext{clk}} \ge T_{	ext{camino\_crítico}} + T_{	ext{setup}} + T_{	ext{clk\_to\_q}} - T_{	ext{skew}}$$

$$f_{\max} = rac{1}{T_{	ext{clk\_mín}}}$$



### 2. Consumo de Potencia Dinámica ($P_{	ext{dinámica}}$)

La potencia consumida por la conmutación de las celdas lógicas durante la ejecución se modela como:

$$P_{	ext{dinámica}} = \sum_{j} C_j \cdot V_{	ext{dd}}^2 \cdot f \cdot  lpha_j$$

Donde:
* $C_j$: Capacitancia equivalente del nodo $j$.
* $V_{	ext{dd}}$: Tensión de alimentación del núcleo (*core*).
* $f$: Frecuencia de operación del reloj.
* $ lpha_j$: Factor de actividad de conmutación del nodo $j$.



### 3. Modelo de Multiplexor 2 a 1 (Ejemplo de Bloque Simple)

Un multiplexor de 2 entradas de $1$ bit responde a la siguiente ecuación booleana:

$$	ext{out} = ( ar{s} \cdot I_1) + (s \cdot I_2)$$

O expresado como una función por casos:

$$	ext{out}(s) =  egin{cases} I_1 & 	ext{si } s = 0 \ I_2 & 	ext{si } s = 1 \end{cases}$$
