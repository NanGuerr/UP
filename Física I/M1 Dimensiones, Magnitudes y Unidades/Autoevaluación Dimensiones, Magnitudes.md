# 📝 Autoevaluación

Este documento resume los puntos críticos evaluados en la autoevaluación para asegurar el dominio de los fundamentos de ingeniería.

---

## 🏹 1. Descomposición de Vectores
Es fundamental identificar desde qué eje se mide el ángulo para aplicar la función trigonométrica correcta.

* **Caso Evaluado:** Vector de módulo $10$ con ángulo de $60^\circ$ respecto al **eje Y**.
* **Cálculo:**
  * $A_x = 10 \cdot \sin(60^\circ) = 8.66 \text{ cm}$ ✅
  * $A_y = 10 \cdot \cos(60^\circ) = 5 \text{ cm}$ ✅
* **⚠️ Error Común:** Usar siempre $\cos$ para $X$ y $\sin$ para $Y$. Esto solo es válido si el ángulo es respecto al eje X.

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

## 📐 2. Trigonometría del Triángulo Rectángulo
Para hallar lados desconocidos usando el ángulo $\theta$:
* **Relación:** $\sin(\theta) = \frac{\text{Cateto Opuesto}}{\text{Hipotenusa}}$
* **Ejercicio:** Si $h = 5\text{cm}$ y $\theta = 30^\circ$, el lado opuesto ($b$) es:
  $$b = 5 \cdot \sin(30^\circ) = 2.5 \text{ cm}$$



---

## 📈 3. Ecuación de la Recta
Para unir puntos como $P_1(-3, -5)$ y $P_2(3, 5)$:
1. **Calcular Pendiente ($m$):** $m = \frac{5 - (-5)}{3 - (-3)} = \frac{10}{6} = \frac{5}{3}$
2. **Ecuación:** Al pasar por el origen (en este caso), resulta en $y = \frac{5}{3}x$.
   * **Cálculo de la Pendiente ($m$):**
  $$m = \frac{y_2 - y_1}{x_2 - x_1}$$
* **Ejemplo:** Para $P_1(-3, -5)$ y $P_2(3, 5)$:
  $$m = \frac{5 - (-5)}{3 - (-3)} = \frac{10}{6} = \frac{5}{3}$$
* **Ecuación final:** $y = \frac{5}{3}x$

---

## ⚡ 4. Cálculo de Derivadas
Se evaluó la capacidad de aplicar reglas de derivación complejas.

### 🛠️ Regla del Cociente
Para derivar $f(x) = \frac{6x^2}{2 \cos(x)}$:
Si tenemos $f(x) = \frac{u}{v}$, su derivada es:
$$f'(x) = \frac{u' \cdot v - u \cdot v'}{v^2}$$

* **Ejercicio resuelto:** $\frac{6x^2}{2 \cos x}$
  1. Identificamos $u = 6x^2$ (derivada $12x$) y $v = 2 \cos x$ (derivada $-2 \sin x$).
  2. Aplicamos la regla:
  $$f'(x) = \frac{(12x)(2 \cos x) - (6x^2)(-2 \sin x)}{(2 \cos x)^2}$$
  $$f'(x) = \frac{24x \cos x + 12x^2 \sin x}{4 \cos^2 x}$$ ✅
* **Fórmula:** $\frac{u'v - uv'}{v^2}$
* **Resultado:** $$\frac{24x \cos(x) + 12x^2 \sin(x)}{4 \cos^2(x)}$$

---

## 🧪 5. Cálculo Multivariable
* **Diferencial Total:** Para la función $F = x^2 \cos(y)$.
* **Resultado:** Se derivan parcialmente ambos términos:
  $$dF = (2x \cos y) dx - (x^2 \sin y) dy$$

---

## 🔢 6. Producto Escalar y Ángulos
Utilizado para hallar la separación angular entre dos vectores $\vec{A}$ y $\vec{B}$.
* **Fórmula:** $\vec{A} \cdot \vec{B} = |A||B| \cos \theta$
* **Resultado del Ejercicio:** El ángulo entre los vectores propuestos es **$115.5^\circ$**.
* **Dato Clave:** Si el producto escalar es **negativo**, el ángulo está entre $90^\circ$ y $180^\circ$. 🛑
* **Ángulo entre vectores:** Se despeja como $\theta = \arccos\left(\frac{\vec{A} \cdot \vec{B}}{|A||B|}\right)$. En el ejercicio de la autoevaluación, el resultado fue $115.5^\circ$.
  
---

## ⚖️ 7. Magnitudes Físicas
Es vital diferenciar entre:
* **Escalares (Solo magnitud):** Masa, temperatura, tiempo, energía. 🌡️
* **Vectoriales (Magnitud + Dirección):** Fuerza, velocidad, aceleración. 🏎️

---

## 🧰 8. Diferencial Total
Para funciones de varias variables como $F(x, y) = x^2 \cos(y)$:
$$dF = \frac{\partial F}{\partial x}dx + \frac{\partial F}{\partial y}dy$$
* **Resultado:** $dF = (2x \cos y)dx - (x^2 \sin y)dy$ 🧪

---
_📌 "La precisión en las unidades es la diferencia entre un gran proyecto y un error crítico. ¡Sigue adelante!"_
