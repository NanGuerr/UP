# 📂 Introducción a las Series de Fourier 🎶

Este documento presenta una visión general de las Series de Fourier, desde su fundamentación matemática en espacios abstractos hasta su aplicación vital en la ingeniería de señales.

---

### 1. El Concepto Fundamental y los Espacios de Hilbert 🌌
Para entender las series de Fourier, primero hay que pensar en los vectores. Así como en un plano bidimensional un vector se descompone usando los ejes $X$ e $Y$, en matemática avanzada se utilizan espacios de infinitas dimensiones conocidos como **Espacios de Hilbert**.

* **Funciones como vectores:** En estos espacios, los "vectores" son en realidad funciones 📈.
* **Producto escalar:** El producto escalar entre dos funciones se define a través de una integral: 
    $$\langle f,g\rangle=\int_{a}^{b}f(x)g(x)dx$$
* **Base Ortogonal:** La serie trigonométrica de Fourier es una representación de una función utilizando una base ortogonal de infinitos elementos 📐. Esta base está compuesta por la función constante $1$, y las funciones $\cos(\frac{n\pi}{l}x)$ y $\sin(\frac{n\pi}{l}x)$.

---

### 2. Definición de la Serie y Coeficientes de Fourier 🧮
Si tenemos una función $f(x)$ definida en un intervalo $[-l, l]$, su serie trigonométrica de Fourier se expresa como una suma infinita:

$$f(x)=\frac{a_{0}}{2}+\sum_{n=1}^{\infty}[a_{n}\cos(\frac{n\pi}{l}x)+b_{n}\sin(\frac{n\pi}{l}x)]$$

Para que esta igualdad se cumpla, es necesario calcular las constantes o **coeficientes de Fourier** mediante las siguientes integrales:

* **Término independiente (Promedio):** $a_{0}=\frac{1}{l}\int_{-l}^{l}f(x)dx$ 📍
* **Coeficientes de los cosenos:** $a_{n}=\frac{1}{l}\int_{-l}^{l}f(x)\cos(\frac{n\pi}{l}x)dx$ 🏔️
* **Coeficientes de los senos:** $b_{n}=\frac{1}{l}\int_{-l}^{l}f(x)\sin(\frac{n\pi}{l}x)dx$ 🌊

---

### 3. Atajo de Cálculo: Funciones Pares e Impares ✂️
El cálculo de estas integrales puede ser extenso, pero se puede ahorrar mucho trabajo si se observan las simetrías de la función:

* **Funciones Pares 🌗:** Una función es par si cumple que $f(-x)=f(x)$. Su gráfica es simétrica respecto al eje vertical. Si la función es par, todos los coeficientes $b_{n}$ (los de los senos) son iguales a **cero**.
* **Funciones Impares 🌓:** Una función es impar si cumple que $f(-x)=-f(x)$. Su gráfica es simétrica respecto al origen. Si la función es impar, tanto $a_{0}$ como todos los coeficientes $a_{n}$ (los de los cosenos) son iguales a **cero**.

---

### 4. Condiciones y Convergencia 🚦
No todas las funciones pueden representarse mediante una serie de Fourier. Las reglas principales (Condiciones de Dirichlet) son:

* **Condición práctica:** La función debe ser suave a tramos (continua y derivable salvo por saltos finitos). Se excluyen las funciones con asíntotas verticales 🚫.
* **Convergencia puntual:** En los puntos donde la función es continua, la serie converge exactamente al valor de $f(x)$ ✅.
* **Discontinuidades:** En los saltos, la serie converge al **promedio matemático** de los límites laterales ⚖️.

---

### 5. Aplicación a la Teoría de Señales 📡
Este desarrollo matemático es el pilar de la ingeniería moderna:

* **Modelado:** Las funciones actúan como modelos de señales reales donde la variable suele ser el tiempo ⏱️.
* **Descomposición:** Toda señal puede descomponerse en una cantidad infinita de ondas simples (senos y cosenos) 📻.
* **Digitalización:** Las señales continuas se interpretan como funciones, y los coeficientes ($a_{0}, a_{n}, b_{n}$) actúan como las **componentes digitales** extraídas de esa señal 🔢.
