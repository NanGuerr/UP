# 📚 Resumen: Diferenciación e Integración de Series de Potencias

Este resumen abarca los conceptos clave para repasar de manera eficiente el comportamiento de las series de funciones bajo operaciones de cálculo.

---

### 🧠 Conceptos Previos Fundamentales

* **Series Mayorables:** 🔝 Son aquellas series $\sum_{n=1}^{\infty}f_n(x)$ que verifican que $|f_n(x)| \le a_n$, siendo $\sum_{n=1}^{\infty}a_n$ una serie convergente.
* **Teorema de Weierstrass:** 🛡️ Si una serie es mayorable en un intervalo cerrado y acotado, entonces converge absolutamente y uniformemente en ese intervalo.
* **Teorema de Abel:** 🎯 Si una serie de potencias converge para un valor $x_0$ no nulo, entonces converge absolutamente para todo valor de $x$ que cumpla $|x| < |x_0|$. Por el contrario, si la serie diverge para un valor $x_0'$, divergerá para todo $x$ tal que $|x| > |x_0'|$.

---

### ⚡ Derivación de Series de Potencias

Para poder derivar una serie de funciones, es necesario que todas las funciones admitan derivadas continuas y que tanto la serie original como la de sus derivadas sean mayorables.

* **Regla general:** 🔄 La derivada de la suma de una serie de potencias es igual a la suma de la serie obtenida por derivación término a término.
* **Fórmula:** 📝 
  $$(\sum_{n=0}^{\infty}a_nx^n)' = \sum_{n=1}^{\infty}na_nx^{n-1}$$
* **Propiedad del Radio:** 📏 Al derivar una serie de potencias, la serie resultante tiene el **mismo radio de convergencia** que la serie original.
* **Desplazamiento del índice:** 🕒 Al observar la fórmula, se nota que al derivar una vez, se desplaza el índice de la sumatoria (usualmente de $n=0$ a $n=1$).

---

### 📥 Integración de Series de Potencias

Al igual que en la derivación, para poder integrar una serie entre dos valores, se exige que la serie sea mayorable en el intervalo definido por dichos valores.

* **Regla general:** 🧱 Si una serie de funciones continuas es mayorable en el intervalo $[a, b]$, la integral de su suma es igual a la suma de las integrales correspondientes a cada uno de sus términos.
* **Fórmula:** 🧪
  $$\int_{a}^{b}(\sum_{n=1}^{\infty}a_nx^n)dx = \sum_{n=1}^{\infty}a_n\int_{a}^{b}x^ndx$$
* **Intercambio de límites:** 🔀 Es importante notar que, tanto al derivar como al integrar series, lo que se está haciendo matemáticamente es un **intercambio en el orden** del cálculo de dos límites.

---
