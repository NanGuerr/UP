# 📑 Resumen: Diferenciación e Integración de Series de Potencias

Este documento detalla la resolución de ejercicios prácticos y la justificación técnica de conceptos clave sobre el desarrollo y manipulación de series de potencias.

---

### 1. Demostraciones mediante Derivación ✍️

* **Segunda derivada de la serie geométrica:** Se prueba que $\sum_{n=2}^{\infty} n(n-1)x^{n-2} = \frac{2}{(1-x)^{3}}$.
    * **Procedimiento:** Se toma la serie geométrica base $\sum x^n = \frac{1}{1-x}$ y se deriva término a término dos veces.
    * **Convergencia:** El radio de convergencia se mantiene en **1** y el dominio es **(-1, 1)**, ya que la derivación no altera el radio original.
* **Derivadas trigonométricas:**
    * Se demuestra que $(\sin x)' = \cos x$ derivando la serie de Maclaurin del seno.
    * Se demuestra que $(\cos x)' = -\sin x$ derivando la serie del coseno y aplicando un cambio de índice ($k = n-1$).

---

### 2. Desarrollo e Integración de Funciones 🧮

* **Arcotangente ($\arctan x$):** 📐
    * Se obtiene integrando la serie de su derivada $f'(x) = \frac{1}{1+x^2}$, la cual surge de sustituir $y = -x^2$ en la serie geométrica.
    * **Resultado:** $\arctan(x) = \sum_{n=0}^{\infty} \frac{(-1)^{n}x^{2n+1}}{2n+1}$ con radio de convergencia **1**.
* **Cálculo de integrales complejas:** ♾️
    * **$\int e^{x^2} dx$:** Se sustituye $x$ por $x^2$ en la serie de $e^x$ y se integra término a término.
    * **$\int \frac{\sin(x^2)}{x} dx$:** Se desarrolla $\sin(x^2)$, se divide por $x$ y se aplica integración definida entre los límites $[a, b]$.
    * **$\int \frac{\sin(x)}{\sqrt{x}} dx$:** Se divide cada término de la serie del seno por $x^{1/2}$ antes de integrar.

---

### 3. Conceptos de la Autoevaluación 🧠

* **Logaritmo y Arcotangente:** Para integrales como $\int \frac{\ln(1+x)}{x} dx$ o $\int \frac{\arctan x}{x} dx$, es necesario usar integración de series de potencias, no derivación. 📖
* **¿Cuándo NO usar series?** 💡 Para la integral $\int xe^{-x^2} dx$ no hace falta usar series, ya que se resuelve directamente por **sustitución simple** ($u = -x^2$), obteniendo $-\frac{1}{2}e^{-x^2}$.
* **Propiedades de la Exponencial:** La serie de $e^x$ ($\sum \frac{x^n}{n!}$) es igual a su propia derivada y su radio de convergencia es **infinito** ($+\infty$). 🚀

---

### 📊 Resumen de Radios de Convergencia ($R$)

| Función / Operación | Serie Resultante | Radio ($R$) |
| :--- | :--- | :---: |
| Segunda derivada de $\sum x^n$ | $\sum n(n-1)x^{n-2}$ | $1$ |
| Desarrollo de $\arctan(x)$ | $\sum \frac{(-1)^n x^{2n+1}}{2n+1}$ | $1$ |
| Derivada de $\arctan(x)$ | $\sum (-1)^n x^{2n}$ | $1$ |
| Serie de $e^x$ (y sus derivadas) | $\sum \frac{x^n}{n!}$ | $+\infty$ |

---
