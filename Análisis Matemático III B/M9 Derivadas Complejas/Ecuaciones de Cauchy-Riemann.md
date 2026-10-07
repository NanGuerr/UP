# 📐 Derivadas Complejas y Ecuaciones de Cauchy-Riemann 🚀



## 🧭 Introducción y Motivación

En el estudio de las funciones de variable compleja, el concepto de **límite doble** es fundamental. A diferencia del cálculo en una variable real, en el plano complejo $\mathbb{C}$, al analizar el entorno de un punto $z_0 = x_0 + i y_0$, existen **infinitas trayectorias o direcciones** posibles para aproximarse a dicho punto.



## ⚡ 1. Definición de Derivada Compleja

La derivada de una función compleja $f(z)$ en un punto $z_0$ se define formalmente mediante el siguiente límite:

$$f'(z_0) = \lim_{z \to z_0} \frac{f(z) - f(z_0)}{z - z_0}$$

Al expresar la función en términos de sus partes real e imaginaria, $f(z) = u(x,y) + i v(x,y)$, y el número complejo como $z = x + iy$, la definición de derivada involucra directamente un **límite doble** en el plano cartesiano real $\mathbb{R}^2$.



## 🔄 2. Teorema Fundamental de Límites Dobles

Un límite doble en un punto $(x_0, y_0)$ existe y es igual a $L$ si y solo si al acercarse por **cualquier curva** que pasa por dicho punto, el límite de una variable correspondiente existe y es exactamente igual a $L$.

Basándose en este principio, para que una función sea **derivable compleja** en $z_0 = x_0 + i y_0$, el valor del límite incremental debe ser único, sin importar la trayectoria geométrica utilizada para la aproximación.



## 📉 3. Deducción de las Ecuaciones de Cauchy-Riemann por Trayectorias

Para comprobar la unicidad del límite, evaluamos la aproximación fijando trayectorias particulares paralelas a los ejes coordenados (rectas horizontales y verticales):

### A. Acercamiento por la recta horizontal ($y = y_0$)

Al fijar la variable $y$ y tomar el límite cuando $x \to x_0$, obtenemos la expresión de la derivada en función de las derivadas parciales respecto a $x$:

$$f'(z_0) = u_x(x_0, y_0) + i v_x(x_0, y_0)$$

### B. Acercamiento por la recta vertical ($x = x_0$)

Al fijar la variable $x$ y tomar el límite cuando $y \to y_0$ (desplazamiento vertical en el plano complejo), obtenemos:

$$f'(z_0) = v_y(x_0, y_0) - i u_y(x_0, y_0)$$

### Igualación de Resultados

Al igualar las partes reales e imaginarias de ambas expresiones obtenidas por los dos caminos, se deducen las **Ecuaciones de Cauchy-Riemann**:

$$\begin{cases} u_x = v_y \\ u_y = -v_x \end{cases}$$



## 🔍 4. Condición Necesaria de Analiticidad

**Teorema:** Si una función $f(z)$ es analítica (es decir, derivable compleja) en una región $W$, entonces **satisface obligatoriamente las ecuaciones de Cauchy-Riemann** en todos los puntos de dicha región.



## ⚠️ 5. ¿Es Suficiente el Cumplimiento de Cauchy-Riemann?

De la demostración anterior se concluye un aspecto crítico: **el mero cumplimiento de las ecuaciones de Cauchy-Riemann no es condición suficiente** para garantizar que una función sea derivable compleja.

> 💡 **Nota conceptual:** ¡Acercarse únicamente por dos curvas (horizontales y verticales) no alcanza para demostrar que un límite complejo bidimensional exista en todo su rigor analítico!



## ✅ 6. Condición Suficiente para la Derivabilidad Compleja

Para asegurar con total rigor matemático que una función $f(z)$ es analítica en una región, se requiere que se cumplan dos condiciones simultáneamente:

1. Que la función satisfaga las **ecuaciones de Cauchy-Riemann**.
2. Que las derivadas parciales de primer orden de las componentes ($u_x, u_y, v_x, v_y$) sean **continuas** en dicha región (es decir, que pertenezcan a la clase $C^1$ en el análisis de varias variables reales).
