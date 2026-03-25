# 📚 Guía de Estudio y Repaso de Autoevaluación
## *Módulo 1: Dimensiones, Magnitudes y Unidades*

Este documento combina las herramientas matemáticas fundamentales y la resolución de puntos clave evaluados en la autoevaluación.

---

## 🧮 1. Herramientas Matemáticas para la Física

### 📈 Ecuación de la Recta
Utilizada para describir **relaciones proporcionales**. Fundamental para encontrar relaciones lineales entre puntos $P_1(x_1, y_1)$ y $P_2(x_2, y_2)$.

* **Fórmula:** $y = mx + b$
* **Pendiente ($m$):** Representa la **tasa de cambio**. En física, puede ser la constante de un resorte ($k$) o la velocidad ($v$).
  $$m = \frac{y_2 - y_1}{x_2 - x_1}$$
* **Ejemplo de Autoevaluación:** Para $P_1(-3, -5)$ y $P_2(3, 5)$:
  $$m = \frac{5 - (-5)}{3 - (-3)} = \frac{10}{6} = \frac{5}{3} \implies y = \frac{5}{3}x$$



### 🏹 Ecuación de la Parábola
Crucial para el **movimiento uniformemente variado**.
* **Fórmula:** $y = ax^2 + bx + c$
* **Aplicación:** Posición en función del tiempo: $x = x_0 + v_0t + \frac{1}{2}at^2$

---

## ⚡ 2. Cálculo Diferencial (Derivadas)
Representan el **cambio instantáneo**. En física, permiten pasar de posición a velocidad o aceleración ($v = \frac{dx}{dt}$).

* **Regla básica:** $\frac{d}{dx}(x^n) = nx^{n-1}$
* **🛠️ Regla del Cociente (Reto de Autoevaluación):** Si $f(x) = \frac{u}{v} \implies f'(x) = \frac{u' \cdot v - u \cdot v'}{v^2}$
* **Ejercicio resuelto:** $\frac{6x^2}{2 \cos x}$
  $$f'(x) = \frac{(12x)(2 \cos x) - (6x^2)(-2 \sin x)}{(2 \cos x)^2} = \frac{24x \cos x + 12x^2 \sin x}{4 \cos^2 x} \text{ ✅}$$

### 🧰 Diferencial Total
Para funciones de varias variables como $F(x, y) = x^2 \cos(y)$:
$$dF = \frac{\partial F}{\partial x}dx + \frac{\partial F}{\partial y}dy = (2x \cos y)dx - (x^2 \sin y)dy \text{ 🧪}$$

---

## 📐 3. Trigonometría y Vectores
Esencial para la **descomposición de vectores**. Un error común es confundir el eje de referencia.

* 🔵 $sen(\theta) = \frac{opuesto}{hipotenusa}$ | 🔴 $cos(\theta) = \frac{adyacente}{hipotenusa}$



### 📍 Descomposición de Vectores
Un vector $\vec{V}$ se descompone en los ejes $X$ e $Y$:
* **Caso A (Ángulo $\alpha$ con eje Y):** $A_x = A \cdot \sin \alpha$ / $A_y = A \cdot \cos \alpha$
* **Caso B (Ángulo $\theta$ con eje X):** $A_x = A \cdot \cos \theta$ / $A_y = A \cdot \sin \theta$
* **Módulo:** $|\vec{V}| = \sqrt{V_x^2 + V_y^2}$

---

## 📏 4. Magnitudes y Operaciones Vectoriales

### ⚖️ Clasificación
* **Escalares:** Masa, Temperatura, Tiempo, Energía. 📝
* **Vectoriales:** Fuerza, Velocidad, Desplazamiento, Aceleración. 🏹

### 🔢 Producto Escalar ($\vec{A} \cdot \vec{B}$)
* **Definición:** $\vec{A} \cdot \vec{B} = |A||B| \cos \theta$
* **Propiedad crítica:** Es **CERO** si los vectores son **perpendiculares** ($90^\circ$). 🛑
* **Ángulo entre vectores:** $\theta = \arccos\left(\frac{\vec{A} \cdot \vec{B}}{|A||B|}\right)$

### 🌪️ Producto Vectorial ($\vec{A} \times \vec{B}$)
Genera un **nuevo vector** perpendicular al plano de los dos originales.



---
_📌 "Documentar errores y optimizar procesos: la base de una buena ingeniería. ¡A por el siguiente commit!"_
