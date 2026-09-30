# 🧪 Verificación Funcional y Bancos de Pruebas

La verificación del comportamiento funcional de descripciones de hardware en VHDL es una etapa crítica del flujo de diseño de sistemas digitales. Este documento proporciona una síntesis exhaustiva sobre la metodología de simulación, la arquitectura de los bancos de pruebas (*testbenches*), la gestión interna del tiempo por parte del núcleo del simulador y las sentencias del lenguaje VHDL aplicadas a la verificación automática.



## 🔍 1. Fundamentos y Arquitectura de un Banco de Pruebas (*Testbench*)

### 🏛️ 1.1 Concepto de DUT/UUT y Estructura del Testbench
Un banco de pruebas es un archivo VHDL que rodea al dispositivo bajo prueba (**DUT**, *Device Under Test*, o **UUT**, *Unit Under Test*). Su objetivo principal es simular el comportamiento de un laboratorio físico de electrónica dentro de un entorno de software.

La entidad de un testbench típico es una entidad autocontenida: no posee puertos de entrada ni de salida (`port ()`), ya que describe el entorno global de la prueba y no un módulo que vaya a sintetizarse en hardware físico.


```

+-------------------------------------------------------------------+
| Testbench (Entidad Autocontenida sin puertos)                     |
|                                                                   |
|   +------------------+                    +-------------------+   |
|   | Generador de     |--- estímulos ----->| Dispositivo Bajo  |   |
|   | Estímulos        |                    | Prueba (DUT/UUT)  |   |
|   +------------------+                    +-------------------+   |
|                                                     |             |
|   +------------------+                              |             |
|   | Bloque Analizador|<------ resultados -----------+             |
|   | de Resultados    |                                            |
|   +------------------+                                            |
+-------------------------------------------------------------------+

```

El núcleo del testbench se define dentro de su arquitectura, la cual contiene un conjunto de procesos concurrentes:
*   **Declaración e instanciación del DUT:** Incorpora el componente a evaluar mediante un `component` y mapea sus puertos a señales internas.
*   **Proceso de estímulo/test:** Proceso secuencial principal (frecuentemente sin lista de sensibilidad) encargado de forzar los valores de entrada. Muchas de las sentencias empleadas dentro de este proceso no son sintetizables.
*   **Generadores auxiliares:** Procesos encargados de modelar señales periódicas como el reloj (`CLK`) o de control asíncrono como el reinicio (`RESET`).



### 🔬 1.2 Analogía con la Instrumentación de Laboratorio
El entorno de verificación en software mantiene una equivalencia directa con la instrumentación utilizada en un puesto de prueba físico:

| Banco de Pruebas (VHDL) | Instrumental de Laboratorio Real |
| :--- | :--- |
| 🔌 Bloque generador de estímulos | Generador digital de señales / funciones |
| 🔲 Componente (DUT/UUT) | Circuito o chip a comprobar |
| 📊 Bloque de memorización y presentación | Analizador lógico / Osciloscopio |
| 🧵 Señales de entrada y salida | Sondas de medición y cableado |



### ⚖️ 1.3 Verificación Visual vs. Verificación Autónoma
*   👀 **Inspección Visual (Formas de onda):** Consiste en analizar manualmente las señales en el dominio del tiempo. Aunque es común para circuitos pequeños, resulta una alternativa lenta, no repetible e incompleta cuando el diseño escala (por ejemplo, en un bus de 8 bits con líneas concurrentes).
*   🤖 **Testbench Autónomo:** El propio código evalúa en tiempo de ejecución si la salida producida coincide con el valor esperado para un estímulo dado. Sus ventajas principales son:
    *   **Repetibilidad:** Ante cualquier cambio lógico, se reejecuta la prueba para evitar regresiones.
    *   **Cobertura completa:** Permite verificar de manera iterativa todos los estados posibles.
    *   **Escalabilidad:** Facilita agregar nuevas funcionalidades manteniendo las previas.



## ⚙️ 2. Flujo de Trabajo Previo a la Simulación y Unidades de Diseño


```

[Modelo VHDL] ---> [Comprobación Sintáctica/Semántica] ---> [Compilación] ---> (Almacenamiento en 'work')
|
v
[SIMULACIÓN] <--- [Fichero Ejecutable] <------------------- [Elaboración]

```

### 📦 2.1 Unidades de Diseño y Reglas de Recompilación
Un fichero fuente compilado se subdivide en unidades de diseño almacenadas en la biblioteca de trabajo (`work`):
*   **Unidades Primarias:**
    *   🏷️ **Entidad:** Especificación de interfaz (entradas y salidas).
    *   📚 **Paquete:** Agrupa declaraciones globales (tipos, constantes, componentes).
    *   ⚙️ **Configuración:** Asocia componentes y arquitecturas a entidades específicas.
*   **Unidades Secundarias:**
    *   🏗️ **Arquitectura:** Define la funcionalidad o estructura.
    *   📄 **Cuerpo de Paquete:** Define subprogramas y constantes diferidas.

> 🔄 **Reglas de Recompilación:** Modificar una *Entidad* exige recompilarla junto a sus arquitecturas, componentes superiores y configuraciones. Modificar una *Arquitectura* o un *Cuerpo de Paquete* solo requiere recompilar dicha unidad de forma independiente.



### 🏗️ 2.2 Fase de Elaboración
Proceso previo a la ejecución donde el código compilado se transforma en un modelo ejecutable en memoria:
1.  Se "aplana" la red (*flattening the netlist*), manteniendo enlaces jerárquicos.
2.  Se resuelven los bucles generadores (`generate`).
3.  Las sentencias concurrentes se transforman internamente en procesos.
4.  Se asigna espacio en memoria, se inicializan variables/constantes y se abren archivos.
5.  Se verifica que toda señal no resuelta posea un único generador (*driver*).
6.  Se calculan valores iniciales y se ejecutan todos los procesos una vez hasta suspenderse; el tiempo se fija en $0\text{ ns}$.



## ⏱️ 3. Modelo de Tiempo, Ciclo de Simulación y Retardo Delta ($\delta$)

### 🔄 3.1 Kernel de Simulación y Colas de Eventos
VHDL utiliza un modelo por eventos discretos. El tiempo salta únicamente cuando ocurren cambios (eventos) en las señales mediante una cola estructurada por parejas `(valor, tiempo)`.



### ⚡ 3.2 Retardo Delta ($\delta$ delay)
El incremento delta ($\delta$) es una cantidad infinitesimal de tiempo virtual que permite actualizar señales y comunicar procesos concurrentes dentro de un mismo instante real ($0\text{ ns}$).

> ⚠️ **Riesgo de Bucles Infinitos:** Una realimentación combinacional sin retardos reales detiene el tiempo de simulación en $0\text{ ns}$.
> *   *Erróneo:* `salida <= not entrada;` (genera ciclos delta infinitos).
> *   *Correcto:* `salida <= not entrada after 2 ns;` (introduce retardo físico real).



### 🔄 3.3 El Ciclo de Simulación Unificado
Cada paso combina un Ciclo $T$ (tiempo real) y uno o más Ciclos Delta ($\delta$) intermedios para actualizar señales, ejecutar procesos activos y avanzar en la cola de eventos.



## 🛠️ 4. Recursos y Sentencias VHDL para Simulación

### ⏱️ 4.1 La Sentencia `wait`
Utilizada en procesos secuenciales para suspender la ejecución:
*   `wait;`: Detención incondicional y definitiva.
*   `wait until <condición>;`: Bloquea hasta que la condición sea verdadera.
*   `wait on <señales>;`: Espera un cambio en las señales enlistadas.
*   `wait for <tiempo>;`: Detiene el proceso durante un intervalo explícito.



### 📝 4.2 Verificación y Formateo (`assert`, `severity` y `'image`)
*   🛡️ **Sentencia `assert`:** Evalúa condiciones lógicas y emite mensajes con niveles de gravedad (`note`, `warning`, `error`, `failure`).
*   🔤 **Atributo `'image`:** Permite concatenar valores estándar (`std_logic`, `integer`, `time`) con cadenas de texto para reportes en consola.



### 📂 4.3 Salida de Datos y Ficheros (`std.textio`)
Permite registrar eventos y mensajes en la consola o manipular ficheros de texto externos (`read`, `write`, `readline`, `writeline`) para desacoplar los datos de prueba del código VHDL.



### ⚖️ 4.4 Comparativa: Señales frente a Variables
*   **Señales (`<=`):** Representan interconexiones físicas, se actualizan tras un retardo delta (o explícito) y son visibles en toda la arquitectura.
*   **Variables (`:=`):** Se actualizan de forma instantánea, poseen ámbito local dentro de un proceso o subprograma y son útiles para contadores o bucles.

> ⚠️ **Trampa de Diseño:** Las señales intermedias dentro de un proceso no se actualizan de inmediato en la misma línea de ejecución; para cálculos secuenciales inmediatos dentro de un proceso, deben emplearse variables.



## 💻 5. Casos Prácticos de Implementación

### 🔌 5.1 Testbench para una Compuerta AND (`comp_and_tb.vhd`)
Muestra la verificación básica con generación de estímulos y comprobación mediante `assert`:

```vhdl
library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;

entity comp_and_tb is
end entity comp_and_tb;

architecture testbench of comp_and_tb is
    constant RETARDO : time := 10 ps;
    
    signal a : std_logic;
    signal b : std_logic;
    signal c : std_logic;
    
    component comp_and is
        port (
            a : in std_logic;
            b : in std_logic;
            c : out std_logic
        );
    end component comp_and;

begin
    -- Instanciación del DUT
    compuerta : comp_and
        port map (
            a => a,
            b => b,
            c => c
        );

    -- Proceso principal de verificación
    test: process
        variable s : line;
    begin
        -- Aplicación de Estímulo
        a <= '1';
        b <= '0';
        wait for RETARDO; -- Espera para estabilización de propagación
        
        -- Verificación de Resultados
        assert c = '0'
            report "Se esperaba que el resultado sea 0, pero es: " & std_logic'image(c)
            severity failure;
            
        -- Informe de salida positiva
        write(s, string'("Test 2 Ok"));
        writeline(output, s);
        
        wait; -- Finaliza el proceso y detiene la simulación
    end process test;

end architecture testbench;

```


## 🏆 6. Directrices Finales de Planificación

* En bloques combinacionales simples, es viable probar el $100\%$ de las combinaciones posibles.
* En módulos complejos o aritméticos avanzados, se debe priorizar un plan enfocado en validar casos límite, desbordes (*overflow*) y transiciones críticas.
* Diseñar testbenches autónomos y modulares garantiza entornos repetibles, reutilizables y fáciles de mantener.

