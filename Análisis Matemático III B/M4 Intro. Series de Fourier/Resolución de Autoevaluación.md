# 📊 Resolución Paso a Paso: Introducción a Series de Fourier

Este documento presenta la resolución detallada, paso a paso y justificada teóricamente de cada uno de los ejercicios de la **Autoevaluación de Introducción a Series de Fourier**, empleando los conceptos, fórmulas y propiedades de simetría e integración expuestos en el apunte teórico oficial.



## 📌 Pregunta 1: Serie de Fourier de $f(x) = x$ en $(-l, l)$

### Enunciado

Determinar los coeficientes de la serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x$.

### Análisis Teórico y Resolución

1. **Paridad de la función:** La función $f(x) = x$ es una función **impar** en el intervalo simétrico $[-l, l]$, ya que satisface $f(-x) = -x = -f(x)$.
2. **Propiedades de simetría:**
* Como $f(x)$ es impar y las funciones $\cos\left(\frac{n\pi}{l}x\right)$ son pares, el producto de una función impar por una par es impar. La integral de una función impar en un intervalo simétrico $[-l, l]$ es cero. Por lo tanto, los coeficientes de los cosenos son nulos:

$$a_0 = 0, \quad a_n = 0$$


* Por otro lado, el producto de $f(x)$ (impar) por $\sin\left(\frac{n\pi}{l}x\right)$ (impar) resulta en una función par, cuya integral es en general no nula (se calculan los $b_n$).



### 💡 Respuesta Correcta

* $a_0 = 0, \quad a_n = 0$



## 📌 Pregunta 2: Serie de Fourier de $f(x) = x^2$ en $(-l, l)$

### Enunciado

Determinar los coeficientes de la serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x^2$.

### Análisis Teórico y Resolución

1. **Paridad de la función:** La función $f(x) = x^2$ es una función **par** en el intervalo simétrico $[-l, l]$, ya que $f(-x) = (-x)^2 = x^2 = f(x)$.
2. **Propiedades de simetría:**
* Al ser $f(x)$ par y $\sin\left(\frac{n\pi}{l}x\right)$ impar, su producto es impar. La integral de una función impar en $[-l, l]$ es nula. Por lo tanto, todos los coeficientes de los senos se anulan:

$$b_n = 0$$


* El coeficiente independiente $a_0$ y los coeficientes de los cosenos $a_n$ son en general no nulos (se calculan mediante integración directa o por partes).



### 💡 Respuesta Correcta

* $b_n = 0$



## 📌 Pregunta 3: Serie de Fourier de una función indicadora en $(-5, 5)$

### Enunciado

Desarrollar la serie de Fourier de la función 
$$f(x) =\mathbb{I}_{(-5,0)}(x)+2\cdot\mathbb{I}_{(0,5)}(x)$$
en el intervalo $(-5,5)$ (donde $l = 5$)

### Análisis Teórico y Resolución

1. **Definición de la función por tramos:**

$$f(x) = \begin{cases} 1 & \text{si } x \in (-5, 0) \\ 2 & \text{si } x \in (0, 5) \end{cases}$$


2. **Cálculo del coeficiente independiente ($a_0$):**

$$a_0 = \frac{1}{5} \int_{-5}^{0} (1) dx + \frac{1}{5} \int_{0}^{5} (2) dx = \frac{1}{5}(0 - (-5)) + \frac{1}{5}(10 - 0) = \frac{5}{5} + \frac{10}{5} = 1 + 2 = 3$$


3. **Cálculo de coeficientes $a_n$ y $b_n$:** Mediante integración en los intervalos $[-5,0]$ y $[0,5]$ utilizando las fórmulas generales del apunte con $l = 5$.
4. **Convergencia:** La función presenta una discontinuidad de salto finito en $x = 0$. Por el teorema de Dirichlet, la serie de Fourier converge puntualmente a $f(x)$ en los puntos de continuidad y al promedio de los límites laterales en el punto de discontinuidad. El intervalo de convergencia puntual es $(-5, 5)$ completo considerando los extremos periódicos y saltos.

### 💡 Respuesta Correcta

* La opción que contiene los coeficientes trigonométricos correctos con $l=5$ y convergencia puntual en $(-5,5)$.

### 🔍 Desglose de los Componentes

La serie de Fourier analizada presenta los siguientes coeficientes calculados:

#### 1. Término Independiente ($\frac{a_0}{2}$)
$$\frac{7}{4}$$
Esto indica que el coeficiente independiente de la serie es $a_0 = \frac{7}{2} = 3.5$.

#### 2. Coeficiente de los Cosenos ($a_n$)
$$a_n = \frac{5}{n^2\pi^2} \cdot \left((-1)^n - 1\right)$$
Este término proviene de integrar una función por tramos en el intervalo $(-5, 5)$, donde el factor $\left((-1)^n - 1\right)$ hace que $a_n$ sea cero cuando $n$ es par y tome valores no nulos cuando $n$ es impar.

#### 3. Coeficiente de los Senos ($b_n$)
$$b_n = \left(\frac{1}{5} - \frac{5}{n\pi}\right) \cdot (-1)^n - \frac{1}{5}$$
Este término surge de la componente sinusoidal al integrar la función en los subintervalos correspondientes (típicamente asociada a funciones indicadoras o discontinuas definidas en $(-5, 0)$ y $(0, 5)$).

## 📌 Pregunta 4: Serie de Fourier de $f(x) = e^{3x}$ en $(-1, 1)$

### Enunciado

Desarrollar la serie de Fourier de la función $f(x) = e^{3x}$ en el intervalo $(-1, 1)$ (donde $l = 1$).

### Análisis Teórico y Resolución

1. **Paridad:** La función exponencial no es par ni impar, por lo que tanto $a_0$, $a_n$ como $b_n$ son no nulos.
2. **Cálculo de coeficientes con $l = 1$:**
* Utilizando las fórmulas de integración por partes para funciones exponenciales multiplicadas por trigonométricas:
* $a_0 = \int_{-1}^{1} e^{3x} dx = \frac{e^3 - e^{-3}}{3}$
* Los coeficientes $a_n$ y $b_n$ involucran en el denominador términos de la forma $9 + n^2\pi^2$ (provenientes de $a^2 + b^2$ con $a=3$ y $b=n\pi$).


3. **Convergencia:** Al ser $f(x) = e^{3x}$ una función continua en todo el intervalo cerrado $[-1, 1]$, la serie converge puntual y uniformemente a $f(x)$ en todo $(-1, 1)$.

### 💡 Respuesta Correcta

* La opción que muestra los términos con denominadores $9 + n^2\pi^2$ y convergencia puntual en $(-1, 1)$.



```python
# Let's verify details for questions 5 to 12 based on the provided PDF and prompt text.
# We need to present a detailed step-by-step resolution for exercises 5, 6, 7, 8, 9, 10, 11, and 12.
# Let's inspect the questions from the PDF text:
# Q5: La serie de Fourier de f(x) = -\mathbb{I}_{(-1,0)}(x) + \mathbb{I}_{(0,1)}(x) converge puntualmente a f en todo el intervalo (-1, 1). -> Falso (since there is a jump discontinuity at x=0, it converges to the average 0 at x=0, not to f(0) which is undefined or doesn't match).
# Q6: La siguiente serie de Fourier converge puntualmente a f en toda la recta real: f(x) = (x+1)\mathbb{I}_{(-1,0)}(x) + (1-x)\mathbb{I}_{(0,1)}(x). -> Let's check: at x=0, left limit = 0+1 = 1, right limit = 1-0 = 1. The function is continuous at x=0! And extended periodically, it's continuous everywhere. So it converges on the entire real line. -> Verdadero.
# Q7: La serie de Fourier de f(x) = \mathbb{I}_{(-1,0)}(x) + (1-x)\mathbb{I}_{(0,1)}(x) converge puntualmente a f en todo el intervalo (-1,1). -> Let's check continuity: at x=0, left limit = 1, right limit = 1-0 = 1. Continuous at x=0! In (-1,1) it is continuous, so it converges pointwise to f on (-1,1). -> Verdadero.
# Q8: La serie de Fourier de f(x) = \mathbb{I}_{(-1,0)}(x) + x\mathbb{I}_{(0,1)}(x) converge puntualmente a f en todo el intervalo (-1,1). -> At x=0, left limit = 1, right limit = 0. Discontinuity at x=0, so it doesn't converge to f(0) at x=0. -> Falso.
# Q9: El coeficiente a_n de f(x) = x^3 es distinto de 0 en cualquier intervalo (-l, l). -> f(x)=x^3 es impar, a_n = 0 siempre. -> Falso.
# Q10: El coeficiente b_n de f(x) = \cos(x) es distinto de 0 en cualquier intervalo (-l, l). -> f(x)=\cos(x) es par, b_n = 0 siempre. -> Falso.
# Q11: El coeficiente independiente a_0 de f(x) = x^4 es distinto de 0 en cualquier intervalo (-l, l). -> a_0 = (1/l)\int_{-l}^l x^4 dx > 0. -> Verdadero.
# Q12: La serie de Fourier es un operador lineal. -> Verdadero.


```

A continuación se presenta el desarrollo detallado paso a paso para los ejercicios del **5 al 12** de la autoevaluación, aplicando los teoremas fundamentales de convergencia puntual (Teorema de Dirichlet), paridad de funciones e integración.



### Ejercicio 5

* **Enunciado:** La serie de Fourier de $f(x) = -\mathbb{I}_{(-1,0)}(x) + \mathbb{I}_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1, 1)$.
* **Resolución Paso a Paso:**
1. Analizamos la función en el intervalo $(-1, 1)$ con $l = 1$: vale $-1$ en $(-1, 0)$ y $+1$ en $(0, 1)$.
2. En el punto $x = 0$ existe una discontinuidad de salto finito, ya que el límite lateral izquierdo es $-1$ y el derecho es $+1$.
3. Por el Teorema de Dirichlet, en $x = 0$ la serie de Fourier converge al promedio de los límites laterales: $\frac{-1 + 1}{2} = 0$.
4. Como en $x = 0$ la función converge a $0$ (y no coincide con los valores abiertos de los tramos o no está definida de manera continua allí), **no** converge puntualmente a $f(x)$ en *todo* el intervalo abierto $(-1, 1)$ sin excepciones.


* 💡 **Respuesta Correcta:** **Falso**




### Ejercicio 6

* **Enunciado:** La siguiente serie de Fourier converge puntualmente a $f$ en toda la recta real: $f(x) = (x+1)\mathbb{I}_{(-1,0)}(x) + (1-x)\mathbb{I}_{(0,1)}(x)$.
* **Resolución Paso a Paso:**
1. Evaluamos la continuidad de la función en los puntos de empalme y en sus extensiones periódicas.
2. Para $x = 0$, el límite lateral izquierdo es $(0+1) = 1$ y el límite lateral derecho es $(1-0) = 1$. Como ambos coinciden, la función es **continua** en $x = 0$.
3. Al extender la función de forma periódica con período $2l = 2$, los extremos del intervalo también conectan de manera continua ($f(-1) = 0$ y $f(1) = 0$).
4. Al tratarse de una función continua y suave a tramos en toda la recta real, su serie de Fourier converge puntualmente a $f(x)$ para todo $x \in \mathbb{R}$.


* 💡 **Respuesta Correcta:** **Verdadero**




### Ejercicio 7

* **Enunciado:** La serie de Fourier de $f(x) = \mathbb{I}_{(-1,0)}(x) + (1-x)\cdot \mathbb{I}_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1,1)$.
* **Resolución Paso a Paso:**
1. Evaluamos los límites laterales en el punto de división $x = 0$:
* Límite por la izquierda ($x \to 0^-$): la función vale $1$, por lo que el límite es $1$.
* Límite por la derecha ($x \to 0^+$): la función vale $1 - x$, por lo que el límite es $1 - 0 = 1$.


2. Dado que los límites laterales coinciden en $x = 0$, la función es **continua** en dicho punto y en todo el intervalo $(-1, 1)$.
3. Al ser continua en todo el intervalo abierto $(-1, 1)$, el Teorema de Dirichlet garantiza la convergencia puntual a $f(x)$ en cada uno de los puntos del intervalo.


* 💡 **Respuesta Correcta:** **Verdadero**




### Ejercicio 8

* **Enunciado:** La serie de Fourier de $f(x) = \mathbb{I}_{(-1,0)}(x) + x\cdot \mathbb{I}_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1,1)$.
* **Resolución Paso a Paso:**
1. Analizamos el comportamiento en el punto $x = 0$:
* Límite lateral izquierdo ($x \to 0^-$): la función vale $1$.
* Límite lateral derecho ($x \to 0^+$): la función vale $x$, por lo que tiende a $0$.


2. Como los límites laterales son distintos ($1 \neq 0$), hay una discontinuidad de salto finito en $x = 0$.
3. En consecuencia, en $x = 0$ la serie de Fourier converge al promedio $\frac{1 + 0}{2} = 0.5$, el cual no coincide con los valores de la función en los tramos adyacentes. Por lo tanto, la serie **no** converge puntualmente a $f(x)$ en todo el intervalo $(-1, 1)$.


* 💡 **Respuesta Correcta:** **Falso**




## 📌 Preguntas 9, 11 y 11: Análisis de Coeficientes por Paridad

### 📖 Marco Teórico de Simetría

En un intervalo simétrico $[-l, l]$:

* Si $f(x)$ es una función **impar**, su producto con el coseno $\cos\left(\frac{n\pi}{l}x\right)$ (que es par) resulta en una función impar, cuya integral en $[-l, l]$ es estrictamente **cero** ($a_0 = 0$ y $a_n = 0$).
* Si $f(x)$ es una función **par**, su producto con el seno $\sin\left(\frac{n\pi}{l}x\right)$ (que es impar) resulta en una función impar, cuya integral es **cero** ($b_n = 0$).



### Ejercicio 9

* **Enunciado:** El coeficiente $a_n$ de $f(x) = x^3$ es distinto de $0$ en cualquier intervalo $(-l, l)$.
* **Resolución Paso a Paso:**
1. Verificamos la paridad de $f(x) = x^3$: al evaluar $f(-x) = (-x)^3 = -x^3 = -f(x)$, determinamos que es una función **impar**.
2. Por las propiedades de integración en intervalos simétricos para funciones impares, todos los coeficientes de los cosenos ($a_0$ y $a_n$) se anulan idénticamente.
3. Por lo tanto, $a_n = 0$ siempre, lo que contradice la afirmación de que es distinto de cero.


* 💡 **Respuesta Correcta:** **Falso**




### Ejercicio 10

* **Enunciado:** El coeficiente $b_n$ de $f(x) = \cos(x)$ es distinto de $0$ en cualquier intervalo $(-l, l)$.
* **Resolución Paso a Paso:**
1. Verificamos la paridad de $f(x) = \cos(x)$: al evaluar $f(-x) = \cos(-x) = \cos(x) = f(x)$, determinamos que es una función **par**.
2. Los coeficientes de los senos se calculan mediante la integral de $f(x) \cdot \sin\left(\frac{n\pi}{l}x\right)$, que representa el producto de una función par por una impar (impar en total).
3. La integral de una función impar en un intervalo simétrico $[-l, l]$ es cero, por lo que $b_n = 0$ para todo $n$.


* 💡 **Respuesta Correcta:** **Falso**




### Ejercicio 11

* **Enunciado:** El coeficiente independiente $a_0$ de $f(x) = x^4$ es distinto de $0$ en cualquier intervalo $(-l, l)$.
* **Resolución Paso a Paso:**
1. La función $f(x) = x^4$ es **par**.
2. Su coeficiente independiente se define mediante la fórmula:

$$a_0 = \frac{1}{l}\int_{-l}^{l} x^4 \, dx$$


3. Como $x^4 \ge 0$ en todo el intervalo y es estrictamente positivo (salvo en el origen), la integral de una función no negativa en un intervalo con longitud positiva arroja un valor estrictamente mayor que cero ($a_0 > 0$).
4. Por ende, $a_0$ es efectivamente distinto de cero.


* 💡 **Respuesta Correcta:** **Verdadero**




## 📌 Pregunta 12: Linealidad de la Serie de Fourier

### Ejercicio 12

* **Enunciado:** La serie de Fourier es un operador lineal.
* **Resolución Paso a Paso:**
1. Un operador $T$ se define como lineal si cumple con la superposición (homogeneidad y aditividad):

$$T(a \cdot f + b \cdot g) = a \cdot T(f) + b \cdot T(g)$$


2. Los coeficientes de la serie de Fourier ($a_0, a_n, b_n$) se obtienen a través de operaciones de integración definida.
3. Debido a que la integral posee la propiedad lineal (la integral de una combinación lineal es la combinación lineal de las integrales):

$$\int_{-l}^{l} [a f(x) + b g(x)] \, dx = a \int_{-l}^{l} f(x) \, dx + b \int_{-l}^{l} g(x) \, dx$$



tanto el cálculo de los coeficientes como la construcción de la serie resultante heredan directamente esta linealidad.


* 💡 **Respuesta Correcta:** **Verdadero**
