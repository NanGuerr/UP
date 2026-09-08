# 📚 Resolución de Actividad: Series de Fourier 📐

**Materia:** Análisis Matemático III b  
**Tema:** Desarrollo en Series de Fourier (Extensión Par e Impar)



## 📌 Introducción y Fundamentación Teórica

Para desarrollar una función $f(x)$ definida en el intervalo de tiempo positivo $(0, L)$ en series de Fourier para funciones no periódicas, existen dos formas canónicas de extender la función al intervalo $(-L, L)$:

### 1. Extensión Par (Serie de Cosenos) 📈
$$f(x) \sim \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right)$$

Donde los coeficientes se calculan como:
$$a_0 = \frac{2}{L} \int_{0}^{L} f(x) \, dx$$
$$a_n = \frac{2}{L} \int_{0}^{L} f(x) \cos\left(\frac{n\pi x}{L}\right) dx$$

### 2. Extensión Impar (Serie de Senos) 📉
$$f(x) \sim \sum_{n=1}^{\infty} b_n \{sen}\left(\frac{n\pi x}{L}\right)$$

Donde los coeficientes se calculan como:
$$b_n = \frac{2}{L} \int_{0}^{L} f(x) \{sen}\left(\frac{n\pi x}{L}\right) dx$$



## 📌 Pregunta 1: Función Constante $f(x) = 9$ en $(0, 4)$ 🔢

Longitud del intervalo: $L = 4$.

### 1.1 Extensión Par (Serie de Cosenos)
- **Cálculo de $a_0$:**
  $$a_0 = \frac{2}{4} \int_{0}^{4} 9 \, dx = \frac{1}{2} [9x]_{0}^{4} = \frac{1}{2}(36 - 0) = 18 \implies \frac{a_0}{2} = 9$$

- **Cálculo de $a_n$ ($n \ge 1$):**
  $$a_n = \frac{2}{4} \int_{0}^{4} 9 \cos\left(\frac{n\pi x}{4}\right) dx = \frac{9}{2} \left[ \frac{4}{n\pi} \{sen}\left(\frac{n\pi x}{4}\right) \right]_{0}^{4} = \frac{18}{n\pi} (\{sen}(n\pi) - \{sen}(0))$$
  Como $\{sen}(n\pi) = 0$ para todo $n \in \mathbb{N}$, resulta $a_n = 0$.

- **Serie de Cosenos resultante:**
  $$f(x) = 9$$

### 1.2 Extensión Impar (Serie de Senos)
- **Cálculo de $b_n$:**
  $$b_n = \frac{2}{4} \int_{0}^{4} 9 \{sen}\left(\frac{n\pi x}{4}\right) dx = \frac{9}{2} \left[ -\frac{4}{n\pi} \cos\left(\frac{n\pi x}{4}\right) \right]_{0}^{4} = -\frac{18}{n\pi} (\cos(n\pi) - \cos(0))$$
  Dado que $\cos(0) = 1$ y $\cos(n\pi) = (-1)^n$:
  $$b_n = \frac{18(1 - (-1)^n)}{n\pi}$$

  - Si $n$ es par ($n = 2k$): $b_n = 0$.
  - Si $n$ es impar ($n = 2k + 1$): $b_{2k+1} = \frac{36}{(2k+1)\pi}$.

- **Serie de Senos resultante:**
  $$f(x) = \sum_{k=0}^{\infty} \frac{36}{(2k+1)\pi} \{sen}\left(\frac{(2k+1)\pi x}{4}\right)$$



## 📌 Pregunta 2: Función Cuadrática $f(x) = 7x - 5x^2$ en $(0, 5)$ 📐

Longitud del intervalo: $L = 5$.

### 2.1 Extensión Par (Serie de Cosenos)
- **Cálculo de $a_0$:**
  $$a_0 = \frac{2}{5} \int_{0}^{5} (7x - 5x^2) \, dx = \frac{2}{5} \left[ \frac{7x^2}{2} - \frac{5x^3}{3} \right]_{0}^{5} = \frac{2}{5} \left( \frac{175}{2} - \frac{625}{3} \right) = -\frac{145}{3} \implies \frac{a_0}{2} = -\frac{145}{6}$$

- **Cálculo de $a_n$ ($n \ge 1$):**
  Aplicando integración por partes dos veces consecutivas:
  $$a_n = \frac{2}{5} \int_{0}^{5} (7x - 5x^2) \cos\left(\frac{n\pi x}{5}\right) dx = \frac{-430(-1)^n - 70}{n^2\pi^2}$$

- **Serie de Cosenos resultante:**
  $$f(x) = -\frac{145}{6} + \sum_{n=1}^{\infty} \left( \frac{-430(-1)^n - 70}{n^2\pi^2} \right) \cos\left(\frac{n\pi x}{5}\right)$$

### 2.2 Extensión Impar (Serie de Senos)
- **Cálculo de $b_n$:**
  Aplicando integración por partes:
  $$b_n = \frac{2}{5} \int_{0}^{5} (7x - 5x^2) \{sen}\left(\frac{n\pi x}{5}\right) dx = \frac{180(-1)^n}{n\pi} + \frac{500(1 - (-1)^n)}{n^3\pi^3}$$

- **Serie de Senos resultante:**
  $$f(x) = \sum_{n=1}^{\infty} \left[ \frac{180(-1)^n}{n\pi} + \frac{500(1 - (-1)^n)}{n^3\pi^3} \right] \{sen}\left(\frac{n\pi x}{5}\right)$$



## 📌 Pregunta 3: Función Exponencial $f(x) = -2e^{-7x}$ en $(0, 4)$ 🧪

Longitud del intervalo: $L = 4$.

### 3.1 Extensión Par (Serie de Cosenos)
- **Cálculo de $a_0$:**
  $$a_0 = \frac{2}{4} \int_{0}^{4} -2e^{-7x} \, dx = -1 \left[ -\frac{1}{7} e^{-7x} \right]_{0}^{4} = \frac{e^{-28} - 1}{7} \implies \frac{a_0}{2} = \frac{e^{-28} - 1}{14}$$

- **Cálculo de $a_n$ ($n \ge 1$):**
  Usando la fórmula integral $\int e^{ax}\cos(bx)dx = \frac{e^{ax}(a\cos(bx) + b\{sen}(bx))}{a^2 + b^2}$:
  $$a_n = \frac{112(e^{-28}(-1)^n - 1)}{784 + n^2\pi^2}$$

- **Serie de Cosenos resultante:**
  $$f(x) = \frac{e^{-28} - 1}{14} + \sum_{n=1}^{\infty} \left( \frac{112(e^{-28}(-1)^n - 1)}{784 + n^2\pi^2} \right) \cos\left(\frac{n\pi x}{4}\right)$$

### 3.2 Extensión Impar (Serie de Senos)
- **Cálculo de $b_n$:**
  Usando la fórmula integral $\int e^{ax}\{sen}(bx)dx = \frac{e^{ax}(a\{sen}(bx) - b\cos(bx))}{a^2 + b^2}$:
  $$b_n = \frac{4n\pi(e^{-28}(-1)^n - 1)}{784 + n^2\pi^2}$$

- **Serie de Senos resultante:**
  $$f(x) = \sum_{n=1}^{\infty} \left( \frac{4n\pi(e^{-28}(-1)^n - 1)}{784 + n^2\pi^2} \right) \{sen}\left(\frac{n\pi x}{4}\right)$$



## 📌 Pregunta 4: Función Exponencial de Base Cualquiera $f(x) = -3 \cdot 5^x$ en $(0, 5)$ 🔬

Reescribiendo la función en base natural: $5^x = e^{x \ln(5)} \implies f(x) = -3e^{x \ln(5)}$.  
Longitud del intervalo: $L = 5$.

### 4.1 Extensión Par (Serie de Cosenos)
- **Cálculo de $a_0$:**
  $$a_0 = \frac{2}{5} \int_{0}^{5} -3e^{x \ln(5)} \, dx = -\frac{6}{5 \ln(5)} (5^5 - 1) = -\frac{18744}{5 \ln(5)} \implies \frac{a_0}{2} = -\frac{9372}{5 \ln(5)}$$

- **Cálculo de $a_n$ ($n \ge 1$):**
  $$a_n = \frac{(30 - 93750(-1)^n)\ln(5)}{25\ln^2(5) + n^2\pi^2}$$

- **Serie de Cosenos resultante:**
  $$f(x) = -\frac{9372}{5\ln(5)} + \sum_{n=1}^{\infty} \left( \frac{(30 - 93750(-1)^n)\ln(5)}{25\ln^2(5) + n^2\pi^2} \right) \cos\left(\frac{n\pi x}{5}\right)$$

### 4.2 Extensión Impar (Serie de Senos)
- **Cálculo de $b_n$:**
  $$b_n = \frac{n\pi(18750(-1)^n - 6)}{25\ln^2(5) + n^2\pi^2}$$

- **Serie de Senos resultante:**
  $$f(x) = \sum_{n=1}^{\infty} \left( \frac{n\pi(18750(-1)^n - 6)}{25\ln^2(5) + n^2\pi^2} \right) \{sen}\left(\frac{n\pi x}{5}\right)$$



## 📌 Pregunta 5: Función Escalón Discontinua a Tramos en $(0, 2)$ 📶

La función se define en $L = 2$ como:
$$f(x) = \begin{cases} 1 & \text{si } 0 < x < 1 \\ -1 & \text{si } 1 < x < 2 \end{cases}$$

### 5.1 Extensión Par (Serie de Cosenos)
- **Cálculo de $a_0$:**
  $$a_0 = \int_{0}^{1} (1) \, dx + \int_{1}^{2} (-1) \, dx = 1 + (-1) = 0 \implies \frac{a_0}{2} = 0$$

- **Cálculo de $a_n$ ($n \ge 1$):**
  $$a_n = \int_{0}^{1} \cos\left(\frac{n\pi x}{2}\right) dx - \int_{1}^{2} \cos\left(\frac{n\pi x}{2}\right) dx = \frac{4}{n\pi} \{sen}\left(\frac{n\pi}{2}\right)$$
  - Si $n$ es par: $a_n = 0$.
  - Si $n$ es impar ($n = 2k + 1$): $a_{2k+1} = \frac{4(-1)^k}{(2k+1)\pi}$.

- **Serie de Cosenos resultante:**
  $$f(x) = \sum_{k=0}^{\infty} \frac{4(-1)^k}{(2k+1)\pi} \cos\left(\frac{(2k+1)\pi x}{2}\right)$$

### 5.2 Extensión Impar (Serie de Senos)
- **Cálculo de $b_n$:**
  $$b_n = \int_{0}^{1} \{sen}\left(\frac{n\pi x}{2}\right) dx - \int_{1}^{2} \{sen}\left(\frac{n\pi x}{2}\right) dx = \frac{2}{n\pi} \left( 1 - 2\cos\left(\frac{n\pi}{2}\right) + (-1)^n \right)$$
  - Únicamente los términos con $n = 4m + 2$ resultan no nulos, dando $b_{4m+2} = \frac{4}{(2m+1)\pi}$.

- **Serie de Senos resultante:**
  $$f(x) = \sum_{m=0}^{\infty} \frac{4}{(2m+1)\pi} \{sen}\left(\frac{(4m+2)\pi x}{2}\right)$$
