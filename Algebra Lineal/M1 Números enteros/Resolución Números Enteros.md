# 📘 Resolución: Números Enteros y Álgebra Lineal 🔢


## 1. 🧮 Máximo Común Divisor (Algoritmo de Euclides)

Calcular el máximo común divisor de $3452$ y $1234$ utilizando el algoritmo de Euclides.

* $3452 = 2 \cdot 1234 + 984$
* $1234 = 1 \cdot 984 + 250$
* $984 = 3 \cdot 250 + 234$
* $250 = 1 \cdot 234 + 16$
* $234 = 14 \cdot 16 + 10$
* $16 = 1 \cdot 10 + 6$
* $10 = 1 \cdot 6 + 4$
* $6 = 1 \cdot 4 + 2$
* $4 = 2 \cdot 2 + 0$

🎯 **Respuesta / MCD:** $2$

---

## 2. 🔢 Determinante de una Matriz

Calcular el determinante de la siguiente matriz $A$:

$$
A = \begin{bmatrix} 
-2 & -8 & -9 \\ 
-4 & -9 & 5 \\ 
4 & 7 & -9 
\end{bmatrix}
$$

Desarrollando por cofactores:

$$A = \begin{bmatrix} -2 & -8 & -9 \\ -4 & -9 & 5 \\ 4 & 7 & -9 \end{bmatrix}$$

Se utiliza el método de desarrollo por cofactores (expansión de Laplace) a lo largo de la primera fila. La estructura general sigue la fórmula:  

$$\vert{}A\vert{} = a_{11} C_{11} + a_{12} C_{12} + a_{13} C_{13}$$

donde los signos correspondientes a las posiciones de la primera fila alternan como $(+ - +)$ y cada $C_{ij}$ representa el determinante de la submatriz de $2 \times 2$ que resulta al eliminar la fila y la columna de dicho elemento.  

### Paso 1: Primer elemento ($a_{11} = -2$)

Se toma el elemento $-2$ y se multiplica por el determinante de la submatriz de $2 \times 2$ restante:  

$$\begin{vmatrix} -9 & 5 \\ 7 & -9 \end{vmatrix}$$

Se calcula el determinante secundario multiplicando la diagonal principal menos la secundaria:

$$(-9)(-9) - (5)(7) = 81 - 35 = 46$$

Se multiplica por el coeficiente inicial:  

$$-2(81 - 35) = -2(46) = -92$$

### Paso 2: Segundo elemento ($a_{12} = -8$)

Por la regla de signos de los cofactores ($(-1)^{1+2} = -1$), el signo del término se invierte: $-(-8) = +8$.  

Se multiplica por el determinante de la submatriz al eliminar su fila y columna correspondientes:  

$$\begin{vmatrix} -4 & 5 \\ 4 & -9 \end{vmatrix}$$

Se calcula el determinante secundario:  

$$(-4)(-9) - (5)(4) = 36 - 20 = 16$$

Se multiplica por el coeficiente:  

$$8(36 - 20) = 8(16) = 128$$

### Paso 3: Tercer elemento ($a_{13} = -9$)

Se mantiene el signo original de la posición ($(-1)^{1+3} = +1$), es decir, $-9$.  

Se multiplica por el determinante de la submatriz resultante:  

$$\begin{vmatrix} -4 & -9 \\ 4 & 7 \end{vmatrix}$$

Se calcula el determinante secundario:  

$$(-4)(7) - (-9)(4) = -28 - (-36) = -28 + 36 = 8$$

Se multiplica por el coeficiente:  

$$-9(-28 - (-36)) = -9(8) = -72$$

## Paso 4: Suma total de los términos

Se agrupan los resultados parciales obtenidos en cada paso:  

$$\vert{}A\vert{} = -92 + 128 - 72 = -36$$

🎯 **Respuesta final:** El determinante de la matriz es $-36$.

---

## 3. 🔄 Matriz Transpuesta

Calcular la transpuesta de la matriz:

$$
\begin{bmatrix} 
1 & -8 & -9 \\ 
-4 & 3 & 5 \\ 
4 & 7 & 0 
\end{bmatrix}
$$

🎯 **Respuesta:**


$$
\begin{bmatrix} 
1 & -4 & 4 \\ 
-8 & 3 & 7 \\ 
-9 & 5 & 0 
\end{bmatrix}
$$

---

## 4. 📉 Sistema de Ecuaciones

Resolver el siguiente sistema de ecuaciones lineales:

$$
\begin{cases} 
x - y - z = -3 \\ 
3x + 2y - 8z = -19 \\ 
2x - y - 3z = -8 
\end{cases}
$$

### Paso 1: Despejar una variable de la primera ecuación

* A partir de la ecuación ① ($x - y - z = -3$), se despeja la variable $x$.
* La expresión resultante es $x = y + z - 3$.

### Paso 2: Sustituir en la tercera ecuación

* Se sustituye la expresión de $x$ en la ecuación ③ ($2x - y - 3z = -8$).
* Esto genera la ecuación $2(y + z - 3) - y - 3z = -8$.
* Se distribuyen los términos: $2y + 2z - 6 - y - 3z = -8$.
* Se agrupan los términos semejantes: $y - z = -8 + 6$.
* Se simplifica obteniendo la relación $y - z = -2$, lo que equivale a $z = y + 2$.

### Paso 3: Comprobar con la segunda ecuación

* Se sustituye $x = y + z - 3$ en la ecuación ② ($3x + 2y - 8z = -19$).
* Se plantea la ecuación $3(y + z - 3) + 2y - 8z = -19$.
* Se expanden los paréntesis: $3y + 3z - 9 + 2y - 8z = -19$.
* Se agrupan los términos: $5y - 5z = -19 + 9$, lo cual da $5y - 5z = -10$.
* Al dividir toda la expresión entre $5$, se obtiene nuevamente la misma relación $y - z = -2$.
* Debido a que no hay contradicciones y se reduce a una sola ecuación con dos variables dependientes, el sistema cuenta con infinitas soluciones, clasificándose como un **Sistema Compatible Indeterminado (SCI)**.

### Paso 4: Obtener la solución general en función de $x$

* Retomando la ecuación de $x$ en función de $y$ y $z$ ($x = y + z - 3$) y sustituyendo $z = y + 2$, se tiene que $x = y + (y + 2) - 3$.
* Esto se simplifica a $x = 2y - 1$.
* Al despejar la variable $y$ en función de $x$, se obtiene $2y = x + 1$, resultando en:

$$y = \frac{1}{2} + \frac{x}{2}$$

* Posteriormente, se sustituye esta expresión de $y$ para hallar $z$ en función de $x$:

$$z = \left(\frac{1}{2} + \frac{x}{2}\right) + 2 = \frac{5}{2} + \frac{x}{2}$$

---

🎯 **Respuesta / Solución general:**

$$y = \frac{1}{2} + \frac{x}{2}$$

$$z = \frac{5}{2} + \frac{x}{2}$$

* 📊 **Clasificación del sistema:** Sistema compatible indeterminado (SCI), cuenta con infinitas soluciones.

$$y = \frac{1}{2} + \frac{x}{2}$$

$$z = \frac{5}{2} + \frac{x}{2}$$
