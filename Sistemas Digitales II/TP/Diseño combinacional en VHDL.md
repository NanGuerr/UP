# Ejercicios de diseño digital combinacional en VHDL.

### Ejercicio 1: Bloque XOR de dos bits

Este módulo describe un circuito combinacional básico con dos entradas y una salida.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity comp_xor2 is
    port (
        a : in std_logic;
        b : in std_logic;
        s : out std_logic
    );
end entity comp_xor2;

architecture rtl of comp_xor2 is
begin
    -- Asignación directa de la compuerta lógica XOR
    s <= a xor b;
end architecture rtl;

```

### Ejercicio 2: Lógica combinacional de control de luces

Para este ejercicio, se desarrollan ambas aproximaciones de diseño (implícita y explícita) bajo la misma entidad.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity control_luces is
    port (
        sensor : in std_logic;
        sw1    : in std_logic;
        sw2    : in std_logic;
        rojo   : out std_logic;
        amarillo : out std_logic;
        verde  : out std_logic
    );
end entity control_luces;

-- a) Implementación mediante procesos implícitos (when-else)
architecture rtl_impl of control_luces is
begin
    -- Condiciones cerradas mediante 'else' para evitar inferencia de memoria
    rojo     <= '1' when (sw1 = '1' and sw2 = '1') else '0';
    verde    <= '1' when (sw1 = '0' and sw2 = '0' and sensor = '0') else '0';
    amarillo <= '1' when (sensor = '1' and sw1 = '0' and sw2 = '0') else '0';
end architecture rtl_impl;

-- b) Implementación mediante proceso explícito (if-else)
architecture rtl_expl of control_luces is
begin
    p_luces: process(sensor, sw1, sw2)
    begin
        -- Se emula el bloque 'if-else' explícito referenciado en el archivo TripleAnds.txt[cite: 1]
        
        -- Control de luz roja
        if (sw1 = '1' and sw2 = '1') then
            rojo <= '1';
        else
            rojo <= '0';
        end if;
        
        -- Control de luz verde
        if (sw1 = '0' and sw2 = '0' and sensor = '0') then
            verde <= '1';
        else
            verde <= '0';
        end if;
        
        -- Control de luz amarilla
        if (sensor = '1' and sw1 = '0' and sw2 = '0') then
            amarillo <= '1';
        else
            amarillo <= '0';
        end if;
    end process p_luces;
end architecture rtl_expl;

```

**c) Comparación de enfoques:**
Ambas arquitecturas sintetizan en el mismo hardware exacto (una red de compuertas lógicas / LUTs). El enfoque `when-else` es más conciso y altamente legible para lógica de datos paralela. El enfoque `process` con `if-else` es escalable a lógicas de evaluación secuencial más complejas, pero exige que todas las rutas lógicas contemplen una asignación explícita mediante la sentencia `else` (o valores por defecto al inicio del proceso) para evitar que el sintetizador infiera un elemento de memoria (latch), tal como se observa en la estructura del proceso en el archivo "TripleAnds.txt".

### Ejercicio 3: Bloque `comp_or8` (OR vectorial de 8 bits)

* La estructura de los puertos vectoriales de 8 bits se basa directamente en la entidad de "comp_and8s.txt".


* Se declara el tamaño de vector explícito y se aplica la operación bit a bit `or`.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity comp_or8 is
    port (
        -- Buses de entrada y salida parametrizados estáticamente a 8 bits[cite: 2]
        a : in std_logic_vector(8-1 downto 0);
        b : in std_logic_vector(8-1 downto 0);            
        c : out std_logic_vector(8-1 downto 0)
    );
end entity comp_or8;

architecture arch of comp_or8 is
begin
    -- Operación lógica OR bit a bit entre los buses
    c <= a or b;
end architecture arch;

```

### Ejercicio 4: Bloque `orGen` (Parametrización mediante Generics)

* Se integra una constante de inicialización en la declaración de la entidad a través de `generic (N : positive := 8)`, siguiendo el formato de "comp_andGens.txt".


* Los puertos ajustan su tamaño en función del parámetro `N` en tiempo de compilación.



```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity orGen is
    generic (
        N : positive := 8 -- Parámetro genérico con valor por defecto de 8[cite: 3]
    );
    port (
        a : in std_logic_vector(N-1 downto 0);
        b : in std_logic_vector(N-1 downto 0);            
        c : out std_logic_vector(N-1 downto 0)
    );
end entity orGen;

architecture arch of orGen is
begin
    -- Operación vectorial ajustada dinámicamente al tamaño N
    c <= a or b;
end architecture arch;

```

### Ejercicio 5: Instanciación del bloque `orGen` y Paquete

Se diseña primero el paquete y luego la entidad superior que invoca dicho componente, ajustando el parámetro genérico `N` a `5`.

**Archivo 1: `pkg_componentes.vhd` (Paquete)**

```vhdl
library ieee;
use ieee.std_logic_1164.all;

package componentes is
    -- Declaración del componente genérico para su posterior reutilización
    component orGen is
        generic (
            N : positive := 8
        );
        port (
            a : in std_logic_vector(N-1 downto 0);
            b : in std_logic_vector(N-1 downto 0);
            c : out std_logic_vector(N-1 downto 0)
        );
    end component;
end package componentes;

```

**Archivo 2: `top_level.vhd` (Entidad Superior)**

```vhdl
library ieee;
use ieee.std_logic_1164.all;
use work.componentes.all; -- Invocación del paquete propio

entity top_level is
    port (
        -- Puertos del Top Level de 5 bits para emparejar con el generic N => 5
        x_in : in std_logic_vector(4 downto 0);
        y_in : in std_logic_vector(4 downto 0);
        z_out: out std_logic_vector(4 downto 0)
    );
end entity top_level;

architecture structural of top_level is
begin
    -- Instanciación del componente y mapeo del Generic y los Puertos
    U_OR_GEN_1: orGen
        generic map (
            N => 5 -- Sobreescritura del parámetro genérico para este caso
        )
        port map (
            a => x_in,
            b => y_in,
            c => z_out
        );
end architecture structural;

```

### Verificación Técnica y Reportes de Síntesis

Al compilar y sintetizar cualquiera de las arquitecturas anteriores, se deben analizar los siguientes resultados en la herramienta (ej. Xilinx Vivado, Intel Quartus):

* **Synthesis Report (Reporte de Síntesis):** El registro debe confirmar la creación de redes de lógica completamente combinacionales. El indicador más importante aquí es observar que la advertencia "Latch Inferred" sea de **0**. Esto ratifica que se aplicaron correctamente las asignaciones en el `else` del *process* o el *when-else*, logrando un comportamiento de hardware puramente determinista.
* **View RTL Schematic (Esquemático a nivel de registro):** Despliega una representación gráfica abstracta independiente de la tecnología. Se observarán representaciones visuales clásicas de compuertas lógicas (AND/OR/Inversores) interconectadas. En los vectores genéricos (ej. `orGen`), se verá la línea de bus cruzada con una barra diagonal indicando la cardinalidad definida (ej. "5").
* **View RTL Technology / Tech Map (Mapeo Tecnológico):** Refleja la implementación en el silicio real de la FPGA en destino. En lugar de compuertas lógicas puras, mostrará primitivas de hardware específicas como **LUTs (Look-Up Tables)** (ej. LUT2 o LUT3 dependiendo del número de entradas utilizadas por la condición) y los respectivos **IBUF/OBUF** en los pads de entrada/salida.
El proyecto presenta una arquitectura modular bien estructurada y una correcta adopción del diseño sincrónico, aunque requiere ajustes críticos en la gestión del reloj principal y la lógica de retención de datos para cumplir íntegramente con las especificaciones oficiales.

**Resumen de cumplimiento**

* El sistema acondiciona correctamente la señal asincrónica del GPS utilizando un detector de flancos para generar un pulso de un ciclo de reloj, lo cual es una excelente práctica de diseño.


* El contador circular BCD y su decodificador a 7 segmentos cumplen con la progresión cíclica requerida de 0 a 9.


* El módulo detector de desbordamiento identifica exitosamente la transición de 9 a 0, activando la salida durante exactamente un ciclo de reloj.


* La señal patrón alterna su estado en cada pulso de entrada e inicializa en alto, cumpliendo con el período esperado de 2 segundos.


* El documento técnico incluye adecuadamente el análisis de los bloques, esquemas gráficos y simulaciones individuales.



**Observaciones y errores detectados**

* **Frecuencia del reloj principal:** La consigna exige explícitamente dimensionar el sistema para un reloj principal de 100 MHz. Sin embargo, el informe y el código del módulo testigo asumen un reloj de 10 MHz, contando hasta 2.499.999 para alcanzar los 250 ms. En hardware real operando a 100 MHz, este LED parpadearía cada 25 ms, alterando por completo la indicación visual de funcionamiento.


* **Lógica del Comparador:** La consigna estipula que la habilitación del comparador permanece en alto por un solo ciclo de reloj, instante en el cual se debe registrar internamente el valor de entrada. El módulo diseñado no almacena este valor; simplemente ejecuta la comparación en el instante exacto en que la habilitación es un "1" lógico. Si la cuenta actual no coincide con la entrada en ese milisegundo específico, la comparación jamás se validará.


* **Ausencia de Testbench General:** Se solicitó un testbench autónomo para verificar el funcionamiento del bloque general interconectado. El grupo omitió esta integración funcional, confirmando en su informe que los componentes se probaron únicamente de manera unitaria.



**Propuestas de solución detalladas**

* **Ajuste del divisor de frecuencia:** Para un reloj de 100 MHz, el contador del módulo testigo debe alcanzar los 24.999.999 ciclos para lograr la intermitencia de 250 ms. Se debe ampliar el vector a 25 bits en el código fuente:
```vhdl
signal contador : std_logic_vector(24 downto 0) := (others => '0');
-- ...
if contador = 24999999 then 

```


* **Implementación de registro en el comparador:** Se requiere declarar una señal interna para almacenar el valor objetivo cuando la habilitación se activa, separando la captura del dato de la validación del contador.
```vhdl
signal cmp_registrado : std_logic_vector(3 downto 0) := "0000";
-- ...
if cmp_en = '1' then
    cmp_registrado <= cmp_in;
end if;

if (cmp_registrado = bcd_actual) and (invertido_este_ciclo = '0') then
    cmp_reg <= not cmp_reg;
    invertido_este_ciclo <= '1';
end if;

```
**ContBCD_tb.vhd y SalidaPatron_tb.vhd (Errores Críticos de Compilación)**

* **Falta de puertos de reloj:** Las entidades originales `ContBCD` y `SalidaPatron` fueron diseñadas incluyendo un puerto de reloj (`clk_in` y `clk`, respectivamente) para operar de forma sincrónica. Sin embargo, los testbenches declaran e instancian estos componentes omitiendo el reloj por completo. Esto generará un error fatal durante la compilación en Xilinx ISE.


* **Solución requerida:** Debes actualizar la declaración del componente (añadiendo el puerto de reloj), agregarlo en el `PORT MAP`, y crear un proceso de generación de reloj (similar al que usaste en `DetectorOverflow_tb.vhd`).
Ejemplo de corrección para `ContBCD_tb.vhd`:



```vhdl
    component ContBCD
        Port (
            gps : in std_logic;
            clk_in : in std_logic; -- Puerto faltante agregado
            bcd : out std_logic_vector(3 downto 0)
        );
    end component;

```

**Testigo_Out_tb.vhd (Error de Tiempo de Simulación)**

* **Simulación insuficiente:** El testbench finaliza abruptamente tras esperar solo `200 ns`. El componente `Testigo_Out` requiere contar hasta 2.500.000 ciclos (para un reloj de 10 MHz) para invertir el estado del LED, lo cual toma 250 ms reales.


* **Solución requerida:** En el bloque `stim_proc`, debes cambiar `wait for 200 ns;` por un tiempo que permita ver al menos un ciclo completo, como `wait for 300 ms;`. De lo contrario, la señal `testigo_led` permanecerá en un estado inicial plano y no comprobarás el funcionamiento.



**Comparador_tb.vhd (Deficiencia de Cobertura)**

* **Ocultamiento del error de hardware:** Este testbench evalúa la comparación inyectando `cmp_in = "0101"` y `bcd_actual = "0101"` simultáneamente en el mismo ciclo en el que `cmp_en = '1'`. Al hacer esto, no estás verificando el requisito principal de la consigna: que el valor de `cmp_in` debe quedar registrado (latched) para seguir comparándose a futuro cuando `cmp_en` vuelva a '0'.


* **Solución requerida:** Para probar el componente correctamente, debes activar `cmp_en = '1'` con un valor en `cmp_in`, luego bajar `cmp_en = '0'` y cambiar `cmp_in` a un valor aleatorio. Posteriormente, haz que `bcd_actual` alcance el valor originalmente registrado para verificar si la salida `cmp_out` conmuta.



**BCDa7seg_tb.vhd y DetectorOverflow_tb.vhd (Aprobados)**

* **Funcionamiento correcto:** Ambos testbenches están bien estructurados. El generador de estímulos de 0000 a 1001 en `BCDa7seg_tb.vhd` cubre todos los casos útiles. El testbench `DetectorOverflow_tb.vhd` transiciona correctamente la señal `bcd_actual` de "1001" a "0000", lo que permitirá visualizar claramente el pulso en `cuenta_final` durante un ciclo de reloj.
La interconexión estructural en el módulo principal `PF_SS2.vhd` mapea correctamente los puertos de los subsistemas utilizando señales internas para aislar la señal GPS acondicionada. Sin embargo, tanto la declaración del Top Module como su entorno de simulación `PF_SS2_tb.vhd` presentan divergencias críticas respecto a las temporizaciones exigidas en la especificación del sistema.

**Observaciones y errores detectados**

* **Frecuencia de reloj incorrecta:** El módulo principal declara en sus comentarios esperar un reloj de 10 MHz, y el testbench define una constante `clk_in_period := 100 ns` equivalente a 10 MHz. La consigna oficial exige dimensionar el diseño para un reloj principal de 100 MHz.


* **Modelado irreal de la señal GPS:** El proceso de estímulo en el testbench inyecta un pulso GPS que permanece en alto durante 5 ns y en bajo durante 995 ns, resultando en un período de 1 microsegundo. La especificación oficial dicta que la señal GPS tiene un período exacto de 1 segundo con un pulso activo de 10 microsegundos de duración.


* **Ventana de simulación insuficiente:** El testbench añade una espera final de solo 20 ms. Dado que el LED testigo debe cambiar de estado cada 250 ms, la simulación abortará mucho antes de que el contador alcance su primer desbordamiento, ocultando cualquier fallo en este indicador.


* **Lógica de validación del comparador:** Al igual que en el testbench unitario, `PF_SS2_tb.vhd` habilita `cmp_en` exactamente en el mismo ciclo en el que inyecta el valor coincidente. Esto omite la comprobación del registro de memoria (latch) que debe retener el valor ingresado cuando el módulo se deshabilita.



**Propuestas de corrección para PF_SS2_tb.vhd**

**1. Ajuste del reloj principal (100 MHz)**
Modifica la constante del período en las declaraciones iniciales:

```vhdl
constant clk_in_period : time := 10 ns; -- Ajustado a 100 MHz según especificación

```

**2. Rediseño del estímulo GPS y verificación del comparador**
Reemplaza el bucle `for` actual por una secuencia que respete el período de 1 segundo, la duración de 10 µs del pulso, e ingrese el dato del comparador de forma asíncrona al conteo objetivo:

```vhdl
stim_proc: process
begin
    wait for 200 ns;

    -- 1. Registrar el valor a comparar (ej. 3) de manera independiente
    cmp_in <= "0011"; 
    cmp_en <= '1';
    wait for clk_in_period; 
    cmp_en <= '0'; -- El sistema debe memorizar "0011"
    cmp_in <= "0000"; -- Limpiar bus de entrada para evitar falsos positivos

    -- 2. Simular los pulsos GPS con temporización real (1s total, 10us activo)
    for i in 0 to 4 loop
        gps <= '1';
        wait for 10 us;
        gps <= '0';
        wait for 999990 us; -- Completar el segundo exacto
    end loop;
    
    -- 3. Extender la simulación para verificar el LED testigo (250 ms)
    wait for 300 ms; 
    
    assert false report "Simulación finalizada." severity note;
    wait;
end process;

```
