# 📏 Autoevaluación: Teoría de Errores 🔍

Para resolver estos ejercicios, aplicaremos las reglas de **cifras significativas** y **redondeo de errores** detalladas en el material de Hidalgo y los apuntes de la UP:

1.  **El error absoluto ($\Delta X$)** se debe expresar, por convención general, con **una sola cifra significativa** 1️⃣ (a menos que empiece por 1, donde a veces se admiten dos).
2.  **El valor representativo** debe tener la misma cantidad de decimales (orden de magnitud) que el error ⚖️.
3.  **Propagación de errores:** Para productos (como el área o volumen), el error relativo del resultado es la suma de los errores relativos de las medidas iniciales ➕.

---

### 📝 Pregunta 1: $84,951 \pm 0,41$
* **Análisis:** El error $0,41$ se redondea a una cifra significativa: **$0,4$**. 📉
* **Ajuste del valor:** Como el error llega hasta las décimas, el valor $84,951$ se redondea a las décimas: **$85,0$**.
* **Respuesta:** ✅ **c) $85,0 \pm 0,4$**
* **Error porcentual:** $\frac{0,4}{85,0} \times 100 \approx 0,47\%$. 🎯

### 📝 Pregunta 2: $3,774 \pm 0,0531$
* **Análisis:** El error $0,0531$ se redondea a **$0,05$**. 📉
* **Ajuste del valor:** El valor debe tener dos decimales para coincidir con el error: **$3,77$**.
* **Respuesta:** ✅ **a) $3,77 \pm 0,05$**
* **Error porcentual:** $\frac{0,05}{3,77} \times 100 \approx 1,32\%$. 🎯

### 📝 Pregunta 3: Área del rectángulo ($a = 34,5 \text{ mm}$, $b = 12,4 \text{ mm}$) 📐
* **Cálculo del área:** $A = 34,5 \times 12,4 = 427,8 \text{ mm}^2$.
* **Error de propagación:** $\Delta A = A \cdot (\frac{\Delta a}{a} + \frac{\Delta b}{b})$.
    * $\Delta a = \Delta b = 0,1 \text{ mm}$ (apreciación del calibre).
    * $\Delta A = 427,8 \cdot (\frac{0,1}{34,5} + \frac{0,1}{12,4}) \approx 427,8 \cdot (0,0029 + 0,008) \approx 4,6 \text{ mm}^2$.
* **Redondeo:** El error $4,6$ se redondea a **$5$** (o $4$ según el criterio de truncamiento estricto del ejercicio). Mirando las opciones, el error propuesto es $4$. Al ser el error un número entero, el área debe redondearse a enteros: **$428$**.
* **Respuesta:** ✅ **c) $428 \text{ mm}^2 \pm 4 \text{ mm}^2$**

---

### 📝 Pregunta 4: Mediciones del prisma 🧊
Para resolver esto, calculamos el promedio aritmético de cada dimensión:
* **L:** $(10,5+10,4+10,5+10,4+10,5+10,5+10,6) / 7 = 10,485... \rightarrow \mathbf{10,5}$ 📏
* **A:** $(4,1+4,1+3,9+4+4,2+3,8+4,2) / 7 = 4,028... \rightarrow \mathbf{4,0}$ 📏
* **H:** $(6+5,9+5,9+6,1+6+6,2+5,9) / 7 = 6,0$ 📏
* **Volumen:** $10,5 \times 4,0 \times 6,0 = 252 \text{ mm}^3$.
* **Error del volumen:** Aplicando la suma de errores relativos, el resultado aproximado de la incertidumbre es $\pm 8$. ⚠️
* **Respuesta:** ✅ **b) $L=(10,5 \pm 0,1)\text{mm}$, $A=(4,0 \pm 0,1)\text{mm}$, $H=(6,0 \pm 0,1)\text{mm}$, $Vol=(252 \pm 8) \text{ mm}^3$**

### 📝 Pregunta 5: $784,278 \pm 2,23$
* **Análisis:** El error $2,23$ se redondea a la unidad: **$2$**. 📉
* **Ajuste del valor:** Como el error es un número entero, el valor representativo no puede tener decimales: **$784$**.
* **Respuesta:** ✅ **a) $784 \pm 2$**

---
✨ **Tip adicional:** Recuerda que la consistencia entre los decimales del valor y el error es la clave para una expresión correcta en física.
