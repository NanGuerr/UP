# 📄 Resolución del Parcial de Análisis Matemático IIIb 🎓

He generado la resolución completa, detallada y con rigor académico de cada uno de los ejercicios del examen parcial en un documento PDF de alta calidad titulado `resolucion_parcial.pdf`, el cual ya está disponible en tu panel de Studio. 📁

A continuación, te presento una síntesis explicativa del paso a paso resolutivo para cada uno de los seis ejercicios de la evaluación:



## 🔹 Ejercicio 1: Diferenciación de Series de Fourier y Convergencia 📈

El ejercicio analiza el comportamiento de la derivada de una función $g(x)$ cuya derivada $g'(x)$ es suave a tramos en el intervalo $(-1, 1)$.

* **Fundamento Teórico:** Por el teorema de diferenciación término a término, si $g(x)$ es continua en el intervalo cerrado y $g(-1) = g(1)$, la serie de derivadas coincide con la serie de Fourier de $g'(x)$.
* **Punto de Discontinuidad:** Como $g'(x)$ es suave a tramos, puede presentar saltos finitos. El Teorema de Dirichlet establece que su serie de Fourier converge al promedio de los límites laterales:
  $$\text{Suma de la Serie} = \frac{g'(x^+) + g'(x^-)}{2}$$

**Conclusión:** Al multiplicar por $2$, la expresión $2 \cdot g'(x)$ (o el doble de la suma de la serie derivada) converge exactamente a la suma de los límites laterales $g'(x^+) + g'(x^-)$ en los puntos de discontinuidad, lo cual equivale a $2 \cdot g'(x)$ en todo punto donde la derivada sea continua. ✅



## 🔹 Ejercicio 2: Desarrollo en Serie de Taylor de $F(x) = \cos(x) - \frac{3}{4+x}$ centrado en $a=3$ 🎯

Para resolver este desarrollo, separamos la función en su parte trigonométrica y su parte racional utilizando la sugerencia $x = (x-3) + 3$:

1. **Parte trigonométrica ($\cos(x)$):** Aplicando la identidad de suma de ángulos para el coseno:
   $$\cos(x) = \cos((x-3)+3) = \cos(3)\cos(x-3) - \sin(3)\sin(x-3)$$
   Sustituyendo los desarrollos de Maclaurin de $\cos(u)$ y $\sin(u)$ para $u = (x-3)$ se obtiene la serie en potencias de $(x-3)$.

2. **Parte racional ($-\frac{3}{4+x}$):** Reescribimos el denominador como $7 + (x-3)$ y extraemos factor común $7$ para usar la serie geométrica estándar:
   $$-\frac{3}{7 + (x-3)} = -\frac{3}{7} \cdot \frac{1}{1 + \frac{x-3}{7}} = \sum_{n=0}^{\infty} \frac{3 \cdot (-1)^{n+1}}{7^{n+1}} (x-3)^n$$

**Resultado:** El desarrollo final es la suma de ambas componentes. Los primeros términos de la serie son:

$$F(x) = \left[ \cos(3) - \frac{3}{7} \right] + \left[ -\sin(3) + \frac{3}{49} \right](x-3) + \left[ -\frac{\cos(3)}{2} - \frac{3}{343} \right](x-3)^2 + \dots$$



## 🔹 Ejercicio 3: Radio e Intervalo de Convergencia de $\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4} x^{8n}$ 🔍

* **Cálculo del Radio ($R$):** Aplicamos el Criterio de D'Alembert (cociente) para el término general de la serie:
  $$\lim_{n \to \infty} \left| \frac{u_{n+1}(x)}{u_n(x)} \right| = |x|^8 \cdot \lim_{n \to \infty} \frac{\ln(n+1)}{\ln(n)} \cdot \lim_{n \to \infty} \left( \frac{n}{n+1} \right)^4 = |x|^8 \cdot 1 \cdot 1 = |x|^8$$
  Para asegurar convergencia absoluta, exigimos $|x|^8 < 1 \implies |x| < 1$, lo que nos da un radio de convergencia $R = 1$.

* **Análisis en los bordes ($x = \pm 1$):** Al evaluar en los extremos, $x^{8n} = (\pm 1)^{8n} = 1$, reduciendo la expresión a la serie numérica $\sum_{n=1}^{\infty} \frac{\ln(n)}{n^4}$. Como $\ln(n) < n^{0.5}$ para valores grandes de $n$, se cumple que $\frac{\ln(n)}{n^4} < \frac{1}{n^{3.5}}$.
  La serie auxiliar $\sum \frac{1}{n^{3.5}}$ es una serie $p$ convergente ($p = 3.5 > 1$). Por comparación directa, la serie original converge absolutamente en ambos extremos.

**Intervalo de convergencia:** $[-1, 1]$ 🏁



## 🔹 Pregunta 4: Integración de $\int_0^2 e^{-x^2} dx$ mediante Maclaurin 🧮

* **Desarrollo:** Sustituimos $t = -x^2$ en la serie exponencial para obtener $e^{-x^2} = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!}$.

* **Integración término a término:**
  $$\int_0^2 e^{-x^2} dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{n!} \left[ \frac{x^{2n+1}}{2n+1} \right]_0^2 = \sum_{n=0}^{\infty} \frac{(-1)^n \cdot 2^{2n+1}}{n! (2n+1)}$$

* **Identidad de potencias:** Dado que $2^{2n+1} = 2 \cdot 4^n$, la serie resultante es exactamente:
  $$\sum_{n=0}^{\infty} \frac{2 \cdot (-1)^n \cdot 4^n}{n! (2n+1)}$$

Esto demuestra de forma rigurosa que el error de digitalización original en el examen corresponde al término matemático $(2n+1)$ en el denominador. ⚙️



## 🔹 Pregunta 5: Serie de Cosenos de $f(x) = 3x^2 - 5x$ en el intervalo $(0,4)$ 📊

Buscamos un desarrollo en serie de cosenos con $L = 4$:

* **Coeficiente $a_0$:** Representa el valor promedio escalado de la función:
  $$a_0 = \frac{2}{4} \int_0^4 (3x^2 - 5x) dx = \frac{1}{2} \left[ x^3 - \frac{5}{2}x^2 \right]_0^4 = \frac{1}{2} (64 - 40) = 12 \implies \frac{a_0}{2} = 6$$

* **Coeficientes $a_n$ (para $n \ge 1$):** Se integran por partes dos veces consecutivas en el intervalo $(0,4)$:
  $$a_n = \frac{2}{4} \int_0^4 (3x^2 - 5x) \cos\left(\frac{n\pi x}{4}\right) dx = \frac{152(-1)^n + 40}{n^2\pi^2}$$

**Serie de Fourier de Cosenos:**

$$f(x) = 6 + \sum_{n=1}^{\infty} \frac{152(-1)^n + 40}{n^2\pi^2} \cos\left(\frac{n\pi x}{4}\right)$$



## 🔹 Pregunta 6: Serie y Radio de Convergencia de $F''(x)$ para $F(x) = \ln(1+2x)$ ⚡

1. **Segunda derivada:**
   $$F'(x) = \frac{2}{1+2x} \implies F''(x) = -\frac{4}{(1+2x)^2}$$

2. **Serie de Maclaurin:** Derivando término a término la serie geométrica clásica e igualando las variables se deduce que:
   $$F''(x) = \sum_{n=0}^{\infty} (-1)^n \cdot 2^{n+1} \cdot n \cdot x^{n-1}$$
   Este resultado coincide perfectamente con el formato matemático de la opción (d) del examen.

3. **Radio de convergencia:** La serie de potencias converge si el argumento $|2x| < 1 \implies |x| < 1/2$. Esto define un radio de convergencia $R = 1/2$, validando analíticamente la opción (c).


