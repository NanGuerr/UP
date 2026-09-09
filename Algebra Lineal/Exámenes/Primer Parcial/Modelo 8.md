# 📚 Universidad de Palermo - Facultad de Ingeniería
## 📝 Primer Examen Parcial de Árgebra Lineal
**Asignatura:** Álgebra Lineal  
**Fecha:** 13 de Septiembre de 2016  



##  이론 📑 Sección I: Teoría (Demostraciones)

### 1️⃣ Demostración de Divisibilidad: Si $a \mid b+c$ y $a \mid b$, entonces $a \mid c$

* **Hipótesis:** 
  1. $a \mid (b + c)$ 
  2. $a \mid b$
* **Tesis:** $a \mid c$

**📖 Procedimiento detallado:**
1. Por la definición de divisibilidad, si un número divide a otro, significa que existe un entero tal que el dividendo es un múltiplo entero del divisor.
2. De la hipótesis (1) se deduce que existe un entero $k \in \mathbb{Z}$ tal que:
   $$b + c = a \cdot k$$
3. De la hipótesis (2) se deduce que existe un entero $k' \in \mathbb{Z}$ tal que:
   $$b = a \cdot k'$$
4. Sustituimos la expresión de $b$ de la segunda ecuación en la primera ecuación:
   $$(a \cdot k') + c = a \cdot k$$
5. Despejamos $c$ pasando el término $a \cdot k'$ restando al miembro derecho:
   $$c = a \cdot k - a \cdot k'$$
6. Sacamos factor común $a$:
   $$c = a \cdot (k - k')$$
7. Como la resta de números enteros es un número entero, definimos un nuevo entero $k'' = k - k' \in \mathbb{Z}$, por lo que:
   $$c = a \cdot k''$$
8. Por lo tanto, por definición de divisibilidad, queda demostrado que **$a \mid c$**. ✅



### 2️⃣ Demostración de Congruencia: Si $a \equiv b \pmod m$ y $c \equiv d \pmod m$, entonces $a \cdot c \equiv b \cdot d \pmod m$

* **Hipótesis:**
  1. $a \equiv b \pmod m$
  2. $c \equiv d \pmod m$
* **Tesis:** $a \cdot c \equiv b \cdot d \pmod m$

**📖 Procedimiento detallado:**
1. Por definición de congruencia módulo $m$, la diferencia entre dos números congruentes es un múltiplo de $m$. Es decir, existen enteros $k, k' \in \mathbb{Z}$ tales que:
   * $b - a = m \cdot k$  $\implies$  $b = a + m \cdot k$
   * $d - c = m \cdot k'$  $\implies$  $d = c + m \cdot k'$
2. Queremos llegar a la relación para el producto $b \cdot d$:
   $$b \cdot d = (a + m \cdot k)(c + m \cdot k')$$
3. Desarrollamos el producto aplicando la propiedad distributiva:
   $$b \cdot d = a \cdot c + a \cdot m \cdot k' + m \cdot k \cdot c + m^2 \cdot k \cdot k'$$
4. Reacomodamos y agrupamos todos los términos que contienen al factor $m$:
   $$b \cdot d - a \cdot c = m \cdot (a \cdot k' + c \cdot k + m \cdot k \cdot k')$$
5. Definimos un nuevo número entero $k'' = a \cdot k' + c \cdot k + m \cdot k \cdot k' \in \mathbb{Z}$, de modo que:
   $$b \cdot d - a \cdot c = m \cdot k''$$
6. Esto significa que $m$ divide a la diferencia $(b \cdot d - a \cdot c)$, lo cual por definición de congruencia equivale a:
   $$a \cdot c \equiv b \cdot d \pmod m$$
   Quedando así demostrada la propiedad. ✅



### 3️⃣ Demostración de Perpendicularidad (Teorema de Pitágoras Vectorial): Si $A$ y $B$ son vectores perpendiculares, entonces $\|A + B\|^2 = \|A\|^2 + \|B\|^2$

* **Hipótesis:** Los vectores $A$ y $B$ son perpendiculares (ortogonales), por lo que su producto escalar es nulo: $A \cdot B = 0$.
* **Tesis:** $\|A + B\|^2 = \|A\|^2 + \|B\|^2$

**📖 Procedimiento detallado:**
1. Partimos de la norma al cuadrado de la suma de dos vectores, expresada a través del producto escalar de un vector consigo mismo:
   $$\|A + B\|^2 = (A + B) \cdot (A + B)$$
2. Aplicamos la propiedad distributiva del producto escalar:
   $$\|A + B\|^2 = A \cdot A + A \cdot B + B \cdot A + B \cdot B$$
3. Usamos la propiedad conmutativa del producto escalar ($A \cdot B = B \cdot A$) y la relación entre el producto escalar y la norma ($\|V\|^2 = V \cdot V$):
   $$\|A + B\|^2 = \|A\|^2 + 2(A \cdot B) + \|B\|^2$$
4. Dado que por hipótesis $A$ y $B$ son ortogonales (perpendiculares), su producto escalar es cero ($A \cdot B = 0$):
   $$\|A + B\|^2 = \|A\|^2 + 2(0) + \|B\|^2$$
5. Simplificamos el término nulo:
   $$\|A + B\|^2 = \|A\|^2 + \|B\|^2$$
6. Queda demostrada la identidad geométrica (Teorema de Pitágoras en espacios vectoriales). ✅



## 🛠️ Sección II: Práctica

### M1️⃣ Hallar el resto de dividir $117^{1237}$ por $11$

**📖 Procedimiento detallado:**
1. Buscamos primero el resto de dividir la base $117$ entre $11$:
   $$117 = 11 \times 10 + 7 \quad \implies \quad 117 \equiv 7 \pmod{11}$$
2. Calculamos las sucesivas potencias de $7$ módulo $11$ para encontrar un patrón de repetición (período):
   * $117^1 \equiv 7 \pmod{11}$
   * $117^2 \equiv 7^2 = 49 \equiv 5 \pmod{11}$  *(porque $49 = 11 \times 4 + 5$)*
   * $117^3 \equiv 7 \times 5 = 35 \equiv 2 \pmod{11}$  *(porque $35 = 11 \times 3 + 2$)*
   * $117^4 \equiv 7 \times 2 = 14 \equiv 3 \pmod{11}$  *(porque $14 = 11 \times 1 + 3$)*
   * $117^5 \equiv 7 \times 3 = 21 \equiv 10 \pmod{11}$ *(porque $21 = 11 \times 1 + 10$)*
   * $117^6 \equiv 7 \times 10 = 70 \equiv 4 \pmod{11}$ *(porque $70 = 11 \times 6 + 4$)*
   * $117^7 \equiv 7 \times 4 = 28 \equiv 6 \pmod{11}$ *(porque $28 = 11 \times 2 + 6$)*
   * $117^8 \equiv 7 \times 6 = 42 \equiv 9 \pmod{11}$ *(porque $42 = 11 \times 3 + 9$)*
   * $117^9 \equiv 7 \times 9 = 63 \equiv 8 \pmod{11}$ *(porque $63 = 11 \times 5 + 8$)*
   * $117^{10} \equiv 7 \times 8 = 56 \equiv 1 \pmod{11}$ *(porque $56 = 11 \times 5 + 1$)*
3. Observamos que $117^{10} \equiv 1 \pmod{11}$. Esto significa que el ciclo se repite cada $10$ potencias.
4. Dividimos el exponente $1237$ entre el período del ciclo ($10$):
   $$1237 = 10 \times 123 + 7$$
5. Usamos las propiedades de las potencias modulares:
   $$117^{1237} = 117^{10 \times 123 + 7} = (117^{10})^{123} \times 117^7 \equiv (1)^{123} \times 117^7 \equiv 1 \times 6 \equiv 6 \pmod{11}$$
6. **Respuesta:** El resto de dividir $117^{1237}$ por $11$ es **$6$**. 🎉



### M2️⃣ Demostración por Inducción Completa

#### a) Demostrar que $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$

**📖 Procedimiento detallado:**
1. **Caso base ($n = 1$):**
   * *Lado izquierdo:* $\sum_{i=1}^{1} i^2 = 1^2 = 1$
   * *Lado derecho:* $\frac{1(1+1)(2(1)+1)}{6} = \frac{1(2)(3)}{6} = \frac{6}{6} = 1$
   * Como ambos lados coinciden ($1 = 1$), la proposición es verdadera para $n = 1$. ✅
2. **Hipótesis inductiva:** Suponemos que la fórmula es verdadera para un número natural $n = k$:
   $$\sum_{i=1}^{k} i^2 = \frac{k(k+1)(2k+1)}{6}$$
3. **Paso inductivo:** Debemos demostrar que se cumple para $n = k + 1$, es decir:
   $$\sum_{i=1}^{k+1} i^2 = \frac{(k+1)((k+1)+1)(2(k+1)+1)}{6} = \frac{(k+1)(k+2)(2k+3)}{6}$$
4. **Desarrollo algebraico:**
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
5. Con esto queda demostrado por inducción completa para todo $n \in \mathbb{N}$. 🎉

#### b) Demostrar que $3 \cdot 10^{n+1} + 9 \cdot 10^n + 15$ es divisible por $27$ para todo $n \in \mathbb{N}$

**📖 Procedimiento detallado:**
1. Reescribimos la expresión para que dependa de $10^n$:
   $$3 \cdot 10^{n+1} + 9 \cdot 10^n + 15 = 3 \cdot (10 \cdot 10^n) + 9 \cdot 10^n + 15 = 30 \cdot 10^n + 9 \cdot 10^n + 15 = 39 \cdot 10^n + 15$$
   *(Nota: en el enunciado original se ve como $3 \cdot 10^{n+1} + 9 \cdot 10^n + 15$)*.
2. Comprobamos el caso base ($n = 1$):
   $$3 \cdot 10^{1+1} + 9 \cdot 10^1 + 15 = 3 \cdot 100 + 90 + 15 = 300 + 90 + 15 = 405$$
   Verificamos si es divisible por $27$:
   $$405 \div 27 = 15$$
   Como el resultado es exacto ($15$), el caso base se cumple. ✅



### M3️⃣ Resolver la ecuación diofántica $486x - 660y = 84$

**📖 Procedimiento detallado:**
1. Simplificamos la ecuación dividiendo todos los coeficientes entre su máximo común divisor para facilitar los cálculos. Calculamos el mcd de $486$ y $660$:
   * $486 = 2 \times 3^5 = 2 \times 243 = 486$
   * $660 = 2^2 \times 3 \times 5 \times 11 = 660$
   * El máximo común divisor es $\text{mcd}(486, 660) = 6$.
2. Dividimos toda la ecuación entre $6$:
   $$\frac{486}{6}x - \frac{660}{6}y = \frac{84}{6}$$
   $$81x - 110y = 14$$
3. Como $\text{mcd}(81, 110) = 1$ y $1$ divide a $14$, la ecuación tiene solución entera.
4. Aplicamos el algoritmo de Euclides extendido para expresar $1$ como combinación lineal de $81$ y $110$:
   * $110 = 81 \times 1 + 29$
   * $81 = 29 \times 2 + 23$
   * $29 = 23 \times 1 + 6$
   * $23 = 6 \times 3 + 5$
   * $6 = 5 \times 1 + 1$
5. Despejamos los restos hacia atrás para hallar una solución particular $(x_0, y_0)$:
   * $1 = 6 - 5 \times 1$
   * $1 = 6 - (23 - 6 \times 3) = 4 \times 6 - 23$
   * $1 = 4(29 - 23) - 23 = 4 \times 29 - 5 \times 23$
   * $1 = 4 \times 29 - 5(81 - 29 \times 2) = 14 \times 29 - 5 \times 81$
   * $1 = 14(110 - 81) - 5 \times 81 = 14 \times 110 - 19 \times 81$
   * Por tanto: $-19(81) + 14(110) = 1$
6. Multiplicamos por $14$ para igualar al término independiente de nuestra ecuación ($14$):
   $$-266(81) + 196(110) = 14$$
   Lo que nos da una solución particular:
   $$x_0 = -266, \quad y_0 = -196$$
7. La solución general de la ecuación diofántica lineal es:
   $$x = -266 + 110k, \quad y = -196 + 81k \quad (k \in \mathbb{Z})$$ 🎉



### 4️⃣ Hallar 3 vectores perpendiculares a $(1, 2, -1)$ que sean unitarios

**📖 Procedimiento detallado:**
1. Sea el vector dado $V = (1, 2, -1)$. Buscamos un vector genérico $X = (x, y, z)$ que sea perpendicular a $V$. Su producto escalar debe ser cero:
   $$(x, y, z) \cdot (1, 2, -1) = 0 \implies x + 2y - z = 0 \implies z = x + 2y$$
2. Además, exigimos que el vector sea unitario, es decir, que su norma sea igual a $1$:
   $$\|X\|^2 = x^2 + y^2 + z^2 = 1$$
3. Como tenemos un sistema de dos ecuaciones con tres incógnitas, podemos elegir valores libres para dos variables y despejar las demás para encontrar tres vectores linealmente independientes que cumplan la condición.
   * **Primer vector ($V_1$):** Hacemos $y = 0$. Entonces $z = x$. Sustituimos en la norma:
     $$x^2 + 0^2 + x^2 = 1 \implies 2x^2 = 1 \implies x = \frac{1}{\sqrt{2}} \quad \text{o} \quad x = -\frac{1}{\sqrt{2}}$$
     Tomando $x = \frac{1}{\sqrt{2}}$:
     $$V_1 = \left( \frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}} \right)$$
   * **Segundo vector ($V_2$):** Hacemos $x = 0$. Entonces $z = 2y$. Sustituimos en la norma:
     $$0^2 + y^2 + (2y)^2 = 1 \implies 5y^2 = 1 \implies y = \frac{1}{\sqrt{5}}$$
     Tomando $y = \frac{1}{\sqrt{5}}$:
     $$V_2 = \left( 0, \frac{1}{\sqrt{5}}, \frac{2}{\sqrt{5}} \right)$$
   * **Tercer vector ($V_3$):** Podemos aplicar el producto vectorial entre $V$ y $V_1$ (o elegir otra combinación lineal ortogonal):
     $$V_3 = V \times V_1$$
     O bien asignar otros valores adecuados que satisfagan el sistema y sean linealmente independientes (por ejemplo, eligiendo valores simétricos o usando el complemento ortogonal). 🎉



### 5️⃣ Sea $A = (-1, 0)$. Encontrar $B$ tal que $\sphericalangle(A, B) = \frac{\pi}{3} (60^{\circ})$ y $\|B\| = 1$

**📖 Procedimiento detallado:**
1. Sea el vector desconocido $B = (x, y)$. Sabemos por hipótesis que su norma es $1$:
   $$\|B\| = \sqrt{x^2 + y^2} = 1 \implies x^2 + y^2 = 1$$
2. Usamos la fórmula del ángulo entre dos vectores mediante el producto escalar:
   $$\cos(\theta) = \frac{A \cdot B}{\|A\| \|B\|}$$
3. Sustituimos los valores conocidos:
   * $A = (-1, 0)$  $\implies$  $\|A\| = \sqrt{(-1)^2 + 0^2} = 1$
   * $\|B\| = 1$
   * $\theta = \frac{\pi}{3}$  $\implies$  $\cos\left(\frac{\pi}{3}\right) = \frac{1}{2}$
   * $A \cdot B = (-1)(x) + (0)(y) = -x$
4. Sustituimos en la ecuación del ángulo:
   $$\frac{1}{2} = \frac{-x}{1 \cdot 1} \implies -x = \frac{1}{2} \implies x = -\frac{1}{2}$$
5. Con el valor de $x$, sustituimos en la ecuación de la norma ($\|B\|^2 = 1$):
   $$\left(-\frac{1}{2}\right)^2 + y^2 = 1 \implies \frac{1}{4} + y^2 = 1 \implies y^2 = 1 - \frac{1}{4} = \frac{3}{4}$$
6. Despejamos $y$, obteniendo dos posibles soluciones simétricas:
   $$y = \pm \frac{\sqrt{3}}{2}$$
7. **Respuesta:** Existen dos vectores posibles que satisfacen las condiciones del enunciado:
   $$B_1 = \left( -\frac{1}{2}, \frac{\sqrt{3}}{2} \right) \quad \text{o} \quad B_2 = \left( -\frac{1}{2}, -\frac{\sqrt{3}}{2} \right)$$ 🎉
