# ⚡Circuitos Combinacionales y Aritméticos en VHDL

El diseño e implementación de circuitos combinacionales y aritméticos simples en VHDL exige una comprensión rigurosa del manejo de tipos de datos, la abstracción conductual y el comportamiento interno de las herramientas de síntesis. Un uso adecuado del lenguaje permite construir modelos eficientes, parametrizables y reutilizables, optimizando el uso de recursos en dispositivos de lógica programable como las FPGAs.



## 📊 1. Tipos de Datos Enteros y Representación Numérica

### 🔹 Subtipos y Acotación de Rangos
VHDL contempla el tipo de dato `integer` y sus subtipos derivados `natural` y `positive`. Por defecto, un entero ocupa 32 bits; acotar el rango mediante la cláusula `range` es fundamental para indicarle al sintetizador que utilice únicamente los bits requeridos, ahorrando área en la FPGA.

| Tipo / Subtipo | Rango de Valores | Consideraciones / Uso Típico |
| :--- | :--- | :--- |
| 🔢 **integer** | $-2^{31}$ a $2^{31}-1$ | Requiere 32 bits de representación por defecto. |
| 📈 **natural** | $0$ a $2^{31}-1$ | Incluye el valor cero. |
| 🚀 **positive** | $1$ a $2^{31}-1$ | No incluye el cero. Recomendado para parámetros `generics` que no admiten valores inferiores a 1 (detecta errores de asignación en etapa temprana). |

> ⚠️ **Advertencia:** Dejar abierto el rango completo de un entero sin acotar puede provocar que un valor fuera de lo esperado cause fallas en otros bloques de lógica sin que sean detectadas tempranamente durante la síntesis.



### 📦 2. El Paquete `IEEE.NUMERIC_STD` y Conversión de Tipos
Para interconectar bloques mediante buses sin perder la interpretación numérica, el paquete `numeric_std` define los tipos `signed` y `unsigned` (codificados en complemento a 2). Este paquete reemplaza y desaconseja el uso de paquetes obsoletos como `std_logic_arith`, `std_logic_unsigned` y `std_logic_signed`.

*   **Tipos `unsigned` y `signed`:** Representan arreglos de caracteres codificados en complemento a 2 con significado numérico directo.
*   **Rutas de Conversión de Datos:**
    *   **De Vector a Entero:**
        *   `std_logic_vector` a `unsigned`/`signed`: Conversión directa, ej. `unsigned(V)` o `signed(V)`.
        *   `unsigned`/`signed` a `integer`: Uso de la función `to_integer(V)`.
    *   **De Entero a Vector:**
        *   `integer` a `unsigned`/`signed`: Uso de la función `to_unsigned(V, N)` o `to_signed(V, N)`.
        *   `unsigned`/`signed` a `std_logic_vector`: Conversión directa, ej. `std_logic_vector(V)`.



## ⚙️ 3. Estrategias de Descripción: Concurrentes y Secuenciales

### 🔄 Declaraciones Concurrentes
No dependen del orden de redacción. Evalúan el comportamiento de forma paralela.
*   **Asignación Condicional (`when-else`):** Evalúa condiciones explícitas de asignación paso a paso.
*   **Ecuaciones Booleanas Directas:** Uso de operadores (`and`, `or`, `nand`, `nor`, `xor`, `xnor`, `not`).
*   **Selección de Señal (`with-select-when`):** Asigna valores basándose en una señal de entrada seleccionada.

> 🔤 **Precedencia de Operadores Lógicos:** `()` $\rightarrow$ `not` $\rightarrow$ `and` $\rightarrow$ `or`. *(Nota: `xor` e `xnor` se interpretan mediante la suma de productos correspondiente).*



### ⏱️ Declaraciones Secuenciales y Cierre de Condiciones
Se ejecutan dentro de un bloque `process` en estricto orden secuencial.
*   **Estructuras `if-then-else` y `elsif`:** Evaluación condicional. Al encadenar muchos `elsif`, disminuye la legibilidad y aumenta el riesgo de dejar condiciones abiertas.
*   **Estructura `case-when`:** Análoga a un `switch-case`. Ofrece mayor legibilidad y seguridad en lógicas complejas frente a secuencias de `if-else`.
*   🛡️ **Prevención de Latches Involuntarios:** La descripción combinacional debe garantizar condiciones cerradas. El uso de `when others` (en estructuras `with-select` o `case-when`) o el condicional de cierre `else` (en bloques `if-then-else`) evita la generación inadvertida de elementos de memoria (latches).



## 🧩 4. Implementación de Circuitos Combinacionales Clave

### 🔀 Multiplexores
*   **Multiplexor 4 a 1:** Implementado concurrentemente mediante `with-select`.
*   **Multiplexor Genérico:** Parametrizado mediante `generic` (`MAX_IN`) calculando el bus de selección dinámicamente con `log2`.



### 🗂️ Codificadores, Decodificadores e Inferencia de Memoria RAM
Las descripciones conductuales de codificadores y decodificadores son interpretadas por los sintetizadores modernos como **memorias RAM de solo lectura (ROM)**, donde la entrada actúa como dirección (`address`) y la salida corresponde al dato almacenado.

| Dirección de Memoria (`ADDR` / Entrada) | Dato Almacenado (`Dato` / Salida) |
| :---: | :---: |
| `0001` | `00` |
| `0010` | `01` |
| `0100` | `10` |
| `1000` | `11` |



### 🔌 Buffers Tri-estado y Comparadores
*   **Buffer Tri-estado:** Describe alta impedancia (`'Z'`) cuando la señal `enable` está desactivada (`'0'`).
*   **Comparadores:** Uso de operadores de igualdad/desigualdad (`=`, `/=`) y magnitud (`<`, `<=`, `>`, `>=`) sobre vectores de idéntica longitud.



## ➕ 5. Circuitos Aritméticos Simples y Consideraciones

### 📐 Sumador Signado con Extensión de Signo
Al diseñar un sumador signado conductual para operandos de $N$ bits:
*   **Dimensión de Salida:** La salida debe poseer un bit adicional ($N+1$ bits) para contener por completo el resultado sin requerir acarreo externo.
*   **Extensión de Signo:** Los operandos deben expandirse en 1 bit replicando su bit más significativo (MSB) mediante el operador de concatenación (`&`).

```vhdl
architecture Behavioral of sumador_signado is
begin
    result <= (operador1(N-1) & operador1) + 
              (operador2(N-1) & operador2);
end Behavioral;
