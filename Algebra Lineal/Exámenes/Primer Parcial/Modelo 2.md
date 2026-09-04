# 📝 Examen de Álgebra Lineal 

## 🔢 Pregunta 1: Ecuación de Congruencia

### Enunciado ❓
Encuentre todas las soluciones de la siguiente ecuación de congruencia:
$$10x \equiv 2 \pmod{22}$$

### Procedimiento y Resolución ✍️
1. **Analizar la congruencia lineal:**
   Una ecuación de la forma $ax \equiv b \pmod{m}$ tiene solución si y solo si el máximo común divisor $d = \text{mcd}(a, m)$ divide a $b$.
   
2. **Calcular el máximo común divisor:**
   $$a = 10, \quad m = 22$$
   $$\text{mcd}(10, 22) = 2$$
   Como $d = 2$ y $b = 2$, como $2 \mid 2$, **la ecuación sí tiene soluciones**. Específicamente, tendrá $d = 2$ soluciones módulo $22$.

3. **Simplificar la ecuación:**
   Dividimos toda la ecuación (coeficientes y módulo) entre $d = 2$:
   $$\frac{10}{2}x \equiv \frac{2}{2} \pmod{\frac{22}{2}}$$
   $$5x \equiv 1 \pmod{11}$$

4. **Encontrar el inverso multiplicativo:**
   Buscamos un entero $y$ tal que:
   $$5y \equiv 1 \pmod{11}$$
   Probando valores para $y$:
   * Si $y = 1$: $5(1) = 5 \not\equiv 1$
   * Si $y = 2$: $5(2) = 10 \not\equiv 1$
   * Si $y = 3$: $5(3) = 15 \equiv 4$
   * Si $y = 4$: $5(4) = 20 \equiv 9$
   * Si $y = 5$: $5(5) = 25 \equiv 3$
   * Si $y = 6$: $5(6) = 30 \equiv 8$
   * Si $y = 7$: $5(7) = 35 \equiv 2$
   * Si $y = 8$: $5(8) = 40 \equiv 6$
   * Si $y = 9$: $5(9) = 45 \equiv 1 \pmod{11}$
   
   Por lo tanto, el inverso multiplicativo es $5^{-1} \equiv 9 \pmod{11}$.

5. **Resolver para $x$:**
   Multiplicamos ambos lados de la ecuación $5x \equiv 1 \pmod{11}$ por $9$:
   $$x \equiv 9(1) \pmod{11} \implies x \equiv 9 \pmod{11}$$

6. **Hallar todas las soluciones módulo 22:**
   Las soluciones originales módulo $22$ se obtienen sumando múltiplos de $\frac{m}{d} = \frac{22}{2} = 11$:
   * $x_0 = 9$
   * $x_1 = 9 + 11 = 20$

### Resultado Final 🎯
Las soluciones de la ecuación de congruencia son:
$$x \equiv 9 \pmod{22} \quad \text{y} \quad x \equiv 20 \pmod{22}$$



## 📐 Pregunta 2: Distancia de un Punto a un Plano

### Enunciado ❓
Encuentre la distancia del punto $(4, 0, 1)$ al plano $2x - y + 8z = 3$.

### Procedimiento y Resolución ✍️
1. **Identificar la fórmula de distancia de un punto a un plano:**
   La distancia $D$ desde un punto $P_0(x_0, y_0, z_0)$ a un plano dado por la ecuación general $Ax + By + Cz + D = 0$ (o $Ax + By + Cz - d = 0$) se calcula mediante la fórmula:
   $$D = \frac{|Ax_0 + By_0 + Cz_0 - d|}{\sqrt{A^2 + B^2 + C^2}}$$

2. **Extraer los valores del plano y del punto:**
   * Ecuación del plano: $2x - y + 8z - 3 = 0$
     * $A = 2$
     * $B = -1$
     * $C = 8$
     * $d = 3$ (término independiente llevado al lado derecho)
   * Punto dado: $P_0(x_0, y_0, z_0) = (4, 0, 1)$
     * $x_0 = 4$
     * $y_0 = 0$
     * $z_0 = 1$

3. **Sustituir los valores en la fórmula:**
   $$D = \frac{|2(4) - 1(0) + 8(1) - 3|}{\sqrt{2^2 + (-1)^2 + 8^2}}$$
   $$D = \frac{|8 - 0 + 8 - 3|}{\sqrt{4 + 1 + 64}}$$
   $$D = \frac{|13|}{\sqrt{69}} = \frac{13}{\sqrt{69}}$$

4. **Racionalizar el resultado (opcional pero formal):**
   $$D = \frac{13\sqrt{69}}{69}$$

### Resultado Final 🎯
La distancia del punto al plano es:
$$D = \frac{13}{\sqrt{69}} \approx 1.565$$



## 🔲 Pregunta 3: Verificación de Base en Espacios Vectoriales

### Enunciado ❓
Verificar si los siguientes vectores forman una base para el espacio vectorial $P_2$:
$$5, \quad 4x^2, \quad x - 4$$

### Procedimiento y Resolución ✍️
1. **Recordar la definición de $P_2$:**
   $P_2$ es el espacio vectorial de todos los polinomios de grado menor o igual a 2. La dimensión de $P_2$ es $\dim(P_2) = 3$. Una base estándar para $P_2$ es $\{1, x, x^2\}$.

2. **Plantear la combinación lineal:**
   Para verificar si los vectores $\{v_1, v_2, v_3\} = \{5, 4x^2, x - 4\}$ forman una base, debemos comprobar si son linealmente independientes y generan $P_2$. Al ser 3 vectores en un espacio de dimensión 3, basta con demostrar que son **linealmente independientes** (o que el determinante de sus coordenadas es distinto de cero).
   
   Planteamos la combinación lineal igualada al polinomio nulo:
   $$c_1(5) + c_2(4x^2) + c_3(x - 4) = 0 + 0x + 0x^2$$

3. **Agrupar términos por potencias de $x$:**
   $$(5c_1 - 4c_3) + (c_3)x + (4c_2)x^2 = 0 + 0x + 0x^2$$

4. **Igualar coeficientes para formar el sistema homogéneo:**
   * Término independiente ($x^0$): $5c_1 - 4c_3 = 0$
   * Término lineal ($x^1$): $c_3 = 0$
   * Término cuadrático ($x^2$): $4c_2 = 0$

5. **Resolver el sistema:**
   De la segunda ecuación tenemos directamente $c_3 = 0$.
   Sustituyendo $c_3 = 0$ en la primera:
   $$5c_1 - 4(0) = 0 \implies 5c_1 = 0 \implies c_1 = 0$$
   De la tercera ecuación:
   $$4c_2 = 0 \implies c_2 = 0$$

6. **Analizar la solución:**
   La única solución del sistema homogéneo es la trivial: $c_1 = 0, c_2 = 0, c_3 = 0$. 
   Esto demuestra que los vectores son **linealmente independientes**.

### Resultado Final 🎯
Dado que son 3 vectores linealmente independientes en un espacio de dimensión 3, **sí forman una base** para el espacio vectorial $P_2$. ✅



## 🔄 Pregunta 4: Transformación Lineal

### Enunciado ❓
Sea $T: P_2 \to P_3$ una transformación definida por:
$$T(a_0 + a_1 x + a_2 x^2) = 3a_1 - 4a_2 x + a_0 x^2 + 7a_1 x^3$$
Demostrar que la transformación es lineal.

### Procedimiento y Resolución ✍️
Para demostrar que $T$ es una transformación lineal, debemos verificar dos propiedades fundamentales para cualesquiera polinomios $p(x), q(x) \in P_2$ y cualquier escalar $\alpha \in \mathbb{R}$:
1. **Aditividad:** $T(p(x) + q(x)) = T(p(x)) + T(q(x))$
2. **Homogeneidad:** $T(\alpha p(x)) = \alpha T(p(x))$

Sean dos polinomios arbitrarios en $P_2$:
$$p(x) = a_0 + a_1 x + a_2 x^2$$
$$q(x) = b_0 + b_1 x + b_2 x^2$$

#### 1. Verificación de la Aditividad:
Calculamos $p(x) + q(x)$:
$$p(x) + q(x) = (a_0 + b_0) + (a_1 + b_1)x + (a_2 + b_2)x^2$$

Aplicamos la transformación $T$ a la suma:
$$T(p(x) + q(x)) = 3(a_1 + b_1) - 4(a_2 + b_2)x + (a_0 + b_0)x^2 + 7(a_1 + b_1)x^3$$

Distribuyendo los términos algebraicamente:
$$= (3a_1 + 3b_1) - (4a_2 x + 4b_2 x) + (a_0 x^2 + b_0 x^2) + (7a_1 x^3 + 7b_1 x^3)$$

Reagrupando por un lado los términos con $a$ y por otro los con $b$:
$$= [3a_1 - 4a_2 x + a_0 x^2 + 7a_1 x^3] + [3b_1 - 4b_2 x + b_0 x^2 + 7b_1 x^3]$$
$$= T(p(x)) + T(q(x))$$
*(Se cumple la aditividad).*

#### 2. Verificación de la Homogeneidad:
Sea $\alpha \in \mathbb{R}$ un escalar. Multiplicamos el polinomio por $\alpha$:
$$\alpha p(x) = \alpha a_0 + \alpha a_1 x + \alpha a_2 x^2$$

Aplicamos la transformación $T$:
$$T(\alpha p(x)) = 3(\alpha a_1) - 4(\alpha a_2)x + (\alpha a_0)x^2 + 7(\alpha a_1)x^3$$

Factorizamos el escalar $\alpha$ de todos los términos:
$$= \alpha \left[ 3a_1 - 4a_2 x + a_0 x^2 + 7a_1 x^3 \right]$$
$$= \alpha T(p(x))$$
*(Se cumple la homogeneidad).*

### Resultado Final 🎯
Al cumplirse ambas propiedades (aditividad y homogeneidad), se demuestra formalmente que **la transformación $T$ es lineal**. 🚀



## 📊 Pregunta 5: Representación Matricial

### Enunciado ❓
Encuentre una representación matricial $A_T$ de la transformación $T$ definida en el ejercicio anterior ($T: P_2 \to P_3$).

### Procedimiento y Resolución ✍️
1. **Definir las bases estándar para los espacios:**
   * Para el dominio $P_2$, la base estándar es:
     $$B_1 = \{1, x, x^2\}$$
   * Para el codominio $P_3$, la base estándar es:
     $$B_2 = \{1, x, x^2, x^3\}$$

2. **Evaluar la transformación $T$ en cada vector de la base $B_1$:**

   * **Para el primer vector $1$ (donde $a_0 = 1, a_1 = 0, a_2 = 0$):**
     $$T(1) = 0(1) + 0(x) + 1(x^2) + 0(x^3) = x^2$$
     Sus coordenadas en la base $B_2$ forman la primera columna de $A_T$:
     $$\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix}$$

   * **Para el segundo vector $x$ (donde $a_0 = 0, a_1 = 1, a_2 = 0$):**
     $$T(x) = 3(1) + 0(x) + 0(x^2) + 7(x^3) = 3 + 7x^3$$
     Sus coordenadas en la base $B_2$ forman la segunda columna de $A_T$:
     $$\begin{pmatrix} 3 \\ 0 \\ 0 \\ 7 \end{pmatrix}$$

   * **Para el tercer vector $x^2$ (donde $a_0 = 0, a_1 = 0, a_2 = 1$):**
     $$T(x^2) = 0(1) - 4(x) + 0(x^2) + 0(x^3) = -4x$$
     Sus coordenadas en la base $B_2$ forman la tercera columna de $A_T$:

$$\begin{pmatrix}
0 \\
-4 \\
0 \\
0 \end{pmatrix}$$

3. **Construir la matriz $A_T$:**
   Agrupando las columnas obtenidas, la representación matricial de orden $4 \times 3$ es:

$$A_T = \begin{pmatrix}
0 & 3 & 0 \\
0 & 0 & -4 \\
1 & 0 & 0 \\
0 & 7 & 0 \end{pmatrix}$$

### Resultado Final 🎯
La representación matricial $A_T$ de la transformación respecto a las bases estándar es:

$$A_T = \begin{pmatrix}
0 & 3 & 0 \\
0 & 0 & -4 \\
1 & 0 & 0 \\
0 & 7 & 0 \end{pmatrix}$$



## 🔍 Pregunta 6: Núcleo, Nulidad, Rango e Imagen

### Enunciado ❓
Calcule el núcleo $\text{Ker}(A_T)$, la nulidad $\nu(A_T)$, el rango $\rho(A_T)$ y la imagen $\text{Im}(A_T)$ de la representación matricial $A_T$ calculada en el ejercicio anterior.

### Procedimiento y Resolución ✍️
La matriz asociada es:

$$A_T = \begin{pmatrix}
0 & 3 & 0 \\
0 & 0 & -4 \\
1 & 0 & 0 \\
0 & 7 & 0 \end{pmatrix}$$

#### 1. Calcular el Rango $\rho(A_T)$ y la Imagen $\text{Im}(A_T)$:
Llevamos la matriz a su forma escalonada reducida por filas (o simplemente identificamos el número de columnas linealmente independientes):
* Si aplicamos operaciones elementales por filas para escalonar la matriz:

$$\begin{pmatrix}
1 & 0 & 0 \\
0 & 3 & 0 \\
0 & 0 & -4 \\
0 & 7 & 0 \end{pmatrix}$$
  
$$\begin{pmatrix}   
1 & 0 & 0 \\   
0 & 1 & 0 \\   
0 & 0 & 1 \\   
0 & 0 & 0 \end{pmatrix}$$


El número de pivotes (columnas principales / vectores linealmente independientes) es **3**. Por lo tanto:
* **Rango:** $\rho(A_T) = 3$
* **Imagen:** $\text{Im}(A_T) = \text{Gen}\{(0, 0, 1, 0)^T, (3, 0, 0, 7)^T, (0, -4, 0, 0)^T\}$, que corresponde en $P_3$ al subespacio generado por los polinomios $\{x^2, 3 + 7x^3, -4x\}$.

#### 2. Calcular la Nulidad $\nu(A_T)$ y el Núcleo $\text{Ker}(A_T)$:
Por el *Teorema de la Dimensión* (o del Rango-Nulidad) para transformaciones lineales:
$$\text{dim}(P_2) = \text{Rango}(A_T) + \text{Nulidad}(A_T)$$
$$3 = 3 + \nu(A_T) \implies \nu(A_T) = 0$$

Como la nulidad es 0, el sistema homogéneo $A_T x = 0$ solo tiene la solución trivial, lo que significa que el núcleo contiene únicamente al polinomio nulo:
$$\text{Ker}(A_T) = \{0\}$$

### Resultados Finales 🎯
* **Rango $\rho(A_T)$:** $3$
* **Nulidad $\nu(A_T)$:** $0$
* **Imagen $\text{Im}(A_T)$:** El subespacio de $P_3$ generado por $\{x^2, 3 + 7x^3, -4x\}$.
* **Núcleo $\text{Ker}(A_T)$:** $\{0\}$ (lo que indica que la transformación es inyectiva).


*Documento actualizado y corregido para estudio y práctica de Álgebra Lineal.* ✨
