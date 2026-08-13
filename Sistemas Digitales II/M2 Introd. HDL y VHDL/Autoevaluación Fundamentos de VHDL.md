# 📝 Autoevaluación: Fundamentos de VHDL

### 1. El lenguaje VHDL (seleccionar todas las correctas)
*   **Opción A (Es concurrente):** ✅ Correcta. Los HDLs tienen una naturaleza paralela de ejecución y son concurrentes[cite: 3].
*   **Opción B (Es autodocumentado):** 📖 Correcta. Por el tipo de sintaxis y la cantidad de palabras reservadas, se le considera autodocumentado[cite: 3].
*   **Opción C (Es no jerárquico):** ❌ Incorrecta. El VHDL entiende y permite establecer conexiones entre distintos bloques en forma jerárquica[cite: 3].
*   **Opción D (Permite generalizar diseños):** ⚙️ Correcta. Mediante el uso de `generic` se pueden parametrizar los bloques, lo que permite generalizar los diseños[cite: 3].
*   **Opción E (Es solo para programar):** 💻 Incorrecta. No es un lenguaje de programación de software tradicional, sino un lenguaje de descripción de hardware para describir, especificar y simular circuitos[cite: 3].

---

### 2. ¿Qué es el proceso de síntesis?
*   **Opción B (Es la interpretación de un código que da como resultado un circuito):** ⚡ Correcta. Del código sintetizado resulta un circuito real de hardware mediante una herramienta EDA[cite: 3].

---

### 3. La descripción con un HDL implicará siempre la generación de un circuito de hardware.
*   **Falso:** 🚫 Correcta. Los HDLs también permiten simplemente especificar un hardware o programar una simulación, por lo que no todo código generará un circuito físico[cite: 3].

---

### 4. Un `generic` permite parametrizar los bloques o entidades.
*   **Verdadero:** 🏗️ Correcta. El uso de `generic` es una característica que permite parametrizar los bloques o entidades (por ejemplo, el ancho de un bus)[cite: 3].

---

### 5. La entidad nos permite definir la funcionalidad de un bloque en VHDL
*   **Falso:** 📍 Correcta. La entidad define la interfaz externa del bloque (puertos de entrada y salida), mientras que la funcionalidad se describe en la arquitectura[cite: 3].

---

### 6. La arquitectura nos permite definir la funcionalidad de un bloque en VHDL
*   **Verdadero:** 🧠 Correcta. En la arquitectura del bloque se describe propiamente lo que hace ese bloque (su funcionalidad o circuitería interna)[cite: 3].

---

### 7. La entidad de un bloque sintetizable posee:
*   **Opción D (Puertos obligatoriamente y generics opcionales):** 🔌 Correcta. En entidades donde se describan bloques sintetizables, la presencia de puertos es obligatoria, mientras que los `generic` son opcionales[cite: 3].

---

### 8. ¿Qué ocurre cuando se le asigna un valor o expresión a una señal?
*   **Opción B (La asignación se resuelve después de un tiempo):** ⏱️ Correcta. La asignación mediante operadores como `<=` lleva implícito un retardo de tiempo que modela el comportamiento real del hardware[cite: 3].
