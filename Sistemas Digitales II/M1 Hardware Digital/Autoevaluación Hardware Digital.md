# 📝 Autoevaluación: Hardware Digital 💻

---

### **Pregunta 1** ❓
La clasificación de circuitos digitales de función fija se basa en la cantidad de circuitos integrados contenidos en un mismo chip.
* **Respuesta:** ❌ **Falso** 
  * *Nota:* Se clasifican según la cantidad de puertas lógicas o transistores en el chip, no por cuántos circuitos integrados contiene.

---

### **Pregunta 2** ❓
Una FPGA es un dispositivo de lógica programable que permite ser programado ya que posee una arquitectura predefinida orientada a ejecución secuencial de instrucciones.
* **Respuesta:** ❌ **Falso** 
  * *Nota:* Las FPGAs están orientadas a la ejecución concurrente y paralela de hardware mediante bloques lógicos configurables, no a la ejecución secuencial de instrucciones.

---

### **Pregunta 3** ❓
Indicar de las siguientes opciones cuáles son los parámetros fundamentales a observar antes de interconectar dos o más dispositivos digitales.
* **Respuesta:** 
  * ✅ **A. Tiempos de propagación**
  * ✅ **C. Niveles lógicos**
  * ✅ **E. Corrientes**

---

### **Pregunta 4** ❓
¿Qué debe pasar con los niveles lógicos para que dos (o más) dispositivos digitales puedan conectarse?
* **Respuesta:** ✅ **C. Los niveles de la salida de uno deben estar totalmente contenidos en la entrada del otro.**

---

### **Pregunta 5** ❓
Se utiliza un 74LS244 como interfaz de corriente entre dos dispositivos digitales TTL compatibles. Indicar por qué fue necesario su uso.
* **Respuesta:** ✅ **A. La $I_{OH}$ (max) y/o la $I_{OL}$ (max) no eran suficientes para excitar la $I_{IH}$ (min) y/o la $I_{IL}$ (min), respectivamente.**

---

### **Pregunta 6** ❓
Un circuito digital posee los siguientes retardos de propagación: $t_{pHL} = 5\,\text{ns}$, $t_{pLH} = 5\,\text{ns}$. Indicar en qué caso su utilización no compromete la respuesta en frecuencia del sistema.
* **Respuesta:** 
  * ✅ **B. Sistemas de 20MHz de frecuencia principal.**
  * ✅ **D. Sistemas de 1kHz de frecuencia principal.**

---

### **Pregunta 7** ❓
Seleccionar del siguiente listado todas aquellas características que tiene un sistema digital.
* **Respuesta:**

  * ✅ **A. Flexibilidad** 
  * ✅ **B. Precisión** 
  * ✅ **C. Reutilización** 
  * ✅ **E. Almacenamiento** 
  * ✅ **F. Procesamiento de tiempo real** 

---

### **Pregunta 8** ❓ 
**Se utiliza un 74LS244 para adaptar los niveles lógicos de un dispositivo que es LVTTL a niveles TTL. Las corrientes requeridas son inferiores a los 5mA. Indicar cuál de las siguientes opciones es la justificación válida.** 
* **Respuesta Correcta:** ✅ **B. No es necesaria interfaz, LVTTL tiene niveles adecuados para manejar entradas TTL.** 

* *Nota:* Para determinar si se requiere un circuito de interfaz (como un búfer o conversor de niveles), debemos comparar los umbrales de voltaje. Al cumplirse ambas condiciones y encontrándose las corrientes dentro de un rango seguro (inferiores a $5\,\text{mA}$), los niveles lógicos son compatibles de forma directa, por lo que no se requiere ninguna interfaz de adaptación de voltajes.

---

### **Pregunta 6** ❓ 
**Se coloca entre dos circuitos digitales una interfaz, el sistema general debe poder operar como máximo a 100 MHz. Indicar cuáles (todas) de las siguientes interfaces utilizaría.** 
* **Opciones Correctas Seleccionadas:**
  * ✅ **C. $t_{pHL} = 3\,\text{ns}$, $t_{pLH} = 1\,\text{ns}$.** 
  * ✅ **E. $t_{pHL} = 5\,\text{ns}$, $t_{pLH} = 5\,\text{ns}$.** 

* *Nota:* Para que un sistema digital pueda operar a una frecuencia máxima de 100 MHz, el período del reloj ($T$) es:$$T = \frac{1}{100\text{ MHz}} = 10\text{ ns}$$El retardo de propagación máximo ($t_{pd} = \max(t_{pHL}, t_{pLH})$) de la interfaz no debe superar este período de $10\text{ ns}$ para garantizar que el circuito pueda responder adecuadamente a esa frecuencia.

---

## 🔌 Compatibilidad de Niveles Lógicos (LVTTL a TTL)

### 📈 Estado Alto (HIGH)
* **$V_{OH}$** (mínimo voltaje de salida en alto) de LVTTL es de **$2.4\,\text{V}$**.
* **$V_{IH}$** (mínimo voltaje de entrada reconocido como alto) de TTL es de **$2.0\,\text{V}$**.
* 💡 **Evaluación:** Como $2.4\,\text{V} \ge 2.0\,\text{V}$, el nivel alto del LVTTL **es perfectamente reconocido** por la entrada TTL.

### 📉 Estado Bajo (LOW)
* **$V_{OL}$** (máximo voltaje de salida en bajo) de LVTTL es de **$0.4\,\text{V}$**.
* **$V_{IL}$** (máximo voltaje de entrada reconocido como bajo) de TTL es de **$0.8\,\text{V}$**.
* 💡 **Evaluación:** Como $0.4\,\text{V} \le 0.8\,\text{V}$, el nivel bajo del LVTTL **también es perfectamente compatible** con la entrada TTL.

---

## ⏱️ Análisis de Frecuencia Máxima ($100\,\text{MHz}$)

Para un sistema que opera a una frecuencia máxima de $100\,\text{MHz}$ (período de $10\,\text{ns}$), evaluamos el retardo máximo ($t_{pd} = \max(t_{pHL}, t_{pLH})$) de cada interfaz:

* ❌ **A.** $\max(10\,\text{ns}, 12\,\text{ns}) = 12\,\text{ns} > 10\,\text{ns}$ 
  * *Demasiado lento, solo soporta hasta $\approx 83.3\,\text{MHz}$.*
* ❌ **B.** $\max(20\,\text{ns}, 10\,\text{ns}) = 20\,\text{ns} > 10\,\text{ns}$ 
  * *Demasiado lento, solo soporta hasta $50\,\text{MHz}$.*
* ✅ **C.** $\max(3\,\text{ns}, 1\,\text{ns}) = 3\,\text{ns} \le 10\,\text{ns}$ 
  * *Válido, soporta frecuencias mayores o iguales a $100\,\text{MHz}$.*
* ❌ **D.** $\max(18\,\text{ns}, 4\,\text{ns}) = 18\,\text{ns} > 10\,\text{ns}$ 
  * *Demasiado lento, solo soporta hasta $\approx 55.5\,\text{MHz}$.*
* ✅ **E.** $\max(5\,\text{ns}, 5\,\text{ns}) = 5\,\text{ns} \le 10\,\text{ns}$ 
  * *Válido, soporta frecuencias mayores o iguales a $100\,\text{MHz}$.*
