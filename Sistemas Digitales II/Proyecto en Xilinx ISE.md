# 🛠️ RCómo crear tu primer proyecto en Xilinx ISE

Esta guía está diseñada para principiantes que desean verificar la instalación de su software y realizar su primer diseño lógico (como una compuerta o un contador). 🎓

---

## 1. 📂 Inicio y Configuración del Proyecto

* **Abrir el Software:** Ejecuta el **ISE Design Suite**. 💻
* **Nuevo Proyecto:** Ve al menú `File` -> `New Project`. ✨
* **Nombre y Ruta:** Asigna un nombre (evita espacios) y selecciona la ubicación en tu disco duro. 📁
* **Configuración del Dispositivo:** Esta es la parte más crítica. Debes especificar los datos de tu tarjeta FPGA: ⚙️
    * **Family:** (Ej. Spartan3, Artix7, etc.)
    * **Device:** El modelo específico del chip.
    * **Package:** El tipo de encapsulado.
    * **Speed:** La velocidad del chip.
    * **Synthesis Tool:** Generalmente se deja en **XST (VHDL/Verilog)**.
    * **Simulator:** Se recomienda usar **ISim (VHDL/Verilog)**.

---

## 2. ✍️ Creación del Archivo de Diseño (Source)

Una vez creado el contenedor, es momento de escribir el código:

1.  Haz clic derecho en el nombre del proyecto y selecciona `New Source`. 🖱️
2.  Selecciona **VHDL Module** o **Verilog Module**.
3.  **Definición de Puertos:** Usa el asistente para definir entradas (**Inputs**) y salidas (**Outputs**). Ejemplo: entradas `A` y `B`, salida `C`. 🔌
4.  **Escribir el Código:** El software generará una plantilla. Escribe la lógica entre `begin` y `end`. 📝
    * *Ejemplo en VHDL:* `C <= A and B;`

---

## 3. ✅ Síntesis y Verificación de Errores

Para asegurarte de que el código sea correcto:

* En el panel de procesos (izquierda), selecciona tu archivo de código.
* Haz doble clic en **Check Syntax** dentro de la jerarquía de `Synthesize - XST`. 🔍
* **¡Éxito!** Si aparece un check verde ✅, tu código no tiene errores gramaticales.

---

## 4. 🌊 Simulación (Probar si funciona)

Antes de programar la placa, verifica el comportamiento lógico: 🧪

* Cambia la vista de **"Implementation"** a **"Simulation"** en el panel superior izquierdo.
* Crea un nuevo archivo llamado **VHDL Test Bench** o **Verilog Test Fixture**.
* **Estímulos:** En este archivo, define los tiempos para las entradas para ver cómo reacciona la salida. ⏱️
* Ejecuta **Simulate Behavioral Model**. Se abrirá una ventana con **formas de onda (waveforms)** para visualizar las señales. 📈

---

## 5. 🔌 Generación del Archivo de Programación (Opcional)

Si cuentas con una placa física (FPGA):

1.  Regresa a la vista de **Implementation**.
2.  Añade un archivo de restricciones (**Implementation Constraints File - .ucf**) para asignar los pines del chip a los botones o LEDs reales. 📍
3.  Haz doble clic en **Generate Programming File** para obtener el archivo **.bit** que se carga en la FPGA. 📥

---

## 💡 Consejos Extra

* **⚠️ Cuidado con los nombres:** Xilinx ISE es antiguo; evita rutas largas, espacios o caracteres especiales (ñ, acentos) en las carpetas.
* **🧹 Limpieza:** Si el proyecto falla sin razón aparente, usa la opción `Project` -> `Cleanup Project Files`.
