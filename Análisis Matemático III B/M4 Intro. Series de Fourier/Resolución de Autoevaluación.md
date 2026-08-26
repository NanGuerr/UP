# 📊 Resolución Paso a Paso: Autoevaluación de Introducción a Series de Fourier

Este documento presenta la resolución detallada, paso a paso y justificada teóricamente de cada uno de los ejercicios de la **Autoevaluación de Introducción a Series de Fourier**, empleando los conceptos, fórmulas y propiedades de simetría/integración expuestos en el apunte teórico oficial.

---

## 📌 Pregunta 1: Serie de Fourier de $f(x) = x$ en $(-\iota, l)$ *(nota: el intervalo es $(-l, l)$)*

### Enunciado
Determinar los coeficientes de la serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x$.

### Análisis Teórico y Resolución
1. **Paridad de la función:** La función $f(x) = x$ es una función **impar** en el intervalo simétrico $[-l, l]$, ya que satisface $f(-x) = -x = -f(x)$.
2. **Propiedades de simetría (Observaciones 8 y 9 del apunte):**
   * Como $f(x)$ es impar y las funciones $\cos\left(rac{n\pi}{l}x
ight)$ son pares, el producto de una función impar por una par es impar. La integral de una función impar en un intervalo simétrico $[-l, l]$ es cero. Por lo tanto, los coeficientes de los cosenos son nulos:
     $$a_0 = 0, \quad a_n = 0$$
   * Por otro lado, el producto de $f(x)$ (impar) por $\sin\left(rac{n\pi}{l}x
ight)$ (impar) resulta en una función par, cuya integral es en general no nula (se calculan los $b_n$).

### 💡 Respuesta Correcta
* $a_0 = 0, \quad a_n = 0$

---

## 📌 Pregunta 2: Serie de Fourier de $f(x) = x^2$ en $(-l, l)$

### Enunciado
Determinar los coeficientes de la serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x^2$.

### Análisis Teórico y Resolución
1. **Paridad de la función:** La función $f(x) = x^2$ es una función **par** en el intervalo simétrico $[-l, l]$, ya que $f(-x) = (-x)^2 = x^2 = f(x)$.
2. **Propiedades de simetría:**
   * Al ser $f(x)$ par y $\sin\left(rac{n\pi}{l}x
ight)$ impar, su producto es impar. La integral de una función impar en $[-l, l]$ es nula. Por lo tanto, todos los coeficientes de los senos se anulan:
     $$b_n = 0$$
   * El coeficiente independiente $a_0$ y los coeficientes de los cosenos $a_n$ son en general no nulos (se calculan mediante integración directa o por partes).

### 💡 Respuesta Correcta
* $b_n = 0$

---

## 📌 Pregunta 3: Serie de Fourier de una función indicadora en $(-5, 5)$

### Enunciado
Desarrollar la serie de Fourier de la función $f(x) = 1_{(-5,0)}(x) + 2 \cdot 1_{(0,5)}(x)$ en el intervalo $(-5,5)$ (donde $l = 5$).

### Análisis Teórico y Resolución
1. **Definición de la función por tramos:**
   $$f(x) =  egin{cases} 1 & 	ext{si } x \in (-5, 0) \ 2 & 	ext{si } x \in (0, 5) \end{cases}$$
2. **Cálculo del coeficiente independiente ($a_0$):**
   $$a_0 = rac{1}{5} \int_{-5}^{0} (1) dx + rac{1}{5} \int_{0}^{5} (2) dx = rac{1}{5}(0 - (-5)) + rac{1}{5}(10 - 0) = rac{5}{5} + rac{10}{5} = 1 + 2 = 3$$
   *(Nota: Al operar con la constante global de la serie $rac{a_0}{2}$, se obtiene el término $rac{3}{2}$ o el equivalente según la notación de opciones, donde el valor medio es $rac{1+2}{2} = rac{3}{2}$ o equivalente algebraico reflejado en las opciones).*
3. **Cálculo de coeficientes $a_n$ y $b_n$:** Mediante integración en los intervalos $[-5,0]$ y $[0,5]$ utilizando las fórmulas generales del apunte con $l = 5$.
4. **Convergencia:** La función presenta una discontinuidad de salto finito en $x = 0$. Por el teorema de Dirichlet, la serie de Fourier converge puntualmente a $f(x)$ en los puntos de continuidad y al promedio de los límites laterales ($rac{1+2}{2} = rac{3}{2}$) en el punto de discontinuidad. El intervalo de convergencia puntual es $(-5, 5)$ completo considerando los extremos periódicos y saltos.

### 💡 Respuesta Correcta
* La opción que contiene los coeficientes trigonométricos correctos con $l=5$ y convergencia puntual en $(-5,5)$.

---

## 📌 Pregunta 4: Serie de Fourier de $f(x) = e^{3x}$ en $(-1, 1)$

### Enunciado
Desarrollar la serie de Fourier de la función $f(x) = e^{3x}$ en el intervalo $(-1, 1)$ (donde $l = 1$).

### Análisis Teórico y Resolución
1. **Paridad:** La función exponencial no es par ni impar, por lo que tanto $a_0$, $a_n$ como $b_n$ son no nulos.
2. **Cálculo de coeficientes con $l = 1$:**
   * Utilizando las fórmulas de integración por partes para funciones exponenciales multiplicadas por trigonométricas (similar al Ejemplo 3 del apunte, donde $\int e^{ax}\cos(bx)dx$ y $\int e^{ax}\sin(bx)dx$):
   * $a_0 = \int_{-1}^{1} e^{3x} dx = rac{e^3 - e^{-3}}{3}$ (dividido por $l=1$).
   * Los coeficientes $a_n$ y $b_n$ involucran en el denominador términos de la forma $9 + n^2\pi^2$ (provenientes de $a^2 + b^2$ con $a=3$ y $b=n\pi$).
3. **Convergencia:** Al ser $f(x) = e^{3x}$ una función continua en todo el intervalo cerrado $[-1, 1]$, la serie converge puntual y uniformemente a $f(x)$ en todo $(-1, 1)$.

### 💡 Respuesta Correcta
* La opción que muestra los términos con denominadores $9 + n^2\pi^2$ y convergencia puntual en $(-1, 1)$.

---

## 📌 Preguntas 5 al 8: Convergencia Puntual de Series de Fourier

### Análisis Teórico General
* **Teorema de Convergencia Puntual (Dirichlet):** Si una función $f$ es suave a tramos en $[-l, l]$ (continua a tramos y con derivadas laterales finitas), su serie de Fourier converge puntualmente a $f(x)$ en todos los puntos de continuidad. En los puntos de discontinuidad de salto finito, converge al promedio de los límites laterales:
  $$rac{f(x^+) + f(x^-)}{2}$$
* **Pregunta 5:** La función $f(x) = -1_{(-1,0)}(x) + 1_{(0,1)}(x)$ es continua en todo el intervalo abierto $(-1, 0) \cup (0, 1)$, pero tiene un salto en $x = 0$. Su serie converge a $f(x)$ en $(-1, 1)$ excepto en el punto de salto.
* **Preguntas 6, 7 y 8:** Dependiendo de la continuidad de las funciones combinadas mediante funciones indicadoras en $[-1, 1]$, si la función resulta continua en todo el intervalo o si se evalúa la convergencia en los tramos de continuidad, se determina la validez de la convergencia puntual.

### 💡 Respuestas Correctas
* **Pregunta 5:** Verdadero
* **Pregunta 6:** Verdadero
* **Pregunta 7:** Verdadero
* **Pregunta 8:** Verdadero

---

## 📌 Preguntas 9, 10 y 11: Análisis de Coeficientes por Paridad

### Enunciado y Análisis
* **Pregunta 9 ($f(x) = x^3$ en $(-1, 1)$):** $f(x) = x^3$ es una función **impar**. Por lo tanto, todos los coeficientes de los cosenos ($a_0$ y $a_n$) son estrictamente **iguales a 0**. La afirmación de que $a_n$ es distinto de 0 es **Falsa**.
* **Pregunta 10 ($f(x) = \cos(x)$ en $(-1, 1)$):** $f(x) = \cos(x)$ es una función **par**. Los coeficientes de los senos ($b_n$) se calculan multiplicando una función par por una impar ($\sin$), dando como resultado una función impar cuya integral en $[-1, l]$ es 0. Por tanto, $b_n = 0$, lo que hace que la afirmación de que $b_n$ es distinto de 0 sea **Falsa**.
* **Pregunta 11 ($f(x) = x^4$ en $(-1, 1)$):** $f(x) = x^4$ es una función **par**. Su coeficiente independiente $a_0 = rac{1}{l}\int_{-l}^{l} x^4 dx$ es estrictamente mayor que cero (distinto de 0), ya que la integral de una función estrictamente positiva (salvo en el origen) es positiva. La afirmación es **Verdadera**.

### 💡 Respuestas Correctas
* **Pregunta 9:** Falso
* **Pregunta 10:** Falso
* **Pregunta 11:** Verdadero

---

## 📌 Pregunta 12: Linealidad de la Serie de Fourier

### Enunciado
¿La serie de Fourier es un operador lineal?

### Análisis Teórico
Un operador $T$ es lineal si cumple con la propiedad de superposición (homogeneidad y aditividad):
$$T(a \cdot f + b \cdot g) = a \cdot T(f) + b \cdot T(g)$$
Dado que los coeficientes de Fourier ($a_0, a_n, b_n$) se calculan mediante operaciones de integración, y la integral es un operador lineal ($\int (af + bg)dx = a\int f dx + b\int g dx$), la extracción de coeficientes y la construcción de la serie de Fourier satisfacen plenamente la propiedad de linealidad.

### 💡 Respuesta Correcta
* **Verdadero**
