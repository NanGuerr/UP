# 📐 Actividad: Vectores en el Espacio ($\mathbb{R}^3$)



## 📌 Pregunta 1: Magnitud y ángulos directores de $v = (1, 5, 2)$

Dado el vector en $\mathbb{R}^3$:  

$$v = (1, 5, 2)$$

### 1. Cálculo de la magnitud (módulo) $\|v\|$:
La magnitud de un vector $v = (v_x, v_y, v_z)$ se define mediante el teorema de Pitágoras tridimensional:  

$$\|v\| = \sqrt{v_x^2 + v_y^2 + v_z^2}$$

Sustituyendo las componentes:

$$\|v\| = \sqrt{1^2 + 5^2 + 2^2} = \sqrt{1 + 25 + 4} = \sqrt{30}$$

### 2. Cálculo de los cosenos directores y ángulos directores:
Los cosenos directores relacionan las componentes con la magnitud del vector ($\cos  lpha = rac{v_x}{\|v\|}$, $\cos  eta = rac{v_y}{\|v\|}$, $\cos \gamma = rac{v_z}{\|v\|}$):  

* **Ángulo $ lpha$ (con el eje $x$):**
  $$\cos  lpha = rac{1}{\sqrt{30}} \implies  lpha =  rccos\left(rac{1}{\sqrt{30}}
ight)  pprox 79,48^\circ \quad (1,387 	ext{ rad})$$

* **Ángulo $ eta$ (con el eje $y$):**
  $$\cos  eta = rac{5}{\sqrt{30}} \implies  eta =  rccos\left(rac{5}{\sqrt{30}}
ight)  pprox 24,09^\circ \quad (0,420 	ext{ rad})$$

* **Ángulo $\gamma$ (con el eje $z$):**
  $$\cos \gamma = rac{2}{\sqrt{30}} \implies \gamma =  rccos\left(rac{2}{\sqrt{30}}
ight)  pprox 68,58^\circ \quad (1,197 	ext{ rad})$$

---

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

---

## 🔀 Pregunta 3: Producto cruz $u 	imes v$

Dados los vectores:  
* $u = (2, 0, 1)$
* $v = (3, 3, 3)$

Calculamos el producto vectorial utilizando el determinante formal con los vectores unitarios base $\hat{i}, \hat{j}, \hat{k}$:  

$$u 	imes v =  egin{vmatrix} \hat{i} & \hat{j} & \hat{k} \ 2 & 0 & 1 \ 3 & 3 & 3 \end{vmatrix}$$

Desarrollando por la primera fila (adjuntos):
$$u 	imes v = \hat{i}  egin{vmatrix} 0 & 1 \ 3 & 3 \end{vmatrix} - \hat{j}  egin{vmatrix} 2 & 1 \ 3 & 3 \end{vmatrix} + \hat{k}  egin{vmatrix} 2 & 0 \ 3 & 3 \end{vmatrix}$$

Calculamos los determinantes de $2 	imes 2$:
* Componente $\hat{i}$: $(0 \cdot 3 - 1 \cdot 3) = -3$
* Componente $\hat{j}$: $- (2 \cdot 3 - 1 \cdot 3) = - (6 - 3) = -3$
* Componente $\hat{k}$: $(2 \cdot 3 - 0 \cdot 3) = 6$

Por lo tanto:
$$u 	imes v = -3\hat{i} - 3\hat{j} + 6\hat{k} \quad 	ext{o en coordenadas} \quad (-3, -3, 6)$$

---

## 📐 Pregunta 4: Vectores unitarios ortogonales a $u$ y $v$

Dados los vectores:  
* $u = 3\hat{i} + 3\hat{j} - \hat{k} = (3, 3, -1)$
* $v = 2\hat{j} + 2\hat{k} = (0, 2, 2)$

### 🔸 Paso 1: Obtener un vector ortogonal a ambos mediante el producto cruz $n = u 	imes v$
$$n = u 	imes v =  egin{vmatrix} \hat{i} & \hat{j} & \hat{k} \ 3 & 3 & -1 \ 0 & 2 & 2 \end{vmatrix}$$

Desarrollando por la primera fila:
* Componente $\hat{i}$: $(3 \cdot 2 - (-1) \cdot 2) = 6 + 2 = 8$
* Componente $\hat{j}$: $- (3 \cdot 2 - (-1) \cdot 0) = - 6$
* Componente $\hat{k}$: $(3 \cdot 2 - 3 \cdot 0) = 6$

$$n = (8, -6, 6)$$

### 🔸 Paso 2: Calcular la magnitud de $n$
$$\|n\| = \sqrt{8^2 + (-6)^2 + 6^2} = \sqrt{64 + 36 + 36} = \sqrt{136}$$

Simplificando el radical:
$$\sqrt{136} = \sqrt{4 	imes 34} = 2\sqrt{34}$$

### 🔸 Paso 3: Normalizar para hallar los dos vectores unitarios (positivo y negativo)
Los dos vectores unitarios perpendiculares al plano formado por $u$ y $v$ están dados por $\pm rac{n}{\|n\|}$:  
$$u_1 = rac{1}{2\sqrt{34}} (8, -6, 6) = \left( rac{4}{\sqrt{34}}, -rac{3}{\sqrt{34}}, rac{3}{\sqrt{34}} 
ight)$$
$$u_2 = -rac{1}{2\sqrt{34}} (8, -6, 6) = \left( -rac{4}{\sqrt{34}}, rac{3}{\sqrt{34}}, -rac{3}{\sqrt{34}} 
ight)$$
