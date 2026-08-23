# 📚 Guía: Series Numéricas y de Potencias 🔢




## ❓ Conceptos Básicos

* **¿Qué es una serie numérica?**
Es una expresión de la forma $u_1 + u_2 + u_3 + ... + u_n + ...$ donde cada término es un número real. 📈
* **¿Cómo se define la suma parcial $n$-sima ($S_n$)?**
Es la suma de los primeros $n$ términos de la serie: $S_n = u_1 + u_2 + ... + u_n$. 🧮
* **¿Cuándo se dice que una serie numérica converge?**
Cuando existe un límite finito $s$ tal que $\lim_{n \rightarrow \infty} S_n = s$. ✅




## 🔍 Criterios de Convergencia

* **¿Cuál es la condición necesaria de convergencia para $\sum a_n$?**
Si la serie converge, entonces el límite del término general debe ser cero: $\lim_{n \rightarrow \infty} a_n = 0$. 📉
* **Si $\lim_{n \rightarrow \infty} a_n \ne 0$ o no existe, ¿qué se puede afirmar?**
La serie diverge. 🚫
* **¿Es la condición $\lim_{n \rightarrow \infty} a_n = 0$ suficiente?**
No, es necesaria pero no suficiente; existen series donde el término tiende a cero y aun así divergen. ⚠️




## 📐 Series Especiales

* **Serie Geométrica ($\sum q^n$):** Converge si y solo si $\vert{}q\vert{} < 1$. ↔️
* **Suma:** $\frac{1}{1-q}$. 🔢


* **Serie $p$ ($\sum \frac{1}{n^p}$):** Converge si y solo si $p > 1$. 🏗️
* **Serie Armónica ($\sum \frac{1}{n}$):** Es una serie divergente. 🔊





## 🧪 Criterios Avanzados

* **Criterio del Cociente (D'Alembert):** Converge si $L < 1$, diverge si $L > 1$. ⚖️
* **Criterio de la Raíz (Cauchy):** Converge si $L < 1$, diverge si $L > 1$. 🔍
* *Nota:* Si $L = 1$ en ambos criterios, el test no es concluyente. 🤷‍♂️


* **Criterio de Leibniz (Series alternadas):** Converge si $\lim_{n \rightarrow \infty} a_n = 0$ y la sucesión $a_n$ es decreciente. ⬇️
* **Criterio Integral:** $\sum u_n$ converge si y solo si la integral impropia $\int_{1}^{\infty} f(x) dx$ converge.  ∫





## 📉 Convergencia Absoluta y Condicional

* **Convergencia Absoluta:** La serie de los valores absolutos $\sum \vert{}a_n\vert{}$ converge. ✨
* **Convergencia Condicional:** La serie $\sum a_n$ converge, pero $\sum \vert{}a_n\vert{}$ diverge. 🌓
* **Relación:** Toda serie absolutamente convergente es también convergente (simple). 🔗





## ⚙️ Series de Funciones y Potencias

* **Serie de potencias ($\sum a_n x^n$):** Serie de funciones con coeficientes reales $a_n$. 🛠️
* **Radio de convergencia ($R$):** $R = \lim_{n \rightarrow \infty} \vert{}\frac{a_n}{a_{n+1}}\vert{}$. 📏
* **Comportamiento:**
* $\vert{}x\vert{} < R$: Converge absolutamente. 🟢
* $\vert{}x\vert{} > R$: Diverge. 🔴
* $x = \pm R$: Debe estudiarse cada borde por separado. 🧪


* **Series notables:**
* $e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!}$ ($R = +\infty$). 🚀
* $\sin(x) = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{(2n+1)!}$. 🌊
* $\cos(x) = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n}}{(2n)!}$. 〰️






## 💡 Tips y Propiedades Adicionales

* **Factorial:** $n! = 1 \cdot 2 \cdot ... \cdot n$ y $(n+1)! = (n+1) \cdot n!$. ❗
* **Series Lineales:** La suma de dos series convergentes $\sum (a_n + b_n)$ converge a $s + \sigma$. ➕
* **Supresión de términos:** Un número finito de términos no altera la convergencia. ✂️
* **Regla de L'Hopital:** Útil para calcular límites de sucesiones pasando de $n \in \mathbb{N}$ a $x \in \mathbb{R}$. 🏥
* **Aplicación Acústica:** Los términos $\frac{1}{n}$ representan los armónicos; su amplitud determina el "color" del sonido. 🎶
