# 📝 Resolución de Examen: Cambio de Variable, Campos Conservativos e Integrales Dobles

## 📌 Ejercicio 1: Cambio de Variables en Integrales Dobles

**Problema:** Calcular $\iint_{D} x \cdot y \, dA$ utilizando un cambio de variables adecuado, donde la región $D$ está definida por:

$$D = \{ (x,y) \mid 0 \le y - x \le 1, \, -2 \le y - 2x \le 0 \}$$



### 🧮 Resolución Paso a Paso

#### 1. Definición de la transformación $u$ y $v$
Proponemos las variables:
* $u = y - x \implies 0 \le u \le 1$
* $v = y - 2x \implies -2 \le v \le 0$

#### 2. Despeje de $x$ e $y$ en función de $u$ y $v$
Restando las dos ecuaciones $(u - v)$:
$$u - v = (y - x) - (y - 2x) = x \implies x = u - v$$

Sustituyendo $x$ en $u = y - x$:
$$y = u + x = u + (u - v) \implies y = 2u - v$$

#### 3. Cálculo del Jacobiano de la transformación
El Jacobiano $J = rac{\partial(x,y)}{\partial(u,v)}$ es el determinante de la matriz de derivadas parciales:

$$J =  egin{vmatrix} rac{\partial x}{\partial u} & rac{\partial x}{\partial v} \ rac{\partial y}{\partial u} & rac{\partial y}{\partial v} \end{vmatrix} =  egin{vmatrix} 1 & -1 \ 2 & -1 \end{vmatrix} = (1)(-1) - (-1)(2) = -1 + 2 = 1$$

El valor absoluto del Jacobiano es $|J| = 1$.

#### 4. Sustitución en la integral y evaluación
Reemplazamos $x = u - v$, $y = 2u - v$ y $|J| = 1$:

$$\iint_{D} x \cdot y \, dA = \int_{-2}^{0} \int_{0}^{1} (u - v)(2u - v) \cdot 1 \, du \, dv$$

Multiplicamos el integrando:
$$(u - v)(2u - v) = 2u^2 - uv - 2uv + v^2 = 2u^2 - 3uv + v^2$$

Integración respecto de $u$:
$$\int_{0}^{1} (2u^2 - 3uv + v^2) \, du = \left[ rac{2}{3}u^3 - rac{3}{2}vu^2 + v^2 u 
ight]_{0}^{1} = rac{2}{3} - rac{3}{2}v + v^2$$

Integración respecto de $v$:
$$\int_{-2}^{0} \left( rac{2}{3} - rac{3}{2}v + v^2 
ight) dv = \left[ rac{2}{3}v - rac{3}{4}v^2 + rac{1}{3}v^3 
ight]_{-2}^{0}$$

Evaluando en los límites:
$$= \left( 0 
ight) - \left( rac{2}{3}(-2) - rac{3}{4}(-2)^2 + rac{1}{3}(-2)^3 
ight)$$
$$= - \left( -rac{4}{3} - 3 - rac{8}{3} 
ight) = - \left( -rac{12}{3} - 3 
ight) = - (-4 - 3) = 7$$



## 📌 Ejercicio 2: Campo Vectorial Conservativo y Función Potencial

Dado el campo vectorial $F: \mathbb{R}^3 
ightarrow \mathbb{R}^3$:

$$F(x,y,z) = (e^{yz}, \, 2y + xz e^{yz}, \, xy e^{yz})$$



### 🧮 Resolución Paso a Paso

#### a) Verificación de que $F$ es conservativo
Calculamos el rotor de $F = (P, Q, R)$:

$$	ext{rot } F = 
abla 	imes F =  egin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \ rac{\partial}{\partial x} & rac{\partial}{\partial y} & rac{\partial}{\partial z} \ e^{yz} & 2y + xze^{yz} & xye^{yz} \end{vmatrix}$$

* Componente $\mathbf{i}$: $rac{\partial}{\partial y}(xye^{yz}) - rac{\partial}{\partial z}(2y + xze^{yz}) = (xe^{yz} + xyze^{yz}) - (xe^{yz} + xyze^{yz}) = 0$
* Componente $\mathbf{j}$: $rac{\partial}{\partial z}(e^{yz}) - rac{\partial}{\partial x}(xye^{yz}) = ye^{yz} - ye^{yz} = 0$
* Componente $\mathbf{k}$: $rac{\partial}{\partial x}(2y + xze^{yz}) - rac{\partial}{\partial y}(e^{yz}) = ze^{yz} - ze^{yz} = 0$

Como $	ext{rot } F = (0,0,0)$ en un dominio simplemente conexo ($\mathbb{R}^3$), **el campo $F$ es conservativo**.



#### b) Cálculo de la función potencial $f(x,y,z)$ y la integral de línea
Buscamos una función $f$ tal que $
abla f = F$:

1. $rac{\partial f}{\partial x} = e^{yz} \implies f(x,y,z) = \int e^{yz} dx = x e^{yz} + g(y,z)$
2. Derivando respecto a $y$: $rac{\partial f}{\partial y} = xz e^{yz} + rac{\partial g}{\partial y} = 2y + xz e^{yz} \implies rac{\partial g}{\partial y} = 2y \implies g(y,z) = y^2 + h(z)$
   $$f(x,y,z) = x e^{yz} + y^2 + h(z)$$
3. Derivando respecto a $z$: $rac{\partial f}{\partial z} = xy e^{yz} + h'(z) = xy e^{yz} \implies h'(z) = 0 \implies h(z) = C$

La función potencial es:
$$f(x,y,z) = x e^{yz} + y^2 + C$$

#### Evaluación de la Integral de Línea $\int_C F \cdot d\mathbf{r}$
Dado que el campo es conservativo, la integral depende únicamente de los puntos inicial $(1,0,0)$ y final $(3,1,0)$:

$$\int_{C} F \cdot d\mathbf{r} = f(3,1,0) - f(1,0,0)$$

* $f(3,1,0) = 3 e^{(1)(0)} + 1^2 + C = 3(1) + 1 + C = 4 + C$
* $f(1,0,0) = 1 e^{(0)(0)} + 0^2 + C = 1(1) + 0 + C = 1 + C$

$$\int_{C} F \cdot d\mathbf{r} = (4 + C) - (1 + C) = 3$$



## 📌 Ejercicio 3: Cambio en el Orden de Integración

**Problema:** Calcular la integral doble:

$$\int_{0}^{1} \int_{x^2}^{1} x^3 \sin(y^3) \, dy \, dx$$



### 🧮 Resolución Paso a Paso

#### 1. Análisis y cambio de orden a Región Tipo 2
Los límites de la región de integración son:
* $x^2 \le y \le 1$
* $0 \le x \le 1$

Despejando $x$ en función de $y$, la región se expresa como Tipo 2:
* $0 \le x \le \sqrt{y}$
* $0 \le y \le 1$

#### 2. Reorganización de la integral
$$\int_{0}^{1} \int_{0}^{\sqrt{y}} x^3 \sin(y^3) \, dx \, dy$$

#### 3. Integración respecto a $x$
$$\int_{0}^{1} \sin(y^3) \left[ rac{x^4}{4} 
ight]_{0}^{\sqrt{y}} dy = rac{1}{4} \int_{0}^{1} \sin(y^3) \left( (\sqrt{y})^4 - 0 
ight) dy = rac{1}{4} \int_{0}^{1} y^2 \sin(y^3) \, dy$$

#### 4. Integración respecto a $y$ mediante sustitución
* Sea $t = y^3 \implies dt = 3y^2 \, dy \implies y^2 \, dy = rac{dt}{3}$

**Cambio de límites:**
* Si $y = 0 \implies t = 0$
* Si $y = 1 \implies t = 1$

Reemplazando en la integral:
$$rac{1}{4} \int_{0}^{1} \sin(t) \cdot rac{dt}{3} = rac{1}{12} \int_{0}^{1} \sin(t) \, dt = rac{1}{12} \left[ -\cos(t) 
ight]_{0}^{1}$$

$$rac{1}{12} \left( -\cos(1) - (-\cos(0)) 
ight) = rac{1}{12} (1 - \cos(1))$$
