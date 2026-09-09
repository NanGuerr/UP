# 📚 ÁLGEBRA LINEAL - EXAMEN PARCIAL

🎓 **Universidad:** Universidad de Palermo  
📌 **Tema:** Dependencia e Independencia Lineal, Espacios Vectoriales, Bases y Transformaciones Lineales  



## 🔢 EJERCICIO 1: Dependencia e Independencia Lineal

### 1.1. Análisis en el Espacio de Polinomios $P_2$
**Consigna:**  
Determine si el siguiente conjunto de vectores en $P_2$ es linealmente dependiente o independiente:

$$S = \{ x, \, 2 - x^2, \, 3 - x, \, 7x^2 - 8x \}$$

#### 📝 Procedimiento Descriptivo:
1. **Planteo de la Combinación Lineal Nula:**  
   Se buscan escalares $a, b, c, d \in \mathbb{R}$ tales que:
   
   $$a(x) + b(2 - x^2) + c(3 - x) + d(7x^2 - 8x) = 0$$

2. **Agrupación por Grado del Polinomio:**  
   Reordenando los términos según las potencias de $x$:
   
   $$(-b + 7d)x^2 + (a - c - 8d)x + (2b + 3c) = 0$$

3. **Sistema de Ecuaciones Lineales:**  
   Para que el polinomio resultante sea idénticamente nulo, cada coeficiente debe ser igual a cero:

$$
\begin{pmatrix}
-b + 7d = 0 \\
a - c - 8d = 0 \\
2b + 3c = 0 \end{pmatrix}
$$

5. **Resolución del Sistema:**  
   - De la primera ecuación: $b = 7d$
   - Sustituyendo en la tercera ecuación: $2(7d) + 3c = 0 \implies 14d + 3c = 0 \implies c = -\frac{14}{3}d$
   - Sustituyendo en la segunda ecuación: $a - \left(-\frac{14}{3}d\right) - 8d = 0 \implies a = 8d - \frac{14}{3}d = \frac{10}{3}d$

6. **Conclusión:**  
   Dado que existen soluciones no triviales (haciendo, por ejemplo, $d = 1$, se obtiene $a = \frac{10}{3}$, $b = 7$ y $c = -\frac{14}{3}$), el conjunto de vectores es **Linealmente Dependiente**.



### 1.2. Análisis en el Espacio $\mathbb{R}^3$
**Consigna:**  
Determine si el conjunto de vectores en $\mathbb{R}^3$ es linealmente dependiente o independiente:

$$B = \{(2, 1, 1), \, (2, 2, 1), \, (2, 2, 2)\}$$

#### 📝 Procedimiento Descriptivo:
1. **Planteo de la Matriz de Vectores:**  
   Se construye la matriz asociando los vectores como filas o columnas:
   
$$A = \begin{pmatrix} 2 & 1 & 1 \\ 2 & 2 & 1 \\ 2 & 2 & 2 \end{pmatrix}$$

2. **Cálculo del Determinante:**  
   
$$\det(A) = 2 \cdot \begin{vmatrix} 2 & 1 \\ 2 & 2 \end{vmatrix} - 1 \cdot \begin{vmatrix} 2 & 1 \\ 2 & 2 \end{vmatrix} + 1 \cdot \begin{vmatrix} 2 & 2 \\ 2 & 2 \end{vmatrix}$$
$$\det(A) = 2(4 - 2) - 1(4 - 2) + 1(4 - 4) = 2(2) - 1(2) + 0 = 4 - 2 = 2$$

3. **Conclusión:**  
   Como $\det(A) = 2 \neq 0$, la matriz es invertible y los vectores forman un conjunto **Linealmente Independiente** (y por lo tanto constituyen una base de $\mathbb{R}^3$).



## 🧮 EJERCICIO 2: Base para el Espacio de Soluciones

**Consigna:**  
Encuentre una base para el espacio de soluciones del siguiente sistema homogéneo:

$$\begin{cases} 3x_1 - 3x_2 - 3x_3 = 0 \\ 2x_1 + 4x_2 + 4x_3 = 0 \end{cases}$$

#### 📝 Procedimiento Descriptivo:
1. **Matriz Aumentada del Sistema:**  
   
$$
\begin{pmatrix} 
3 & -3 & -3 & | & 0 \\ 
2 & 4 & 4 & | & 0 \end{pmatrix}
$$

2. **Reducción por Escalonamiento (Gauss-Jordan):**  
   - Normalizar la primera fila ($F_1 \leftarrow \frac{1}{3} F_1$):
     
$$
\begin{pmatrix} 
1 & -1 & -1 & | & 0 \\ 
2 & 4 & 4 & | & 0 \end{pmatrix}
$$

   - Eliminar $x_1$ de la segunda fila ($F_2 \leftarrow F_2 - 2F_1$):
     
$$
\begin{pmatrix} 
1 & -1 & -1 & | & 0 \\
0 & 6 & 6 & | & 0 \end{pmatrix}
$$

   - Normalizar la segunda fila ($F_2 \leftarrow \frac{1}{6} F_2$):
     
$$
\begin{pmatrix} 1 & -1 & -1 & | & 0 \\ 
0 & 1 & 1 & | & 0 \end{pmatrix}
$$

   - Sumar $F_2$ a $F_1$ ($F_1 \leftarrow F_1 + F_2$):
     
$$
\begin{pmatrix} 1 & 0 & 0 & | & 0 \\ 
0 & 1 & 1 & | & 0 \end{pmatrix}
$$

3. **Expresión del Conjunto Solución:**  
Del sistema reducido se obtiene:

$$
\begin{cases}
x_1 = 0 \\
 x_2 + x_3 = 0 \implies x_2 = -x_3\end{cases}
 $$

   El vector solución general toma la forma:
   
$$
\begin{pmatrix} x_1 \\ 
x_2 \\ 
x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ -x_3 \\ x_3 \end{pmatrix} = x_3 \begin{pmatrix} 0 \\ -1 \\ 1 \end{pmatrix}, \quad x_3 \in \mathbb{R}
$$

4. **Base del Espacio Solución:**  
   
$$
\text{Base} =
\begin{pmatrix} 
0 \\ 
-1 \\ 
1 \end{pmatrix}
$$

## 🔄 EJERCICIO 3: Demostración de Transformación Lineal

**Consigna:**  
Determine si la transformación dada $T: P_2 \rightarrow P_1$ definida por $T(a_0 + a_1 x + a_2 x^2) = a_1 + a_2 x$ es lineal.

#### 📝 Procedimiento Descriptivo:
Para comprobar que $T$ es una transformación lineal, se deben verificar dos condiciones principales:

1. **Aditividad:** $T(u + v) = T(u) + T(v)$  
   Sean $u = a_0 + a_1 x + a_2 x^2$ y $v = b_0 + b_1 x + b_2 x^2$:
   
   $$u + v = (a_0 + b_0) + (a_1 + b_1)x + (a_2 + b_2)x^2$$
   $$T(u + v) = (a_1 + b_1) + (a_2 + b_2)x$$
   
   Por otro lado:
   
   $$T(u) + T(v) = (a_1 + a_2 x) + (b_1 + b_2 x) = (a_1 + b_1) + (a_2 + b_2)x$$
   
   Se cumple que $T(u + v) = T(u) + T(v)$.

2. **Homogeneidad:** $T(c \cdot u) = c \cdot T(u)$  
   Sea $c \in \mathbb{R}$:
   
   $$c \cdot u = (c a_0) + (c a_1)x + (c a_2)x^2$$
   $$T(c \cdot u) = (c a_1) + (c a_2)x = c(a_1 + a_2 x) = c \cdot T(u)$$

3. **Conclusión:**  
   Dado que satisface ambas propiedades, $T$ **es una Transformación Lineal**.



## 🎯 EJERCICIO 4: Representación Matricial y Núcleo

### 4.1. Transformación en $\mathbb{R}^3 \rightarrow \mathbb{R}^3$
**Consigna:**  
Dada la transformación lineal $T: \mathbb{R}^3 \rightarrow \mathbb{R}^3$ definida como:

$$T\begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} 3x + z \\ -x + y \\ z \end{pmatrix}$$

Hallar la matriz de la transformación $[T]$ y su núcleo ($\ker(T)$).

#### 📝 Procedimiento Descriptivo:
1. **Transformación de los Vectores Cannónicos:**  
   - $T(1, 0, 0) = (3, -1, 0)$
   - $T(0, 1, 0) = (0, 1, 0)$
   - $T(0, 0, 1) = (1, 0, 1)$

2. **Matriz Canónica de la Transformación $[T]$:**  
   
   $$[T] = \begin{pmatrix} 3 & 0 & 1 \\ -1 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}$$

3. **Cálculo del Núcleo ($\ker(T)$):**  
   Se resuelve $T(v) = 0$:

$$\begin{pmatrix}
3x + z = 0 \\
-x + y = 0 \\
z = 0 \end{pmatrix}$$
   
   Sustituyendo $z = 0$:
   - $3x + 0 = 0 \implies x = 0$
   - $-0 + y = 0 \implies y = 0$

   Por lo tanto, $\ker(T) = \{(0, 0, 0)\}$.



### 4.2. Transformación en $P_2 \rightarrow P_2$
**Consigna:**  
Dada la transformación $T: P_2 \rightarrow P_2$ definida como:

$$T(a_0 + a_1 x + a_2 x^2) = a_0 x^2 + a_1 x - a_2$$

Hallar la matriz de la transformación $[T]$ y su núcleo ($\ker(T)$). 

#### 📝 Procedimiento Descriptivo:
1. **Evaluación en la Base Canónica $\{1, x, x^2\}$:**  
   - $T(1) = 1 \cdot x^2 + 0 \cdot x - 0 = x^2$
   - $T(x) = 0 \cdot x^2 + 1 \cdot x - 0 = x$
   - $T(x^2) = 0 \cdot x^2 + 0 \cdot x - 1 = -1$

2. **Matriz Asociada $[T]$:**  
   Tomando la base canónica $\{1, x, x^2\}$ como referencia:


$$[T] = \begin{pmatrix}
0 & 0 & -1 \\
0 & 1 & 0 \\
1 & 0 & 0 \end{pmatrix}$$

4. **Cálculo del Núcleo ($\ker(T)$):**  
   Igualando a cero la transformación:

$$a_0 x^2 + a_1 x - a_2 = 0x^2 + 0x + 0 \implies 
\begin{cases} 
a_0 = 0 \\ 
a_1 = 0 \\ 
a_2 = 0 \end{cases}$$

Dado que la única solución es $a_0 = a_1 = a_2 = 0$, el núcleo contiene únicamente el polinomio nulo:

   
   $$\ker(T) = \{ 0 \}$$
