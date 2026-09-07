# 📚 Parcial de Análisis Matemático III B - Universidad de Palermo 📐


## 📌 Ejercicio 1: Radio de Convergencia y Comportamiento en los Bordes 📏

### 📝 Transcripción del Enunciado
> Sea la serie de potencias dada por:
> $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^5} \cdot x^{4n}$$
> 1. Hallar su radio de convergencia. 
> 2. Analizar el comportamiento en los bordes. 



### 🔍 Procedimiento Detallado

1. **Cálculo del Radio de Convergencia (Criterio de la Raíz / Cauchy):**
   Sea $a_n = \frac{\ln(n)}{n^5} x^{4n}$. Aplicamos la raíz enésima:
   $$L = \lim_{n \to \infty} \sqrt[n]{|a_n|} = \lim_{n \to \infty} \left( \frac{(\ln(n))^{1/n}}{(n^{1/n})^5} |x|^4 \right)$$
   Sabemos que $\lim_{n \to \infty} n^{1/n} = 1$ y $\lim_{n \to \infty} (\ln(n))^{1/n} = 1$. Por lo tanto:
   $$L = |x|^4$$
   Para asegurar la convergencia absoluta según el criterio de la raíz, exigimos $L < 1$:
   $$|x|^4 < 1 \implies |x| < 1$$
   El **radio de convergencia** es $R = 1$.

2. **Análisis en los Bordes ($x = 1$ y $x = -1$):**
   - **En $x = 1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^5} (1)^{4n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^5}$$
     Comparamos con la $p$-serie $\sum \frac{1}{n^3}$ ($p = 3 > 1$, la cual es convergente) utilizando el Criterio de Comparación por Límite:
     $$\lim_{n \to \infty} \frac{\frac{\ln(n)}{n^5}}{\frac{1}{n^3}} = \lim_{n \to \infty} \frac{\ln(n)}{n^2} = 0$$
     Dado que el límite es cero y la serie de referencia converge, la serie original **converge absolutamente en $x = 1$**.
   - **En $x = -1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^5} (-1)^{4n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^5}$$
     Puesto que $(-1)^{4n} = 1$ para cualquier entero $n$, la serie en $x = -1$ es idéntica a la evaluada en $x = 1$, por lo que también **converge**.



### ✅ Respuesta Final
* **Radio de Convergencia:** $R = 1$
* **Intervalo de Convergencia:** $[-1, 1]$ (convergente en ambos extremos).



## 📌 Ejercicio 2: Desarrollo en Serie de Cosenos 📈

### 📝 Transcripción del Enunciado
> Sea $f(x) = 5x^2 + 8$. Desarrollar en serie de cosenos en el intervalo $(0, 3)$.   
> *Sugerencia:* $\int x^2 \cos(ax) dx = \frac{2x}{a^2} \cos(ax) + \left(\frac{x^2}{a} - \frac{2}{a^3}\right) \operatorname{sen}(ax) + C$ 



### 🔍 Procedimiento Detallado

1. **Fórmula de la Serie de Cosenos (Extensión Par):**
   Para un intervalo $(0, L)$ con $L = 3$:
   $$f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{3}\right)$$
   Donde los coeficientes se calculan mediante:
   $$a_0 = \frac{2}{3} \int_{0}^{3} (5x^2 + 8) \, dx$$
   $$a_n = \frac{2}{3} \int_{0}^{3} (5x^2 + 8) \cos\left(\frac{n\pi x}{3}\right) dx$$

2. **Cálculo del Coeficiente $a_0$:**
   $$a_0 = \frac{2}{3} \left[ 5\frac{x^3}{3} + 8x \right]_{0}^{3} = \frac{2}{3} \left( 5(9) + 24 \right) = \frac{2}{3} (45 + 24) = \frac{2}{3} (69) = 46$$
   Por lo tanto, el término independiente es $\frac{a_0}{2} = 23$.

3. **Cálculo de los Coeficientes $a_n$:**
   $$a_n = \frac{2}{3} \int_{0}^{3} (5x^2 + 8) \cos\left(\frac{n\pi x}{3}\right) dx$$
   Separamos la integral en dos partes:
   $$\int_{0}^{3} 5x^2 \cos\left(\frac{n\pi x}{3}\right) dx + \int_{0}^{3} 8 \cos\left(\frac{n\pi x}{3}\right) dx$$
   
   Aplicando la sugerencia provista para la primera integral con $a = \frac{n\pi}{3}$:
   - $\int x^2 \cos(ax) dx = \frac{2x}{a^2}\cos(ax) + \left(\frac{x^2}{a} - \frac{2}{a^3}\right)\operatorname{sen}(ax)$
   
   Evaluando en los límites de $0$ a $3$:
   - La parte con seno se anula tanto en $x = 0$ como en $x = 3$ (ya que $\operatorname{sen}(n\pi) = 0$).
   - Evaluando la parte con coseno en $x = 3$:
     $$\left[ 5 \cdot \frac{2(3)}{(n\pi/3)^2} \cos(n\pi) \right] - 0 = \frac{30}{(n\pi/3)^2} (-1)^n = \frac{270}{n^2\pi^2} (-1)^n$$
   - La segunda integral $\int_{0}^{3} 8 \cos\left(\frac{n\pi x}{3}\right) dx = 8 \left[ \frac{3}{n\pi} \operatorname{sen}\left(\frac{n\pi x}{3}\right) \right]_0^3 = 0$.

   Multiplicando por el factor externo $\frac{2}{3}$:
   $$a_n = \frac{2}{3} \left( \frac{270(-1)^n}{n^2\pi^2} \right) = \frac{180(-1)^n}{n^2\pi^2}$$



### ✅ Respuesta Final
$$f(x) = 23 + \sum_{n=1}^{\infty} \frac{180(-1)^n}{n^2\pi^2} \cos\left(\frac{n\pi x}{3}\right)$$



## 📌 Ejercicio 3: Serie de Maclaurin de la Segunda Derivada 🔘

### 📝 Transcripción del Enunciado
> Sea $f(x) = \ln(1+2x)$. La serie de Maclaurin de $f''(x) = f^{(2)}$ (segunda derivada) es:   
> - a) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^{n+1} \cdot n \cdot x^{n-1}$ y tiene radio de convergencia $R = +\infty$.   
> - b) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^{n+1} \cdot n \cdot x^{n-1}$ y tiene radio de convergencia $R = 1/2$.   
> - c) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^{n+1} \cdot x^{n-1}$ y tiene radio de convergencia $R = +\infty$.   
> - d) $\sum_{n=1}^{\infty} (-1)^n \cdot 2^{n+1} \cdot x^{n-1}$ y tiene radio de convergencia $R = 1/2$. 



### 🔍 Procedimiento Detallado

1. **Cálculo de las Derivadas de $f(x)$:**
   - Función original: $f(x) = \ln(1+2x)$
   - Primera derivada: $f'(x) = \frac{2}{1+2x} = 2(1+2x)^{-1}$
   - Segunda derivada: $f''(x) = -4(1+2x)^{-2} = -\frac{4}{(1+2x)^2}$

2. **Obtención de la Serie de Maclaurin para $f'(x)$:**
   Partiendo de la expansión de la serie geométrica $\frac{1}{1-u} = \sum_{n=0}^{\infty} u^n$ para $|u| < 1$:
   $$f'(x) = 2 \sum_{n=0}^{\infty} (-2x)^n = \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n$$
   Esta serie converge cuando $|-2x| < 1 \implies |x| < \frac{1}{2}$, por lo que su radio de convergencia es $R = 1/2$.

3. **Derivación Término a Término para $f''(x)$:**
   Diferenciando la serie de potencias de $f'(x)$:
   $$f''(x) = \frac{d}{dx} \left[ \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n \right] = \sum_{n=1}^{\infty} (-1)^n 2^{n+1} n x^{n-1}$$
   La derivación término a término de una serie de potencias conserva su radio de convergencia original, el cual sigue siendo $R = 1/2$.



### ✅ Opción Correcta
La opción correcta es la **b**:
$$\sum_{n=1}^{\infty} (-1)^n \cdot 2^{n+1} \cdot n \cdot x^{n-1} \quad \text{con radio de convergencia } R = \frac{1}
