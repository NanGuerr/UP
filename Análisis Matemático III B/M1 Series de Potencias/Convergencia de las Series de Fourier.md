# 📈 Análisis Integral del Desarrollo y Convergencia de las Series de Fourier

## 📊 Resumen Ejecutivo

El estudio de las series de Fourier constituye un pilar fundamental en la ingeniería y la teoría de señales, permitiendo la descomposición de funciones complejas en sumas de funciones senoidales elementales. Este documento sintetiza los principios de extensión de funciones no periódicas (mediante formas pares e impares), los métodos de cálculo de coeficientes y las condiciones críticas de convergencia. Se destaca que, si bien la teoría es robusta para la digitalización de señales, presenta desafíos inherentes como la propagación periódica del ruido y el fenómeno de Gibbs en las discontinuidades de salto. La transición hacia la teoría de Wavelets representa una evolución para mitigar estas limitaciones en la reconstrucción de señales finitas.



## 📐 Fundamentos y Extensiones de Funciones

Para aplicar la teoría de Fourier a señales no periódicas definidas en un intervalo positivo $(0, \ell)$, es imperativo extender la función al intervalo $(-\ell, \ell)$. Existen dos formas canónicas para realizar esta extensión basadas en la paridad:

### Clasificación por Paridad

| Tipo de Función | Definición Matemática | Ejemplos Representativos | Comportamiento Gráfico |
| :--- | :--- | :--- | :--- |
| **Par** | $g(x) = g(-x)$ | $\cos(x), x^{2n}$ | Simetría respecto al eje vertical ("espejo"). |
| **Impar** | $g(x) = -g(-x)$ | $\sin(x), x^{2n+1}$ | Rotación de 180 grados respecto al origen. |



## 🧮 Series de Cosenos y Senos

### 1. Extensión Par (Serie de Cosenos)
Se utiliza cuando la función se extiende de forma par. Los coeficientes de senos ($b_n$) resultan ser cero.

$$f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi}{\ell} x\right)$$

$$a_0 = \frac{2}{\ell} \int_{0}^{\ell} f(x)dx$$

$$a_n = \frac{2}{\ell} \int_{0}^{\ell} f(x) \cos\left(\frac{n\pi}{\ell} x\right) dx$$

### 2. Extensión Impar (Serie de Senos)
Se utiliza en extensiones impares. Los coeficientes de cosenos ($a_n$) resultan ser cero.

$$f(x) = \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi}{\ell} x\right)$$

$$b_n = \frac{2}{\ell} \int_{0}^{\ell} f(x) \sin\left(\frac{n\pi}{\ell} x\right) dx$$



## 📉 Convergencia de las Series de Fourier

La capacidad de calcular coeficientes no garantiza que la serie converja a la función original. Históricamente, Paul Du Bois-Reymond demostró en 1873 que existen funciones continuas cuyas series de Fourier no convergen en ningún punto. No obstante, en ingeniería se aplican las condiciones de Dirichlet para asegurar la convergencia.

### Definiciones Críticas para la Convergencia

* **Función continua a pedazos:** Una función $f$ en $[a, b]$ es continua a pedazos si es continua excepto en un número finito de puntos y posee límites laterales finitos en cada discontinuidad (discontinuidades de salto).
* **Función suave a pedazos:** Ocurre cuando tanto $f$ como su derivada $f'$ son continuas a pedazos. Esto implica que la función tiene tangentes continuas excepto en puntos finitos.

### Teorema de Convergencia (Teorema 2.1)

Si $f$ is suave a pedazos en $[-L, L]$, la serie de Fourier converge al promedio de sus límites laterales en cada punto $x$:

$$\text{Serie}(x) = \frac{1}{2}\left(f(x^+) + f(x^-)\right)$$

* Si $f$ es continua en $x$, la serie converge exactamente a $f(x)$.
* Si hay un salto, la serie converge al punto medio del salto.



## ⚠️ Desafíos Técnicos y Fenómenos Observados

### El Fenómeno de Gibbs
Descubierto por Josiah Willard Gibbs (y advertido previamente por Wilbraham), este fenómeno describe el comportamiento de las sumas parciales de una serie de Fourier cerca de una discontinuidad de salto.

* **Características:** Aparecen "picos" o sobreimpulsos que no desaparecen al aumentar el número de términos ($N$).
* **Comportamiento:** A medida que $N$ crece, los picos se mueven más cerca del punto de discontinuidad, pero mantienen su altura relativa, impidiendo una convergencia uniforme en el salto.

### 💻 Consideraciones Computacionales
El desarrollo de series de Fourier en la práctica digital conlleva riesgos de precisión:

* **Propagación de errores:** Los errores en la aproximación de números irracionales (como $\pi$ o $e$) se propagan con mayor rapidez dentro de productos que de sumas.
* **Elección de serie:** Una señal puede descomponerse tanto en senos como en cosenos. La elección suele basarse en la rapidez de cálculo o en la minimización de errores computacionales según la naturaleza de la señal.
* **Limitaciones frente a Wavelets:** Al tratar señales finitas como periódicas, las series de Fourier pueden propagar ruido de forma periódica y dificultar la distinción entre coeficientes importantes y ruido.



## 🔍 Aplicaciones y Operaciones Analíticas

La digitalización busca rescatar información relevante de manera eficiente. La teoría de Fourier sigue siendo vital para señales "casi periódicas" y sirve como base para comprender dominios avanzados (dos o tres dimensiones, imágenes, sólidos).

* **Derivación e Integración:** Bajo ciertas hipótesis, es posible derivar o integrar términos a término una serie de Fourier para obtener representaciones de nuevas señales a partir de señales conocidas.
* **Reconciliación en los extremos:** Para funciones definidas solo en $[-L, L]$, la serie de Fourier crea una "extensión periódica" sobre toda la recta real. La convergencia en los extremos $L$ y $-L$ se rige por el promedio de los valores de la función en dichos límites:

$$\frac{1}{2}\left(f(-L^+) + f(L^-)\right)$$
