# Resoluciones - Series de Taylor y Mac Laurin

A continuación se detallan los desarrollos paso a paso de los ejercicios basados en las notas proporcionadas.

---

## Módulo 2 - Ejercicio 5d
**Objetivo:** Desarrollar en serie de potencias la función $f(x) = \frac{1}{1 + 7x}$ centrada en $a = 21$.

**Paso 1: Reescritura de la variable para centrar en $a=21$**
Para lograr que la serie esté centrada en 21, sumamos y restamos 21 a la variable $x$:
$x = (x - 21) + 21$

Sustituyendo en la función original:
$f(x) = \frac{1}{1 + 7((x - 21) + 21)}$

Distribuyendo el 7 en el segundo término:
$f(x) = \frac{1}{1 + 7(x - 21) + 7(21)} = \frac{1}{1 + 7(x - 21) + 147}$

Agrupando las constantes:
$f(x) = \frac{1}{148 + 7(x - 21)}$

**Paso 2: Acomodar para usar la Serie Geométrica**
La serie geométrica tiene la forma $\frac{1}{1 - t} = \sum_{n=0}^{\infty} t^n$. Para llevar nuestra expresión a esta forma, sacamos factor común $148$ en el denominador:
$f(x) = \frac{1}{148 \left(1 + \frac{7}{148}(x - 21)\right)} = \frac{1}{148} \cdot \frac{1}{1 - \left(-\frac{7}{148}(x - 21)\right)}$

**Paso 3: Desarrollo en Serie**
Llamando $t = -\frac{7}{148}(x - 21)$, aplicamos el desarrollo de la serie geométrica:
$f(x) = \frac{1}{148} \sum_{n=0}^{\infty} \left(-\frac{7}{148}(x - 21)\right)^n = \sum_{n=0}^{\infty} \frac{(-1)^n 7^n}{148^{n+1}} (x - 21)^n$

**Paso 4: Radio e Intervalo de Convergencia**
El desarrollo converge si $|t| < 1$:
$\left|-\frac{7}{148}(x - 21)\right| < 1 \implies \frac{7}{148} |x - 21| < 1 \implies |x - 21| < \frac{148}{7}$
Por lo tanto, el **radio de convergencia** es $R = \frac{148}{7}$.
El **intervalo de convergencia** es:
$\left(21 - \frac{148}{7}, 21 + \frac{148}{7}\right)$

---

## Módulo 2 - Ejercicio 5e
**Objetivo:** Desarrollar $f(x) = \frac{9 - x}{1 + 7x}$ centrado en $a = 21$.

**Paso 1: División de Polinomios**
Como el grado del numerador es igual al grado del denominador, primero realizamos la división polinómica $(-x + 9) \div (7x + 1)$:
* Cociente ($q$): $-1/7$
* Resto ($r$): $16/7$

Por el algoritmo de la división: $9 - x = (1 + 7x)\left(-\frac{1}{7}\right) + \frac{16}{7}$.

**Paso 2: Reescritura de la función**
$f(x) = \frac{(1 + 7x)(-1/7) + 16/7}{1 + 7x} = -\frac{1}{7} + \frac{16/7}{1 + 7x}$

**Paso 3: Uso del resultado anterior**
Utilizando el desarrollo en serie de $\frac{1}{1 + 7x}$ hallado en el Ejercicio 5d:
$f(x) = -\frac{1}{7} + \frac{16}{7} \sum_{n=0}^{\infty} \frac{(-1)^n 7^n}{148^{n+1}} (x - 21)^n$
El radio y el intervalo de convergencia se mantienen idénticos a los obtenidos en el ejercicio 5d, es decir, $R = \frac{148}{7}$.

---

## Módulo 3 - Ejercicio 1
**Objetivo:** Probar que $\sum_{n=2}^{\infty} n(n-1)x^{n-2} = \frac{2}{(1-x)^3}$.

**Paso 1: Partir de la Serie Geométrica**
Sabemos que:
$\sum_{n=0}^{\infty} x^n = \frac{1}{1 - x} \quad \text{para} \quad |x| < 1$

**Paso 2: Teorema de Derivación (Primera Derivada)**
Derivamos término a término respecto a $x$:
$\left( \sum_{n=0}^{\infty} x^n \right)' = \sum_{n=1}^{\infty} n x^{n-1}$
Y derivando la función:
$\left( (1-x)^{-1} \right)' = -1(1-x)^{-2}(-1) = \frac{1}{(1-x)^2}$

**Paso 3: Teorema de Derivación (Segunda Derivada)**
Derivamos por segunda vez:
$\left( \sum_{n=1}^{\infty} n x^{n-1} \right)' = \sum_{n=2}^{\infty} n(n-1)x^{n-2}$
Derivando la función resultante:
$\left( (1-x)^{-2} \right)' = -2(1-x)^{-3}(-1) = \frac{2}{(1-x)^3}$

Igualando ambos resultados, queda probado que:
$\sum_{n=2}^{\infty} n(n-1)x^{n-2} = \frac{2}{(1-x)^3}$
El radio de convergencia se mantiene igual tras las derivaciones: $R = 1$ para $|x| < 1$.

---

## Módulo 1 - Ejercicio 1.3
**Objetivo:** Hallar el radio de convergencia de $\sum_{n=0}^{\infty} \frac{n^2 + 7}{(n+1)!} x^n$.

**Paso 1: Definir el término $a_n$ y aplicar Criterio de D'Alembert**
El término es $a_n = \frac{n^2 + 7}{(n+1)!}$.
Calculamos el límite para el radio de convergencia $\lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right|$:
$a_{n+1} = \frac{(n+1)^2 + 7}{(n+2)!}$

$\frac{a_{n+1}}{a_n} = \frac{(n+1)^2 + 7}{(n+2)!} \cdot \frac{(n+1)!}{n^2 + 7}$

**Paso 2: Simplificación de factoriales y polinomios**
Sabemos que $(n+2)! = (n+2)(n+1)!$, así que simplificamos los factoriales:
$\frac{a_{n+1}}{a_n} = \frac{n^2 + 2n + 8}{(n+2)(n^2 + 7)}$

**Paso 3: Cálculo del Límite**
El numerador es un polinomio de grado 2 ($n^2 + 2n + 8$), y el denominador es de grado 3 ($n^3 + 2n^2 + 7n + 14$). Al tender $n$ a infinito:
$\lim_{n \to \infty} \frac{n^2 + 2n + 8}{n^3 + 2n^2 + 7n + 14} = 0$

Dado que el límite es $0$ (que siempre será estrictamente menor que 1 sin importar el valor de $x$), el **radio de convergencia es $R = +\infty$**, y el intervalo de convergencia son todos los números reales $\mathbb{R}$.

---

## Ejercicio 3.2
**Objetivo:** Analizar la convergencia de la serie de potencias $\sum_{n=1}^{\infty} \frac{(-1)^n \ln(n)}{n^2} x^n$.

**Paso 1: Hallar el radio de convergencia**
Se define $a_n = \frac{(-1)^n \ln(n)}{n^2}$.
El radio de convergencia se obtiene con el inverso multiplicativo del límite:
$\lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = \lim_{n \to \infty} \frac{\ln(n+1)}{(n+1)^2} \cdot \frac{n^2}{\ln(n)}$

Separando límites:
$\lim_{n \to \infty} \frac{\ln(n+1)}{\ln(n)} \cdot \lim_{n \to \infty} \frac{n^2}{(n+1)^2}$
El segundo límite es trivialmente 1. Para el primer límite, usando la regla de L'Hôpital para una variable real continua $x$:
$\lim_{x \to \infty} \frac{\ln(x+1)}{\ln(x)} = \lim_{x \to \infty} \frac{1/(x+1)}{1/x} = \lim_{x \to \infty} \frac{x}{x+1} = 1$
Por tanto, el límite total es 1. El radio de convergencia es $R = 1/1 = 1$.
Los bordes a analizar son $x = -1$ y $x = 1$.

**Paso 2: Análisis de Bordes**
*   **Borde $x = -1$**:
    La serie queda: $\sum_{n=1}^{\infty} (-1)^n \frac{\ln(n)}{n^2} (-1)^n = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^2}$
    Esta serie converge ya que se puede comparar con una serie p ($1/n^p$). El grado del denominador es $2$, que es un exponente $p = 2 > 1$.

*   **Borde $x = 1$**:
    La serie queda: $\sum_{n=1}^{\infty} (-1)^n \frac{\ln(n)}{n^2}$
    Se puede aplicar el **Criterio de Leibniz** para series alternadas, verificando las hipótesis. Sin embargo, como demostramos en el caso anterior que la serie de sus valores absolutos $\sum \frac{\ln(n)}{n^2}$ converge, entonces esta serie converge **absolutamente**.

**Conclusión:**
La serie converge en ambos bordes, por lo tanto, el **Dominio de Convergencia** es el intervalo cerrado $[-1, 1]$.

Para entregarte el paso a paso detallado, voy a generar un archivo en formato Markdown (`.md`) con las resoluciones de todos los ejercicios contenidos en los PDFs que proporcionaste.


## Se abarcaron los siguientes desarrollos matemáticos:

* **Módulo 2 - Ejercicio 5d y 5e:** Se detalló el uso de la suma de series geométricas y la división de polinomios para desarrollar en serie de potencias las funciones racionales alrededor del centro $a=21$, concluyendo con un radio de convergencia de $148/7$.


* **Módulo 3 - Ejercicio 1:** Se transcribió la demostración aplicando el teorema de derivación de series de potencias dos veces de manera sucesiva a partir de la serie geométrica original.


* **Módulo 1 - Ejercicio 1.3:** Se resolvió el límite del criterio de D'Alembert (Ratio test), que al dar como resultado $0$ nos lleva a un radio de convergencia de $+\infty$ y un intervalo sobre todos los números reales.


* **Ejercicio 3.2:** Se calcularon los bordes tras encontrar que el radio de convergencia es $1$. Se evaluó la convergencia para $x=1$ (usando el criterio de Leibniz y la noción de convergencia absoluta) y para $x=-1$ (comparando con una serie casi $p$), obteniendo un dominio de convergencia cerrado en $[-1, 1]$.



