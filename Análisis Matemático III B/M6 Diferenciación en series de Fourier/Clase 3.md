# 📐 Clase: Análisis Matemático III B



## ✏️ Ejercicio 1 (Módulo 6) / Referencia: Módulo 5, Ejercicio 2

### 📋 Antecedentes y Definiciones Iniciales
En el Módulo 5 (Ejercicio 2) se definieron y calcularon las series de senos y cosenos para la función $g(x)$ en el intervalo $(0,2)$:

* **Función base:** 
  $$g(x) = 2x^2 - x$$
* **Derivada de la función base:** 
  $$g'(x) = 4x - 1$$



### 🎯 Enunciado del Problema
Dada la función $f(x)$ definida por partes en el intervalo $(-2, 2)$:

$$f(x) = \begin{cases} 1 - 4x & \text{si } -2 < x < 0 \\ 4x - 1 & \text{si } 0 < x < 2 \end{cases}$$

Se pide **hallar la Serie de Fourier de $f(x)$ en el intervalo $(-2, 2)$**.



### 💡 Análisis Gráfico y Sugerencia Resolutiva

1. **Observación sobre la discontinuidad:**
   La función $f(x)$ presenta una **discontinuidad de salto fino** (discontinuidad de salto) en $x = 0$.

2. **Construcción de la función primitiva $F(x)$:**
   Se define la extensión impar de $g(x)$, denotada por $F(x)$, en el intervalo $(-2, 2)$ tal que:
   
   $$F(x) = \begin{cases} x - 2x^2 & \text{si } -2 < x < 0 \\ 2x^2 - x & \text{si } 0 < x < 2 \end{cases}$$

   * **Propiedad de imparidad:** 
     $$F(-x) = -F(x)$$
   * **Relación con las Series:** 
     $$\text{Serie de Fourier de } F(x) = \text{Serie de senos de } g(x)$$
   * **Relación de derivada:** 
     $$F'(x) = f(x) \quad \text{para todo } x \neq 0$$



### 🔍 Procedimiento Resolutivo: Teorema de Derivación

Para obtener la Serie de Fourier de $f(x)$, se aplica el **Teorema de Derivación término a término** a la Serie de Senos de $g(x)$ previamente calculada:

1. **Serie de Senos de $g(x)$ (obtenida en Módulo 5, Ej. 2):**
   $$F(x) = \sum_{n=1}^{\infty} b_n \cdot \sin\left(\frac{n\pi x}{2}\right)$$

2. **Derivación de la serie con respecto a $x$:**
   $$f(x) = F'(x) = \frac{d}{dx} \left[ \sum_{n=1}^{\infty} b_n \cdot \sin\left(\frac{n\pi x}{2}\right) \right]$$
   $$f(x) = \sum_{n=1}^{\infty} b_n \cdot \left(\frac{n\pi}{2}\right) \cdot \cos\left(\frac{n\pi x}{2}\right)$$

3. **Convergencia en el punto de discontinuidad:**
   * La serie **converge puntualmente** a $f(x)$ en $(-2,0) \cup (0,2)$.
   * En el punto de salto $x = 0$, la serie evaluada en $x = 0$ coincide con el promedio de los límites laterales de $f(x)$:
     $$\frac{f(0^+) + f(0^-)}{2} = \frac{(-1) + (1)}{2} = 0$$



## 🧮 Ejercicio 4: Teorema de Integración Término a Término

### 📋 Enunciado del Problema
Sea $g(x)$ una función suave a tramos en el intervalo $(-5,5)$. Sus coeficientes de Fourier en dicho intervalo son $a_0$, $a_n$ y $b_n$.

Se requiere hallar la integral definida en el subintervalo $(0,2)$:

$$\int_{0}^{2} g(x) \, dx$$

expresada en términos de los coeficientes de Fourier de $g(x)$.



### 🔍 Desarrollo Paso a Paso

1. **Sustitución de $g(x)$ por su Serie de Fourier en $(-5, 5)$:**
   $$\int_{0}^{2} g(x) \, dx = \int_{0}^{2} \left[ \frac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cdot \cos\left(\frac{n\pi x}{5}\right) + b_n \cdot \sin\left(\frac{n\pi x}{5}\right) \right) \right] dx$$

2. **Distribución de la integral (Teorema de Integración):**
   $$\int_{0}^{2} g(x) \, dx = \int_{0}^{2} \frac{a_0}{2} \, dx + \sum_{n=1}^{\infty} \left[ a_n \int_{0}^{2} \cos\left(\frac{n\pi x}{5}\right) \, dx + b_n \int_{0}^{2} \sin\left(\frac{n\pi x}{5}\right) \, dx \right]$$

3. **Cálculo de las integrales individuales:**

   * **Primer término (constante):**
     $$\int_{0}^{2} \frac{a_0}{2} \, dx = \frac{a_0}{2} \cdot \left( 2 - 0 \right) = a_0$$

   * **Término en Coseno:**
     $$\int_{0}^{2} \cos\left(\frac{n\pi x}{5}\right) \, dx = \left[ \left(\frac{5}{n\pi}\right) \cdot \sin\left(\frac{n\pi x}{5}\right) \right]_{0}^{2} = \left(\frac{5}{n\pi}\right) \cdot \sin\left(\frac{2n\pi}{5}\right)$$

   * **Término en Seno:**
     $$\int_{0}^{2} \sin\left(\frac{n\pi x}{5}\right) \, dx = \left[ -\left(\frac{5}{n\pi}\right) \cdot \cos\left(\frac{n\pi x}{5}\right) \right]_{0}^{2} = \left(\frac{5}{n\pi}\right) \cdot \left[ 1 - \cos\left(\frac{2n\pi}{5}\right) \right]$$

4. **Sustitución y Resultado Final:**

   $$\int_{0}^{2} g(x) \, dx = a_0 + \sum_{n=1}^{\infty} \left[ a_n \cdot \left(\frac{5}{n\pi}\right) \cdot \sin\left(\frac{2n\pi}{5}\right) + b_n \cdot \left(\frac{5}{n\pi}\right) \cdot \left( 1 - \cos\left(\frac{2n\pi}{5}\right) \right) \right]$$

   O de forma equivalente factorizada:

   $$\int_{0}^{2} g(x) \, dx = a_0 + \sum_{n=1}^{\infty} \frac{5}{n\pi} \left[ a_n \cdot \sin\left(\frac{2n\pi}{5}\right) + b_n \cdot \left( 1 - \cos\left(\frac{2n\pi}{5}\right) \right) \right]$$
