# 📝 Resolución Detallada de Examen (Álgebra Lineal y Matemática Discreta) 🧮

Este documento contiene la transcripción completa de las preguntas de las evaluaciones mostradas en las imágenes, junto con su respectiva resolución detallada paso a paso, aplicando el formato LaTeX corregido (sin comandos erróneos, usando delimitadores correctos y evitando cualquier etiqueta `cite`).



## 📌 PARTE 1: Examen de Recuperatorio (Primer Parcial)

### ❓ Pregunta 1: Ecuación Diofántica

**Enunciado:**
Encuentre la solución general de la siguiente ecuación diofántica:


$$16x + 14y = 7$$

**🔍 Análisis y Procedimiento:**

1. Una ecuación diofántica lineal de la forma $ax + by = c$ tiene solución si y solo si el máximo común divisor $\text{mcd}(a, b)$ divide a $c$.
2. Calculamos el $\text{mcd}(16, 14)$ utilizando el algoritmo de Euclides:

$$16 = 1 \cdot 14 + 2$$


$$14 = 7 \cdot 2 + 0$$



Por lo tanto, $\text{mcd}(16, 14) = 2$.
3. Verificamos la divisibilidad: evaluamos si $2$ divide a $7$. Como $7 / 2 = 3.5$ (no es un número entero), el $\text{mcd}$ no divide a $c$.
4. **Respuesta:** No tiene solución.



### ❓ Pregunta 2: Distancia de un Punto a un Plano

**Enunciado:**
Calcula la distancia entre el punto $P = (1, 2, 3)$ y el plano $\pi$ que contiene a los puntos $(-1, 3, 2)$, $(6, 1, 0)$ y $(0, 0, 3)$.

**🔍 Análisis y Procedimiento:**

1. Sean los puntos del plano $A = (-1, 3, 2)$, $B = (6, 1, 0)$ y $C = (0, 0, 3)$.
2. Encontramos dos vectores directores del plano:

$$\vec{u} = B - A = (6 - (-1), 1 - 3, 0 - 2) = (7, -2, -2)$$


$$\vec{v} = C - A = (0 - (-1), 0 - 3, 3 - 2) = (1, -3, 1)$$


3. Calculamos el vector normal $\vec{n}$ del plano mediante el producto vectorial $\vec{u} \times \vec{v}$:

$$\vec{n} = \vec{u} \times \vec{v} = 
\begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ 
7 & -2 & -2 \\ 
1 & -3 & 1 \end{vmatrix}$$


$$\vec{n} = \mathbf{i}((-2)(1) - (-2)(-3)) - \mathbf{j}((7)(1) - (-2)(1)) + \mathbf{k}((7)(-3) - (-2)(1))$$


$$\vec{n} = \mathbf{i}(-2 - 6) - \mathbf{j}(7 + 2) + \mathbf{k}(-21 + (-2)) = (-8, -9, -23)$$


4. La ecuación general del plano es $A(x - x_0) + B(y - y_0) + C(z - z_0) = 0$, tomando el punto $A(-1, 3, 2)$:

$$-8(x + 1) - 9(y - 3) - 23(z - 2) = 0$$


$$-8x - 8 - 9y + 27 - 23z + 46 = 0 \implies -8x - 9y - 23z + 65 = 0$$



o bien $8x + 9y + 23z - 65 = 0$.
5. Aplicamos la fórmula de distancia de un punto $P(x_0, y_0, z_0)$ al plano $Ax + By + Cz + D = 0$:

$$d = \frac{\vert{}Ax_0 + By_0 + Cz_0 + D\vert{}}{\sqrt{A^2 + B^2 + C^2}}$$


$$d = \frac{\vert{}8(1) + 9(2) + 23(3) - 65\vert{}}{\sqrt{8^2 + 9^2 + (-23)^2}} = \frac{\vert{}8 + 18 + 69 - 65\vert{}}{\sqrt{64 + 81 + 529}} = \frac{\vert{}30\vert{}}{\sqrt{674}} = \frac{30}{\sqrt{674}}$$





### ❓ Pregunta 3: Operaciones con Vectores en $\mathbb{R}^3$

**Enunciado:**
Sean $\vec{p} = (1, 1, 3)$, $\vec{q} = (0, 0, 3)$ y $\vec{r} = (1, 1, -1)$ tres vectores en $\mathbb{R}^3$. Calcula:

1. $\vec{p} \cdot \vec{q}$
2. $\vec{p} \times \vec{q}$
3. Un vector unitario que tiene la misma dirección de $\vec{p} + 3\vec{q}$
4. Un vector unitario ortogonal a $2\vec{q} - \vec{r}$

**🔍 Análisis y Procedimiento:**

1. **Producto escalar $\vec{p} \cdot \vec{q}$:**

$$\vec{p} \cdot \vec{q} = (1)(0) + (1)(0) + (3)(3) = 0 + 0 + 9 = 9$$


2. **Producto vectorial $\vec{p} \times \vec{q}$:**

$$\vec{p} \times \vec{q} = 
\begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ 
1 & 1 & 3 \\ 
0 & 0 & 3 \end{vmatrix} = \mathbf{i}(3 - 0) - \mathbf{j}(3 - 0) + \mathbf{k}(0 - 0) = (3, -3, 0)$$



*(Nota: en la imagen aparece como $(3, 3, 0)$ por detalle tipográfico del sistema original, pero el cálculo analítico correcto es $(3, -3, 0)$)*.
3. **Vector unitario con la misma dirección de $\vec{p} + 3\vec{q}$:**

$$\vec{p} + 3\vec{q} = (1, 1, 3) + 3(0, 0, 3) = (1, 1, 3) + (0, 0, 9) = (1, 1, 12)$$



Norma: $\Vert{}(1, 1, 12)\Vert{} = \sqrt{1^2 + 1^2 + 12^2} = \sqrt{1 + 1 + 144} = \sqrt{146}$.
Vector unitario: $\left(\frac{1}{\sqrt{146}}, \frac{1}{\sqrt{146}}, \frac{12}{\sqrt{146}}\right)$.
4. **Vector unitario ortogonal a $2\vec{q} - \vec{r}$:**
Calculamos el vector base:

$$2\vec{q} - \vec{r} = 2(0, 0, 3) - (1, 1, -1) = (0, 0, 6) - (1, 1, -1) = (-1, -1, 7)$$



Buscamos un vector $(x, y, z)$ tal que su producto escalar con $(-1, -1, 7)$ sea cero:

$$-x - y + 7z = 0$$



Existen infinitas soluciones; por ejemplo, haciendo $y = 0, z = 1 \implies x = 7$, obtenemos $(7, 0, 1)$, cuya norma es $\sqrt{49 + 1} = \sqrt{50}$. Su versión unitaria sería $\left(\frac{7}{\sqrt{50}}, 0, \frac{1}{\sqrt{50}}\right)$.



### ❓ Pregunta 4: Aritmética Modular (Restos)

**Enunciado:**
Obtener los restos de la siguiente división:


$$52^{324} / 11$$

**🔍 Análisis y Procedimiento:**

1. Aplicamos el Pequeño Teorema de Fermat o congruencias módulo 11.
2. Reducimos la base módulo 11:

$$52 \equiv 8 \pmod{11} \quad (\text{ya que } 52 = 4 \cdot 11 + 8)$$


3. Por lo tanto, $52^{324} \equiv 8^{324} \pmod{11}$. También podemos notar que $8 \equiv -3 \pmod{11}$.
4. Aplicamos el Teorema de Fermat, que indica que para un número primo $p$ y un entero $a$ no divisible por $p$:

$$a^{p-1} \equiv 1 \pmod{p} \implies 8^{10} \equiv 1 \pmod{11}$$


5. Dividimos el exponente entre 10: $324 = 10 \cdot 32 + 4$.
6. Entonces:

$$8^{324} = (8^{10})^{32} \cdot 8^4 \equiv (1)^{32} \cdot 8^4 \equiv 8^4 \pmod{11}$$


7. Calculamos $8^4$:

$$8^2 = 64 \equiv 9 \pmod{11}$$


$$8^4 = (8^2)^2 \equiv 9^2 = 81 \equiv 4 \pmod{11}$$


8. **Respuesta:** El resto es 4.



### ❓ Pregunta 5: Congruencia Lineal

**Enunciado:**
Resolver la siguiente ecuación y expresar la solución general con el representante mínimo:


$$16x \equiv 3 \pmod{18}$$

**🔍 Análisis y Procedimiento:**

1. Una congruencia lineal $ax \equiv b \pmod{n}$ tiene solución si y solo si $\text{mcd}(a, n)$ divide a $b$.
2. Calculamos $\text{mcd}(16, 18) = 2$.
3. Verificamos si 2 divide a 3: como 3 no es divisible por 2, la congruencia no tiene solución.
4. **Respuesta:** No tiene solución.



### ❓ Pregunta 6: Principio de Inducción Matemática

**Enunciado:**
Se demuestra utilizando el principio de inducción:


$$1 + \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^n} = 2 - \frac{1}{2^n}$$

**🔍 Análisis y Procedimiento:**

1. **Caso base ($n = 1$):**
Lado izquierdo: $1 + \frac{1}{2^1} = 1 + \frac{1}{2} = \frac{3}{2}$.
Lado derecho: $2 - \frac{1}{2^1} = 2 - \frac{1}{2} = \frac{3}{2}$.
Se cumple la igualdad.
2. **Hipótesis inductiva:** Suponemos que la fórmula es válida para $n = k$:

$$1 + \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^k} = 2 - \frac{1}{2^k}$$


3. **Paso inductivo:** Debemos demostrar que se cumple para $n = k + 1$:

$$1 + \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^k} + \frac{1}{2^{k+1}} = 2 - \frac{1}{2^{k+1}}$$



Sustituimos la hipótesis inductiva en la suma:

$$\left(2 - \frac{1}{2^k}\right) + \frac{1}{2^{k+1}} = 2 - \frac{2}{2 \cdot 2^k} + \frac{1}{2^{k+1}} = 2 - \frac{2}{2^{k+1}} + \frac{1}{2^{k+1}} = 2 - \frac{1}{2^{k+1}}$$



Queda demostrado formalmente por inducción.



