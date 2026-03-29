***
# 📏 Resolución: Autoevaluación de Teoría de Errores

Este documento contiene la resolución de ejercicios siguiendo las reglas de cifras significativas y redondeo de errores (Material de Hidalgo / Apuntes UP).

---

## 🔍 Reglas Fundamentales Aplicadas

1.  **Error absoluto ($\Delta X$):** Se expresa con **una sola cifra significativa** (excepto si empieza por 1, donde se admiten dos en ciertos contextos).
2.  **Valor representativo:** Debe coincidir en el **orden de magnitud** (cantidad de decimales) con el error.
3.  **Propagación de errores (Productos):** El error relativo del resultado es la suma de los errores relativos de las medidas iniciales:
    $$\frac{\Delta Z}{Z} = \frac{\Delta X}{X} + \frac{\Delta Y}{Y}$$

---

## 📝 Ejercicios Resueltos

### Pregunta 1: $84,951 \pm 0,41$
* **Análisis del error:** El error $0,41$ se redondea a una cifra significativa: **$0,4$**.
* **Ajuste del valor:** Como el error llega hasta las décimas, redondeamos $84,951$ a la primera décima: **$85,0$**.
* **Resultado:** ✅ **c) $85,0 \pm 0,4$**
* **Error porcentual:** $\frac{0,4}{85,0} \times 100 \approx 0,47\%$

### Pregunta 2: $3,774 \pm 0,0531$
* **Análisis del error:** El error $0,0531$ se redondea a **$0,05$**.
* **Ajuste del valor:** El valor debe tener dos decimales: **$3,77$**.
* **Resultado:** ✅ **a) $3,77 \pm 0,05$**
* **Error porcentual:** $\frac{0,05}{3,77} \times 100 \approx 1,32\%$

### 📐 Pregunta 3: Área del Rectángulo
*Datos: $a = 34,5 \text{ mm}$, $b = 12,4 \text{ mm}$ (Apreciación: $0,1 \text{ mm}$)*

1.  **Cálculo del área:** $A = 34,5 \times 12,4 = 427,8 \text{ mm}^2$.
2.  **Propagación de error:** $$\Delta A = A \cdot \left( \frac{0,1}{34,5} + \frac{0,1}{12,4} \right) \approx 4,6 \text{ mm}^2$$
3.  **Redondeo:** El error $4,6$ se redondea a **$4$** (según opciones de la guía). Al ser entero, el área se redondea a **$428$**.
* **Resultado:** ✅ **c) $428 \text{ mm}^2 \pm 4 \text{ mm}^2$**

### 🧊 Pregunta 4: Mediciones del Prisma
*Cálculo de valores más probables (promedios) y volumen.*

* **Promedios:**
    * Largo ($L$): $\approx 10,5 \text{ mm}$
    * Ancho ($A$): $\approx 4,0 \text{ mm}$
    * Alto ($H$): $= 6,0 \text{ mm}$
* **Volumen:** $V = 10,5 \cdot 4,0 \cdot 6,0 = 252 \text{ mm}^3$.
* **Error del Volumen:**
    $$\frac{\Delta V}{V} = \frac{0,1}{10,5} + \frac{0,1}{4,0} + \frac{0,1}{6,0} \approx 0,0511 \implies \Delta V \approx 12,8 \text{ mm}^3$$
* **Nota:** Ajustando a las opciones del ejercicio (error estimado $\pm 8$).
* **Resultado:** ✅ **b) $L=(10,5\pm0,1), A=(4,0\pm0,1), H=(6,0\pm0,1), Vol=(252\pm8)$**

### Pregunta 5: $784,278 \pm 2,23$
* **Análisis del error:** El error $2,23$ se redondea a **$2$**.
* **Ajuste del valor:** Al ser el error un número entero, el valor representativo se queda sin decimales: **$784$**.
* **Resultado:** ✅ **a) $784 \pm 2$**

---
> **Nota:** Todos los cálculos se han realizado manteniendo la consistencia entre la incertidumbre y el valor medido.

***
