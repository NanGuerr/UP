# 📝 Autoevaluación: Diferenciación e integración

Este documento resume los resultados y conceptos clave del segundo intento de la autoevaluación, donde se obtuvo una calificación perfecta de **10/10**.

---

### 📥 Integración mediante Series Geométricas
Para funciones que involucran logaritmos o arcotangentes divididos por $x$, se utiliza la serie geométrica seguida de la **integración** término a término:

* **Logaritmo natural:** Para $\int_{a}^{b}\frac{\ln(1+x)}{x}dx$, es **verdadero** que se requiere la serie geométrica e integración. 📖
* **Arcotangente:** Para $\int_{a}^{b}\frac{\arctan(x)}{x}dx$, también es **verdadero** que se emplea integración de series. 📐
* **⚠️ Error común:** Es **falso** que estos cálculos se realicen mediante *derivación* de series. ❌

---

### ⚡ Integrales con Maclaurin (Exponenciales y Trigonométricas)
Desarrollo de funciones elementales para resolver integrales complejas:

* **Exponencial compleja:** Para $\int_{a}^{b}e^{x^2}dx$, se usa el desarrollo de Maclaurin de $e^x$ junto con la integración de la serie. 📈
* **Coseno:** Para $\int_{a}^{b}\frac{\cos(x^2)}{x}dx$, se utiliza el desarrollo de $\cos(x)$ e integración. 🎢
* **Seno y Raíces:** Para $\int \frac{\sin(x)}{\sqrt{x}}dx$, se emplea el desarrollo de $\sin(x)$ e integración. 🌊
* **💡 Caso Especial:** Para la integral $\int xe^{-x^2}dx$, el uso de series de Maclaurin e integración se marcó como **falso** (usualmente porque se resuelve por sustitución simple de forma más directa). 🔍

---

### 🔄 Derivación de Series de Potencias
Resultados sobre el comportamiento de la serie al ser derivada dos veces:

* **Serie Geométrica ($\sum x^n$):** 📏
    * **Segunda derivada:** $\sum_{n=2}^{\infty} n(n-1)x^{n-2}$.
    * **Radio de convergencia ($R$):** Se mantiene igual a **1**.
* **Serie Exponencial ($\sum \frac{x^n}{n!}$):** 🚀
    * **Segunda derivada:** Resulta en la misma serie original: $\sum_{n=0}^{\infty} \frac{x^n}{n!}$.
    * **Radio de convergencia ($R$):** Se mantiene infinito ($+\infty$).

---

### 📐 El Caso de la Arcotangente
Análisis de la función $f(x) = \arctan(x)$:

* **Primera derivada:** Su desarrollo en serie de Maclaurin es $\sum_{n=0}^{\infty} (-1)^n x^{2n}$. 🖋️
* **Convergencia:** El radio de convergencia para esta derivada es **1**. 📍

---

### 📊 Resumen de Radio de Convergencia ($R$)

| Función / Serie | Segunda Derivada | Radio de Convergencia ($R$) |
| :--- | :--- | :--- |
| $\sum x^n$ 📏 | $\sum n(n-1)x^{n-2}$ | $1$ |
| $\sum \frac{x^n}{n!}$ 🚀 | $\sum \frac{x^n}{n!}$ | $+\infty$ |
| $f'(x) = \arctan(x)$ 📐 | $\sum (-1)^n x^{2n}$ | $1$ |
