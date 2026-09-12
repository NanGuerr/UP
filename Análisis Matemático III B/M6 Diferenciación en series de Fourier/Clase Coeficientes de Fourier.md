# 📊 Análisis Detallado de la Clase de Series de Fourier 🎓

En este video se desarrolla la resolución de un ejercicio práctico relacionado con series de Fourier de funciones definidas a tramos. El profesor explica cómo hallar los coeficientes de Fourier utilizando el teorema de integración término a término para una función definida en un intervalo específico.



## 🔍 Análisis Detallado de los Procedimientos

### 1. Planteamiento del Problema 📐

Se analiza una función $g$ suave a tramos en el intervalo $(-5, 5)$. El objetivo principal es hallar la integral de dicha función en términos de los coeficientes de Fourier $a_0$, $a_n$ y $b_n$.

La integral a resolver es de la forma:


$$\int_{0}^{2} g(x) \, dx$$

### 2. Aplicación del Teorema de Integración Término a Término 🔄

Dado que la serie de Fourier converge puntualmente a la función, se puede aplicar la integración término a término:


$$\int \sum \dots dx = \sum \int \dots dx$$

Para la serie general de Fourier:


$$g(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cos\left(\frac{n\pi x}{L}\right) + b_n \sin\left(\frac{n\pi x}{L}\right) \right)$$

Sustituyendo el intervalo correspondiente (con $L = 5$), la expansión de Fourier se integra dentro del intervalo deseado $[0, 2]$.

### 3. Desarrollo de la Integral de la Serie 📉

Al integrar término a término entre $0$ y $2$, la expresión se desglosa en tres partes:

1. **Término constante:**

$$\int_{0}^{2} \frac{a_0}{2} \, dx = \frac{a_0}{2} \cdot (2 - 0) = a_0$$


2. **Término con Coseno:**

$$\sum_{n=1}^{\infty} a_n \int_{0}^{2} \cos\left(\frac{n\pi x}{5}\right) dx = \sum_{n=1}^{\infty} a_n \left[ \frac{5}{n\pi} \sin\left(\frac{n\pi x}{5}\right) \right]_{0}^{2}$$


3. **Término con Seno:**

$$\sum_{n=1}^{\infty} b_n \int_{0}^{2} \sin\left(\frac{n\pi x}{5}\right) dx = \sum_{n=1}^{\infty} b_n \left[ -\frac{5}{n\pi} \cos\left(\frac{n\pi x}{5}\right) \right]_{0}^{2}$$



### 4. Evaluación de los Límites de Integración 📏

Evaluando los límites superior e inferior para cada componente trigonométrico:

* Para los senos:

$$\sin\left(\frac{2n\pi}{5}\right) - \sin(0) = \sin\left(\frac{2n\pi}{5}\right)$$


* Para los cosenos:

$$-\cos\left(\frac{2n\pi}{5}\right) - (-\cos(0)) = 1 - \cos\left(\frac{2n\pi}{5}\right)$$



### 5. Resultado Final 📝

Combinando todos los términos integrados y evaluados, la solución final de la integral en términos de los coeficientes de Fourier queda expresada como:

$$\int_{0}^{2} g(x) \, dx = a_0 + \sum_{n=1}^{\infty} \left( a_n \cdot \left(\frac{5}{n\pi}\right) \sin\left(\frac{2n\pi}{5}\right) + b_n \cdot \left(\frac{5}{n\pi}\right) \left(1 - \cos\left(\frac{2n\pi}{5}\right)\right) \right)$$
