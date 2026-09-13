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


* **Núcleo ($\text{ker}(T)$):** Resolvemos
$A \begin{pmatrix}
x \\
y \end{pmatrix} = \begin{pmatrix}
0 \\
0 \\
0 \end{pmatrix} \implies x = 0, y = 0$.
Núcleo = $\{(0, 0)\}$, Nulidad = $0$.
  
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
