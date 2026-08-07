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

Desarrollando por cofactores o Sarrus:


$$\vert{}A\vert{} = -2(81 - 35) + 8(36 - 20) - 9(-28 - (-36))$$

$$\vert{}A\vert{} = -2(46) + 8(16) - 9(8) = -92 + 128 - 72$$

🎯 **Respuesta:** $-36$

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

* 📊 **Clasificación del sistema:** Sistema compatible indeterminado (SCI), cuenta con infinitas soluciones.

🎯 **Respuesta / Solución general:**


$$y = \frac{1}{2} + \frac{x}{2}$$

$$z = \frac{5}{2} + \frac{x}{2}$$
