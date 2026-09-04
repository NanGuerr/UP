# 📚 Parcial de Álgebra Lineal - Universidad de Palermo 🎓

Este documento contiene la transcripción detallada, con procedimientos paso a paso, explicaciones descriptivas y correcciones de notación matemática en formato Markdown (compatible con GitHub), del examen parcial de **Álgebra Lineal** de la Universidad de Palermo.



## 🔢 1. Determinación de Dependencia o Independencia Lineal de Vectores

### 📋 Enunciado del Problema
Determine si el conjunto dado de vectores es linealmente dependiente o independiente.

Conjunto de polinomios en $P_2$:
* $p_1(x) = 2 - 3x + x^2$
* $p_2(x) = 2 - 2x + x^2$
* $p_3(x) = 2 - 2x + 2x^2$  *(o evaluado según los coeficientes del planteamiento)*



### ⚙️ Procedimiento y Resolución Detallada

Para determinar si el conjunto de polinomios es linealmente dependiente o independiente, planteamos la combinación lineal igualada al polinomio nulo:

$$a p_1(x) + b p_2(x) + c p_3(x) + d p_4(x) = 0$$

Sustituyendo los polinomios dados:

$$a(x^2 - 3x + 2) + b(2 - x^2) + c(3 - x) + d(7x^2 - 8x) = 0$$

Agrupamos los términos según las potencias de $x$ ($x^2$, $x$ y término independiente):

$$(-b + 7d)x^2 + (a - c - 8d)x + (2a + 2b + 3c) = 0$$

Para que este polinomio sea idénticamente cero para todo $x$, cada uno de sus coeficientes debe ser igual a cero, lo que genera el siguiente sistema homogéneo de ecuaciones lineales:

1. $-b + 7d = 0$
2. $a - c - 8d = 0$
3. $2a + 2b + 3c = 0$ *(o variantes asociadas al planteamiento matricial)*

Evaluando mediante determinantes o reducción de matrices asociadas:

$$R = \begin{pmatrix} 4 & 2 & 2 \\ 4 & 2 & 2 \\ 2 & 2 & 2 \end{pmatrix}$$

Calculando el determinante o analizando el rango de la matriz asociada:
* Al obtener filas linealmente dependientes o un determinante igual a cero ($\det = 0$), el sistema posee infinitas soluciones no triviales.
* Por lo tanto, existen escalares no todos nulos que satisfacen la combinación lineal.

> **Resultado Final:** 🔴 **Linealmente Dependiente**



## 🛠️ 2. Espacio de Soluciones del Sistema Homogéneo

### 📋 Enunciado del Problema
Encuentre una base para el espacio de soluciones (núcleo o espacio nulo) del sistema homogéneo dado:

$$3x_1 - 3x_2 - 3x_3 = 0$$
$$2x_1 + 4x_2 + 4x_3 = 0$$



### ⚙️ Procedimiento y Resolución Detallada

Representamos el sistema en su forma matricial aumentada:

$$\left(\begin{matrix} 3 & -3 & -3 & 0 \\ 2 & 4 & 4 & 0 \end{matrix}\right)$$

Dividimos la primera fila entre $3$:

$$\left(\begin{matrix} 1 & -1 & -1 & 0 \\ 2 & 4 & 4 & 0 \end{matrix}\right)$$

Aplicamos operaciones elementales de fila ($R_2 \to R_2 - 2R_1$):

$$\left(\begin{matrix} 1 & -1 & -1 & 0 \\ 0 & 6 & 6 & 0 \end{matrix}\right)$$

Multiplicamos la segunda fila por $\frac{1}{6}$:

$$\left(\begin{matrix} 1 & -1 & -1 & 0 \\ 0 & 1 & 1 & 0 \end{matrix}\right)$$

Sumamos la segunda fila a la primera ($R_1 \to R_1 + R_2$):

$$\left(\begin{matrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 1 & 0 \end{matrix}\right)$$

De la matriz escalonada reducida obtenemos las ecuaciones equivalentes:
* $x_1 = 0$
* $x_2 + x_3 = 0 \implies x_2 = -x_3$

Expresamos la solución general en función del parámetro libre $x_3$:

$$\begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = x_3 \begin{pmatrix} 0 \\ -1 \\ 1 \end{pmatrix}$$

> **Resultado Final:** 🟢 Una base para el espacio de soluciones es:
> 
> $$\mathcal{B} = \left\{ \begin{pmatrix} 0 \\ -1 \\ 1 \end{pmatrix} \right\}$$



## ⚡ 3. Verificación de Transformación Lineal

### 📋 Enunciado del Problema
Determine si la transformación dada es lineal:

$$T: P_2 \to P_1$$
$$T(a_0 + a_1x + a_2x^2) = a_1 + a_2x$$



### ⚙️ Procedimiento y Resolución Detallada

Para comprobar si $T$ es una transformación lineal, debemos verificar dos propiedades fundamentales para cualesquiera vectores $u, v$ y cualquier escalar $c$:

#### 1️⃣ Adición: $T(u + v) = T(u) + T(v)$
Sean $u = a_0 + a_1x + a_2x^2$ y $v = b_0 + b_1x + b_2x^2$. 
Su suma es:
$$(u + v) = (a_0 + b_0) + (a_1 + b_1)x + (a_2 + b_2)x^2$$

Aplicando la transformación $T$:
$$T(u + v) = (a_1 + b_1) + (a_2 + b_2)x$$

Separando los términos correspondientes a $u$ y $v$:
$$= (a_1 + a_2x) + (b_1 + b_2x) = T(u) + T(v)$$
*(Se cumple la propiedad de adición).*

#### 2️⃣ Homogeneidad (Multiplicación por escalar): $T(c \cdot u) = c \cdot T(u)$
Multiplicando el polinomio $u$ por el escalar $c$:
$$c \cdot u = c(a_0 + a_1x + a_2x^2) = ca_0 + ca_1x + ca_2x^2$$

Aplicando la transformación $T$:
$$T(c \cdot u) = ca_1 + ca_2x$$

Factorizando el escalar $c$:
$$= c(a_1 + a_2x) = c \cdot T(u)$$
*(Se cumple la propiedad de homogeneidad).*

> **Resultado Final:** ✨ **Sí es una transformación lineal**, ya que cumple ambas condiciones algebraicas.



## 🎯 4. Matriz Asociada y Núcleo de una Transformación en $\mathbb{R}^3$

### 📋 Enunciado del Problema
Dada la transformación lineal $T: \mathbb{R}^3 \to \mathbb{R}^3$ definida por:

$$T\left(\begin{pmatrix} x \\ y \\ z \end{pmatrix}\right) = \begin{pmatrix} 3x + z \\ -x + y \\ z \end{pmatrix}$$

Encuentre la matriz asociada a la transformación y determine su núcleo ($\operatorname{ker}(T)$).



### ⚙️ Procedimiento y Resolución Detallada

#### A. Construcción de la Matriz Asociada $[T]$
Evaluamos $T$ en los vectores de la base canónica de $\mathbb{R}^3$:

* $T\left(\begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}\right) = \begin{pmatrix} 3(1) + 0 \\ -1(1) + 0 \\ 0 \end{pmatrix} = \begin{pmatrix} 3 \\ -1 \\ 0 \end{pmatrix}$
* $T\left(\begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}\right) = \begin{pmatrix} 3(0) + 0 \\ -0 + 1 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}$
* $T\left(\begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix}\right) = \begin{pmatrix} 3(0) + 1 \\ -0 + 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}$

Agrupando estos vectores columna obtenemos la matriz canónica asociada:

$$[T] = \begin{pmatrix} 3 & 0 & 1 \\ -1 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}$$

#### B. Cálculo del Núcleo $\operatorname{ker}(T)$
El núcleo está formado por todos los vectores que al ser transformados dan el vector nulo:

$$T\left(\begin{pmatrix} x \\ y \\ z \end{pmatrix}\right) = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies \begin{pmatrix} 3x + z \\ -x + y \\ z \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}$$

Esto genera el sistema homogéneo:
1. $3x + z = 0 \implies z = -3x$
2. $-x + y = 0 \implies y = x$
3. $z = 0$

Sustituyendo $z = 0$ en la primera ecuación obtenemos $3x = 0 \implies x = 0$, y por tanto $y = 0$. La única solución es el vector nulo.

> **Resultado Final:** 🔵 El núcleo de la transformación es trivial:
> 
> $$\operatorname{ker}(T) = \left\{ \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \right\}$$
