# 📚 Parcial de Análisis Matemático III B - Resolución Detallada 📐



## 📌 Ejercicio 1: Derivación de Series de Fourier ✍️

### 📝 Transcripción del Enunciado
> Sea $g(x)$ tal que $g'(x)$ es suave a tramos en el intervalo $(-1, 1)$.  
> Sea $\frac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cos\left(\frac{nx}{L}\right) + b_n \operatorname{sen}\left(\frac{nx}{L}\right) \right)$ la serie de Fourier.  
> ¿A qué es igual la serie de Fourier de $2 \cdot g'(x)$?



### 🔍 Procedimiento Detallado

1. **Definición de la Serie de Fourier:**
   La representación en serie de Fourier de la función $g(x)$ se expresa como:
   $$g(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} \left[ a_n \cos\left(\frac{nx}{L}\right) + b_n \operatorname{sen}\left(\frac{nx}{L}\right) \right]$$

2. **Diferenciación Término a Término:**
   Bajo la condición de que $g'(x)$ es suave a tramos, podemos diferenciar la serie término a término respecto a $x$:
   - La derivada del término independiente $\frac{a_0}{2}$ es $0$.
   - Derivada del término en coseno:
     $$\frac{d}{dx} \left[ a_n \cos\left(\frac{nx}{L}\right) \right] = -a_n \left(\frac{n}{L}\right) \operatorname{sen}\left(\frac{nx}{L}\right)$$
   - Derivada del término en seno:
     $$\frac{d}{dx} \left[ b_n \operatorname{sen}\left(\frac{nx}{L}\right) \right] = b_n \left(\frac{n}{L}\right) \cos\left(\frac{nx}{L}\right)$$

3. **Multiplicación por el escalar 2:**
   $$2 \cdot g'(x) = 2 \sum_{n=1}^{\infty} \left[ b_n \left(\frac{n}{L}\right) \cos\left(\frac{nx}{L}\right) - a_n \left(\frac{n}{L}\right) \operatorname{sen}\left(\frac{nx}{L}\right) \right]$$



### ✅ Respuesta Final
$$2 \cdot g'(x) = \sum_{n=1}^{\infty} \frac{2n}{L} \left[ b_n \cos\left(\frac{nx}{L}\right) - a_n \operatorname{sen}\left(\frac{nx}{L}\right) \right]$$



## 📌 Ejercicio 2: Serie de Taylor Centrada en $a = 3$ 🎯

### 📝 Transcripción del Enunciado
> A partir de las series de Maclaurin de $\operatorname{sen}(x)$ y $\cos(x)$, junto con la serie geométrica, hallar la serie de Taylor de $F(x) = \cos(x) - \frac{3}{4+x}$ centrada en $a = 3$.  
> *Sugerencia:* Escribir $x = (x-3) + 3$ y utilizar las identidades trigonométricas:
> - $\operatorname{sen}(a+b) = \operatorname{sen}(a)\cos(b) + \cos(a)\operatorname{sen}(b)$
> - $\cos(a+b) = \cos(a)\cos(b) - \operatorname{sen}(a)\operatorname{sen}(b)$



### 🔍 Procedimiento Detallado

1. **Desarrollo del Término Trigonométrico $\cos(x)$:**
   Aplicando el cambio sugerido $x = (x-3) + 3$:
   $$\cos(x) = \cos((x-3) + 3)$$
   Usando la identidad del coseno de una suma:
   $$\cos(x) = \cos(x-3)\cos(3) - \operatorname{sen}(x-3)\operatorname{sen}(3)$$

   Sustituyendo los desarrollos de Maclaurin para el argumento $(x-3)$:
   $$\cos(x-3) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n}$$
   $$\operatorname{sen}(x-3) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1}$$

   Por tanto:
   $$\cos(x) = \cos(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \operatorname{sen}(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1}$$

2. **Desarrollo de la Fracción Racional $-\frac{3}{4+x}$:**
   Expresamos el denominador en función de $(x-3)$:
   $$4 + x = 4 + (x-3) + 3 = 7 + (x-3) = 7 \left(1 + \frac{x-3}{7}\right)$$
   Aplicando la expansión de la serie geométrica $\frac{1}{1 - u} = \sum_{n=0}^{\infty} u^n$:
   $$-\frac{3}{4+x} = -\frac{3}{7 \left(1 - \left(-\frac{x-3}{7}\right)\right)} = -\frac{3}{7} \sum_{n=0}^{\infty} \left(-\frac{x-3}{7}\right)^n = \sum_{n=0}^{\infty} \frac{3(-1)^{n+1}}{7^{n+1}} (x-3)^n$$

3. **Ensamblaje de la Serie de Taylor:**
   $$F(x) = \cos(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \operatorname{sen}(3) \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1} + \sum_{n=0}^{\infty} \frac{3(-1)^{n+1}}{7^{n+1}} (x-3)^n$$



### ✅ Respuesta Final
$$F(x) = \sum_{n=0}^{\infty} \left[ \cos(3) \frac{(-1)^n}{(2n)!} (x-3)^{2n} - \operatorname{sen}(3) \frac{(-1)^n}{(2n+1)!} (x-3)^{2n+1} + \frac{3(-1)^{n+1}}{7^{n+1}} (x-3)^n \right]$$



## 📌 Ejercicio 3: Radio e Intervalo de Convergencia 📏

### 📝 Transcripción del Enunciado
> Dada la serie de potencias:
> $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} x^{8n}$$
> 1. Hallar su radio de convergencia.
> 2. Analizar el comportamiento en los bordes.



### 🔍 Procedimiento Detallado

1. **Cálculo del Radio de Convergencia (Criterio del Cociente o Raíz):**
   Sea $a_n = \frac{\ln(n)}{n^4} x^{8n}$. Aplicamos el Criterio de la Raíz (Cauchy):
   $$L = \lim_{n \to \infty} \sqrt[n]{|a_n|} = \lim_{n \to \infty} \left( \frac{(\ln(n))^{1/n}}{(n^{1/n})^4} |x|^8 \right)$$
   Sabemos por límites notables que $\lim_{n \to \infty} n^{1/n} = 1$ y $\lim_{n \to \infty} (\ln(n))^{1/n} = 1$. Por lo tanto:
   $$L = |x|^8$$
   Para la convergencia absoluta exigimos $L < 1$:
   $$|x|^8 < 1 \implies |x| < 1$$
   El **radio de convergencia** es $R = 1$.

2. **Análisis en los Bordes ($x = 1$ y $x = -1$):**
   - **En $x = 1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} (1)^{8n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^4}$$
     Aplicamos el Criterio de Comparación con la $p$-serie $\sum \frac{1}{n^3}$ ($p = 3 > 1$, convergente):
     $$\lim_{n \to \infty} \frac{\frac{\ln(n)}{n^4}}{\frac{1}{n^3}} = \lim_{n \to \infty} \frac{\ln(n)}{n} = 0$$
     Dado que el límite es finito y la serie de referencia converge, la serie original **converge en $x = 1$**.
   - **En $x = -1$:**
     $$\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} (-1)^{8n} = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^4}$$
     Como $(-1)^{8n} = 1$, el comportamiento es idéntico, por lo que también **converge en $x = -1$**.



### ✅ Respuesta Final
* **Radio de Convergencia:** $R = 1$
* **Intervalo de Convergencia:** $[-1, 1]$ (convergente en ambos extremos).



## 📌 Pregunta 4: Integración mediante Series de Maclaurin 🧪

### 📝 Transcripción del Enunciado
> Utilizando la serie de Maclaurin, calcular la integral definida:
> $$\int_{0}^{2} e^{-x^2} \, dx$$



### 🔍 Procedimiento Detallado

1. **Desarrollo en Serie de Maclaurin de $e^{-x^2}$:**
   Sabemos que $e^u = \sum_{n=0}^{\infty} \frac{u^n}{n!}$. Sustituyendo $u = -x^2$:
   $$e^{-x^2} = \sum_{n=0}^{\infty} \frac{(-x^2)^n}{n!} = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!}$$

2. **Integración Término a Término:**
   $$\int_{0}^{2} e^{-x^2} \, dx = \int_{0}^{2} \left( \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!} \right) dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{n!} \left[ \frac{x^{2n+1}}{2n+1} \right]_{0}^{2}$$

3. **Evaluación de los Límites:**
   $$\int_{0}^{2} e^{-x^2} \, dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{n!} \cdot \frac{2^{2n+1}}{2n+1}$$



### ✅ Respuesta Final
$$\int_{0}^{2} e^{-x^2} \, dx = \sum_{n=0}^{\infty} \frac{(-1)^n \cdot 2^{2n+1}}{n!(2n+1)}$$



## 📌 Pregunta 5: Desarrollo en Serie de Cosenos 📈

### 📝 Transcripción del Enunciado
> Sea $f(x) = 3x^2 - 5x$. Desarrollar en serie de cosenos en el intervalo $(0, 4)$.



### 🔍 Procedimiento Detallado

1. **Fórmula de la Serie de Cosenos (Extensión Par):**
   Para un intervalo $(0, L)$ con $L = 4$:
   $$f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{4}\right)$$
   Donde los coeficientes se calculan como:
   $$a_0 = \frac{2}{4} \int_{0}^{4} (3x^2 - 5x) \, dx$$
   $$a_n = \frac{2}{4} \int_{0}^{4} (3x^2 - 5x) \cos\left(\frac{n\pi x}{4}\right) dx$$

2. **Cálculo de $a_0$:**
   $$a_0 = \frac{1}{2} \left[ x^3 - \frac{5x^2}{2} \right]_{0}^{4} = \frac{1}{2} \left( 64 - \frac{5(16)}{2} \right) = \frac{1}{2} (64 - 40) = 12$$

3. **Cálculo de $a_n$:**
   $$a_n = \frac{1}{2} \int_{0}^{4} (3x^2 - 5x) \cos\left(\frac{n\pi x}{4}\right) dx$$
   Aplicando integración por partes tabular:
   - Derivadas: $u = 3x^2 - 5x \implies 6x - 5 \implies 6 \implies 0$
   - Integrales sucesivas de $\cos\left(\frac{n\pi x}{4}\right)$: $\frac{4}{n\pi}\operatorname{sen}\left(\frac{n\pi x}{4}\right) \to -\frac{16}{n^2\pi^2}\cos\left(\frac{n\pi x}{4}\right) \to -\frac{64}{n^3\pi^3}\operatorname{sen}\left(\frac{n\pi x}{4}\right)$

   Evaluando entre $0$ y $4$:
   - Los términos con seno se anulan en ambos límites.
   - En $x = 4$: $(6(4)-5) \frac{16}{n^2\pi^2} \cos(n\pi) = 19 \cdot \frac{16}{n^2\pi^2} (-1)^n = \frac{304(-1)^n}{n^2\pi^2}$
   - En $x = 0$: $(6(0)-5) \frac{16}{n^2\pi^2} \cos(0) = -\frac{80}{n^2\pi^2}$

   Restando y multiplicando por el factor $\frac{1}{2}$:
   $$a_n = \frac{1}{2} \left( \frac{304(-1)^n + 80}{n^2\pi^2} \right) = \frac{152(-1)^n + 40}{n^2\pi^2}$$



### ✅ Respuesta Final
$$f(x) = 6 + \sum_{n=1}^{\infty} \left( \frac{152(-1)^n + 40}{n^2\pi^2} \right) \cos\left(\frac{n\pi x}{4}\right)$$



## 📌 Pregunta 6: Serie de Maclaurin de la Segunda Derivada 🔘

### 📝 Transcripción del Enunciado
> Sea $F(x) = \ln(1+2x)$. Analizar las opciones dadas sobre la serie de Maclaurin de su segunda derivada $F''(x)$:
> - a) La serie de Maclaurin de $F''(x)$ tiene radio de convergencia $R = +\infty$.
> - b) La serie de Maclaurin de $F''(x)$ es $\sum_{n=0}^{\infty} -1^n \cdot 2^n \cdot n \cdot n \cdot x^{n-1}$.
> - c) La serie de Maclaurin de $F''(x)$ tiene radio de convergencia $R = 1/2$.
> - d) La serie de Maclaurin de $F''(x)$ es $\sum_{n=0}^{\infty} (-1)^n \cdot 2^{n+1} \cdot n \cdot x^{n-1}$.



### 🔍 Procedimiento Detallado

1. **Cálculo de Derivadas de $F(x)$:**
   - $F(x) = \ln(1+2x)$
   - $F'(x) = \frac{2}{1+2x} = 2(1+2x)^{-1}$
   - $F''(x) = -4(1+2x)^{-2} = -\frac{4}{(1+2x)^2}$

2. **Obtención de la Serie de Maclaurin:**
   Partiendo de la serie geométrica para $F'(x)$:
   $$F'(x) = 2 \sum_{n=0}^{\infty} (-2x)^n = \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n \quad \text{para } |-2x| < 1 \implies |x| < \frac{1}{2}$$
   Derivando término a término para obtener $F''(x)$:
   $$F''(x) = \frac{d}{dx} \left[ \sum_{n=0}^{\infty} (-1)^n 2^{n+1} x^n \right] = \sum_{n=1}^{\infty} (-1)^n 2^{n+1} n x^{n-1}$$
   El radio de convergencia de una serie de potencias no se altera al derivarla, por lo que se mantiene en $R = \frac{1}{2}$.



### ✅ Opciones Correctas
👉 **c)** Tiene radio de convergencia $R = 1/2$.  
👉 **d)** La serie de Maclaurin es $\sum_{n=1}^{\infty} (-1)^n 2^{n+1} n x^{n-1}$.
