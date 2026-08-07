# 📚 Teoría de Números y Álgebra Lineal 📐

Esta guía recopila conceptos fundamentales y ejercicios prácticos sobre teoría de números, máximo común divisor, determinantes y matrices transpuestas.

---

## 1. 🔢 Números Enteros y Divisibilidad

El conjunto de los números enteros se denota por $\mathbb{Z}$ y abarca tanto a los enteros positivos como a los negativos y al cero:

$$
\mathbb{Z} = \
{..., -n, ..., -2, -1, 0, 1, 2, ..., n, ...\}
$$

### ➗ Algoritmo de Euclides

El algoritmo de Euclides permite calcular el máximo común divisor (mcd) de dos números enteros mediante divisiones sucesivas hasta obtener un resto nulo. El máximo común divisor corresponde al último resto no nulo.

---

## 2. 📝 Ejercicios de Aplicación

### 🧮 Ejercicio 1: Máximo Común Divisor (Algoritmo de Euclides)

Cálculo del mcd para diversos pares de números enteros:

* $(44, 13) \rightarrow$ 🎯 **Solución:** $1$
* $(252, 198) \rightarrow$ 🎯 **Solución:** $18$
* $(300, 72) \rightarrow$ 🎯 **Solución:** $12$
* $(234, 117) \rightarrow$ 🎯 **Solución:** $117$
* $(42, 11) \rightarrow$ 🎯 **Solución:** $1$
* $(342, 198) \rightarrow$ 🎯 **Solución:** $18$
* $(323, 14) \rightarrow$ 🎯 **Solución:** $1$
* $(159, 120) \rightarrow$ 🎯 **Solución:** $3$

---

## 🔲 Ejercicio 2: Determinantes de Matrices

Cálculo de los determinantes para distintas matrices cuadradas:

* Para la matriz:

$$
\begin{bmatrix}
1 & 0 & 3 \\    
5 & 1 & 1 \\    
0 & 1 & 2    
\end{bmatrix}
$$

$\rightarrow$ 🎯 **Solución:** $16$
* Para la matriz:

$$
\begin{bmatrix}
1 & 0 & -2 \\    
3 & 3 & 2 \\    
0 & -1 & 1    
\end{bmatrix}$$



$\rightarrow$ 🎯 **Solución:** $11$
* Para la matriz:

$$
\begin{bmatrix}    
1 & -1 & 0 \\   
-1 & 0 & 1 \\    
0 & 1 & -1    
\end{bmatrix}
$$



$\rightarrow$ 🎯 **Solución:** $0$
* Para la matriz:

$$
\begin{bmatrix}   
1 & 1 & 0 \\   
0 & 1 & 1 \\   
1 & 0 & 1  
\end{bmatrix}
$$



$\rightarrow$ 🎯 **Solución:** $2$
* Para la matriz:

$$
\begin{bmatrix}    
-3 & 2 & 213 \\    
-2 & 1 & 1 \\   
-10 & 1 & 3    
\end{bmatrix}
$$



$\rightarrow$ 🎯 **Solución:** $-\frac{26}{3}$
* Para la matriz:

$$
\begin{bmatrix}    
4 & 0 & -1 \\  
3 & 3 & 3 \\   
-4 & -1 & 1   
\end{bmatrix}
$$



$\rightarrow$ 🎯 **Solución:** $15$
* Para la matriz:

$$
\begin{bmatrix}    
7 & -1 & 0 \\    
-1 & 0 & 3 \\   
5 & 1 & -1    
\end{bmatrix}
$$



$\rightarrow$ 🎯 **Solución:** $-8$
* Para la matriz:

$$
\begin{bmatrix}  
-9 & 1 & 4 \\  
-4 & 1 & 3 \\  
1 & 0 & 1   
\end{bmatrix}
$$


$\rightarrow$ 🎯 **Solución:** $-6$

---

### 🔄 Ejercicio 3: Matriz Transpuesta

La transpuesta de una matriz $A$ de tamaño $m \times n$, denotada como $A^T$, se obtiene al intercambiar sus filas por columnas.

1. Dada la matriz:

$$
\begin{bmatrix}    
1 & -4 \\    
5 & 1     
\end{bmatrix}
$$


su transpuesta es:

$$
\begin{bmatrix}     
1 & 5 \\    
-4 & 1    
\end{bmatrix}
$$


2. Dada la matriz:

$$
\begin{bmatrix} 
1 & 0 & -2 \\   
3 & 3 & 2 \\    
0 & -1 & 1     
\end{bmatrix}
$$



su transpuesta es:

$$
\begin{bmatrix}  
1 & 3 & 0 \\    
0 & 3 & -1 \\    
-2 & 2 & 1    
\end{bmatrix}
$$


3. Dada la matriz:

$$
\begin{bmatrix}
1 & -1 & 0 \\     
-1 & 0 & 1 \\     
0 & 1 & -1     
\end{bmatrix}
$$



su transpuesta es:

$$
\begin{bmatrix} 
1 & -1 & 0 \\  
-1 & 0 & 1 \\   
0 & 1 & -1    
\end{bmatrix}
$$
