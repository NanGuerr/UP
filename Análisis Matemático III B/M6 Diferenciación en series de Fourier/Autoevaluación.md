# 📚 Diferenciación e Integración de Series de Fourier

A continuación, se presenta la explicación analítica detallada para cada una de las preguntas:



### ❓ Pregunta 1
* **Consigna:** Sea $f(x) = x^{1/3}$ en el intervalo $(-l, l)$.
* **Análisis Teórico:** 
  La función $f(x) = x^{1/3}$ es continua en todo el intervalo $[-l, l]$. Su derivada es $f'(x) = \frac{1}{3}x^{-2/3} = \frac{1}{3\sqrt{x^2}}$ para $x \neq 0$. 
  Al analizar los límites laterales cuando $x \to 0$, se obtiene $\lim_{x \to 0} f'(x) = +\infty$. 
  Dado que los límites laterales no son números reales finitos, la derivada $f'(x)$ no es suave a tramos en $(-l, l)$. Por lo tanto, no se cumplen las hipótesis del Teorema de Derivación.
* **Opción Correcta:** **B. No se puede aplicar el teorema para derivación.**



### ❓ Pregunta 2
* **Consigna:** Sea $SF1$ la serie de Fourier de $f(x) = x^5$ y $SF2$ la serie de Fourier de $g(x) = x^6$.
* **Análisis Teórico:** 
  La función $g(x) = x^6$ es continua y derivable en todo $(-l, l)$ con $g'(x) = 6x^5 = 6f(x)$. 
  Al ser $g'(x)$ suave a tramos, el Teorema de Derivación permite derivar término a término la serie de Fourier $SF2$:
  $$\frac{d}{dx}[SF2] = 6 \cdot SF1$$
  Multiplicando la serie derivada por la constante $\frac{1}{6}$, se obtiene exactamente $SF1$.
* **Opción Correcta:** **B. Derivando término a término $SF2$ y multiplicando por $\frac{1}{6}$, se obtiene $SF1$.**



### ❓ Pregunta 3
* **Consigna:** Si $f(x)$ es par, aplicando el teorema para integración, el resultado es una serie numérica tal que:
* **Análisis Teórico:** 
  Al ser $f(x)$ una función par, su serie de Fourier contiene únicamente el término constante y términos en coseno:
  $$f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi}{l}x\right)$$
  Al integrar término a término entre dos límites $c$ y $d$, la integral de cada término en coseno es $\int \cos\left(\frac{n\pi}{l}x\right)dx = \frac{l}{n\pi} \sin\left(\frac{n\pi}{l}x\right)$. De este modo, los sumandos de la serie numérica resultante son únicamente términos en seno (evaluados en los límites).
* **Opción Correcta:** **D. No aparecen cosenos.**



### ❓ Pregunta 4
* **Consigna:** Al aplicar el teorema para integración a $f(x) = x^2 + x^3$ en $(-3,3)$, la integral entre 0 y 2 es igual a una serie numérica que tiene solo tiene cosenos.
* **Análisis Teórico:** 
  La serie de Fourier de $f(x) = x^2 + x^3$ tiene componentes en coseno (provenientes de la parte par $x^2$) y componentes en seno (provenientes de la parte impar $x^3$). Al integrar entre 0 y 2:
  * La integración de los cosenos produce términos en seno.
  * La integración de los senos produce términos en coseno.
  Por lo tanto, la serie numérica resultante contiene tanto senos como cosenos, por lo que la afirmación es falsa.
* **Opción Correcta:** **Falso.**



### ❓ Pregunta 5
* **Consigna:** Al aplicar el teorema para integración a $f(x) = 3x$ en $(-3,3)$, la integral entre 0 y 2 es igual a una serie numérica que tiene solo tiene cosenos.
* **Análisis Teórico:** 
  La función $f(x) = 3x$ es impar, por lo que su serie de Fourier contiene exclusivamente términos en seno:
  $$f(x) = \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi}{3}x\right)$$
  Al integrar término a término entre 0 y 2, la integral de $\sin\left(\frac{n\pi}{3}x\right)$ resulta en $\frac{3}{n\pi}\left[1 - \cos\left(\frac{2n\pi}{3}\right)\right]$ evaluada en los límites. Así, la serie numérica resultante posee únicamente términos en coseno.
* **Opción Correcta:** **Verdadero.**



### ❓ Pregunta 6
* **Consigna:** Sea $f(x)$ con derivada suave en todo $(-l,l)$, dada por su serie de Fourier $\frac{a_0}{2} + \sum_{n=1}^{\infty} \left[a_n \cos\left(\frac{n\pi}{l}x\right) + b_n \sin\left(\frac{n\pi}{l}x\right)\right]$. Al aplicar el teorema para derivación a $f(x)$ y luego el teorema para integración entre 0 y $x$:
* **Análisis Teórico:**
  * Al derivar término a término $f(x)$, se elimina la constante $\frac{a_0}{2}$ y se obtiene la serie de $f'(x)$.
  * Al integrar $f'(t)$ entre $0$ y $x$, se calcula $\int_0^x f'(t) dt = f(x) - f(0)$ (por el Teorema Fundamental del Cálculo).
  * Integrando los términos derivados de la serie entre $0$ y $x$, se reconstruye exactamente la sumatoria original ajustada con el término independiente $f(0)$.
* **Opción Correcta:** **B. $f(x) - f(0) = \sum_{n=1}^{\infty} \left[ a_n \cos\left(\frac{n\pi}{l}x\right) + b_n \sin\left(\frac{n\pi}{l}x\right) \right]$ con convergencia puntual.**



### ❓ Pregunta 7
* **Consigna:** La serie de Fourier de $f(x) = 4e^{4x}$:
* **Análisis Teórico:** 
  Tomando $g(x) = e^{4x}$, se observa que su derivada es $g'(x) = 4e^{4x} = f(x)$. Tanto $g(x)$ como $g'(x)$ son continuas y suaves en $(-l, l)$. Siguiendo la metodología mostrada en el Ejemplo 2 del Apunte (donde se deriva $g(x)=e^{2x}$ para obtener la serie de $2e^{2x}$), aplicando el Teorema de Derivación a $g(x) = e^{4x}$ se obtiene directamente la serie de Fourier de $f(x) = 4e^{4x}$.
* **Opción Correcta:** **A. Se puede obtener solo aplicando teorema para derivar a la representación en serie de Fourier de $g(x) = e^{4x}$.**



### ❓ Pregunta 8
* **Consigna:** Sea $f(x)$ impar. Aplicando el teorema para derivación:
* **Análisis Teórico:** 
  La serie de Fourier de una función impar solo contiene términos en seno: $f(x) = \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi}{l}x\right)$. Al derivar término a término, la derivada de $\sin\left(\frac{n\pi}{l}x\right)$ es $\left(\frac{n\pi}{l}\right)\cos\left(\frac{n\pi}{l}x\right)$. Puesto que la derivada de una función impar es una función par, la serie derivada resultante está compuesta únicamente por términos en coseno.
* **Opción Correcta:** **B. Solo aparecen cosenos.**



### ❓ Pregunta 9
* **Consigna:** Sea $f(x) = x^{3/2}$. El teorema para derivación se puede aplicar a $f(x)$ con convergencia puntual en todo el intervalo $(-l, l)$.
* **Análisis Teórico:** 
  En el conjunto de los números reales, la función $f(x) = x^{3/2} = \sqrt{x^3}$ no está definida para valores negativos $x < 0$ contenidos en $(-l, l)$ con $l > 0$. Al no estar definida en todo el dominio negativo del intervalo abierto ni poseer derivada continua por la izquierda en el origen, no satisface las hipótesis de ser derivable y suave a tramos en todo $(-l, l)$.
* **Opción Correcta:** **Falso.**



### ❓ Pregunta 10
* **Consigna:** Sea $f(x) = |x|$. El teorema para derivación se puede aplicar a $f(x)$ con convergencia puntual en $(-l, 0) \cup (0, l)$.
* **Análisis Teórico:** 
  La función $f(x) = |x|$ es continua en $[-l, l]$. Su derivada es $f'(x) = -1$ en $(-l, 0)$ y $f'(x) = 1$ en $(0, l)$. Los límites laterales de la derivada en $x = 0$ existen y son finitos ($\lim_{x \to 0^-} f'(x) = -1$ y $\lim_{x \to 0^+} f'(x) = 1$), lo que confirma que $f'(x)$ es suave a tramos en los intervalos abiertos. Tal como se especifica en la nota del Teorema de Derivación del apunte, la serie derivada converge puntualmente a $f'(x)$ en todos los puntos donde $f'$ es continua, es decir, en $(-l, 0) \cup (0, l)$.
* **Opción Correcta:** **Verdadero.**
