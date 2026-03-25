# 📝 Repaso de Autoevaluación: *Dimensiones, Magnitudes y Unidades*

Este resumen contiene la resolución de los puntos clave evaluados en la autoevaluación, ideal para reforzar los conceptos de ingeniería.

---

## 📐 1. Trigonometría y Descomposición de Vectores
Un error común es confundir el eje de referencia del ángulo.

### 📍 Caso A: Ángulo con respecto al eje Y
Si el ángulo $\alpha = 60^\circ$ se mide desde el **eje vertical (Y)**:
* **Componente X:** $A_x = A \cdot \sin(60^\circ) = 10 \cdot 0.866 = 8.66 \text{ cm}$ ✅
* **Componente Y:** $A_y = A \cdot \cos(60^\circ) = 10 \cdot 0.5 = 5 \text{ cm}$ ✅
> *Nota: Las funciones se "invierten" respecto a la fórmula estándar.*

### 📍 Caso B: Ángulo con respecto al eje X
Para un vector con ángulo $\theta$ desde el semieje positivo:
* $A_x = |A| \cos \theta$
* $A_y = |A| \sin \theta$

---

## 📈 2. Ecuación de la Recta
Fundamental para encontrar relaciones lineales entre puntos $P_1(x_1, y_1)$ y $P_2(x_2, y_2)$.

* **Cálculo de la Pendiente ($m$):**
  $$m = \frac{y_2 - y_1}{x_2 - x_1}$$
* **Ejemplo:** Para $P_1(-3, -5)$ y $P_2(3, 5)$:
  $$m = \frac{5 - (-5)}{3 - (-3)} = \frac{10}{6} = \frac{5}{3}$$
* **Ecuación final:** $y = \frac{5}{3}x$

---

## ⚡ 3. Cálculo Diferencial (Derivadas)
En física, las derivadas nos permiten pasar de posición a velocidad o aceleración.

### 🛠️ Regla del Cociente (El reto de la autoevaluación)
Si tenemos $f(x) = \frac{u}{v}$, su derivada es:
$$f'(x) = \frac{u' \cdot v - u \cdot v'}{v^2}$$

* **Ejercicio resuelto:** $\frac{6x^2}{2 \cos x}$
  1. Identificamos $u = 6x^2$ (derivada $12x$) y $v = 2 \cos x$ (derivada $-2 \sin x$).
  2. Aplicamos la regla:
  $$f'(x) = \frac{(12x)(2 \cos x) - (6x^2)(-2 \sin x)}{(2 \cos x)^2}$$
  $$f'(x) = \frac{24x \cos x + 12x^2 \sin x}{4 \cos^2 x}$$ ✅

---

## 🛤️ 4. Magnitudes y Producto Escalar

### ⚖️ Clasificación de Magnitudes
* **Escalares:** Masa, Temperatura, Tiempo, Energía. 📝
* **Vectoriales:** Fuerza, Velocidad, Desplazamiento, Aceleración. 🏹

### 🔢 Producto Escalar ($\vec{A} \cdot \vec{B}$)
* **Definición:** $\vec{A} \cdot \vec{B} = |A||B| \cos \theta$
* **Propiedad crítica:** El producto escalar es **CERO** si los vectores son **perpendiculares** ($\theta = 90^\circ$). 🛑
* **Ángulo entre vectores:** Se despeja como $\theta = \arccos\left(\frac{\vec{A} \cdot \vec{B}}{|A||B|}\right)$. En el ejercicio de la autoevaluación, el resultado fue $115.5^\circ$.

---

## 🧰 5. Diferencial Total
Para funciones de varias variables como $F(x, y) = x^2 \cos(y)$:
$$dF = \frac{\partial F}{\partial x}dx + \frac{\partial F}{\partial y}dy$$
* **Resultado:** $dF = (2x \cos y)dx - (x^2 \sin y)dy$ 🧪

---
_📌 "Documentar errores es el primer paso para optimizar el conocimiento. ¡A por el siguiente commit!"_
