# 📚 Resumen de Estudio: Análisis Matemático IIIB
## Módulo 2: Series de Taylor y de Mac Laurin 📐

Este documento contiene los conceptos fundamentales, fórmulas y aplicaciones de las series de potencias para el desarrollo de funciones.

---

### 1. Definición de Series de Taylor y Mac Laurin ✍️
Las series de Taylor permiten expresar una función mediante sus derivadas sucesivas en un punto específico.

* **Serie de Taylor:** Si una función $f(x)$ tiene derivadas de cualquier orden en un entorno del punto $x=a$:
    $$f(x) = f(a) + \frac{x-a}{1!}f'(a) + \frac{(x-a)^2}{2!}f''(a) + \dots + \frac{(x-a)^n}{n!}f^{(n)}(a) + \dots$$

* **Serie de Mac Laurin:** Es el caso especial donde el centro es $a=0$:
    $$f(x) = f(0) + \frac{x}{1!}f'(0) + \frac{x^2}{2!}f(0) + \dots + \frac{x^n}{n!}f^{(n)}(0) + \dots$$

---

### 2. Condición de Convergencia y el Término Complementario 🔍
Para que la serie represente fielmente a la función, el resto $R_n(x)$ debe desaparecer en el infinito:
$$\lim_{n \to \infty} R_n(x) = 0$$

* **Fórmula de Lagrange para el resto:** 📝
    $$R_n(x) = \frac{(x-a)^{n+1}}{(n+1)!} f^{(n+1)}[a + \theta(x-a)], \text{ donde } 0 < \theta < 1$$

* **Teorema de acotación:** 🛡️
    Si las derivadas de la función están acotadas ($|f^{(n)}(x)| \le c$), la serie converge uniformemente a la función.

---

### 3. Desarrollos de Funciones Elementales (Mac Laurin) ⚡
Estos desarrollos son válidos para toda la recta real ($\mathbb{R}$):

| Función | Serie de Mac Laurin | Desarrollo |
| :--- | :--- | :--- |
| **Exponencial** 📈 | $\sum_{n=0}^{\infty} \frac{x^n}{n!}$ | $1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots$ |
| **Seno** 🌊 | $\sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!}x^{2n+1}$ | $x - \frac{x^3}{3!} + \frac{x^5}{5!} - \dots$ |
| **Coseno** 🎢 | $\sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!}x^{2n}$ | $1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \dots$ |

---

### 4. Serie Binomial 🔢
Para la función $f(x) = (1+x)^m$, donde $m$ es una constante:

$$(1+x)^m = 1 + mx + \frac{m(m-1)}{2!}x^2 + \dots + \frac{m(m-1)\dots(m-n+1)}{n!}x^n + \dots$$

> [!IMPORTANT]
> **Nota:** Esta serie converge cuando $|x| < 1$. Si $m$ es un entero positivo, la serie se trunca y se convierte en un polinomio finito.

---

### 5. Aplicaciones Principales 🛠️

1.  **Cálculos aproximados:** 🧮 Uso de **polinomios de Taylor** para obtener valores de funciones con error controlado.
2.  **Estimación del error:** 📏 En series alternadas, el error es menor al primer término omitido; en otros casos, se usa la fórmula de Lagrange.
3.  **Cálculo de integrales:** ♾️ Resolución de integrales cuyas primitivas no son elementales.
4.  **Fórmula de Euler:** 👑 Permite deducir la relación: $e^{iy} = \cos y + i \sin y$.

---

### 6. Intervalo de Convergencia 📍
Para una serie de la forma $\sum a_n(x-a)^n$:
* Si el radio de convergencia es $R$, la serie converge en $(a-R, a+R)$.
* **Propiedad:** Dentro de este intervalo, la serie se puede **derivar e integrar** término a término. 🔄
