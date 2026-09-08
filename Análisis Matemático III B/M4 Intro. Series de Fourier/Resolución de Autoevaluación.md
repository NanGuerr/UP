# 📚 Autoevaluación: Series de Fourier

Este documento detalla los enunciados y las soluciones correctas de la autoevaluación, analizando minuciosamente las propiedades de paridad, convergencia puntual y cálculo de coeficientes de Fourier.



### 🔢 Pregunta 1

**Enunciado:** La serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x$ es:

* **Respuesta correcta:** $a_0 = 0$ y $a_n = 0$
* **Justificación y Desarrollo:** ⚖️
La función $f(x) = x$ es una función **impar**, ya que satisface $f(-x) = -x = -f(x)$.
Al calcular los coeficientes de Fourier en un intervalo simétrico $(-l, l)$:
1. **Para $a_0$:**

$$a_0 = \frac{1}{l} \int_{-l}^{l} x \, dx$$



Como la integral de cualquier función impar en un intervalo simétrico es $0$, tenemos $a_0 = 0$.
2. **Para $a_n$:**

$$a_n = \frac{1}{l} \int_{-l}^{l} x \cos\left(\frac{n\pi x}{l}\right) dx$$



El producto de una función impar ($x$) por una función par ($\cos$) da como resultado una función impar. Por lo tanto, la integral en $(-l, l)$ se anula: $a_n = 0$.


Solo sobreviven los coeficientes $b_n$, correspondiente a la serie puramente de senos.



### 🔢 Pregunta 2

**Enunciado:** La serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x^2$ es:

* **Respuesta correcta:** $b_n = 0$
* **Justificación y Desarrollo:** 🪞
La función $f(x) = x^2$ es una función **par**, dado que $f(-x) = (-x)^2 = x^2 = f(x)$.
Al evaluar el coeficiente de los senos $b_n$:

$$b_n = \frac{1}{l} \int_{-l}^{l} x^2 \{sen}\left(\frac{n\pi x}{l}\right) dx$$



El producto de una función par ($x^2$) por una función impar ($\{sen}$) genera un integrando **impar**. Toda integral de una función impar integrada sobre un intervalo simétrico $(-l, l)$ es exactamente igual a cero. Por consiguiente, $b_n = 0$ para todo $n \ge 1$.



### 🔢 Pregunta 3

**Enunciado:** La serie de Fourier en el intervalo $(-5, 5)$ de la función: $f(x) = I_{(-5,0)}(x) + x I_{(0,5)}(x)$ es:

* **Respuesta correcta:** El término constante empieza con $\frac{7}{4}$ y hay convergencia puntual en: $(-5,0) \cup (0,5)$.
* **Justificación y Desarrollo:**
1. **Análisis de Convergencia Puntual (Teorema de Dirichlet):**
La función indicadora viene dada por tramos:

$$f(x) = \begin{cases} 1 & \text{si } -5 < x < 0 \\ x & \text{si } 0 < x < 5 \end{cases}$$



Evaluamos los límites laterales alrededor del punto $x = 0$:

$$\lim_{x \to 0^-} f(x) = 1 \quad \text{y} \quad \lim_{x \to 0^+} f(x) = 0$$



Al existir un salto finito en $x = 0$, el Teorema de Dirichlet de convergencia puntual establece que la serie de Fourier converge en ese punto al promedio de sus límites laterales:

$$S_f(0) = \frac{f(0^-) + f(0^+)}{2} = \frac{1 + 0}{2} = \frac{1}{2} \neq f(0)$$



Por tanto, la serie de Fourier converge a la función $f(x)$ únicamente en el conjunto de puntos donde $f$ es continua, es decir, en $(-5,0) \cup (0,5)$. 🚫
2. **Cálculo del Término Constante ($\frac{a_0}{2}$):**
El período es $2l = 10 \implies l = 5$.

$$a_0 = \frac{1}{5} \int_{-5}^{5} f(x) \, dx = \frac{1}{5} \left( \int_{-5}^{0} 1 \, dx + \int_{0}^{5} x \, dx \right)$$


$$a_0 = \frac{1}{5} \left( [x]_{-5}^{0} + \left[ \frac{x^2}{2} \right]_{0}^{5} \right) = \frac{1}{5} \left( 5 + \frac{25}{2} \right) = \frac{1}{5} \left( \frac{35}{2} \right) = \frac{7}{2}$$



Dado que la serie de Fourier utiliza el término independiente $\frac{a_0}{2}$:

$$\frac{a_0}{2} = \frac{7/2}{2} = \frac{7}{4}$$



🧮





### 🔢 Pregunta 4

**Enunciado:** La serie de Fourier en el intervalo $(-1, 1)$ de la función $f(x) = e^{3x}$ es:

* **Respuesta correcta:** La opción que inicia con $\frac{1}{6}(e^3 - e^{-3})$ y afirma que hay convergencia puntual en $(-1,1)$.
* **Justificación y Desarrollo:** 📈
1. **Convergencia:** La función exponencial $f(x) = e^{3x}$ es infinitamente derivable ($C^\infty$) y continua en todo el intervalo abierto $(-1, 1)$. Por el Teorema de Dirichlet, su serie de Fourier converge puntualmente a $f(x)$ para todo $x \in (-1, 1)$.
2. **Cálculo de $\frac{a_0}{2}$:**
Para $l = 1$:

$$a_0 = \frac{1}{1} \int_{-1}^{1} e^{3x} \, dx = \left[ \frac{e^{3x}}{3} \right]_{-1}^{1} = \frac{e^3 - e^{-3}}{3}$$



Dividiendo entre $2$ para obtener el término inicial de la serie ($\frac{a_0}{2}$):

$$\frac{a_0}{2} = \frac{e^3 - e^{-3}}{6} = \frac{1}{6}(e^3 - e^{-3})$$







### 🔢 Pregunta 5

**Enunciado:** La serie de Fourier de $f(x) = -I_{(-1,0)}(x) + I_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1, 1)$.

* **Respuesta correcta:** Falso
* **Justificación y Desarrollo:** ❌
Expresando la función por tramos en el intervalo $(-1, 1)$:

$$f(x) = \begin{cases} -1 & \text{si } -1 < x < 0 \\ 1 & \text{si } 0 < x < 1 \end{cases}$$



Analisamos el punto $x = 0$:
* Límite por la izquierda: $\lim_{x \to 0^-} f(x) = -1$
* Límite por la derecha: $\lim_{x \to 0^+} f(x) = 1$


Debido al salto discontinuo en $x = 0$, la serie de Fourier converge en dicho punto a:

$$\frac{-1 + 1}{2} = 0$$



Dado que la serie converge a $0$ en $x = 0$ y no a la definición concreta de la función en dicho punto, la afirmación de que converge a $f$ en **todo** el intervalo $(-1, 1)$ es falsa.



### 🔢 Pregunta 6

**Enunciado:** La siguiente serie de Fourier converge puntualmente a $f$ en toda la recta real: $f(x) = (x+1)I_{(-1,0)}(x) + (1-x)I_{(0,1)}(x)$.

* **Respuesta correcta:** Verdadero
* **Justificación y Desarrollo:** ✅
Analizamos la continuidad de la función $f(x)$ y su extensión periódica de período $T = 2$ ($l = 1$):
1. **En el punto interno $x = 0$:**

$$\lim_{x \to 0^-} (x + 1) = 1 \quad \text{y} \quad \lim_{x \to 0^+} (1 - x) = 1$$



La función es continua en $x = 0$ con $f(0) = 1$.
2. **En los extremos del intervalo ($x = -1$ y $x = 1$):**
Para que la extensión periódica sea continua en los bordes de la repetición, se debe cumplir $f(-1^+) = f(1^-)$:

$$f(-1^+) = \lim_{x \to -1^+} (x + 1) = 0$$


$$f(1^-) = \lim_{x \to 1^-} (1 - x) = 0$$



Al coincidir los valores en los extremos, la extensión periódica continua no presenta discontinuidades de salto en ningún punto de $\mathbb{R}$. Al ser continua y suave a tramos, su serie de Fourier converge a $f(x)$ en toda la recta real.





### 🔢 Pregunta 7

**Enunciado:** La serie de Fourier de $f(x) = I_{(-1,0)}(x) + (1-x) \cdot I_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1, 1)$.

* **Respuesta correcta:** Verdadero
* **Justificación y Desarrollo:** 🔗
Definimos la función a tramos en $(-1, 1)$:

$$f(x) = \begin{cases} 1 & \text{si } -1 < x < 0 \\ 1 - x & \text{si } 0 \le x < 1 \end{cases}$$



Verificamos el punto interno $x = 0$:

$$\lim_{x \to 0^-} f(x) = 1$$


$$\lim_{x \to 0^+} f(x) = 1 - 0 = 1$$



Dado que $\lim_{x \to 0^-} f(x) = \lim_{x \to 0^+} f(x) = f(0) = 1$, la función es completamente continua dentro del intervalo abierto $(-1, 1)$. Por ende, su serie de Fourier converge puntualmente a $f(x)$ en todos los puntos de $(-1, 1)$.



### 🔢 Pregunta 8

**Enunciado:** La serie de Fourier de $f(x) = I_{(-1,0)}(x) + x \cdot I_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1, 1)$.

* **Respuesta correcta:** Falso
* **Justificación y Desarrollo:** ⚠️
Escribiendo la función por tramos:

$$f(x) = \begin{cases} 1 & \text{si } -1 < x < 0 \\ x & \text{si } 0 < x < 1 \end{cases}$$



Evaluando el comportamiento en $x = 0$:
* Límite por la izquierda: $\lim_{x \to 0^-} f(x) = 1$
* Límite por la derecha: $\lim_{x \to 0^+} f(x) = 0$


Existe una discontinuidad de salto en $x = 0$. En ese punto, la serie convergerá al punto medio $\frac{1 + 0}{2} = 0.5$. Al no coincidir con el valor puntual en la discontinuidad, la afirmación de convergencia en todo $(-1,1)$ es falsa.



### 🔢 Pregunta 9

**Enunciado:** El coeficiente $a_n$ de $f(x) = x^3$ es distinto de $0$ en cualquier intervalo $(-1, 1)$.

* **Respuesta correcta:** Falso
* **Justificación y Desarrollo:** ❌
Evaluamos la paridad de $f(x) = x^3$:

$$f(-x) = (-x)^3 = -x^3 = -f(x)$$



Es una función **impar**. En cualquier intervalo simétrico $(-l, l)$ (en este caso $l = 1$), la integral para el coeficiente de cosenos $a_n$:

$$a_n = \int_{-1}^{1} \underbrace{x^3}_{\text{impar}} \cdot \underbrace{\cos(n\pi x)}_{\text{par}} dx = 0$$



El producto resulta en una función impar integrada en un intervalo simétrico, por lo que $a_n = 0$ para todo $n \ge 0$.



### 🔢 Pregunta 10

**Enunciado:** El coeficiente $b_n$ de $f(x) = \cos(x)$ es distinto de $0$ en cualquier intervalo $(-1, 1)$.

* **Respuesta correcta:** Falso
* **Justificación y Desarrollo:** 🌊
Evaluamos la paridad de $f(x) = \cos(x)$:

$$f(-x) = \cos(-x) = \cos(x) = f(x)$$



Es una función **par**. Para cualquier función par en un intervalo simétrico $(-1, 1)$, el coeficiente de los senos $b_n$ se calcula como:

$$b_n = \int_{-1}^{1} \underbrace{\cos(x)}_{\text{par}} \cdot \underbrace{\{sen}(n\pi x)}_{\text{impar}} dx = 0$$



El integrando es impar, haciendo que $b_n = 0$ de forma idéntica para todo $n \ge 1$.



### 🔢 Pregunta 11: Coeficiente Independiente $a_0$

**Enunciado:** El coeficiente independiente $a_0$ de la función $f(x) = x^4$ es distinto de $0$ en cualquier intervalo $(-l, l)$.

* **Respuesta:** ✅ **Verdadero**
* **Justificación y Desarrollo:**
La función $f(x) = x^4$ es **par** ($(-x)^4 = x^4$) y **estrictamente positiva** para todo $x \neq 0$.
Calculamos $a_0$:

$$a_0 = \frac{1}{l} \int_{-l}^{l} x^4 \, dx = \frac{2}{l} \int_{0}^{l} x^4 \, dx = \frac{2}{l} \left[ \frac{x^5}{5} \right]_{0}^{l} = \frac{2}{l} \cdot \frac{l^5}{5} = \frac{2l^4}{5}$$



Para cualquier longitud de semi-intervalo $l > 0$, el resultado $\frac{2l^4}{5}$ es un valor estrictamente mayor a cero ($a_0 > 0$), por lo que nunca se anula. 📈



### 📐 Pregunta 12: Linealidad de la Serie de Fourier

**Enunciado:** La serie de Fourier es un operador lineal.

* **Respuesta:** ✅ **Verdadero**
* **Justificación y Desarrollo:**

#### ✨ Definición de Operador Lineal:

Un operador $T$ se considera **lineal** si cumple con la propiedad de superposición para cualesquiera funciones $f, g$ y escalares $\alpha, \beta \in \mathbb{R}$:


$$T(\alpha f + \beta g) = \alpha T(f) + \beta T(g)$$

#### Demostración aplicada a los coeficientes de Fourier: 🛠️

Dado que los coeficientes $a_n$ y $b_n$ están definidos mediante integrales definidas:


$$a_n(\alpha f + \beta g) = \frac{1}{l} \int_{-l}^{l} (\alpha f(x) + \beta g(x)) \cos\left(\frac{n\pi x}{l}\right) dx$$


Por la propiedad de linealidad de la integral:


$$a_n(\alpha f + \beta g) = \alpha \left( \frac{1}{l} \int_{-l}^{l} f(x) \cos\left(\frac{n\pi x}{l}\right) dx \right) + \beta \left( \frac{1}{l} \int_{-l}^{l} g(x) \cos\left(\frac{n\pi x}{l}\right) dx \right)$$

$$a_n(\alpha f + \beta g) = \alpha \, a_n(f) + \beta \, a_n(g)$$

Lo mismo aplica para los coeficientes $b_n$. En consecuencia, la serie de Fourier resultante para $(\alpha f + \beta g)$ es exactamente la combinación lineal de las series de Fourier individuales de $f$ y $g$.



## 📊 Resumen de Propiedades: Paridad y Coeficientes

| Tipo de Función | Condición Matemática | Coeficientes Nulos | Coeficientes que Sobreviven |
| --- | --- | --- | --- |
| **Impar** (ej. $x, x^3$) | $f(-x) = -f(x)$ | $a_0 = 0$ y $a_n = 0$ | $b_n$ (Senos) |
| **Par** (ej. $x^2, x^4, \cos(x)$) | $f(-x) = f(x)$ | $b_n = 0$ | $a_0$ y $a_n$ (Cosenos) |



## 💡 Tips para el Parcial

1. **Identifica la Paridad Primero:** Antes de ponerte a integrar, verifica si la función es par o impar en el intervalo simétrico $(-l, l)$. Esto te ahorrará la mitad de los cálculos. 🕒
2. **Puntos de Discontinuidad:** Si existe un salto en la gráfica en $x_0$, la serie de Fourier convergerá al valor promedio de los límites laterales:
$$\frac{f(x_0^-) + f(x_0^+)}{2}$$



🌉
3. **Continuidad en los Extremos:** Para garantizar convergencia en toda la recta real ($\mathbb{R}$), no basta con que $f$ sea continua en el interior del intervalo: sus límites en los bordes deben coincidir ($f(-l^+) = f(l^-)$) para garantizar que la extensión periódica sea continua. 🔄
