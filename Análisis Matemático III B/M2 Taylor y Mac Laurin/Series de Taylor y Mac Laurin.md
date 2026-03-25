# 📝 Resolución: Actividad de Series de Taylor y Maclaurin
Este documento detalla el desarrollo de funciones mediante series de potencias y sus respectivos intervalos de convergencia.

---

### 1. Desarrollos a partir de la función Exponencial ($e^x$) 📈
**Base:** $e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!}$ para todo $x \in \mathbb{R}$.

* **a. $e^{-2x}$** * **Sustitución:** $x \to (-2x)$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-2)^n x^n}{n!}$
    * **Intervalo:** $(-\infty, \infty)$
* **b. $e^{x^2}$**
    * **Sustitución:** $x \to x^2$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{x^{2n}}{n!}$
    * **Intervalo:** $(-\infty, \infty)$

---

### 2. Desarrollos a partir del Coseno ($\cos x$) 🎢
**Base:** $\cos(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!}x^{2n}$ para todo $x \in \mathbb{R}$.

* **a. $\cos(5x)$**
    * **Sustitución:** $x \to 5x$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n 5^{2n}}{(2n)!}x^{2n}$
    * **Intervalo:** $(-\infty, \infty)$
* **b. $\cos(-x^2)$**
    * **Propiedad:** Al ser par, $\cos(-x^2) = \cos(x^2)$.
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!}x^{4n}$
    * **Intervalo:** $(-\infty, \infty)$

---

### 3. Desarrollos a partir del Seno ($\sin x$) 🌊
**Base:** $\sin(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!}x^{2n+1}$ para todo $x \in \mathbb{R}$.

* **a. $\sin(3x)$**
    * **Sustitución:** $x \to 3x$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n 3^{2n+1}}{(2n+1)!}x^{2n+1}$
    * **Intervalo:** $(-\infty, \infty)$
* **b. $\sin(x^2)$**
    * **Sustitución:** $x \to x^2$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!}x^{4n+2}$
    * **Intervalo:** $(-\infty, \infty)$

---

### 4. Desarrollos a partir de la Serie Geométrica ♾️
**Base:** $\frac{1}{1-u} = \sum_{n=0}^{\infty} u^n$ para $|u| < 1$.

* **a. $\frac{1}{1+2x}$**
    * **Sustitución:** $u = -2x$
    * **Serie:** $\sum_{n=0}^{\infty} (-1)^n 2^n x^n$
    * **Intervalo:** $|x| < 1/2 \implies (-1/2, 1/2)$
* **b. $\frac{1}{1-x^2}$**
    * **Sustitución:** $u = x^2$
    * **Serie:** $\sum_{n=0}^{\infty} x^{2n}$
    * **Intervalo:** $|x| < 1 \implies (-1, 1)$
* **c. $\frac{x+3}{1-x^2}$**
    * **Método:** $(x+3) \cdot \sum x^{2n}$
    * **Serie:** $\sum_{n=0}^{\infty} x^{2n+1} + \sum_{n=0}^{\infty} 3x^{2n}$
    * **Intervalo:** $(-1, 1)$

---

### 5. Series de Taylor centradas en $a$ 📍
Se utiliza la traslación de variable: $x = (x-a) + a$.

| Función | Centro ($a$) | Desarrollo Resultante | Intervalo |
| :--- | :--- | :--- | :--- |
| **$e^{3x}$** | $-1$ | $\sum_{n=0}^{\infty} \frac{e^{-3} 3^n}{n!} (x+1)^n$ | $(-\infty, \infty)$ |
| **$\cos(2x)$** | $\pi$ | $\sum_{n=0}^{\infty} \frac{(-1)^n 2^{2n}}{(2n)!} (x-\pi)^{2n}$ | $(-\infty, \infty)$ |
| **$\sin(5x)$** | $-\pi/2$ | $\sum_{n=0}^{\infty} \frac{(-1)^{n+1} 5^{2n}}{(2n)!} (x+\pi/2)^{2n}$ | $(-\infty, \infty)$ |
| **$\frac{1}{1+7x}$** | $21$ | $\sum_{n=0}^{\infty} \frac{(-1)^n 7^n}{148^{n+1}} (x-21)^n$ | $|x-21| < \frac{148}{7}$ |
| **$\frac{9-x}{1+7x}$** | $21$ | $(-12-(x-21)) \sum \frac{(-1)^n 7^n}{148^{n+1}} (x-21)^n$ | $|x-21| < \frac{148}{7}$ |

> ⚠️ **Nota:** Para la función $\frac{1}{1+7x}$, se factorizó el denominador como $148[1 - (-\frac{7}{148}(x-21))]$ para ajustar a la forma geométrica.
