# 📚 Parcial: Análisis Matemático IIIB

Este documento contiene la transcripción de los ejercicios del examen parcial de Análisis Matemático IIIB.

---

### 🎶 Ejercicio 1: Series de Fourier
Sea $g(x)$ tal que $g'(x)$ es suave a tramos en el intervalo $(-1,1)$. Sea la serie de Fourier definida como:

$$\frac{a_0}{2} + \sum_{n=1}^{\infty} \left(a_n \cdot \cos\left(\frac{n\pi x}{l}\right) + b_n \sin\left(\frac{n\pi x}{l}\right)\right)$$

Determine a qué es igual $2 \cdot g'(x)$.

---

### 📐 Ejercicio 2: Series de Taylor
A partir de la serie de Maclaurin de $\sin(x)$ y de $\cos(x)$, junto con la serie geométrica, hallar la serie de Taylor de:

$$F(x) = \cos(x) - \frac{3}{4+x}$$

Centrado en $a=3$. 💡 **Sugerencia:** escribir $x = (x-3) + 3$ y utilizar las identidades trigonométricas:
* $\sin(a+b) = \sin(a)\cos(b) + \cos(a)\sin(b)$
* $\cos(a+b) = \cos(a)\cos(b) - \sin(a)\sin(b)$

---

### 📏 Ejercicio 3: Radio de Convergencia
Dada la serie de potencia:

$$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} \cdot x^{8n}$$

1.  Hallar su **radio de convergencia**. 🎯
2.  Analizar el **comportamiento en los bordes** del intervalo. 🔍

---

### ♾️ Pregunta 4: Integración mediante Series
Utilizando la serie de Maclaurin, se tiene la siguiente igualdad para la integral:

$$\int_{0}^{2} e^{-x^2} dx = \sum_{n=0}^{\infty} \frac{2 \cdot (-1)^n \cdot 4^n}{n!} \cdot k(x) dx$$
*(Nota: Transcripción literal del original)*.

---

### 🔍 Pregunta 5: Desarrollo en Serie de Cosenos
Sea $f(x) = 3x^2 - 5x$. Desarrollar en **serie de cosenos** en el intervalo $(0,4)$. 📈

---

### ✅ Pregunta 6: Derivadas y Convergencia (Múltiple Opción)
Sea $F(x) = \ln(1+2x)$. Seleccione la opción correcta sobre la serie de Maclaurin de $F''(x)$ (segunda derivada):

* [ ] La serie de Maclaurin de $F''(x)$ tiene un radio de convergencia $R = +\infty$.
* [ ] La serie de Maclaurin de $F''(x)$ es $\sum_{n=0}^{\infty} -1^n \cdot 2^n \cdot n \cdot n \cdot x^{n-1}$.
* [ ] La serie de Maclaurin de $F''(x)$ tiene un radio de convergencia $R = 1/2$.
* [ ] La serie de Maclaurin de $F''(x)$ es $\sum_{n=0}^{\infty} (-1)^n \cdot 2^{n+1} \cdot n \cdot x^{n-1}$.
