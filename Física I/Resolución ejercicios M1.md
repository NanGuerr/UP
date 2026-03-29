# 📝 Resolución de Ejercicios: Física I - Módulo 1

Este documento contiene la resolución detallada de la **Actividad: Dimensiones, Magnitudes y Unidades**, integrando conceptos de álgebra, trigonometría y cálculo aplicados a la física.

---

## I. 📈 Ecuación de la Recta

Para estos ejercicios aplicamos la fórmula de la pendiente $m$ y la ecuación punto-pendiente:
* **Pendiente:** $m = \frac{y_2 - y_1}{x_2 - x_1}$
* **Ecuación:** $y - y_1 = m(x - x_1)$

### 1. Recta que pasa por $P_1=(2,5)$ y $P_2=(3,7)$
* **Paso 1 (Cálculo de $m$):** $m = \frac{7 - 5}{3 - 2} = \frac{2}{1} = 2$
* **Paso 2 (Ecuación):** Usando $P_1$: $y - 5 = 2(x - 2) \Rightarrow y = 2x - 4 + 5$
* **Resultado:** $y = 2x + 1$ ✅

### 2. Pendiente $m=2$ y pasa por $P_1=(4,2)$
* **Paso 1:** $y - 2 = 2(x - 4) \Rightarrow y = 2x - 8 + 2$
* **Resultado:** $y = 2x - 6$ ✅

### 3. Pendiente $m=-3$ y pasa por $P_1=(3,2)$
* **Paso 1:** $y - 2 = -3(x - 3) \Rightarrow y = -3x + 9 + 2$
* **Resultado:** $y = -3x + 11$ ✅

---

## II. 📐 Trigonometría del Triángulo Rectángulo

Basado en el **Teorema de Pitágoras** ($h^2 = a^2 + b^2$) y las funciones trigonométricas fundamentales.

### 9. Cálculo de Hipotenusa
Dados los catetos de $3 \text{ cm}$ y $5 \text{ cm}$:
$$h = \sqrt{3^2 + 5^2} = \sqrt{9 + 25} = \sqrt{34} \approx 5.83 \text{ cm}$$

### 10. Verificación de Triángulo Rectángulo
¿Es rectángulo un triángulo de lados $5, 12$ y $13 \text{ cm}$?
* **Verificación:** $5^2 + 12^2 = 25 + 144 = 169$
* **Comparación:** $13^2 = 169$
* **Resultado:** **Sí**, es un triángulo rectángulo (se cumple Pitágoras). La hipotenusa es $13 \text{ cm}$. ✨

### 12. Casos Específicos
* **a) Hallar $h$** si $a=3 \text{ cm}$ y $\theta=45^\circ$:
    $$\sin(45^\circ) = \frac{a}{h} \Rightarrow h = \frac{3}{\sin(45^\circ)} \approx 4.24 \text{ cm}$$
* **b) Hallar $b$** si $a=2 \text{ cm}$ y $h=5 \text{ cm}$:
    $$b = \sqrt{h^2 - a^2} = \sqrt{25 - 4} = \sqrt{21} \approx 4.58 \text{ cm}$$

---

## III. ⚖️ Sistemas de Ecuaciones Lineales

### 8. Resolución por Método de Reducción
Sistema original:
1. $2x + 4y = 6$
2. $3x - 2y = 2$

* **Paso 1:** Multiplicamos la (Ec. 2) por $2$: $6x - 4y = 4$
* **Paso 2 (Suma):** $(2x + 4y) + (6x - 4y) = 6 + 4 \Rightarrow 8x = 10 \Rightarrow \mathbf{x = 1.25}$
* **Paso 3 (Sustitución):** $2(1.25) + 4y = 6 \Rightarrow 2.5 + 4y = 6 \Rightarrow 4y = 3.5 \Rightarrow \mathbf{y = 0.875}$

---

## IV. 📉 Derivadas

Aplicación de reglas fundamentales de derivación (Regla de la potencia, suma y cociente):

* **a) Función:** $f(x) = x^4$
    * **Derivada:** $f'(x) = \mathbf{4x^3}$ ⚡
* **g) Función:** $f(x) = x^3 + \sin x$
    * **Derivada:** $f'(x) = \mathbf{3x^2 + \cos x}$ ⚡
* **h) Función:** $f(x) = \frac{3x}{\sin x}$
    * **Regla del cociente:** $\frac{u'v - uv'}{v^2}$
    * **Resultado:** $\frac{3 \sin x - 3x \cos x}{\sin^2 x}$ ⚡

---
*Material de apoyo para la cátedra de Física I.*
```
