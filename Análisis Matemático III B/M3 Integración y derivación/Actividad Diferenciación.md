# Actividad: Diferenciación e Integración de Series de Potencias 📐


### 🔹 Ejercicio 1

Utilizando derivación de series de potencias, probar que:

$$\sum_{n=2}^{\infty} n(n-1) x^{n-2} = \frac{2}{(1-x)^3}$$

Mostrar el radio y el dominio de convergencia de la serie enunciada.

> **Sugerencia:** Calcular $\left(\sum_{n=0}^{\infty} x^n\right)''$ y utilizar la serie geométrica.


**Paso 1: Recordar la serie geométrica base**
Partimos de la suma de la serie geométrica conocida:

$$\sum_{n=0}^{\infty} x^n = \frac{1}{1-x} = (1-x)^{-1} \quad \text{para } \vert{}x\vert{} < 1$$

Esta serie converge para el intervalo $(-1, 1)$, lo que determina un radio de convergencia $R = 1$.


**Paso 2: Primera derivación término a término**
Derivamos ambos miembros respecto de $x$. Aplicando el teorema de derivación de series de potencias:

* **Lado izquierdo:** Al derivar el primer término ($n=0$, que es una constante $1$), su derivada es $0$, por lo que el índice de la sumatoria avanza a $n=1$:

$$\left(\sum_{n=0}^{\infty} x^n\right)' = \sum_{n=1}^{\infty} n x^{n-1}$$

* **Lado derecho:** Usando la regla de la cadena:

$$\left(\frac{1}{1-x}\right)' = (-1)(1-x)^{-2}(-1) = \frac{1}{(1-x)^2}$$

Igualando los resultados obtenemos:

$$\sum_{n=1}^{\infty} n x^{n-1} = \frac{1}{(1-x)^2} \quad \text{para } \vert{}x\vert{} < 1$$


**Paso 3: Segunda derivación término a término**
Volvemos a derivar ambos miembros respecto de $x$ (equivalente a calcular la segunda derivada $\left(\sum_{n=0}^{\infty} x^n\right)''$):

* **Lado izquierdo:** El primer término ($n=1$, constante) se anula, desplazando nuevamente el índice a $n=2$:

$$\left(\sum_{n=1}^{\infty} n x^{n-1}\right)' = \sum_{n=2}^{\infty} n(n-1) x^{n-2}$$

* **Lado derecho:** Expresando $\frac{1}{(1-x)^2}$ como $(1-x)^{-2}$ y aplicando la regla de la cadena:

$$\left((1-x)^{-2}\right)' = (-2)(1-x)^{-3}(-1) = 2(1-x)^{-3} = \frac{2}{(1-x)^3}$$

Igualando ambas expresiones, queda demostrado que:

$$\sum_{n=2}^{\infty} n(n-1) x^{n-2} = \frac{2}{(1-x)^3}$$


**Paso 4: Radio y dominio de convergencia**

* **Radio de convergencia ($R$):** $R = 1$. Según la teoría de series de potencias, al derivar término a término el radio de convergencia se conserva intacto respecto al de la serie original.


* **Dominio/Intervalo de convergencia:** $(-1, 1)$ o bien $\{x \in \mathbb{R} : \vert{}x\vert{} < 1\}$.

  

### 🔹 Ejercicio 2

Utilizando derivación de series de potencias, demostrar que:

$$(\sin(x))' = \cos(x) \quad \text{y} \quad (\cos(x))' = -\sin(x) \quad \text{para } x \in \mathbb{R}$$

> **Sugerencia:** Utilizar los desarrollos de series de Maclaurin de $\sin(x)$ y $\cos(x)$ vistos previamente.


**Paso 1: Recordar los desarrollos en serie de MacLaurin**
Partimos de los desarrollos en serie de potencias para las funciones seno y coseno con radio de convergencia infinito ($x \in \mathbb{R}$):

$$\sin(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} x^{2n+1} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots \quad \text{para } x \in \mathbb{R}$$

$$\cos(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} x^{2n} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots \quad \text{para } x \in \mathbb{R}$$


**Paso 2: Demostrar que $(\sin(x))' = \cos(x)$**
Aplicamos la derivación término a término sobre la serie del seno:

$$(\sin(x))' = \left( \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} x^{2n+1} \right)'$$

1. Derivamos la potencia $x^{2n+1}$ con respecto a $x$:

$$\frac{d}{dx}\left(x^{2n+1}\right) = (2n+1) x^{2n}$$


2. Sustituimos en la sumatoria y simplificamos el factorial $(2n+1)! = (2n+1) \cdot (2n)!$:

$$(\sin(x))' = \sum_{n=0}^{\infty} \frac{(-1)^n (2n+1)}{(2n+1) \cdot (2n)!} x^{2n} = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} x^{2n}$$


3. La serie resultante coincide exactamente con la serie de MacLaurin del coseno:


$$(\sin(x))' = \cos(x) \quad \text{para } x \in \mathbb{R}$$


**Paso 3: Demostrar que $(\cos(x))' = -\sin(x)$**
Aplicamos la derivación término a término sobre la serie del coseno:

$$(\cos(x))' = \left( \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} x^{2n} \right)'$$

1. Para $n=0$, el término es $x^0 = 1$ (constante), por lo que su derivada es $0$. El índice de la sumatoria se desplaza a $n=1$:

$$(\cos(x))' = \sum_{n=1}^{\infty} \frac{(-1)^n}{(2n)!} (2n) x^{2n-1}$$

2. Simplificamos el factorial $(2n)! = (2n) \cdot (2n-1)!$:

$$(\cos(x))' = \sum_{n=1}^{\infty} \frac{(-1)^n (2n)}{(2n) \cdot (2n-1)!} x^{2n-1} = \sum_{n=1}^{\infty} \frac{(-1)^n}{(2n-1)!} x^{2n-1}$$

3. Realizamos un cambio de índice definiendo $k = n - 1$ (de modo que $n = k + 1$). Cuando $n=1$, $k=0$:


$$(\cos(x))' = \sum_{k=0}^{\infty} \frac{(-1)^{k+1}}{(2(k+1)-1)!} x^{2(k+1)-1} = \sum_{k=0}^{\infty} \frac{(-1) \cdot (-1)^k}{(2k+1)!} x^{2k+1}$$

4. Factorizamos el $(-1)$ fuera de la sumatoria:


$$(\cos(x))' = -\sum_{k=0}^{\infty} \frac{(-1)^k}{(2k+1)!} x^{2k+1} = -\sin(x) \quad \text{para } x \in \mathbb{R}$$


**Paso 4: Dominio y Radio de convergencia**

* **Radio de convergencia ($R$):** $R = +\infty$. Al derivar series de potencias, el radio de convergencia se mantiene constante.

* **Dominio de convergencia:** $x \in \mathbb{R}$ (todos los números reales).



### 🔹 Ejercicio 3

Utilizando integración de series de potencias, expresar el desarrollo en serie de Maclaurin de:

$$f(x) = \arctan(x)$$

Indicar el radio de convergencia.

> **Sugerencia:** Derivar $f(x)$ y utilizar la serie geométrica.


**Paso 1: Derivar la función $f(x) = \arctan(x)$**
Obtenemos la primera derivada de la función respecto de $x$:

$$f'(x) = \frac{1}{1+x^2}$$


**Paso 2: Desarrollar $f'(x)$ en serie de potencias usando la serie geométrica**
Recordemos que la serie geométrica nos dice que:

$$\frac{1}{1-r} = \sum_{n=0}^{\infty} r^n \quad \text{para } \vert{}r\vert{} < 1$$

Sustituyendo $r = -x^2$ en la serie geométrica (similar al procedimiento aplicado para $\frac{1}{1+x}$ en el PDF):

$$f'(x) = \frac{1}{1 - (-x^2)} = \sum_{n=0}^{\infty} (-x^2)^n = \sum_{n=0}^{\infty} (-1)^n x^{2n} \quad \text{para } \vert{}-x^2\vert{} < 1 \implies \vert{}x\vert{} < 1$$


**Paso 3: Integrar término a término para obtener $f(x)$**
Dado que $x \in (-1, 1)$, integramos desde $0$ hasta $x$ aplicando el Teorema Fundamental del Cálculo e integración de series de potencias:

$$f(x) - f(0) = \int_{0}^{x} f'(t) \, dt = \int_{0}^{x} \left[ \sum_{n=0}^{\infty} (-1)^n t^{2n} \right] dt$$

Intercambiando la integral y la sumatoria:

$$f(x) - f(0) = \sum_{n=0}^{\infty} (-1)^n \int_{0}^{x} t^{2n} \, dt = \sum_{n=0}^{\infty} (-1)^n \left. \left( \frac{t^{2n+1}}{2n+1} \right) \right\vert{}_{0}^{x} = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{2n+1}$$

Como $f(0) = \arctan(0) = 0$, nos queda el desarrollo en serie de MacLaurin:

$$\arctan(x) = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{2n+1} = x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7} + \dots$$


**Paso 4: Radio de convergencia**

* **Radio de convergencia ($R$):** $R = 1$. Al integrar término a término la serie de potencias, el radio de convergencia se conserva igual al de la serie de la derivada ($\vert{}-x^2\vert{} < 1 \implies \vert{}x\vert{} < 1$).



### 🔹 Ejercicio 4

Sean $a$ y $b$ números reales tales que $a < b$. Utilizando la serie de Maclaurin de $e^x$, calcular:

$$\int_{a}^{b} e^{x^2} \, dx$$

**Paso 1: Recordar la serie de MacLaurin de la función exponencial**
Sabemos que la serie de MacLaurin para $e^x$ está definida para todos los números reales ($x \in \mathbb{R}$):

$$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} \quad \text{para } x \in \mathbb{R}$$


**Paso 2: Obtener el desarrollo en serie para $e^{x^2}$**
Reemplazamos $x$ por $x^2$ en la serie anterior (siguiendo un razonamiento análogo al del Ejemplo 4 del apunte):

$$e^{x^2} = \sum_{n=0}^{\infty} \frac{(x^2)^n}{n!} = \sum_{n=0}^{\infty} \frac{x^{2n}}{n!} \quad \text{para } x \in \mathbb{R}$$


**Paso 3: Aplicar el teorema de integración de series de potencias**
Dado que el intervalo $[a, b]$ está contenido en el dominio de convergencia ($\mathbb{R}$), integramos término a término entre $a$ y $b$:

$$\int_{a}^{b} e^{x^2} \, dx = \int_{a}^{b} \left[ \sum_{n=0}^{\infty} \frac{x^{2n}}{n!} \right] dx$$

Por la propiedad de integración de series de potencias, intercambiamos la integral con la sumatoria:

$$\int_{a}^{b} e^{x^2} \, dx = \sum_{n=0}^{\infty} \frac{1}{n!} \left[ \int_{a}^{b} x^{2n} \, dx \right]$$


**Paso 4: Resolver la integral definida y evaluar por Regla de Barrow**
Calculamos la integral término a término de la potencia $x^{2n}$:

$$\int_{a}^{b} x^{2n} \, dx = \left. \left( \frac{x^{2n+1}}{2n+1} \right) \right\vert{}_{a}^{b} = \frac{b^{2n+1} - a^{2n+1}}{2n+1}$$

Sustituyendo el resultado en la sumatoria, obtenemos la solución final:

$$\int_{a}^{b} e^{x^2} \, dx = \sum_{n=0}^{\infty} \frac{1}{n!} \cdot \frac{1}{(2n+1)} \cdot \left(b^{2n+1} - a^{2n+1}\right)$$


### 🔹 Ejercicio 5

Sean $a$ y $b$ números reales tales que $a < b$. Utilizando la serie de Maclaurin de $\sin(x)$, calcular:

$$\int_{a}^{b} \frac{\sin(x^2)}{x} \, dx$$


**Paso 1: Recordar la serie de MacLaurin de $\sin(x)$ y evaluar $\sin(x^2)$**
Partimos del desarrollo conocido para la función seno:

$$\sin(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} x^{2n+1} \quad \text{para } x \in \mathbb{R}$$

Reemplazamos $x$ por $x^2$:

$$\sin(x^2) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} (x^2)^{2n+1} = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} x^{4n+2} \quad \text{para } x \in \mathbb{R}$$


**Paso 2: Obtener la representación para $\frac{\sin(x^2)}{x}$**
Multiplicamos la serie por $\frac{1}{x}$ (para $x \neq 0$):

$$\frac{\sin(x^2)}{x} = \frac{1}{x} \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} x^{4n+2} = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} x^{4n+1} \quad \text{para } x \neq 0$$

*Nota analítica:* La función posee una discontinuidad evitable en $x = 0$ puesto que $\lim_{x \to 0} \frac{\sin(x^2)}{x} = 0$, por lo cual el valor de la integral no se ve afectado al usar esta representación en cualquier intervalo $[a,b]$.


**Paso 3: Aplicar integración término a término**
Integramos la serie de potencias entre los límites $a$ y $b$:

$$\int_{a}^{b} \frac{\sin(x^2)}{x} \, dx = \int_{a}^{b} \left[ \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} x^{4n+1} \right] dx$$

Intercambiamos la integral con la sumatoria según el teorema de integración de series de potencias:

$$\int_{a}^{b} \frac{\sin(x^2)}{x} \, dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!} \left[ \int_{a}^{b} x^{4n+1} \, dx \right]$$


**Paso 4: Resolver la integral y aplicar la Regla de Barrow**
Calculamos la integral de la potencia $x^{4n+1}$:

$$\int_{a}^{b} x^{4n+1} \, dx = \left. \left( \frac{x^{4n+2}}{4n+2} \right) \right\vert{}_{a}^{b} = \frac{b^{4n+2} - a^{4n+2}}{4n+2}$$

Sustituyendo el resultado en la sumatoria, obtenemos la expresión final:

$$\int_{a}^{b} \frac{\sin(x^2)}{x} \, dx = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)! \cdot (4n+2)} \left(b^{4n+2} - a^{4n+2}\right)$$
