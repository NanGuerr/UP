## 📝 Primer Examen Parcial de Álgebra Lineal



### 📑 Sección I: Teoría (Demostraciones)

**1️⃣ Demostración de Divisibilidad: Si $a \mid b+c$ y $a \mid b$, entonces $a \mid c$**

**Hipótesis:**
*   $a \mid (b + c)$
*   $a \mid b$

**Tesis:** $a \mid c$

**📖 Procedimiento detallado:**
Por la definición de divisibilidad, si un número divide a otro, significa que existe un entero tal que el dividendo es un múltiplo entero del divisor.

De la hipótesis se deduce que existe un entero $k \in \mathbb{Z}$ tal que:
$$b + c = a \cdot k$$

De la segunda hipótesis se deduce que existe un entero $k' \in \mathbb{Z}$ tal que:
$$b = a \cdot k'$$

Sustituimos la expresión de $b$ de la segunda ecuación en la primera ecuación:
$$(a \cdot k') + c = a \cdot k$$

Despejamos $c$ pasando el término $a \cdot k'$ restando al miembro derecho:
$$c = a \cdot k - a \cdot k'$$

Sacamos factor común $a$:
$$c = a \cdot (k - k')$$

Como la resta de números enteros es un número entero, definimos un nuevo entero $k'' = k - k' \in \mathbb{Z}$, por lo que:
$$c = a \cdot k''$$

Por lo tanto, por definición de divisibilidad, queda demostrado que $a \mid c$. ✅



**2️⃣ Demostración de Congruencia: Si $a \equiv b \pmod m$ y $c \equiv d \pmod m$, entonces $a \cdot c \equiv b \cdot d \pmod m$**

**Hipótesis:**
*   $a \equiv b \pmod m$
*   $c \equiv d \pmod m$

**Tesis:** $a \cdot c \equiv b \cdot d \pmod m$

**📖 Procedimiento detallado:**
Por definición de congruencia módulo $m$, la diferencia entre dos números congruentes es un múltiplo de $m$. Es decir, existen enteros $k, k' \in \mathbb{Z}$ tales que:
$b - a = m \cdot k \implies b = a + m \cdot k$
$d - c = m \cdot k' \implies d = c + m \cdot k'$

Queremos llegar a la relación para el producto $b \cdot d$:
$$b \cdot d = (a + m \cdot k)(c + m \cdot k')$$

Desarrollamos el producto aplicando la propiedad distributiva:
$$b \cdot d = a \cdot c + a \cdot m \cdot k' + m \cdot k \cdot c + m^2 \cdot k \cdot k'$$

Reacomodamos y agrupamos todos los términos que contienen al factor $m$:
$$b \cdot d - a \cdot c = m \cdot (a \cdot k' + c \cdot k + m \cdot k \cdot k')$$

Definimos un nuevo número entero $k'' = a \cdot k' + c \cdot k + m \cdot k \cdot k' \in \mathbb{Z}$, de modo que:
$$b \cdot d - a \cdot c = m \cdot k''$$

Esto significa que $m$ divide a la diferencia $(b \cdot d - a \cdot c)$, lo cual por definición de congruencia equivale a:
$$a \cdot c \equiv b \cdot d \pmod m$$

Quedando así demostrada la propiedad. ✅



**3️⃣ Demostración de Perpendicularidad (Teorema de Pitágoras Vectorial): Si $A$ y $B$ son vectores perpendiculares, entonces $\Vert{}A + B\Vert{}^2 = \Vert{}A\Vert{}^2 + \Vert{}B\Vert{}^2$**

**Hipótesis:** Los vectores $A$ y $B$ son perpendiculares (ortogonales), por lo que su producto escalar es nulo: $A \cdot B = 0$.

**Tesis:** $\Vert{}A + B\Vert{}^2 = \Vert{}A\Vert{}^2 + \Vert{}B\Vert{}^2$

**📖 Procedimiento detallado:**
Partimos de la norma al cuadrado de la suma de dos vectores, expresada a través del producto escalar de un vector consigo mismo:
$$\Vert{}A + B\Vert{}^2 = (A + B) \cdot (A + B)$$

Aplicamos la propiedad distributiva del producto escalar:
$$\Vert{}A + B\Vert{}^2 = A \cdot A + A \cdot B + B \cdot A + B \cdot B$$

Usamos la propiedad conmutativa del producto escalar ($A \cdot B = B \cdot A$) y la relación entre el producto escalar y la norma ($\Vert{}V\Vert{}^2 = V \cdot V$):
$$\Vert{}A + B\Vert{}^2 = \Vert{}A\Vert{}^2 + 2(A \cdot B) + \Vert{}B\Vert{}^2$$

Dado que por hipótesis $A$ y $B$ son ortogonales (perpendiculares), su producto escalar es cero ($A \cdot B = 0$):
$$\Vert{}A + B\Vert{}^2 = \Vert{}A\Vert{}^2 + 2(0) + \Vert{}B\Vert{}^2$$

Simplificamos el término nulo:
$$\Vert{}A + B\Vert{}^2 = \Vert{}A\Vert{}^2 + \Vert{}B\Vert{}^2$$

Queda demostrada la identidad geométrica (Teorema de Pitágoras en espacios vectoriales). ✅



### 🛠️ Sección II: Práctica

**M1️⃣ Hallar el resto de dividir $117^{1237}$ por $11$**

**📖 Procedimiento detallado:**
Buscamos primero el resto de dividir la base $117$ entre $11$:
$$117 = 11 \times 10 + 7 \quad \implies \quad 117 \equiv 7 \pmod{11}$$

Calculamos las sucesivas potencias de $7$ módulo $11$ para encontrar un patrón de repetición (período):
*   $117^1 \equiv 7 \pmod{11}$
*   $117^2 \equiv 7^2 = 49 \equiv 5 \pmod{11}$ (porque $49 = 11 \times 4 + 5$)
*   $117^3 \equiv 7 \times 5 = 35 \equiv 2 \pmod{11}$ (porque $35 = 11 \times 3 + 2$)
*   $117^4 \equiv 7 \times 2 = 14 \equiv 3 \pmod{11}$ (porque $14 = 11 \times 1 + 3$)
*   $117^5 \equiv 7 \times 3 = 21 \equiv 10 \pmod{11}$ (porque $21 = 11 \times 1 + 10$)
*   $117^6 \equiv 7 \times 10 = 70 \equiv 4 \pmod{11}$ (porque $70 = 11 \times 6 + 4$)
*   $117^7 \equiv 7 \times 4 = 28 \equiv 6 \pmod{11}$ (porque $28 = 11 \times 2 + 6$)
*   $117^8 \equiv 7 \times 6 = 42 \equiv 9 \pmod{11}$ (porque $42 = 11 \times 3 + 9$)
*   $117^9 \equiv 7 \times 9 = 63 \equiv 8 \pmod{11}$ (porque $63 = 11 \times 5 + 8$)
*   $117^{10} \equiv 7 \times 8 = 56 \equiv 1 \pmod{11}$ (porque $56 = 11 \times 5 + 1$)

Observamos que $117^{10} \equiv 1 \pmod{11}$. Esto significa que el ciclo se repite cada $10$ potencias.
Dividimos el exponente $1237$ entre el período del ciclo ($10$):
$$1237 = 10 \times 123 + 7$$

Usamos las propiedades de las potencias modulares:
$$117^{1237} = 117^{10 \times 123 + 7} = (117^{10})^{123} \times 117^7 \equiv (1)^{123} \times 117^7 \equiv 1 \times 6 \equiv 6 \pmod{11}$$

**Respuesta:** El resto de dividir $117^{1237}$ por $11$ es $6$. 🎉



**M2️⃣ Demostración por Inducción Completa**

**a) Demostrar que $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$**

**📖 Procedimiento detallado:**
**Caso base ($n = 1$):**
*   Lado izquierdo: $\sum_{i=1}^{1} i^2 = 1^2 = 1$
*   Lado derecho: $\frac{1(1+1)(2(1)+1)}{6} = \frac{1(2)(3)}{6} = \frac{6}{6} = 1$
Como ambos lados coinciden ($1 = 1$), la proposición es verdadera para $n = 1$. ✅

**Hipótesis inductiva:** Suponemos que la fórmula es verdadera para un número natural $n = k$:
$$\sum_{i=1}^{k} i^2 = \frac{k(k+1)(2k+1)}{6}$$

**Paso inductivo:** Debemos demostrar que se cumple para $n = k + 1$, es decir:
$$\sum_{i=1}^{k+1} i^2 = \frac{(k+1)((k+1)+1)(2(k+1)+1)}{6} = \frac{(k+1)(k+2)(2k+3)}{6}$$

Desarrollo algebraico:
$$\sum_{i=1}^{k+1} i^2 = \left( \sum_{i=1}^{k} i^2 \right) + (k+1)^2$$
Sustituimos la hipótesis inductiva:
$$= \frac{k(k+1)(2k+1)}{6} + (k+1)^2$$
Sacamos factor común $(k+1)$:
$$= (k+1) \left[ \frac{k(2k+1)}{6} + (k+1) \right]$$
Operamos dentro del corchete con denominador común $6$:
$$= (k+1) \left[ \frac{k(2k+1) + 6(k+1)}{6} \right] = (k+1) \left[ \frac{2k^2 + k + 6k + 6}{6} \right]$$
Simplificamos el numerador agrupando términos semejantes:
$$= (k+1) \left[ \frac{2k^2 + 7k + 6}{6} \right]$$
Factorizamos el polinomio cuadrático $2k^2 + 7k + 6$ buscando sus raíces o por descomposición:
$$2k^2 + 7k + 6 = (k+2)(2k+3)$$
Sustituimos de vuelta:
$$= \frac{(k+1)(k+2)(2k+3)}{6}$$

Con esto queda demostrado por inducción completa para todo $n \in \mathbb{N}$. 🎉

**b) Demostrar que $3 \cdot 10^{n+1} + 9 \cdot 10^n + 15$ es divisible por $27$ para todo $n \in \mathbb{N}$**

**📖 Procedimiento detallado:**
Reescribimos la expresión para que dependa de $10^n$:
$$3 \cdot 10^{n+1} + 9 \cdot 10^n + 15 = 3 \cdot (10 \cdot 10^n) + 9 \cdot 10^n + 15 = 30 \cdot 10^n + 9 \cdot 10^n + 15 = 39 \cdot 10^n + 15$$

**Comprobamos el caso base ($n = 1$):**
$$3 \cdot 10^{1+1} + 9 \cdot 10^1 + 15 = 3 \cdot 100 + 90 + 15 = 300 + 90 + 15 = 405$$
Verificamos si es divisible por $27$:
$$405 \div 27 = 15$$
Como el resultado es exacto ($15$), el caso base se cumple. ✅

**Hipótesis inductiva:** Asumimos que para $n=k$, la expresión $P(k) = 39 \cdot 10^k + 15$ es múltiplo de $27$.

**Paso inductivo:** Evaluamos para $n = k+1$:
$$P(k+1) = 39 \cdot 10^{k+1} + 15$$
$$P(k+1) = 10 \cdot (39 \cdot 10^k) + 15$$
Sumamos y restamos $135$ (que es $150 - 15$) para forzar la aparición de $P(k)$:
$$P(k+1) = 10 \cdot (39 \cdot 10^k + 15) - 135$$
$$P(k+1) = 10 \cdot P(k) - 27(5)$$

Por hipótesis inductiva, $27$ divide a $P(k)$, y trivialmente $27$ divide a $27(5)$. Al ser ambos términos divisibles por $27$, la diferencia también lo es. Queda demostrado para todo $n \in \mathbb{N}$. 🎉



**M3️⃣ Resolver la ecuación diofántica $486x - 660y = 84$**

**📖 Procedimiento detallado:**
Simplificamos la ecuación dividiendo todos los coeficientes entre su máximo común divisor para facilitar los cálculos. Calculamos el mcd de $486$ y $660$:
*   $486 = 2 \times 3^5 = 2 \times 243 = 486$
*   $660 = 2^2 \times 3 \times 5 \times 11 = 660$
El máximo común divisor es $\text{mcd}(486, 660) = 6$.

Dividimos toda la ecuación entre $6$:
$$\frac{486}{6}x - \frac{660}{6}y = \frac{84}{6}$$
$$81x - 110y = 14$$

Como $\text{mcd}(81, 110) = 1$ y $1$ divide a $14$, la ecuación tiene solución entera.
Aplicamos el algoritmo de Euclides extendido para expresar $1$ como combinación lineal de $81$ y $110$:
*   $110 = 81 \times 1 + 29$
*   $81 = 29 \times 2 + 23$
*   $29 = 23 \times 1 + 6$
*   $23 = 6 \times 3 + 5$
*   $6 = 5 \times 1 + 1$

Despejamos los restos hacia atrás para hallar una solución particular $(x_0, y_0)$:
*   $1 = 6 - 5 \times 1$
*   $1 = 6 - (23 - 6 \times 3) = 4 \times 6 - 23$
*   $1 = 4(29 - 23) - 23 = 4 \times 29 - 5 \times 23$
*   $1 = 4 \times 29 - 5(81 - 29 \times 2) = 14 \times 29 - 5 \times 81$
*   $1 = 14(110 - 81) - 5 \times 81 = 14 \times 110 - 19 \times 81$

Por tanto: $-19(81) + 14(110) = 1$

Multiplicamos por $14$ para igualar al término independiente de nuestra ecuación ($14$):
$$-266(81) + 196(110) = 14$$

Lo que nos da una solución particular:
$$x_0 = -266, \quad y_0 = -196$$

La solución general de la ecuación diofántica lineal es:
$$x = -266 + 110k, \quad y = -196 + 81k \quad (k \in \mathbb{Z})$$
🎉



**4️⃣ Hallar 3 vectores perpendiculares a $(1, 2, -1)$ que sean unitarios**

**📖 Procedimiento detallado:**
Sea el vector dado $V = (1, 2, -1)$. Buscamos un vector genérico $X = (x, y, z)$ que sea perpendicular a $V$. Su producto escalar debe ser cero:
$$(x, y, z) \cdot (1, 2, -1) = 0 \implies x + 2y - z = 0 \implies z = x + 2y$$

Además, exigimos que el vector sea unitario, es decir, que su norma sea igual a $1$:
$$\Vert{}X\Vert{}^2 = x^2 + y^2 + z^2 = 1$$

Como tenemos un sistema de dos ecuaciones con tres incógnitas, podemos elegir valores libres para dos variables y despejar las demás para encontrar tres vectores linealmente independientes que cumplan la condición.

**Primer vector ($V_1$):** Hacemos $y = 0$. Entonces $z = x$. Sustituimos en la norma:
$$x^2 + 0^2 + x^2 = 1 \implies 2x^2 = 1 \implies x = \frac{1}{\sqrt{2}} \quad \text{o} \quad x = -\frac{1}{\sqrt{2}}$$
Tomando $x = \frac{1}{\sqrt{2}}$:
$$V_1 = \left( \frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}} \right)$$

**Segundo vector ($V_2$):** Hacemos $x = 0$. Entonces $z = 2y$. Sustituimos en la norma:
$$0^2 + y^2 + (2y)^2 = 1 \implies 5y^2 = 1 \implies y = \frac{1}{\sqrt{5}}$$
Tomando $y = \frac{1}{\sqrt{5}}$:
$$V_2 = \left( 0, \frac{1}{\sqrt{5}}, \frac{2}{\sqrt{5}} \right)$$

**Tercer vector ($V_3$):** Hacemos $z = 0$. Entonces en la ecuación del producto escalar obtenemos $x = -2y$. Sustituimos en la ecuación de la norma:
$$(-2y)^2 + y^2 + 0^2 = 1 \implies 5y^2 = 1 \implies y = \frac{1}{\sqrt{5}}$$
Con $y = \frac{1}{\sqrt{5}}$, obtenemos $x = -\frac{2}{\sqrt{5}}$. Por lo tanto:
$$V_3 = \left( -\frac{2}{\sqrt{5}}, \frac{1}{\sqrt{5}}, 0 \right)$$
🎉



**5️⃣ Sea $A = (-1, 0)$. Encontrar $B$ tal que $\sphericalangle(A, B) = \frac{\pi}{3} (60^{\circ})$ y $\Vert{}B\Vert{} = 1$**

**📖 Procedimiento detallado:**
Sea el vector desconocido $B = (x, y)$. Sabemos por hipótesis que su norma es $1$:
$$\Vert{}B\Vert{} = \sqrt{x^2 + y^2} = 1 \implies x^2 + y^2 = 1$$

Usamos la fórmula del ángulo entre dos vectores mediante el producto escalar:
$$\cos(\theta) = \frac{A \cdot B}{\Vert{}A\Vert{} \Vert{}B\Vert{}}$$

Sustituimos los valores conocidos:
*   $A = (-1, 0)$ $\implies$ $\Vert{}A\Vert{} = \sqrt{(-1)^2 + 0^2} = 1$
*   $\Vert{}B\Vert{} = 1$
*   $\theta = \frac{\pi}{3}$ $\implies$ $\cos\left(\frac{\pi}{3}\right) = \frac{1}{2}$
*   $A \cdot B = (-1)(x) + (0)(y) = -x$

Sustituimos en la ecuación del ángulo:
$$\frac{1}{2} = \frac{-x}{1 \cdot 1} \implies -x = \frac{1}{2} \implies x = -\frac{1}{2}$$

Con el valor de $x$, sustituimos en la ecuación de la norma ($\Vert{}B\Vert{}^2 = 1$):
$$\left(-\frac{1}{2}\right)^2 + y^2 = 1 \implies \frac{1}{4} + y^2 = 1 \implies y^2 = 1 - \frac{1}{4} = \frac{3}{4}$$

Despejamos $y$, obteniendo dos posibles soluciones simétricas:
$$y = \pm \frac{\sqrt{3}}{2}$$

**Respuesta:** Existen dos vectores posibles que satisfacen las condiciones del enunciado:
$$B_1 = \left( -\frac{1}{2}, \frac{\sqrt{3}}{2} \right) \quad \text{o} \quad B_2 = \left( -\frac{1}{2}, -\frac{\sqrt{3}}{2} \right)$$
