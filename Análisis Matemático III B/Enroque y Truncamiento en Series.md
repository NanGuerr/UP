# 📚 Análisis Matemático: Enroque y Truncamiento en Series

El intercambio del orden de los límites nos permite transformar una integral no elemental en una suma simple de resolver término a término. 💡

En el contexto del análisis matemático y el estudio de series, estos dos términos se refieren a los siguientes conceptos:



## 🔁 1. Enroque (de límites)

El **enroque de límites** hace referencia informal al intercambio en el orden del cálculo de dos operaciones de límite. 🔀

Dado que una serie infinita representa un límite (el límite de sus sumas parciales) y tanto la derivada como la integral también se definen mediante límites, realizar un «enroque» significa aplicar la derivada o la integral término a término a cada sumando de la serie. ⚙️

Para que este intercambio en el orden de los límites sea matemáticamente válido, se requiere cumplir con ciertas hipótesis teóricas, como que la serie de funciones sea mayorable (aplicando el Teorema de Weierstrass) o que la derivada sea suave a tramos. 🛡️



## ✂️ 2. Truncamiento (y error de truncamiento)

El **truncamiento** consiste en cortar una suma infinita de una serie (como una serie de Taylor, Maclaurin o Fourier) para quedarse únicamente con una suma parcial de un número finito de términos. 📐 Este procedimiento es el que utilizan las calculadoras y sistemas computacionales para calcular aproximaciones numéricas de funciones. 💻

Al descartar los términos infinitos restantes se comete un **error de truncamiento**. En el caso de las series de Taylor o Maclaurin, este error $r_n(x)$ se puede controlar y acotar mediante la fórmula del resto de Lagrange: 🎯

$$r_n(x) = \frac{f^{(n+1)}(\xi)}{(n+1)!} x^{n+1}$$

donde $\xi$ es un valor desconocido comprendido entre $0$ y $x$.



## 📝 Ejemplos Prácticos

Aquí tienes dos ejemplos prácticos que ilustran cómo se aplican el truncamiento con acotamiento de error y el enroque de límites en el análisis de series.



### 🧮 Ejemplo 1: Truncamiento y acotamiento del error (Resto de Lagrange)

Cuando una calculadora o computadora aproxima el valor de una función como $f(x) = e^x$, no suma infinitos términos, sino que realiza un truncamiento en una suma parcial finita de la serie de Maclaurin. 🤖

Supongamos que queremos aproximar $e^{0.5}$ truncando la serie en el término de grado $n = 3$:

* **Desarrollo en serie de Maclaurin de $e^x$:**
  $$e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots$$

* **Polinomio truncado $P_3(x)$:**
  $$P_3(0.5) = 1 + 0.5 + \frac{(0.5)^2}{2} + \frac{(0.5)^3}{6} = 1 + 0.5 + 0.125 + 0.020833 = 1.645833$$

* **Acotamiento del error de truncamiento:**
  Para saber qué tan precisa es esta aproximación, usamos la fórmula del resto de Lagrange $r_n(x)$:
  $$r_3(x) = \frac{f^{(4)}(\xi)}{(3+1)!} x^{3+1} = \frac{e^\xi}{24} x^4$$
  donde $\xi$ es un valor desconocido entre $0$ y $x$ ($0 < \xi < 0.5$).

  Como $\xi < 0.5$, sabemos que $e^\xi < e^{0.5} < 2$. Por lo tanto, el error absoluto se acota superiormente:
  $$|r_3(0.5)| \le \frac{2}{24} (0.5)^4 = \frac{1}{12} \cdot 0.0625 \approx 0.0052$$

El error máximo cometido al truncar en $n = 3$ es inferior a $0.0052$, lo que garantiza el control de la precisión del cálculo. ✅



### 🔄 Ejemplo 2: Enroque de límites (Integración término a término)

El enroque de límites consiste en intercambiar el orden de dos operaciones de límite; por ejemplo, la integral de una suma infinita por la suma de las integrales individuales. 🔀

Este procedimiento es fundamental para resolver integrales de funciones que no poseen una primitiva elemental en términos de funciones conocidas, como ocurre en el cálculo de probabilidades con la distribución normal estándar $\int e^{-x^2} \, dx$. 📊

Queremos evaluar la integral definida $\int_{0}^{0.5} e^{-x^2} \, dx$:

* **Sustitución en la serie de potencias:**
  Reemplazando $x$ por $-x^2$ en la serie de $e^x$, obtenemos:
  $$e^{-x^2} = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!} = 1 - x^2 + \frac{x^4}{2!} - \frac{x^6}{3!} + \dots$$

* **Aplicación del enroque de límites:**
  Como la serie converge en $[0, 0.5]$, intercambiamos la integral con la sumatoria (integración término a término):
  $$\int_{0}^{0.5} e^{-x^2} \, dx = \int_{0}^{0.5} \left( \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!} \right) \, dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{n!} \int_{0}^{0.5} x^{2n} \, dx$$

* **Integración y truncamiento:**
  Resolviendo la integral término a término:
  $$\int_{0}^{0.5} e^{-x^2} \, dx = \left[ x - \frac{x^3}{3} + \frac{x^5}{10} - \frac{x^7}{42} + \dots \right]_{0}^{0.5}$$

  Evaluando los primeros tres términos:
  $$\int_{0}^{0.5} e^{-x^2} \, dx \approx 0.5 - \frac{(0.5)^3}{3} + \frac{(0.5)^5}{10} = 0.5 - 0.041667 + 0.003125 = 0.461458$$
