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



## 📌 PARTE 2: Bloque de Sistemas Homogéneos y Transformaciones Lineales

### ❓ Pregunta 1 (Bloque 2): Sistema Homogéneo

**Enunciado:**
Encuentre una base para el espacio de las soluciones del sistema homogéneo dado:


$$\begin{cases} 2x_1 - 2x_2 - 2x_3 = 0 \\ x_1 + 2x_2 + 2x_3 = 0 \end{cases}$$

**🔍 Análisis y Procedimiento:**

1. Restamos la segunda ecuación multiplicada por 2 a la primera, o resolvemos por matriz aumentada:

$$\begin{pmatrix} 
2 & -2 & -2 \\ 
1 & 2 & 2 \end{pmatrix} 
\sim \begin{pmatrix} 
1 & -1 & -1 \\ 
1 & 2 & 2 \end{pmatrix} 
\sim \begin{pmatrix} 1 & -1 & -1 \\ 
0 & 3 & 3 \end{pmatrix} \sim \begin{pmatrix} 1 & -1 & -1 \\ 
0 & 1 & 1 \end{pmatrix} 
\sim \begin{pmatrix} 1 & 0 & 0 \\ 
0 & 1 & 1 \end{pmatrix}$$


2. De la matriz reducida obtenemos:

$$x_1 = 0$$


$$x_2 + x_3 = 0 \implies x_2 = -x_3$$


3. Expresando la solución general en función del parámetro libre $x_3 = t$:

$$(x_1, x_2, x_3) = (0, -t, t) = t(0, -1, 1)$$


4. **Respuesta:** La base queda en el conjunto formado por el vector $\{(0, -1, 1)\}$ (o $(0, 1, -1)$).



### ❓ Pregunta 2 (Bloque 2): Transformaciones Lineales, Núcleo e Imagen

**Enunciado:**
Encuentre la representación matricial de las transformaciones lineales dadas y encuentre su núcleo, imagen, nulidad y rango:

1. $T: \mathbb{R}^2 \to \mathbb{R}^3$ dada por $T(x, y) = (x + 3y, x - 3y, x + y)$
2. $T: P_1 \to P_3$ dada por $T(a_0 + a_1x) = a_1 + a_0x + a_1x^2 + a_0x^3$

**🔍 Análisis y Procedimiento (Caso 1):**

* Matriz asociada $A$:

$$A = \begin{pmatrix}
1 & 3 \\ 
1 & -3 \\ 
1 & 1 \end{pmatrix}$$


* **Núcleo ($\text{ker}(T)$):** Resolvemos $A \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies x = 0, y = 0$. Núcleo = $\{(0, 0)\}$, Nulidad = $0$.
* **Imagen e Identificación de Rango:** Por el teorema de la dimensión, $\text{Rango} = \text{Dim}(\mathbb{R}^2) - \text{Nulidad} = 2 - 0 = 2$. Los vectores columna generan la imagen, abarcando los puntos indicados.



### ❓ Pregunta 3 (Bloque 2): Dependencia e Independencia Lineal

**Enunciado:**
Determine si el conjunto dado de vectores es linealmente dependiente o independiente:

1. En $P_3$: $x - x^3$, $3 - x$, $7x - 8x^2$
2. En $\mathbb{R}^3$: $(1, 0, 1), (2, 0, 2), (1, 2, 2)$

**🔍 Análisis y Procedimiento:**

1. Para el conjunto en $\mathbb{R}^3$, formamos la matriz con los vectores como filas o columnas y calculamos su determinante:

$$\begin{vmatrix} 
1 & 0 & 1 \\ 
2 & 0 & 2 \\ 
1 & 2 & 2 \end{vmatrix}$$



Como la primera y segunda fila son proporcionales (la segunda es el doble de la primera), el determinante es cero.
2. **Respuesta:** En $\mathbb{R}^3$ es linealmente dependiente. En el caso de polinomios en $P_3$, al evaluar sus coordenadas en la base canónica, resultan linealmente independientes.



### ❓ Pregunta 4 (Bloque 2): Autovalores y Autovectores

**Enunciado:**
Calcule los autovalores y los autovectores de la siguiente matriz:


$$A = \begin{pmatrix} 
0 & 2 \\ 
2 & 0 \end{pmatrix}$$

**🔍 Análisis y Procedimiento:**

1. Planteamos el polinomio característico $\det(A - \lambda I) = 0$:

$$\begin{vmatrix} 
-\lambda & 2 \\ 
2 & -\lambda \end{vmatrix} = (-\lambda)(-\lambda) - (2)(2) = \lambda^2 - 4 = 0$$


$$\lambda^2 = 4 \implies \lambda_1 = 2, \lambda_2 = -2$$


2. **Cálculo de Autovectores:**
* Para $\lambda_1 = 2$:

$$\begin{pmatrix} 
-2 & 2 \\ 
2 & -2 \end{pmatrix} 
\begin{pmatrix} 
x \\ 
y \end{pmatrix} = 
\begin{pmatrix} 
0 \\ 
0 \end{pmatrix} \implies -2x + 2y = 0 \implies x = y$$



Autovector asociado: $\vec{v}_1 = (1, 1)$.
* Para $\lambda_2 = -2$:

$$\begin{pmatrix} 
2 & 2 \\ 
2 & 2 \end{pmatrix} 
\begin{pmatrix}
x \\ 
y \end{pmatrix} = \begin{pmatrix} 
0 \\ 
0 \end{pmatrix} \implies 2x + 2y = 0 \implies x = -y$$



Autovector asociado: $\vec{v}_2 = (1, -1)$.





### ❓ Pregunta 5 (Bloque 2): Linealidad de Transformaciones

**Enunciado:**
Determine si la transformación dada es lineal:


$$T: \mathbb{R}^3 \to \mathbb{R}^3$$

$$T\left(\begin{pmatrix} 
x \\ 
y \\ 
z \end{pmatrix}\right) = \begin{pmatrix} 
x - y - z \\ 
-x - y - z \\ 
z & x & y \end{pmatrix} \quad (\text{representación matricial})$$

**🔍 Análisis y Procedimiento:**

1. Una transformación definida por multiplicación por una matriz de coeficientes constantes es siempre una transformación lineal.
2. Se cumple que $T(\vec{u} + \vec{v}) = T(\vec{u}) + T(\vec{v})$ y $T(c\vec{u}) = cT(\vec{u})$.
3. **Respuesta:** Sí es lineal.
