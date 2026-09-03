# 📐 Actividad: Vectores en el Espacio ($\mathbb{R}^3$)
## 📚 Materia: Álgebra Lineal



## 📌 Pregunta 1: Magnitud y ángulos directores de $v = (1, 5, 2)$

Dado el vector en $\mathbb{R}^3$:  

$$v = (1, 5, 2)$$

### 1. Cálculo de la magnitud (módulo) $\|v\|$:
La magnitud de un vector $v = (v_x, v_y, v_z)$ se define mediante el teorema de Pitágoras tridimensional:  

$$\|v\| = \sqrt{v_x^2 + v_y^2 + v_z^2}$$

Sustituyendo las componentes:

$$\|v\| = \sqrt{1^2 + 5^2 + 2^2} = \sqrt{1 + 25 + 4} = \sqrt{30}$$

### 2. Cálculo de los cosenos directores y ángulos directores:
Los cosenos directores relacionan las componentes con la magnitud del vector ($\cos \alpha = \frac{v_x}{\|v\|}$, $\cos \beta = \frac{v_y}{\|v\|}$, $\cos \gamma = \frac{v_z}{\|v\|}$): 

* **Ángulo $\alpha$ (con el eje $x$):**
  $$\cos \alpha = \frac{1}{\sqrt{30}} \implies \alpha = \arccos\left(\frac{1}{\sqrt{30}}\right) \approx 79,48^\circ \quad (1,387 \text{ rad})$$

* **Ángulo $\beta$ (con el eje $y$):**
  $$\cos \beta = \frac{5}{\sqrt{30}} \implies \beta = \arccos\left(\frac{5}{\sqrt{30}}\right) \approx 24,09^\circ \quad (0,420 \text{ rad})$$

* **Ángulo $\gamma$ (con el eje $z$):**
  $$\cos \gamma = \frac{2}{\sqrt{30}} \implies \gamma = \arccos\left(\frac{2}{\sqrt{30}}\right) \approx 68,58^\circ \quad (1,197 \text{ rad})$$



## ✖️ Pregunta 2: Producto escalar $w \cdot (u + v)$

Dados los vectores: 
* $u = (2, 0, 1)$
* $v = (3, 3, 3)$
* $w = (-1, 2, 3)$

### 🔹 Paso 1: Suma de vectores $(u + v)$
Sumamos componente a componente: 
$$u + v = (2 + 3, \; 0 + 3, \; 1 + 3) = (5, 3, 4)$$

### 🔹 Paso 2: Producto escalar de $w$ por $(u + v)$
Calculamos $w \cdot (u + v)$ multiplicando componente a componente y sumando los resultados: 
$$w \cdot (u + v) = (-1)(5) + (2)(3) + (3)(4)$$
$$w \cdot (u + v) = -5 + 6 + 12 = 13$$



## 🔀 Pregunta 3: Producto cruz $u \times v$

Dados los vectores: 
* $u = (2, 0, 1)$
* $v = (3, 3, 3)$

Calculamos el producto vectorial utilizando el determinante formal con los vectores unitarios base $\hat{i}, \hat{j}, \hat{k}$: 

$$u \times v = \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ 2 & 0 & 1 \\ 3 & 3 & 3 \end{vmatrix}$$

Desarrollando por la primera fila (adjuntos):
$$u \times v = \hat{i} \begin{vmatrix} 0 & 1 \\ 3 & 3 \end{vmatrix} - \hat{j} \begin{vmatrix} 2 & 1 \\ 3 & 3 \end{vmatrix} + \hat{k} \begin{vmatrix} 2 & 0 \\ 3 & 3 \end{vmatrix}$$

Calculamos los determinantes de $2 \times 2$:
* Componente $\hat{i}$: $(0 \cdot 3 - 1 \cdot 3) = -3$
* Componente $\hat{j}$: $- (2 \cdot 3 - 1 \cdot 3) = - (6 - 3) = -3$
* Componente $\hat{k}$: $(2 \cdot 3 - 0 \cdot 3) = 6$

Por lo tanto:
$$u \times v = -3\hat{i} - 3\hat{j} + 6\hat{k} \quad \text{o en coordenadas} \quad (-3, -3, 6)$$



## 📐 Pregunta 4: Vectores unitarios ortogonales a $u$ y $v$

Dados los vectores: 
* $u = 3\hat{i} + 3\hat{j} - \hat{k} = (3, 3, -1)$
* $v = 2\hat{j} + 2\hat{k} = (0, 2, 2)$

### 🔸 Paso 1: Obtener un vector ortogonal a ambos mediante el producto cruz $n = u \times v$
$$n = u \times v = \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ 3 & 3 & -1 \\ 0 & 2 & 2 \end{vmatrix}$$

Desarrollando por la primera fila:
* Componente $\hat{i}$: $(3 \cdot 2 - (-1) \cdot 2) = 6 + 2 = 8$
* Componente $\hat{j}$: $- (3 \cdot 2 - (-1) \cdot 0) = - 6$
* Componente $\hat{k}$: $(3 \cdot 2 - 3 \cdot 0) = 6$

$$n = (8, -6, 6)$$

### 🔸 Paso 2: Calcular la magnitud de $n$
$$\|n\| = \sqrt{8^2 + (-6)^2 + 6^2} = \sqrt{64 + 36 + 36} = \sqrt{136}$$

Simplificando el radical:
$$\sqrt{136} = \sqrt{4 \times 34} = 2\sqrt{34}$$

### 🔸 Paso 3: Normalizar para hallar los dos vectores unitarios (positivo y negativo)
Los dos vectores unitarios perpendiculares al plano formado por $u$ y $v$ están dados por $\pm \frac{n}{\|n\|}$: 
$$u_1 = \frac{1}{2\sqrt{34}} (8, -6, 6) = \left( \frac{4}{\sqrt{34}}, -\frac{3}{\sqrt{34}}, \frac{3}{\sqrt{34}} \right)$$
$$u_2 = -\frac{1}{2\sqrt{34}} (8, -6, 6) = \left( -\frac{4}{\sqrt{34}}, \frac{3}{\sqrt{34}}, -\frac{3}{\sqrt{34}} \right)$$
