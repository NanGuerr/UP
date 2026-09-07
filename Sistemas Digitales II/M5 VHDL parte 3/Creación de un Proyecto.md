# 🚀 Tutorial: Creación de un Proyecto en Xilinx ISE Project Navigator

**Tema:** Creación de un proyecto desde cero e importación de fuentes VHDL en Xilinx ISE  

### 🎙️ Transcripción Literal

> *"Crear un proyecto desde cero en el ISE.*  
> *Una vez abierta la aplicación, debemos tocar el botón rápido **New Project...***  
> *Se despliega un menú, y en ese menú podremos generar, en un directorio predeterminado, nuestro proyecto.*  
> *Vamos a ponerle de nombre `Ej1`, y automáticamente la herramienta ya genera una carpeta donde se alojarán todos los archivos del proyecto.*  
> *Debemos verificar que dentro de las opciones de **Top-level source type** figure **HDL**.*  
> *En la siguiente pantalla tendremos que configurar qué FPGA utilizaremos. Para lo cual vamos a seleccionar en **Family** la familia **Spartan6** y dejaremos el dispositivo `XC6SLX4`, que es la FPGA más chiquita de esta familia. El resto de las opciones son correctas.*  
> *Nos faltaría chequear que la herramienta de síntesis (**Synthesis Tool**) figure **XST**, que el simulador figure como **ISim**, el lenguaje preferido (**Preferred Language**) lo cambiaremos a **VHDL**, y que **VHDL Source Analysis Standard** figure **VHDL-93**.*  
> *Finalmente le damos **Next**, aquí aparecerá un resumen de todo lo que hemos chequeado en la pantalla anterior y le damos **Finish**.*  
> *En este punto ya tenemos un proyecto creado. Solo resta agregar algún archivo fuente de los que se brindaron como ejemplos del módulo, para lo cual, con botón derecho, **Add Source...**, lo buscamos en la carpeta local de nuestra computadora y agregaremos `comp_and8`, que es la compuerta AND de 2 bytes... de 8 bits.*  
> *Agregar, **OK**, y ya tenemos un proyecto creado. Al hacer doble clic sobre el nombre del archivo, se desplegará el editor de texto.*  



## 🛠️ Procedimiento Detallado Paso a Paso

### 1️⃣ Creación del Proyecto 📂
1. Abra **Xilinx ISE Project Navigator**.
2. En la pestaña **Start**, haga clic en el botón **New Project...**
3. En el asistente **New Project Wizard**:
   * **Name:** `Ej1`
   * **Location:** Seleccione o verifique la ruta de trabajo.
   * **Top-level source type:** Seleccione **HDL**.
   * Haga clic en **Next**.



### 2️⃣ Configuración de la FPGA y Herramientas ⚙️
Configure las propiedades del dispositivo objetivo (*Target Device*) y del flujo de diseño:

| Propiedad | Valor Seleccionado |
| :--- | :--- |
| **Family** 🧬 | **Spartan6** |
| **Device** 🎛️ | **XC6SLX4** |
| **Package** 📦 | TQG144 |
| **Speed** ⚡ | -3 |
| **Synthesis Tool** 🛠️ | **XST (VHDL/Verilog)** |
| **Simulator** 🧪 | **ISim (VHDL/Verilog)** |
| **Preferred Language** 💻 | **VHDL** |
| **VHDL Source Analysis Standard** 📜 | **VHDL-93** |

*Haga clic en **Next**, revise el resumen de configuración y presione **Finish**.*



### 3️⃣ Inclusión de Archivos Fuente VHDL 📄
1. En el panel **Hierarchy**, haga clic derecho sobre el dispositivo FPGA (`xc6slx4-3tqg144`).
2. Seleccione la opción **Add Source...**
3. Navegue en su directorio local y seleccione el archivo `comp_and8.vhd`.
4. En la ventana emergente **Adding Source Files...**, confirme haciendo clic en **OK**.



## 📐 Expresiones Matemáticas y Código VHDL

### 📑 Definición Matemática de la Operación

La compuerta realiza una operación **AND lógica vectorizada (bit a bit)** sobre dos vectores de $8$ bits.

Si definimos los vectores de entrada como:

$$A = (a_7, a_6, a_5, a_4, a_3, a_2, a_1, a_0)$$

$$B = (b_7, b_6, b_5, b_4, b_3, b_2, b_1, b_0)$$

La salida $C$ se define para cada bit $i \in \{0, 1, \dots, 7\}$ como:

$$c_i = a_i \land b_i$$

Es decir, en forma vectorial completa:

$$C = A \cdot B = (a_7 \land b_7,\, a_6 \land b_6,\, \dots,\, a_0 \land b_0)$$



### 💻 Código VHDL (`comp_and8.vhd`)

A continuación se presenta el código mostrado en el editor de texto de Xilinx ISE:

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_and8 is
    Port ( 
        a : in  STD_LOGIC_VECTOR (7 downto 0);
        b : in  STD_LOGIC_VECTOR (7 downto 0);
        c : out STD_LOGIC_VECTOR (7 downto 0)
    );
end comp_and8;

architecture arch of comp_and8 is
begin

    c <= a and b;

end arch;
```



## 🎯 Resumen de Archivos Generados
* **Proyecto:** `Ej1.xise`
* **Entidad principal / Fuente:** `comp_and8.vhd`
* **Tecnología destino:** Xilinx Spartan-6 (`XC6SLX4-TQG144`)
