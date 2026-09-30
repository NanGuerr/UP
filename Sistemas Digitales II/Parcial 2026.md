# Resolución de Cuestionario: VHDL y Lógica Digital 🧠⚡

Este documento contiene la resolución detallada de cada uno de los puntos planteados sobre diseño digital, VHDL y arquitectura de FPGAs.

---

### 1. Para inferir memoria, ¿es necesario declarar una señal de reloj (*clock*)? ¿Por qué? Da un ejemplo. ⏰🧠
* **Respuesta:** No, **no es estrictamente necesario** declarar una señal de reloj para inferir memoria en VHDL. 
* **Por qué:** La memoria se puede inferir de forma asíncrona mediante **latches** (pestillos). Si en un proceso combinacional (como una sentencia `if` o `case`) no se cubren todas las combinaciones posibles de asignación para una señal (por ejemplo, omitiendo la cláusula `else`), el sintetizador infiere automáticamente un elemento de memoria (latch) para retener el valor anterior cuando la condición no se cumpla. El reloj solo es necesario si se desea memoria **sincrónica** (como los flip-flops).
* **Ejemplo de inferencia de memoria sin reloj (Latch):**
```vhdl
process (enable, d)
begin
    if enable = '1' then
        q <= d; -- Si enable es '0', q retiene su valor anterior, infiriendo memoria (latch)
    end if;
end process;
```

---

### 2. Verifica la salida de una compuerta OR de entradas `a` y `b` y salida `s`, ambas en '1'. Dame el *testbench* necesario solo para eso. 🔌🧪
* **Respuesta:** A continuación se presenta el código del *testbench* en VHDL para verificar el comportamiento de la compuerta OR cuando ambas entradas se encuentran en el nivel lógico `'1'`.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_puerta_or is
end tb_puerta_or;

architecture sim of tb_puerta_or is
    -- Señales para conectar al componente
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal s : std_logic;
begin
    -- Instancia de la compuerta OR
    s <= a or b;

    -- Estímulos de prueba
    process
    begin
        -- Aplicando los valores solicitados: a = '1', b = '1'
        a <= '1';
        b <= '1';
        wait for 10 ns;
        
        -- Fin de la simulación
        wait;
    end process;
end sim;
```

---

### 3. Cuando se usan sentencias implícitas, ¿qué precauciones se deben tener? Da un ejemplo. ⚠️🔍
* **Respuesta:** Cuando se habla de asignaciones o estructuras implícitas (como descripciones incompletas en procesos que generan lógica secuencial no deseada), la principal precaución es **evitar la inferencia accidental de latches** y desajustes (*mismatches*) entre la simulación y la síntesis del hardware. 
* **Precauciones:** 
  1. Asegurar que todas las rutas de ejecución de una sentencia condicional asignen un valor a la señal.
  2. Utilizar siempre la cláusula `else` o definir un valor por defecto al inicio del proceso.
* **Ejemplo con precaución requerida:**
```vhdl
-- Incorrecto / Peligroso (genera un latch implícito si 'sel' no está cubierto o si falta el else)
process (sel, a, b)
begin
    if sel = '1' then
        out_sig <= a;
    end if; -- Falta el 'else', por lo que out_sig recuerda su valor anterior de forma implícita.
end process;
```

---

### 4. ¿Por qué se prefiere en VHDL usar el tipo de datos `std_logic` en vez del tipo `bit`? ⚡🔤
* **Respuesta:** Se prefiere ampliamente el tipo `std_logic` (definido en la librería `ieee.std_logic_1164`) frente al tipo estándar `bit` porque este último solo soporta dos estados (`'0'` y `'1'`). 
* **Ventajas de `std_logic`:**
  * Soporta **lógica de 9 estados** (multivalor), permitiendo modelar estados físicos reales del hardware como alta impedancia (`'Z'`), desconocido (`'X'`), no inicializado (`'U'`), débilmente alto (`'H'`), etc.
  * Es indispensable para modelar buses tri-estado, verificar conflictos de señales y realizar una depuración (*debugging*) eficaz en la simulación.

---

### 5. ¿Cómo se componen las celdas de una FPGA? 🧱🧩
* **Respuesta:** Las celdas fundamentales de una FPGA (comúnmente llamadas Bloques Lógicos Configurables o CLBs, que contienen Elementos Lógicos o LEs) se componen principalmente de:
  1. **Tablas de Verdad (LUT - *Look-Up Tables*):** Generalmente de 4 a 6 entradas, utilizadas para implementar cualquier función lógica combinacional mediante memoria SRAM interna.
  2. **Flip-Flops (FF) o Registros:** Para almacenar estados y construir lógica secuencial sincrónica.
  3. **Multiplexores (MUX):** Para enrutar señales, configurar la conectividad interna y seleccionar caminos de datos.
  4. **Circuitos de control aritmético:** Sumadores/acarreos rápidos para operaciones matemáticas eficientes.

---

### 6. Explica la importancia de trabajar con las mismas familias lógicas. 🤝⚡
* **Respuesta:** Trabajar con componentes de una misma familia lógica (por ejemplo, TTL con TTL, o CMOS con CMOS de niveles idénticos) es fundamental para garantizar la compatibilidad eléctrica e integridad de las señales.
* **Aspectos clave:**
  * **Niveles de voltaje ($V_{IH}, V_{IL}, V_{OH}, V_{OL}$):** Asegura que un nivel alto o bajo de un circuito sea correctamente interpretado por el siguiente sin caer en zonas de indeterminación.
  * **Capacidad de corriente (*Fan-out*):** Evita sobrecargar las salidas de los circuitos integrados, previniendo caídas de tensión o daños físicos por exceso de corriente.
  * **Velocidad y ruido:** Mantiene tolerancias homogéneas frente al ruido electromagnético y tiempos de propagación estables.

---

### 7. Identifica el error en el siguiente código: ❌💻

```vhdl
p_and: process (b3)
begin
    if (a3 = '1' and b3 = '1') then
       s3 <= '1';
    else
       s3 <= '0';
    end if;
end process p_and;
```

* **Respuesta y Diagnóstico del Error:**
  * **Error:** La **lista de sensibilidad** del proceso está incompleta. Contiene únicamente a la señal `b3` (`process (b3)`), pero dentro del bloque se evalúa también la señal `a3`.
  * **Consecuencia:** En VHDL, para un comportamiento puramente combinacional, **todas** las señales que se leen dentro del proceso deben estar incluidas en la lista de sensibilidad. Al omitir `a3`, la simulación no se ejecutará cuando `a3` cambie de valor si `b3` permanece estático, provocando un desajuste (*simulation-synthesis mismatch*) grave entre el modelo simulado y el circuito físico sintetizado.
  * **Corrección:** La cabecera del proceso debe incluir ambas señales: `process (a3, b3)`.
```vhdl
-- Código corregido:
p_and: process (a3, b3)
begin
    if (a3 = '1' and b3 = '1') then
       s3 <= '1';
    else
       s3 <= '0';
    end if;
end process p_and;
```