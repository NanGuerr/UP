# 📚 Parcial de Análisis Matemático III - Series de Fourier y Series de Potencias 📐



## 📌 Ejercicio 1: Derivación de Series de Fourier ✍️

### 📝 Transcripción del Enunciado
> Sea $g(x)$ tal que $g'(x)$ es suave a tramos en el intervalo $(-1, 1)$.  
> Sea $\frac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cos\left(\frac{n \pi x}{L}\right) + b_n \{sen}\left(\frac{n \pi x}{L}\right) \right)$ la serie de Fourier de $g(x)$.  
> **Calcular la serie de Fourier de $g'(x)$.**



### 🔍 Procedimiento Detallado

1. **Definición de la Serie de Fourier:**
   Para un período $2L$ (en este caso $L = 1$), la representación en serie de Fourier de una función suave a tramos $g(x)$ se expresa como:
   $$g(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} \left[ a_n \cos\left(\frac{n \pi x}{L}\right) + b_n \{sen}\left(\frac{n \pi x}{L}\right) \right]$$

2. **Diferenciación Término a Término:**
   Bajo las condiciones de suavidad a tramos para $g'(x)$, la serie de la derivada se obtiene diferenciando la serie término a término respecto a $x$:
   - La derivada de la constante $\frac{a_0}{2}$ es $0$.
   - Derivada de $a_n \cos\left(\frac{n \pi x}{L}\right)$:
     $$\frac{d}{dx} \left[ a_n \cos\left(\frac{n \pi x}{L}\right) \right] = - a_n \left(\frac{n \pi}{L}\right) \{sen}\left(\frac{n \pi x}{L}\right)$$
   - Derivada de $b_n \{sen}\left(\frac{n \pi x}{L}\right)$:
     $$\frac{d}{dx} \left[ b_n \{sen}\left(\frac{n \pi x}{L}\right) \right] = b_n \left(\frac{n \pi}{L}\right) \cos\left(\frac{n \pi x}{L}\right)$$

3. **Reorganización de los Coeficientes:**
   $$g'(x) \sim \sum_{n=1}^{\infty} \left[ b_n \left(\frac{n \pi}{L}\right) \cos\left(\frac{n \pi x}{L}\right) - a_n \left(\frac{n \pi}{L}\right) \{sen}\left(\frac{n \pi x}{L}\right) \right]$$

   Para $L = 1$:
   $$g'(x) \sim \sum_{n=1}^{\infty} \left[ n \pi b_n \cos(n \pi x) - n \pi a_n \{sen}(n \pi x) \right]$$



### ✅ Respuesta Final
La serie de Fourier de la derivada $g'(x)$ es:
$$g'(x) = \sum_{n=1}^{\infty} \left[ \frac{n \pi}{L} b_n \cos\left(\frac{n \pi x}{L}\right) - \frac{n \pi}{L} a_n \{sen}\left(\frac{n \pi x}{L}\right) \right]$$



## 📌 Ejercicio 2: Serie de Taylor Centrada en $a = 3$ 🎯

### 📝 Transcripción del Enunciado
> A partir de las series de Maclaurin de $\{sen}(x)$, $\cos(x)$ y la serie geométrica, hallar la serie de Taylor de $F(x)$ centrada en $a = 3$:
> $$F(x) = \cos(x) - \frac{3}{4+x}$$
> *Sugerencia:* Escribir $x = (x-3) + 3$ y utilizar las identidades trigonométricas:
> - $\{sen}(a+b) = \{sen}(a)\cos(b) + \cos(a)\{sen}(b)$
> - $\cos(a+b) = \cos(a)\cos(b) - \{sen}(a)\{sen}(b)$



### 🔍 Procedimiento Detallado

1. **Desarrollo del Término Trigonométrico $\cos(x)$:**
   Hacemos el cambio $x = (x-3) + 3$:
   $$\cos(x) = \cos((x-3) + 3)$$
   Aplicando la identidad del coseno de una suma con $a = x-3$ y $b = 3$:
   $$\cos(x) = \cos(x-3)\cos(3) - \{sen}(x-3)\{sen}(3)$$

   Sustituyendo las series de Maclaurin evaluadas en $(x-3)$:
   $$\cos(x-3) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n}$$
   $$\{sen}(x-3) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1}$$

   Por lo tanto:
   $$\cos(x) = \cos(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \{sen}(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1}$$

2. **Desarrollo del Término Racional $-\frac{3}{4+x}$:**
   Expresamos el denominador en términos de $(x-3)$:
   $$4 + x = 4 + (x-3) + 3 = 7 + (x-3) = 7 \left(1 + \frac{x-3}{7}\right)$$

   Lueog:
   $$\frac{3}{4+x} = \frac{3}{7 \left(1 + \frac{x-3}{7}\right)} = \frac{3}{7} \sum_{n=0}^{\infty} \left(-\frac{x-3}{7}\right)^n = \frac{3}{7} \sum_{n=0}^{\infty} \frac{(-1)^n}{7^n} (x-3)^n$$

3. **Ensamblaje de la Serie de Taylor Completa para $F(x)$:**
   $$F(x) = \cos(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \{sen}(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1} - \sum_{n=0}^{\infty} \frac{3(-1)^n}{7^{n+1}} (x-3)^n$$



### ✅ Respuesta Final
$$F(x) = \sum_{n=0}^{\infty} \left[ \cos(3) \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \{sen}(3) \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1} - \frac{3(-1)^n}{7^{n+1}} (x-3)^n \right]$$



## 📌 Ejercicio 3: Radio e Intervalo de Convergencia 📏

### 📝 Transcripción del Enunciado
> Dada la serie de potencias:
> $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} x^{8n}$$
> 1. Hallar su radio de convergencia $R$.
> 2. Analizar el comportamiento en los bordes.



### 🔍 Procedimiento Detallado

1. **Cálculo del Radio de Convergencia $R$:**
   Sea $a_n = \frac{\ln(n)}{n^4} x^{8n}$. Aplicamos el Criterio del Cociente (d'Alembert):
   $$L = \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = \lim_{n \to \infty} \left| \frac{\ln(n+1)}{(n+1)^4} x^{8(n+1)} \cdot \frac{n^4}{\ln(n) x^{8n}} \right|$$
   $$L = |x|^8 \lim_{n \to \infty} \left( \frac{\ln(n+1)}{\ln(n)} \cdot \left(\frac{n}{n+1}\right)^4 \right)$$

   Evaluando los límites por separado:
   - $\lim_{n \to \infty} \frac{\ln(n+1)}{\ln(n)} = \lim_{n \to \infty} \frac{\frac{1}{n+1}}{\frac{1}{n}} = 1$ (por L'Hôpital).
   - $\lim_{n \to \infty} \left(\frac{n}{n+1}\right)^4 = 1$.

   Por lo tanto:
   $$L = |x|^8$$

   Para que la serie converja, se requiere $L < 1$:
   $$|x|^8 < 1 \implies |x| < 1$$

   **Radio de convergencia:** $R = 1$.

2. **Análisis en los Bordes ($x = 1$ y $x = -1$):**
   - **Para $x = 1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} (1)^{8n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^4}$$
     Comparamos con la $p$-serie $\sum \frac{1}{n^3}$ ($p=3 > 1$, la cual converja):
     $$\lim_{n \to \infty} \frac{\frac{\ln(n)}{n^4}}{\frac{1}{n^3}} = \lim_{n \to \infty} \frac{\ln(n)}{n} = 0$$
     Dado que $\sum \frac{1}{n^3}$ converge, por el Criterio de Comparación, $\sum \frac{\ln(n)}{n^4}$ **converge en $x = 1$**.

   - **Para $x = -1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} (-1)^{8n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^4}$$
     Puesto que $(-1)^{8n} = 1$, obtenemos exactamente la misma serie que también **converge en $x = -1$**.



### ✅ Respuesta Final
* **Radio de Convergencia:** $R = 1$
* **Intervalo de Convergencia:** $[-1, 1]$ (La serie es **absolutamente convergente** en ambos extremos).



## 📌 Pregunta 4: Integración de Serie de Maclaurin 🧪

### 📝 Transcripción del Enunciado
> Utilizando la serie de Maclaurin de $e^{-x^2}$, calcular la integral definida:
> $$\int_{0}^{2} e^{-x^2} \, dx$$



### 🔍 Procedimiento Detallado

1. **Serie de Maclaurin de $e^{-x^2}$:**
   Partiendo de la serie exponencial $e^u = \sum_{n=0}^{\infty} \frac{u^n}{n!}$, sustituimos $u = -x^2$:
   $$e^{-x^2} = \sum_{n=0}^{\infty} \frac{(-x^2)^n}{n!} = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!}$$

2. **Integración Término a Término:**
   $$\int_{0}^{2} e^{-x^2} \, dx = \int_{0}^{2} \left( \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!} \right) dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{n!} \left[ \frac{x^{2n+1}}{2n+1} \right]_{0}^{2}$$

3. **Evaluación de los Límites de Integración:**
   $$\int_{0}^{2} e^{-x^2} \, dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{n!} \cdot \frac{2^{2n+1}}{2n+1} = \sum_{n=0}^{\infty} \frac{(-1)^n \cdot 2 \cdot 4^n}{n! (2n+1)}$$



### ✅ Respuesta Final
$$\int_{0}^{2} e^{-x^2} \, dx = \sum_{n=0}^{\infty} \frac{(-1)^n 2^{2n+1}}{n!(2n+1)} = \sum_{n=0}^{\infty} \frac{(-1)^n \cdot 2 \cdot 4^n}{n!(2n+1)}$$



## 📌 Pregunta 5: Serie de Cosenos de Fourier 📈

### 📝 Transcripción del Enunciado
> Sea $f(x) = 3x^2 - 5x$. Desarrollar en serie de cosenos de Fourier en el intervalo $(0, 4)$.



### 🔍 Procedimiento Detallado

1. **Fórmula de la Serie de Cosenos (Extensión Par):**
   Para $L = 4$, la serie de cosenos está dada por:
   $$f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n \pi x}{4}\right)$$

2. **Cálculo del Coeficiente $a_0$:**
   $$a_0 = \frac{2}{4} \int_{0}^{4} (3x^2 - 5x) \, dx = \frac{1}{2} \left[ x^3 - \frac{5x^2}{2} \right]_{0}^{4}$$
   $$a_0 = \frac{1}{2} \left( 64 - \frac{5(16)}{2} \right) = \frac{1}{2} (64 - 40) = \frac{24}{2} = 12$$

3. **Cálculo de los Coeficientes $a_n$:**
   $$a_n = \frac{2}{4} \int_{0}^{4} (3x^2 - 5x) \cos\left(\frac{n \pi x}{4}\right) dx = \frac{1}{2} \int_{0}^{4} (3x^2 - 5x) \cos\left(\frac{n \pi x}{4}\right) dx$$

   Aplicando integración por partes tabular:
   - $u = 3x^2 - 5x \implies u' = 6x - 5 \implies u'' = 6 \implies u''' = 0$
   - $dv = \cos\left(\frac{n \pi x}{4}\right) dx \implies v = \frac{4}{n \pi} \{sen}\left(\frac{n \pi x}{4}\right) \implies v_2 = -\frac{16}{n^2 \pi^2} \cos\left(\frac{n \pi x}{4}\right) \implies v_3 = -\frac{64}{n^3 \pi^3} \{sen}\left(\frac{n \pi x}{4}\right)$

   $$\int_0^4 (3x^2 - 5x) \cos\left(\frac{n \pi x}{4}\right) dx = \left[ (3x^2 - 5x) \frac{4}{n\pi} \{sen}\left(\frac{n\pi x}{4}\right) + (6x-5) \frac{16}{n^2\pi^2} \cos\left(\frac{n\pi x}{4}\right) - 6 \frac{64}{n^3\pi^3} \{sen}\left(\frac{n\pi x}{4}\right) \right]_0^4$$

   Evaluando en los límites $0$ y $4$:
   - Términos en $\{sen}$ se anulan en $x=0$ y $x=4$.
   - Para $x=4$: $(6(4)-5) \frac{16}{n^2 \pi^2} \cos(n \pi) = 19 \cdot \frac{16}{n^2 \pi^2} (-1)^n = \frac{304(-1)^n}{n^2 \pi^2}$
   - Para $x=0$: $(6(0)-5) \frac{16}{n^2 \pi^2} \cos(0) = -\frac{80}{n^2 \pi^2}$

   Restando límite superior menos inferior:
   $$\int_0^4 (3x^2 - 5x) \cos\left(\frac{n \pi x}{4}\right) dx = \frac{304(-1)^n + 80}{n^2 \pi^2}$$

   Multiplicando por $\frac{1}{2}$:
   $$a_n = \frac{152(-1)^n + 40}{n^2 \pi^2}$$



### ✅ Respuesta Final
$$f(x) = 6 + \sum_{n=1}^{\infty} \left( \frac{152(-1)^n + 40}{n^2 \pi^2} \right) \cos\left(\frac{n \pi x}{4}\right)$$



## 📌 Pregunta 6: Serie de Maclaurin de la Segunda Derivada 🔘

### 📝 Transcripción del Enunciado
> Sea $F(x) = \ln(1 + 2x)$. Seleccionar la opción correcta respecto a la serie de Maclaurin de su segunda derivada $F''(x)$:
> - **a)** $F''(x)$ tiene radio de convergencia $R = +\infty$
> - **b)** La serie de Maclaurin de $F''(x)$ es $\sum_{n=0}^{\infty} -1^n \cdot 2^n \cdot n \cdot x^{n-1}$
> - **c)** $F''(x)$ tiene radio de convergencia $R = 1/2$
> - **d)** La serie de Maclaurin de $F''(x)$ es $\sum_{n=0}^{\infty} (-1)^n 2^{n+1} n x^{n-1}$



### 🔍 Procedimiento Detallado

1. **Cálculo de Derivadas de $F(x)$:**
   - $F(x) = \ln(1 + 2x)$
   - Primera derivada: $F'(x) = \frac{2}{1+2x} = 2(1 + 2x)^{-1}$
   - Segunda derivada: $F''(x) = -4(1 + 2x)^{-2} = -\frac{4}{(1+2x)^2}$

2. **Obtención de la Serie de Maclaurin de $F'(x)$:**
   Utilizando la serie geométrica $\frac{1}{1-u} = \sum_{n=0}^{\infty} u^n$ para $|u| < 1$, con $u = -2x$:
   $$F'(x) = 2 \sum_{n=0}^{\infty} (-2x)^n = 2 \sum_{n=0}^{\infty} (-1)^n 2^n x^n = \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n$$
   Esta serie converge para $|-2x| < 1 \implies |x| < \frac{1}{2}$. Por ende, su radio de convergencia es $R = \frac{1}{2}$.

3. **Derivación para Obtener $F''(x)$:**
   Diferenciando la serie de $F'(x)$ término a término:
   $$F''(x) = \frac{d}{dx} \left[ \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n \right] = \sum_{n=1}^{\infty} (-1)^n 2^{n+1} n x^{n-1}$$

   Dado que la diferenciación término a término no altera el radio de convergencia de una serie de potencias, el radio de convergencia de $F''(x)$ sigue siendo:
   $$R = \frac{1}{2}$$



### ✅ Respuesta Correcta
👉 **c) La serie de Maclaurin de $F''(x)$ (segunda derivada) tiene radio de convergencia $R = 1/2$**  
👉 **d) La serie de Maclaurin de $F''(x)$ es $\sum_{n=1}^{\infty} (-1)^n 2^{n+1} n x^{n-1}$**
