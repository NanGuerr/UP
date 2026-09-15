# 📘 Análisis Matemático: Series de Potencias, Series $p$ e Integración de Series de Fourier

El cambio en el índice inicial de una sumatoria ($n=0$, $n=1$ o $n=2$) responde a dos motivos fundamentales: la **existencia de un término independiente o constante** en el desarrollo y la necesidad de **evitar indeterminaciones o divisiones por cero**.



## 📌 Motivos del Índice Inicial en las Sumatorias

### 1. 🟢 Casos con $n = 0$ (Serie geométrica, Exponencial, Seno, Coseno, Racional y Arcotangente)

El índice $n=0$ es la norma en las series de potencias generales de la forma $\sum_{n=0}^{\infty} a_n x^n$.

* **Presencia del término independiente**: Para $n=0$, el término $a_0 x^0 = a_0$ representa la constante o el valor que toma la función cuando $x=0$.
* **Serie geométrica**: Se define como $\sum_{n=0}^{\infty} x^n = 1 + x + x^2 + \dots = \frac{1}{1-x}$. El índice debe empezar en $n=0$ para incluir el término inicial $x^0 = 1$.
* **Exponencial, Seno y Coseno**: Provienen de la serie de Maclaurin $\sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n$, la cual comienza en la derivada de orden cero $f^{(0)}(0) = f(0)$. Como $e^0 = 1$ y $\cos(0) = 1$, estas funciones tienen un término constante no nulo en $n=0$.
* **Racionales y Arcotangente**: La serie de $\frac{1}{1+x^2} = \sum_{n=0}^{\infty} (-1)^n x^{2n}$ se obtiene sustituyendo en la serie geométrica y comienza en $n=0$. Al integrar término a término para obtener la serie de $\operatorname{arctan}(x)$, el término $n=0$ genera la primera potencia $x^1$.



### 2. 🟡 Casos con $n = 1$ (Serie del Logaritmo, Series $p$ y Series de funciones)

El índice cambia a $n=1$ principalmente por dos razones matemáticas:

* **Evitar la división por cero en Series $p$**: Las series $p$ tienen la forma $\sum_{n=1}^{\infty} \frac{1}{n^p}$. Si el índice comenzara en $n=0$, se obtendría $\frac{1}{0^p}$, lo cual genera una división por cero no definida.
* **Integración y reindexación en la serie de $\ln(1+x)$**: La serie de Maclaurin de $\ln(1+x)$ se obtiene al integrar término a término la serie geométrica $\frac{1}{1+t} = \sum_{n=0}^{\infty} (-1)^n t^n$. La integración produce:
  $$\ln(1+x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{n+1}}{n+1}$$
  Para expresar la potencia como $x^k$ en lugar de $x^{n+1}$, se reindexa la suma haciendo $k = n+1$. Como al inicio $n=0$, el nuevo índice empieza en $k=1$:
  $$\ln(1+x) = \sum_{n=1}^{\infty} \frac{(-1)^{n-1} x^n}{n}$$
  Además, dado que $\ln(1+0) = \ln(1) = 0$, la función no posee término independiente $a_0$, y el divisor $n$ en el denominador impediría evaluar en $n=0$.



### 3. 🔴 Casos con $n = 2$ (Series $p$ con logaritmo)

Las series numéricas del tipo $\sum_{n=2}^{\infty} \frac{1}{n^a \ln^b(n)}$ requieren comenzar estrictamente en $n=2$ para evitar la invalidez de la función logarítmica:

1. Si $n=0$, $\ln(0)$ no existe en los números reales.
2. Si $n=1$, $\ln(1) = 0$, lo que provocaría que el denominador sea cero ($1^a \cdot 0^b = 0$) e incurriría nuevamente en una división por cero.

Por lo tanto, el número $n=2$ es el primer entero positivo para el cual tanto $n$ como $\ln(n)$ están bien definidos y son distintos de cero.



## 🔍 Resolución Detallada de Ejercicios

### 🧩 Parte 1: Análisis del Dominio de Convergencia de una Serie de Potencias

Consideremos la serie de potencias dada por:
$$\sum_{n=1}^{\infty} \frac{x^n}{n}$$

#### 🔹 Paso 1: Cálculo del Radio de Convergencia ($R$)
Identificamos el coeficiente de la serie $a_n = \frac{1}{n}$. Para aplicar el criterio del cociente (D'Alembert), determinamos $a_{n+1} = \frac{1}{n+1}$.
Calculamos el límite de la razón de coeficientes para obtener el radio de convergencia $R$:
$$R = \lim_{n \to \infty} \left| \frac{a_n}{a_{n+1}} \right| = \lim_{n \to \infty} \frac{\frac{1}{n}}{\frac{1}{n+1}} = \lim_{n \to \infty} \frac{n+1}{n} = 1$$

Dado que el límite da $1$, el radio de convergencia es $R = 1$. Esto asegura de manera teórica que la serie converge absolutamente en el intervalo abierto $(-1, 1)$.

#### 🔹 Paso 2: Análisis del Borde $x = 1$
Sustituimos $x = 1$ en la serie original para evaluar la serie numérica resultante:
$$\sum_{n=1}^{\infty} \frac{1^n}{n} = \sum_{n=1}^{\infty} \frac{1}{n}$$

Esta es la serie armónica (que corresponde a una serie $p$ con $p = 1$). De acuerdo con el criterio de las series $p$, la serie converge si y solo si $p > 1$. Al ser $p = 1$, la serie diverge en este extremo.

#### 🔹 Paso 3: Análisis del Borde $x = -1$
Sustituimos $x = -1$ en la serie original:
$$\sum_{n=1}^{\infty} \frac{(-1)^n}{n}$$

Para analizar esta serie alternada, aplicamos el Criterio de Leibniz, el cual exige verificar dos hipótesis:
1. **Límite nulo**: $\lim_{n \to \infty} a_n = \lim_{n \to \infty} \frac{1}{n} = 0$.
2. **Sucesión decreciente**: $a_n$ es decreciente ya que $a_{n+1} = \frac{1}{n+1} < \frac{1}{n} = a_n$ para todo $n \ge 1$.

Al cumplirse ambas condiciones, la serie converge en $x = -1$. Como la serie de sus valores absolutos diverge en ese punto, se concluye que en $x = -1$ la convergencia es condicional.

#### 🎯 Conclusión del Dominio de Convergencia
Uniendo el intervalo abierto $(-1, 1)$ con los resultados obtenidos en las fronteras, el dominio de convergencia definitivo es $[-1, 1)$.



### 🧩 Parte 2: Evaluación de Convergencia de Series $p$ Logarítmicas

Consideremos la serie numérica de la forma:
$$\sum_{n=2}^{\infty} \frac{1}{n^a \ln^b(n)}$$

El análisis de su comportamiento depende de los valores de las potencias $a$ y $b$:

* **Caso $a > 1$**: La serie converge siempre, independientemente del valor de $b$, dado que la potencia polinómica $n^a$ domina el crecimiento del denominador.
* **Caso $a = 1$**: La serie toma la forma $\sum_{n=2}^{\infty} \frac{1}{n \ln^b(n)}$. La convergencia depende exclusivamente del exponente del logaritmo:
  * Si $b > 1$: La serie converge.
  * Si $b \le 1$: La serie diverge. (Por ejemplo, para $b = 1$, la serie $\sum_{n=2}^{\infty} \frac{1}{n \ln(n)}$ diverge).
* **Caso $a < 1$**: La serie diverge, ya que el crecimiento logarítmico no alcanza a compensar la lentitud del término $n^a$.



## 📐 Suma de Series Trigonométricas mediante Integración de Series de Fourier

Para calcular el valor exacto de la suma de una serie numérica trigonométrica mediante la integración término a término de una serie de Fourier, se utiliza el teorema correspondiente para integración.

### 📐 Marco Teórico y Condición de Integración

Para poder integrar término a término una serie de Fourier en un intervalo $[c, d]$ contenido dentro de $(-\ell, \ell)$, se requiere únicamente que la función $g(x)$ sea suave a tramos (es decir, continua en el intervalo cerrado salvo quizás en un número finito de puntos de salto finito). Bajo esta condición, el intercambio de límites permite intercambiar el signo de integración con la sumatoria infinita.

La fórmula de integración término a término entre $c$ y $d$ queda expresada de la siguiente forma:
$$\int_{c}^{d} g(x) \, dx = \frac{a_0 (d - c)}{2} + \sum_{n=1}^{\infty} \left[ a_n \left( \frac{\ell}{n\pi} \right) \operatorname{sen}\left(\frac{n\pi}{\ell} x\right)\Bigg|_{c}^{d} + b_n \left( -\frac{\ell}{n\pi} \right) \cos\left(\frac{n\pi}{\ell} x\right)\Bigg|_{c}^{d} \right]$$



### 💡 Ejemplo Práctico Paso a Paso

Consideremos la función $g(x) = -3x \mathbb{I}_{(-3,0)}(x) + x \mathbb{I}_{(0,3)}(x)$ definida en el intervalo $(-\ell, \ell) = (-3, 3)$.

#### 🔹 Paso 1: Serie de Fourier de la función
La función es continua en $(-3, 3)$ y resulta suave a tramos. Su representación en serie de Fourier $g(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} \left[ a_n \cos\left(\frac{n\pi}{3}x\right) + b_n \operatorname{sen}\left(\frac{n\pi}{3}x\right) \right]$ cuenta con los coeficientes:

* $a_0 = 6$
* $a_n = \frac{12}{n^2\pi^2} ((-1)^n - 1)$
* $b_n = \frac{12}{n\pi} (-1)^n$

#### 🔹 Paso 2: Elección del intervalo y cálculo directo de la integral
Elegimos integrar en el subintervalo $[c, d] = [0, 2]$, el cual verifica la condición $-3 < 0 < 2 < 3$.
Calculamos primero el valor directo de la integral definida evaluando la función $g(x) = x$ en dicho tramo:
$$\int_{0}^{2} g(x) \, dx = \int_{0}^{2} x \, dx = \left[ \frac{x^2}{2} \right]_{0}^{2} = 2$$

#### 🔹 Paso 3: Integración de la serie término a término
Aplicamos la fórmula de integración término a término a la representación en serie de Fourier:
$$\int_{0}^{2} g(x) \, dx = \frac{6 \cdot (2 - 0)}{2} + \sum_{n=1}^{\infty} \left[ a_n \left( \frac{3}{n\pi} \right) \operatorname{sen}\left(\frac{n\pi}{3} x\right)\Bigg|_{0}^{2} + b_n \left( -\frac{3}{n\pi} \right) \cos\left(\frac{n\pi}{3} x\right)\Bigg|_{0}^{2} \right]$$

Sustituyendo los coeficientes $a_n$ y $b_n$ y evaluando en los límites $0$ y $2$, la expresión toma la forma:
$$\int_{0}^{2} g(x) \, dx = 6 + \sum_{n=1}^{\infty} \left[ ((-1)^n - 1) \left(\frac{36}{(n\pi)^3}\right) \operatorname{sen}\left(\frac{2n\pi}{3}\right) + \left(\frac{36 (-1)^{n+1}}{(n\pi)^2}\right) \left(\cos\left(\frac{2n\pi}{3}\right) - 1\right) \right]$$

#### 🔹 Paso 4: Obtención de la suma exacta de la serie numérica
Igualamos el resultado del cálculo directo de la integral ($2$) con la expresión obtenida al integrar la serie:
$$2 = 6 + \sum_{n=1}^{\infty} \left[ ((-1)^n - 1) \left(\frac{36}{(n\pi)^3}\right) \operatorname{sen}\left(\frac{2n\pi}{3}\right) + \left(\frac{36 (-1)^{n+1}}{(n\pi)^2}\right) \left(\cos\left(\frac{2n\pi}{3}\right) - 1\right) \right]$$

Despejando la sumatoria infinita, hallamos el valor exacto de la suma de la serie numérica:
$$\sum_{n=1}^{\infty} \left[ ((-1)^n - 1) \left(\frac{36}{(n\pi)^3}\right) \operatorname{sen}\left(\frac{2n\pi}{3}\right) + \left(\frac{36 (-1)^{n+1}}{(n\pi)^2}\right) \left(\cos\left(\frac{2n\pi}{3}\right) - 1\right) \right] = 2 - 6 = -4$$



## 🛠️ Estrategia General para la Práctica

Para resolver ejercicios similares de cálculo exacto de sumas numéricas se recomienda seguir estos 5 pasos:

1. **Elegir** una función $g(x)$ apropiada.
2. **Elegir** un intervalo $(-\ell, \ell)$ adecuado.
3. **Representar** $g(x)$ mediante su serie de Fourier.
4. **Elegir** valores de integración $c$ y $d$ tal que $-\ell < c < d < \ell$.
5. **Aplicar** el teorema para integración e igualar el resultado con la integral definida directa.
