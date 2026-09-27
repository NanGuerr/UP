### 1. Actualización de Códigos VHDL y Banco de Pruebas

Se añadieron el puerto `nrst : in std_logic` y la evaluación asíncrona dentro de la lista de sensibilidad (`process(clk, nrst)`) en todos los bloques secuenciales:

* **Archivos publicados en Studio:**
  * **`TP_CuentaPPS-v2.vhd`**: Módulo principal jerárquico con propagación de `nrst` a los bloques `U0`, `U1`, `U3`, `U4`, `U5` y `U6`.
  * **`Acondicionador-v2.vhd`**: Reinicia la cadena de sincronización y detección de flanco a `'0'`.
  * **`ContBCD-v2.vhd`**: Fuerza la cuenta inmediatamente a `"0000"`.
  * **`DetectorOverflow-v2.vhd`**: Borra el registro anterior e inactiva `cuenta_final` (`'0'`).
  * **`SalidaPatron-v2.vhd`**: Restablece el estado del patrón a `'0'`.
  * **`Comparador-v2.vhd`**: Borra los registros internos de la consigna memorizada y la bandera de inversión.
  * **`Testigo_Out-v2.vhd`**: Reinicia el contador de 25.000.000 de ciclos a 0.
  * **`TP_CuentaPPS_tb-v2.vhd`**: Banco de pruebas que simula la aplicación del pulso de reset inicial y un impulso de reset a mitad de operación.

*(Nota: El módulo combinacional **`BCDa7Seg`** no requiere reloj ni reset).*

---

### 2. Diagrama de Bloques Actualizado

Se generó y publicó en Studio la imagen **`diagrama_bloques_TP_CuentaPPS-v2.png`**, en la cual se incorpora la **línea roja discontinua de distribucion global de `nrst`** conectada en paralelo hacia las entradas de reset de todos los submódulos secuenciales (`U0`, `U1`, `U3`, `U4`, `U5` y `U6`).

---

### 3. Texto de Fe de Erratas sobre el Reset

```text
FE DE ERRATAS: Incorporación de la Línea de Reset Global (nrst)

Documento afectado: Informe Técnico y Código RTL del Proyecto TP_CuentaPPS.
Fecha de corrección: 27 de Septiembre de 2026.

DESCRIPCIÓN DE LA OMISIÓN PREVIA:
En las versiones preliminares del diseño RTL (PF_SS2 / TP_CuentaPPS), los procesos 
secuenciales dependían únicamente del estado de inicialización por defecto de las 
señales (Signal Declaration Initial Values) al momento de la configuración del bitstream. 
Esta práctica no garantiza un estado inicial seguro en silicio real tras la energización 
(Power-Up) o ante eventuales fallas de ruido eléctrico.

CORRECCIÓN APLICADA:
1. Se incorporó el puerto de entrada global `nrst` (std_logic) en la entidad `TP_CuentaPPS`.
2. Se estableció una convención de Reset Asíncrono Activo en Bajo ('0' lógico = Reset), 
   conforme a las recomendaciones de diseño para FPGAs Xilinx Spartan/Artix.
3. Todos los procesos secuenciales (U0, U1, U3, U4, U5, U6) incluyeron a `nrst` en su 
   lista de sensibilidad, forzando la puesta a cero inmediata de Flip-Flops, registros 
   de consigna y contadores del sistema ante la presencia de un nivel bajo en dicho pin.
```

---

### 4. Diferencia entre Reset Asíncrono y Reset Síncrono

| Característica | **Reset Asíncrono** (Implementado en `nrst`) | **Reset Síncrono** |
| :--- | :--- | :--- |
| **Dependencia del Reloj** | **Inmediata.** Se ejecuta al instante en que el pin cambia de nivel, independientemente de si hay o no flanco de reloj. | **Síncrona.** La puesta a cero ocurre **únicamente en el siguiente flanco ascendente** del reloj principal. |
| **Lista de Sensibilidad VHDL** | Incluye el reloj y el reset: `process(clk, nrst)` | Incluye únicamente el reloj: `process(clk)` |
| **Respuesta ante falta de reloj** | Si el reloj de la FPGA se detiene o no ha estabilizado, **el reset asíncrono funciona de todos modos**. | Si el reloj no conmuta, el reset síncrono **no tiene ningún efecto**. |
| **Sintaxis VHDL habitual** | ```vhdl if nrst = '0' then <registros> <= '0'; elsif rising_edge(clk) then ... end if; ``` | ```vhdl if rising_edge(clk) then if rst = '1' then <registros> <= '0'; else ... end if; end if; ``` |
| **Ventajas** | Garantiza la inicialización aunque la red de distribución de reloj esté inactiva; no agrega lógica combinacional a la entrada \\(D\\) del Flip-Flop. | Inmune a picos de ruido en la línea de reset (*glitches*); facilita el análisis de tiempos (*Static Timing Analysis*). |

---

💡 ¿Te gustaría ajustar el informe técnico en PDF (`informe_TP_CuentaPPS_Corregido.pdf`) para incluir formalmente el diagrama v2 y la fe de erratas del reset?
