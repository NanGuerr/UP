# 📚 Parcial de Análisis Matemático III B - Universidad de Palermo 📐

**Estudiante:** Lucas Manuel Loreno  
**Materia:** Análisis Matemático 3B (Primer Parcial)



## 📌 Ejercicio 1: Radio de Convergencia y Comportamiento en los Bordes 📏

### 📝 Transcripción del Enunciado
> Sea la serie de potencias dada por:
> $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^3} \cdot x^{4n}$$
> Hallar su radio de convergencia y analizar el comportamiento en los bordes.



### 🔍 Procedimiento Detallado

1. **Cálculo del Radio de Convergencia (Criterio de la Raíz o del Cociente):**
   Sea $a_n = \frac{\ln(n)}{n^3} x^{4n}$. Aplicamos el Criterio de la Raíz (Cauchy):
   $$L = \lim_{n \to \infty} \sqrt[n]{|a_n|} = \lim_{n \to \infty} \left( \frac{(\ln(n))^{1/n}}{(n^{1/n})^3} |x|^4 \right)$$
   Sabemos por límites notables que $\lim_{n \to \infty} n^{1/n} = 1$ y $\lim_{n \to \infty} (\ln(n))^{1/n} = 1$. Por lo tanto:
   $$L = |x|^4$$
   Para que la serie converja absolutamente, exigimos $L < 1$:
   $$|x|^4 < 1 \implies |x| < 1$$
   El **radio de convergencia** es $R = 1$.

2. **Análisis en los Bordes ($x = 1$ y $x = -1$):**
   - **En $x = 1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^3} (1)^{4n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^3}$$
     Comparamos con la $p$-serie $\sum \frac{1}{n^2}$ ($p = 2 > 1$, la cual es convergente) usando el Criterio de Comparación por Límite:
     $$\lim_{n \to \infty} \frac{\frac{\ln(n)}{n^3}}{\frac{1}{n^2}} = \lim_{n \to \infty} \frac{\ln(n)}{n} = 0$$
     Dado que el límite es cero y la serie de referencia converge, la serie original **converge en $x = 1$**.
   - **En $x = -1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^3} (-1)^{4n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^3}$$
     Dado que $(-1)^{4n} = 1$ para todo $n$ entero, la serie en $x = -1$ es idéntica a la evaluada en $x = 1$, por lo que también **converge**.



### ✅ Respuesta Final
* **Radio de Convergencia:** $R = 1$
* **Intervalo de Convergencia:** $[-1, 1]$ (convergente en ambos extremos).



## 📌 Ejercicio 2: Serie de Taylor Centrada en $a = 3$ 🎯

### 📝 Transcripción del Enunciado
> A partir de las series de Maclaurin de $\operatorname{sen}(x)$ y de $\cos(x)$, junto con la serie geométrica, hallar la serie de Taylor de:
> $$f(x) = \cos(x) - \frac{3}{4+x}$$
> centrada en $a = 3$.  
> *Sugerencia:* Escribir $x = (x-3) + 3$ y utilizar identidades trigonométricas:
> - $\operatorname{sen}(a+b) = \operatorname{sen}(a)\cos(b) + \cos(a)\operatorname{sen}(b)$
> - $\cos(a+b) = \cos(a)\cos(b) - \operatorname{sen}(a)\operatorname{sen}(b)$



### 🔍 Procedimiento Detallado

1. **Desarrollo del Término Trigonométrico $\cos(x)$:**
   Aplicando la sustitución sugerida $x = (x-3) + 3$:
   $$\cos(x) = \cos((x-3) + 3)$$
   Usando la identidad del coseno de la suma con $a = x-3$ y $b = 3$:
   $$\cos(x) = \cos(x-3)\cos(3) - \operatorname{sen}(x-3)\operatorname{sen}(3)$$

   Sustituyendo las series de Maclaurin estándar evaluadas en el argumento $(x-3)$:
   $$\cos(x-3) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n}$$
   $$\operatorname{sen}(x-3) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1}$$

   Por lo tanto:
   $$\cos(x) = \cos(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \operatorname{sen}(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1}$$

2. **Desarrollo del Término Racional $-\frac{3}{4+x}$:**
   Expresamos el denominador en función de $(x-3)$:
   $$4 + x = 4 + (x-3) + 3 = 7 + (x-3) = 7 \left(1 + \frac{x-3}{7}\right)$$
   Aplicando la serie geométrica $\frac{1}{1 - u} = \sum_{n=0}^{\infty} u^n$:
   $$-\frac{3}{4+x} = -\frac{3}{7 \left(1 - \left(-\frac{x-3}{7}\right)\right)} = -\frac{3}{7} \sum_{n=0}^{\infty} \left(-\frac{x-3}{7}\right)^n = \sum_{n=0}^{\infty} \frac{3(-1)^{n+1}}{7^{n+1}} (x-3)^n$$

3. **Ensamblaje Final:**
   $$f(x) = \sum_{n=0}^{\infty} \left[ \cos(3) \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \operatorname{sen}(3) \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1} + \frac{3(-1)^{n+1}}{7^{n+1}} (x-3)^n \right]$$



### ✅ Respuesta Final
$$f(x) = \sum_{n=0}^{\infty} \left[ \cos(3) \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \operatorname{sen}(3) \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1} + \frac{3(-1)^{n+1}}{7^{n+1}} (x-3)^n \right]$$



## 📌 Ejercicio 3: Desarrollo en Serie de Senos 📈

### 📝 Transcripción del Enunciado
> Sea $f'(x) = 2x^2 + 7x$. Desarrollar en serie de senos en el intervalo $(0, 4)$.  
> *(Nota: Asumiendo $f(x) = 2x^2 + 7x$ o interpretando la función base a integrar).*



### 🔍 Procedimiento Detallado

1. **Fórmula de la Serie de Senos (Extensión Impar):**
   Para un intervalo $(0, L)$ con $L = 4$, la serie de senos se define como:
   $$f(x) = \sum_{n=1}^{\infty} b_n \operatorname{sen}\left(\frac{n\pi x}{4}\right)$$
   Donde el coeficiente $b_n$ se calcula mediante:
   $$b_n = \frac{2}{4} \int_{0}^{4} f(x) \operatorname{sen}\left(\frac{n\pi x}{4}\right) dx = \frac{1}{2} \int_{0}^{4} (2x^2 + 7x) \operatorname{sen}\left(\frac{n\pi x}{4}\right) dx$$

2. **Cálculo del Coeficiente $b_n$:**
   Aplicando integración por partes tabular a $\int (2x^2 + 7x) \operatorname{sen}\left(\frac{n\pi x}{4}\right) dx$:
   - Derivadas: $u = 2x^2 + 7x \implies 4x + 7 \implies 4 \implies 0$
   - Integrales sucesivas de $\operatorname{sen}\left(\frac{n\pi x}{4}\right)$: $-\frac{4}{n\pi}\cos\left(\frac{n\pi x}{4}\right) \to -\frac{16}{n^2\pi^2}\operatorname{sen}\left(\frac{n\pi x}{4}\right) \to \frac{64}{n^3\pi^3}\cos\left(\frac{n\pi x}{4}\right)$

   Evaluando entre $0$ y $4$:
   - Los términos con seno se anulan en $x = 0$ y $x = 4$.
   - En $x = 4$: $-(2(16) + 7(4)) \frac{4}{n\pi} \cos(n\pi) + 4 \left(\frac{64}{n^3\pi^3}\right) \cos(n\pi) = -(32 + 28)\frac{4}{n\pi}(-1)^n + \frac{256}{n^3\pi^3}(-1)^n = -\frac{240}{n\pi}(-1)^n + \frac{256}{n^3\pi^3}(-1)^n$
   - En $x = 0$: Evaluando los términos en coseno evaluados en $0$ nos da $-\frac{28(4)}{n\pi}(1) + \frac{256}{n^3\pi^3}(1) = -\frac{112}{n\pi} + \frac{256}{n^3\pi^3}$.

   Agrupando y multiplicando por el factor externo $\frac{1}{2}$:
   $$b_n = \frac{1}{2} \left[ \left(-\frac{240(-1)^n + 112}{n\pi}\right) + \frac{256((-1)^n - 1)}{n^3\pi^3} \right]$$



### ✅ Respuesta Final
$$f(x) = \sum_{n=1}^{\infty} \left[ \frac{56 - 120(-1)^n}{n\pi} + \frac{128((-1)^n - 1)}{n^3\pi^3} \right] \operatorname{sen}\left(\frac{n\pi x}{4}\right)$$



## 📌 Ejercicio 4: Serie de Maclaurin de la Segunda Derivada 🔘

### 📝 Transcripción del Enunciado
> Sea $f(x) = \ln(1+2x)$. La serie de Maclaurin de $f''(x)$ (segunda derivada) es:
> - a) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^n \cdot n \cdot x^{n-2}$ y tiene radio de convergencia $R = +\infty$
> - b) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^n \cdot n \cdot x^{n-3}$ y tiene radio de convergencia $R = 1/2$
> - c) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^n \cdot x^{n-1}$ y tiene radio de convergencia $R = +\infty$
> - d) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^n / x^{n-1}$ y tiene radio de convergencia $R = 1/2$



### 🔍 Procedimiento Detallado

1. **Cálculo de la Derivada y Serie Base:**
   - $f(x) = \ln(1+2x)$
   - $f'(x) = \frac{2}{1+2x} = 2(1+2x)^{-1}$
   - Utilizando la serie geométrica para $f'(x)$:
     $$f'(x) = 2 \sum_{n=0}^{\infty} (-2x)^n = \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n \quad \text{para } |-2x| < 1 \implies |x| < \frac{1}{2}$$

2. **Cálculo de la Segunda Derivada $f''(x)$:**
   Derivando término a término la serie de potencias de $f'(x)$:
   $$f''(x) = \frac{d}{dx} \left[ \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n \right] = \sum_{n=1}^{\infty} (-1)^n 2^{n+1} n x^{n-1}$$
   El radio de convergencia se conserva tras la derivación término a término, manteniéndose en $R = 1/2$.



### ✅ Opción Correcta
*(Nota: Analizando las opciones del examen original correspondientes al formato algebraico equivalente)*. El radio de convergencia correcto es **$R = 1/2$**.



## 📌 Ejercicio 5: Coeficientes de Fourier en Intervalos Simétricos ⚖️

### 📝 Transcripción del Enunciado
> Decidir si la siguiente afirmación es verdadera o falsa:  
> En el desarrollo en serie de Fourier de $f(x) = 6x$ en cualquier intervalo $(-e, e)$, es válido $a_0 = a_n = 0$.



### 🔍 Procedimiento Detallado

1. **Análisis de la Paridad de la Función:**
   - La función dada es $f(x) = 6x$.
   - Evaluamos $f(-x) = 6(-x) = -6x = -f(x)$.
   - Por lo tanto, $f(x)$ es una **función impar**.

2. **Propiedades de Simetría en Series de Fourier en $(-L, L)$:**
   - Si una función $f(x)$ es **impar** en un intervalo simétrico $(-L, L)$:
     - Todos los coeficientes de los cosenos ($a_n$) y el término independiente ($a_0$) son **necesariamente cero** ($a_0 = 0$, $a_n = 0$), ya que la integral de una función impar en un intervalo simétrico es cero.
     - La serie de Fourier se reduce puramente a una serie de senos ($b_n \neq 0$).



### ✅ Respuesta Final
La afirmación es **VERDADERA**. En el intervalo $(-e, e)$ (que es simétrico respecto al origen), al ser $f(x) = 6x$ una función impar, se cumple estrictamente que $a_0 = 0$ y $a_n = 0$.
