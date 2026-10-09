# 📘 Diseños Lógicos Secuenciales, Contadores y Síntesis en VHDL

Este documento sintetiza las bases teóricas, las técnicas de modelado hardware en VHDL, los procesos de síntesis y las metodologías de verificación para sistemas digitales secuenciales, con especial énfasis en el diseño de contadores y máquinas de estados finitos (FSM).

A diferencia de la lógica combinacional —donde las salidas dependen exclusivamente de las entradas presentes—, los sistemas secuenciales incorporan elementos de memoria que almacenan la historia pasada del sistema. La descripción de estos componentes en VHDL (como flip-flops, registros, contadores ascendentes/descendentes y contadores BCD) exige una comprensión clara de la propagación de señales y del reloj del sistema, diferenciándose fundamentalmente del modelo de ejecución secuencial en software. ⚙️

Entre las consideraciones clave de este documento destacan:

* **Modelo hardware frente a software**: Las asignaciones en VHDL dentro de procesos síncronos se actualizan en el flanco de reloj subsiguiente debido a los tiempos de propagación de los registros, mientras que en software las variables se actualizan de forma instantánea. ⏱️
* **Optimización de síntesis**: El uso de comparadores de igualdad estrictos (como $cuenta = 9$) en lugar de comparadores relacionales ($\ge$) reduce significativamente la lógica combinacional inferida en la FPGA. Las herramientas avanzadas de síntesis (como XST) absorben registros y sumadores explícitos para inferir macros optimizadas de contadores ascendentes. 📉
* **Versatilidad de la salida de desborde ($ov$)**: La señal de desborde permite la interconexión en cascada de módulos para formar contadores multidígito o la generación de habilitaciones para la división de frecuencia eficiente sin generar múltiples dominios de reloj. 🔄
* **Estructura estandarizada de FSM**: Implementación de arquitecturas de Mealy y Moore mediante el modelo de dos procesos (uno combinacional para las transiciones y salidas, y uno secuencial para la actualización del registro de estado) utilizando tipos de datos enumerados. 🔀
* **Metodología de verificación**: Validación jerárquica mediante testbenches unitarios (TestComponents) y un testbench integral (TopModule) para verificar la sincronización y la respuesta ante estímulos como el reinicio asíncrono. 🧪

---

## 1. 🧠 Fundamentos de Sistemas Secuenciales y Elementos de Memoria

### 1.1 Diferencia entre Lógica Combinacional y Secuencial

Un sistema combinacional calcula sus salidas únicamente en función de los valores actuales de sus entradas. En contraste, un sistema secuencial está compuesto por un circuito combinacional acoplado a un elemento de memoria encargado de almacenar la "historia pasada" del sistema.

$$\text{Inputs} \longrightarrow [ \text{Circuito Combinacional} ] \longrightarrow \text{Outputs}$$

$$\uparrow \hspace{4.2cm} \vert$$

$$\vert \hspace{4.8cm} \mathbf{\nabla}$$

$$\hspace{0.5cm} [ \text{Elemento de Memoria} ]$$

Existen dos categorías principales de sistemas secuenciales:

1. **Asíncronos**: Su funcionamiento depende del orden y momento en que se aplican las señales de entrada, sin requerir una señal centralizada de reloj.
2. **Síncronos**: El comportamiento del sistema se encuentra sincronizado globalmente mediante impulsos de una señal de reloj ($clk$).

### 1.2 Flip-Flops y Atributos de Señal en VHDL

El flip-flop (o celda binaria) es el elemento fundamental de memoria capaz de almacenar un bit de información de manera indefinida hasta que una señal cambie su estado. Los tipos principales y sus comportamientos se resumen a continuación:

* **Flip-Flop D**: Transfiere el valor de la entrada $D$ al estado futuro $Q_{t+1}$ tras la llegada del flanco de reloj.
* **Flip-Flop SR**: Permite la puesta a cero ($S=0, R=1$), puesta a uno ($S=1, R=0$), retención ($S=0, R=0$) e indeterminación ($S=1, R=1$).
* **Flip-Flop JK**: Elimina la indeterminación del SR commutando el estado anterior cuando $J=1$ y $K=1$.
* **Flip-Flop T**: Alterna el estado de salida si $T=1$.

#### Detección de Flancos y Atributo `event`

En VHDL, el atributo predefinido `'event` denota una ocurrencia o cambio de valor en una señal. La expresión `clk'event and clk = '1'` evalúa si ha ocurrido un suceso en la señal $clk$ y si su estado actual es alto, detectando un flanco de subida (*rising edge*).

Si no se especifica una cláusula `else` dentro de una condición que evalúa un flanco de reloj, el compilador infiere una celda de memoria que mantiene el valor anterior de la salida.

```vhdl
-- Código VHDL de un Flip-Flop D sensible a flanco positivo
library ieee; 
use ieee.std_logic_1164.all; 

entity ffd is 
    port ( 
        D, clk : in std_logic; 
        Q      : out std_logic
    ); 
end entity ffd; 

architecture arq_ffd of ffd is 
begin 
    process (clk) 
    begin 
        if (clk'event and clk = '1') then 
            Q <= D; 
        end if; 
    end process; 
end architecture arq_ffd;

```

---

## 2. 🗄️ Registros de Datos y Operaciones de Desplazamiento

Los registros extienden la funcionalidad de los flip-flops mediante la agrupación de múltiples bits organizados en vectores (`std_logic_vector`).

### 2.1 Registros Paralelo con Borrado Asíncrono / Síncrono

Un registro paralelo de $N$ bits almacena una palabra completa en cada pulso de reloj. En el diseño de un registro de $4$ bits con entrada de limpieza ($CLR$), se evalúan las condiciones prioritarias dentro de un proceso secuencial:

| CLK (Flanco) | CLR | D | Q | $Q_n$ | Operación |
| --- | --- | --- | --- | --- | --- |
| $\uparrow$ | $0$ | $X$ | $0000$ | $1111$ | Limpieza (Reset) 🔄 |
| $\uparrow$ | $1$ | $D_n$ | $D_n$ | $\overline{D_n}$ | Carga Paralelo 📥 |

### 2.2 Registros de Desplazamiento

Permiten la conversión de datos serie a paralelo, paralelo a serie o desplazamientos bidireccionales regulados por señales de control (por ejemplo, $S_0, S_1$):

| $S_0$ | $S_1$ | Operación |
| --- | --- | --- |
| $0$ | $0$ | Retención (*Hold*) ⏸️ |
| $0$ | $1$ | Desplazamiento a la Izquierda (*Shift Left, SL*) ⬅️ |
| $1$ | $0$ | Carga Paralelo (*Load*) 📥 |
| $1$ | $1$ | Desplazamiento a la Derecha (*Shift Right, SR*) ➡️ |

---

## 3. 🔌 Descripción Hardware de Contadores Digitales en VHDL

Un contador digital modifica su valor binario secuencialmente ante cada pulso de reloj. Para utilizar el operador aritmético `+` sobre vectores de tipo `std_logic_vector` o manejar tipos `unsigned`, es necesario importar el paquete `ieee.std_logic_arith` o `ieee.numeric_std`.

### 3.1 Contador BCD (*Binary-Coded Decimal*)

Un contador BCD realiza un conteo cíclico del rango $0$ al $9$. Incorpora una entrada de habilitación (*enable*) y una salida de desborde/cuenta terminal ($ov$).

```vhdl
-- Implementación Completa en VHDL (contadorBCD.vhd)
entity contadorBCD is
    port (
        clk    : in  std_logic;
        reset  : in  std_logic;
        enable : in  std_logic;
        ov     : out std_logic;
        bcd    : out unsigned(4-1 downto 0)
    );
end entity contadorBCD;

architecture comportamiento of contadorBCD is
    signal cuenta : unsigned(4-1 downto 0) := (others => '0');
begin
    contador: process (clk)
    begin
        if rising_edge(clk) then
            ov <= '0';
            if reset = '1' then
                cuenta <= (others => '0');
            elsif (enable = '1') then
                if cuenta = 9 - 1 then
                    ov <= '1';
                end if;
                
                if cuenta = 9 then
                    cuenta <= (others => '0');
                else
                    cuenta <= cuenta + 1;
                end if;
            end if;
        end if;
    end process contador;

    bcd <= cuenta;
end architecture comportamiento;

```

### 3.2 Diferencia entre Algoritmo Hardware (VHDL) y Software (C)

Es un error común equiparar el algoritmo de un contador secuencial en VHDL con un script de software tradicional.

```c
// Algoritmo Algorítmico en C (Software)
int contador() {
    cuenta = cuenta + 1;
    if (cuenta > 9)
        cuenta = 0;
}

```

* **Diferencia conceptual**: En el código C, la variable `cuenta` se incrementa de forma instantánea antes de evaluar el condicional. En VHDL, la asignación `<=` implica una actualización retardada que se hace efectiva en el siguiente ciclo de reloj, considerando el tiempo de propagación de los registros hardware. ⏱️
* **Optimización en Lógica Combinacional**: En VHDL se prefiere evaluar comparaciones de igualdad estricta (`cuenta = 9`) en lugar de comparaciones relacionales (`cuenta >= 9`). La comparación $\ge$ requiere instanciar una mayor cantidad de puertas lógicas combinacionales para llevar a cabo la verificación de magnitud. 💡

---

## 4. 📊 Análisis y Reporte de Síntesis en FPGAs

El proceso de compilación mediante herramientas de síntesis de RTL (como *Xilinx Synthesis Technology* - XST) transforma el código VHDL en primitivas lógicas reales. El flujo consta de cuatro etapas principales:

### 4.1 Fases del Proceso de Síntesis

1. **HDL Parsing**: Verificación sintáctica y léxica del archivo fuente `.vhd`.
2. **HDL Elaboration**: Construcción de la jerarquía del diseño a partir de la entidad y arquitectura compiladas.
3. **HDL Synthesis**: Inferencia preliminar de componentes abstractos (registros, sumadores, multiplexores).
4. **Advanced HDL Synthesis**: Optimización lógica global, agrupación de primitivas y absorción de macros.

### 4.2 Desglose del Reporte de Síntesis (Ejemplo `contadorBCD`)

De acuerdo con el reporte de síntesis XST para el contador BCD, se infieren inicialmente:

```text
=========================================================================
-                           HDL Synthesis                               *
=========================================================================
Synthesizing Unit <contadorBCD>.
    Found 4-bit register for signal <cuenta>.
    Found 1-bit register for signal <ov>.
    Found 4-bit adder for signal <cuenta[3]_GND_4_o_add_1_OUT>.
    Inferred 1 Adder/Subtractor(s).
    Inferred 5 D-type flip-flop(s).
=========================================================================

```

En la fase de *Advanced HDL Synthesis*, la herramienta reconoce el patrón de diseño e implementa una absorción de registros:

```text
=========================================================================
-                       Advanced HDL Synthesis                          *
=========================================================================
Advanced HDL Synthesis Report
Macro Statistics
# Counters                                             : 1
 4-bit up counter                                      : 1
# Registers                                            : 1
 Flip-Flops                                            : 1
=========================================================================

```

* **Interpretación**: El registro de $4$ bits asignado a `cuenta` y el sumador de $4$ bits son consolidados (*absorbed*) en un macro-bloque dedicado denominado *4-bit up counter*. El Flip-Flop restante corresponde al registro de la salida $ov$. 📦
* **Esquemático RTL**: En la representación esquemática del circuito sintetizado, el núcleo del contador se compone del registro y un sumador ($+1$). La detección del valor de reinicio $9$ se efectúa mediante una puerta lógica combinacional tipo `and4a2b`, la cual fuerza el reinicio a cero del registro en el subsiguiente pulso de reloj y gestiona la lógica de las entradas de control (`enable`, `reset`). 🛠️

---

## 5. 🚀 Aplicaciones Avanzadas de la Salida de Desborde ($ov$)

La señal $ov$ (*overflow*) genera un pulso de un ciclo de reloj completo en el instante en que el contador atraviesa su última cuenta límite (por ejemplo, en el valor $8$ para activar el pulso que coincide con el estado $9$).

```text
reloj   : __|¯¯|__|¯¯|__|¯¯|__|¯¯|__|¯¯|__|¯¯|__|¯¯|__
cuenta  : ...  7   |   8   |   9   |   0   |   1  ...
salida ov: ________|¯¯¯¯¯¯¯|_______|__________________

```

### 5.1 Contadores Multidígito en Cascada

Para estructurar un contador decimal de múltiples dígitos (por ejemplo, dos dígitos BCD para contar de $0$ a $99$), se conectan bloques en cascada. 🔗

* La salida $ov$ del contador del Dígito 1 (unidades) se acopla directamente a la entrada `enable` del contador del Dígito 2 (decenas).
* El segundo contador únicamente incrementará su valor una vez por cada $10$ incrementos completos del primer contador.

### 5.2 Divisor de Frecuencia

El uso de un contador configurable actúa como un divisor de frecuencia por habilitación (*enable generator*). Esta técnica evita instanciar múltiples redes de reloj (*clock trees*) dentro de la FPGA, manteniendo todo el diseño dentro de un único dominio síncrono. ⏱️

El valor límite del contador ($DIV$) necesario para derivar una frecuencia de salida deseada se calcula mediante la fórmula:

$$DIV = \frac{FrecEnt}{FrecSal} - 1$$

#### Ejemplo de Aplicación:

Para derivar una señal de habilitación a $5\text{ MHz}$ a partir de un reloj principal de entradas más elevadas, el contador se configura con el módulo $DIV$ calculado. Un Flip-Flop secundario ($FF_2$) que recibe el reloj principal solo cambiará de estado cuando la salida $ov$ del contador de división pulse en `'1'`.

---

## 6. 🎛️ Diseño de Sistemas Secuenciales Síncronos y Máquinas de Estado (FSM)

### 6.1 Clasificación de Arquitecturas Secuenciales

1. **Máquina de Mealy**: Las salidas del sistema son función combinacional tanto del estado presente como de los valores actuales de las entradas.

$$\text{Salidas} = f(\text{Estado Presente}, \text{Entradas})$$


2. **Máquina de Moore**: Las salidas dependen únicamente del estado presente en el que se encuentra la máquina.

$$\text{Salidas} = f(\text{Estado Presente})$$



```text
          ARQUITECTURA DE MEALY                        ARQUITECTURA DE MOORE
          +-------------------+                        +-------------------+
Entradas->| Lógica            |----> Salidas ENTRADAS->| Lógica            |
   |      | Combinacional     |       ^                | Combinacional     |
   |      +-------------------+       |                +-------------------+
   |        |            ^            |                  |            ^
   |        v            |            |                  v            |
   |      +-------------------+       |                +-------------------+
   |      | Memoria (FFs)     |-------+                | Memoria (FFs)     |
   |      +-------------------+                        +-------------------+
   |                ^                                            ^
   +---[clk]--------+                          +---[clk]---------+
                                               |
                                               v
                                      +-------------------+
                                      | Lógica de Salida  |---> Salidas
                                      +-------------------+

```

### 6.2 Metodología de Programación de una FSM en VHDL

El método estándar para codificar una máquina de estados comprende el uso de:

* **Tipos de Datos Enumerados**: Creados mediante la instrucción `type` para declarar explícitamente los nombres de los estados.
* **Modelo de Dos Procesos**:
1. *Proceso Combinacional* (`proceso1`): Evalúa el estado presente y las entradas mediante una estructura `case-when` para determinar el estado futuro y controlar las salidas combinacionales.
2. *Proceso Secuencial* (`proceso2`): Sincronizado por reloj, asigna el valor de `edo_futuro` a `edo_presente` en cada flanco de subida.



#### Ejemplo Práctico: Detector de Secuencia (4 Unos Consecutivos)

El sistema activa una salida $Z = 1$ cuando recibe cuatro `'1'` lógicos de forma consecutiva en la línea de entrada $X$.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity detector_secuencia is
    port (
        clk : in  std_logic;
        x   : in  std_logic;
        z   : out std_logic
    );
end entity detector_secuencia;

architecture arq_detector of detector_secuencia is
    type estados is (d0, d1, d2, d3);
    signal edo_presente, edo_futuro : estados;
begin

    -- Proceso 1: Lógica combinacional de estado futuro y salidas
    proceso1: process (edo_presente, x)
    begin
        case edo_presente is
            when d0 =>
                z <= '0';
                if x = '1' then
                    edo_futuro <= d1;
                else
                    edo_futuro <= d0;
                end if;

            when d1 =>
                z <= '0';
                if x = '1' then
                    edo_futuro <= d2;
                else
                    edo_futuro <= d1;
                end if;

            when d2 =>
                z <= '0';
                if x = '1' then
                    edo_futuro <= d3;
                else
                    edo_futuro <= d0;
                end if;

            when d3 =>
                if x = '1' then
                    edo_futuro <= d0;
                    z <= '1'; -- Salida Mealy activada al detectar el cuarto 1
                else
                    edo_futuro <= d3;
                    z <= '0';
                end if;
        end case;
    end process proceso1;

    -- Proceso 2: Actualización síncrona de registros de estado
    proceso2: process (clk)
    begin
        if rising_edge(clk) then
            edo_presente <= edo_futuro;
        end if;
    end process proceso2;

end architecture arq_detector;

```

---

## 7. 🧪 Metodología de Verificación y Validación Mediante Bancos de Prueba

La verificación de diseños secuenciales en VHDL exige simular la respuesta temporal y la coherencia del *datapath* mediante bancos de prueba (*testbenches*).

```text
                      SUITE DE SIMULACIÓN Y VERIFICACIÓN
 +-------------------------------------------------------------------------+
 |                               TopModule                                 |
 |  +-------------------+  +-------------------+  +---------------------+  |
 |  | TestComponent 1   |  | TestComponent 2   |  | TestComponent 3     |  |
 |  | (Unidad Memoria)  |  | (Unidad Conteo)   |  | (Testbench Reset)   |  |
 |  +-------------------+  +-------------------+  +---------------------+  |
 +-------------------------------------------------------------------------+

```

### 7.1 Arquitectura de Prueba Jerárquica

Una estrategia de validación integral comprende:

* **Suite de Testbenches Unitarios (*TestComponents*)**: Conjunto de 3 bancos de prueba enfocados en validar el comportamiento dinámico individual de cada sub-bloque en aislamiento. 🔍
* **Testbench Integral (*TopModule*)**: Entorno global donde se interconectan los componentes para validar la jerarquía del sistema completo y las interacciones entre módulos. 🌐

### 7.2 Validación del Comportamiento Dinámico y Reset

Durante la ejecución de las pruebas dinámicas:

1. **Reset Asíncrono**: Se fuerzan condiciones iniciales mediante la activación de la señal de reinicio ($rst = 1$), forzando de forma inmediata un estado inicial conocido sin depender del flanco de reloj. 🔄
2. **Período de Inicialización**: Al desactivar la condición de reinicio ($rst = 0$), transcurre un período explícito de estabilización y sincronización interna del *datapath*. ⏳
3. **Monitoreo de Puertos**: Las señales clave y puertos de salida son monitoreados a lo largo del tiempo para verificar que las frecuencias, retardos de propagación y valores de cuenta coincidan estrictamente con las especificaciones del diseño. 📈
