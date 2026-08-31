# 📝 Cambio de Variables, Campos Conservativos y Cinemática

## 📌 Ejercicio 1: Cambio de Variables en Integrales Dobles (Región Paralelográmica)

**Problema:** Calcular $\iint_{D} x \cdot y \, dA$ utilizando un cambio de variables adecuado, donde la región $D$ está definida por:

$$D = \{ (x,y) \mid 0 \le y - x \le 1, \, -2 \le y - 2x \le 0 \}$$



### 🧮 Resolución Paso a Paso

#### 1. Definición de la Transformación $u$ y $v$

Se proponen las variables:

* $u = y - x \implies 0 \le u \le 1$
* $v = y - 2x \implies -2 \le v \le 0$

#### 2. Despeje de $x$ e $y$ en Función de $u$ y $v$

Restando las dos ecuaciones ($u - v$):

$$u - v = (y - x) - (y - 2x) = x \implies x = u - v$$

Sustituyendo $x$ en la primera relación:

$$y = u + x = u + (u - v) \implies y = 2u - v$$

#### 3. Cálculo del Jacobiano de la Transformación

El Jacobiano $J = \frac{\partial(x,y)}{\partial(u,v)}$ es el determinante de la matriz de derivadas parciales:

$$J = \begin{vmatrix} \frac{\partial x}{\partial u} & \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial u} & \frac{\partial y}{\partial v} \end{vmatrix} = \begin{vmatrix} 1 & -1 \\ 2 & -1 \end{vmatrix} = (1)(-1) - (-1)(2) = -1 + 2 = 1$$

El valor absoluto del Jacobiano es $\vert{}J\vert{} = 1$.

#### 4. Integración y Evaluación

Sustituyendo el integrando $x = u - v$ e $y = 2u - v$:

$$\iint_{D} x \cdot y \, dA = \int_{-2}^{0} \int_{0}^{1} (u - v)(2u - v) \cdot 1 \, du \, dv$$

Multiplicando los términos del integrando:

$$(u - v)(2u - v) = 2u^2 - 3uv + v^2$$

Integración respecto a $u$:

$$\int_{0}^{1} (2u^2 - 3uv + v^2) \, du = \left[ \frac{2}{3}u^3 - \frac{3}{2}vu^2 + v^2 u \right]_{0}^{1} = \frac{2}{3} - \frac{3}{2}v + v^2$$

Integración respecto a $v$:

$$\int_{-2}^{0} \left( \frac{2}{3} - \frac{3}{2}v + v^2 \right) dv = \left[ \frac{2}{3}v - \frac{3}{4}v^2 + \frac{1}{3}v^3 \right]_{-2}^{0}$$

Evaluando en los límites $[-2, 0]$:

$$= 0 - \left( \frac{2}{3}(-2) - \frac{3}{4}(-2)^2 + \frac{1}{3}(-2)^3 \right) = - \left( -\frac{4}{3} - 3 - \frac{8}{3} \right) = - (-4 - 3) = 7$$



## 📌 Ejercicio 2: Cambio de Variables en Integrales Dobles (Región Romboide)

**Problema:** Calcular $\iint_{D} (x^2 - y^2) \, dA$ donde la región está acotada por $D = \{ (x,y) \mid \vert{}x\vert{} + \vert{}y\vert{} \le 1 \}$.



### 🧮 Resolución Paso a Paso

#### 1. Definición de la Transformación

Aprovechando la identidad $x^2 - y^2 = (x - y)(x + y)$, proponemos:

* $u = x + y \implies -1 \le u \le 1$
* $v = x - y \implies -1 \le v \le 1$

#### 2. Despeje de $x$ e $y$

Sumando y restando las ecuaciones:

* $x = \frac{u + v}{2}$
* $y = \frac{u - v}{2}$

#### 3. Cálculo del Jacobiano

$$J = \begin{vmatrix} \frac{\partial x}{\partial u} & \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial u} & \frac{\partial y}{\partial v} \end{vmatrix} = \begin{vmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & -\frac{1}{2} \end{vmatrix} = -\frac{1}{4} - \frac{1}{4} = -\frac{1}{2} \implies \vert{}J\vert{} = \frac{1}{2}$$

#### 4. Evaluación de la Integral

El integrando se transforma en $(x - y)(x + y) = v \cdot u$:

$$\iint_{D} (x^2 - y^2) \, dA = \int_{-1}^{1} \int_{-1}^{1} u \cdot v \cdot \frac{1}{2} \, du \, dv$$

Integrando respecto a $u$:

$$\frac{1}{2} \int_{-1}^{1} v \left[ \frac{u^2}{2} \right]_{-1}^{1} dv = \frac{1}{2} \int_{-1}^{1} v \left( \frac{1}{2} - \frac{1}{2} \right) dv = \frac{1}{2} \int_{-1}^{1} 0 \, dv = 0$$



## 📌 Ejercicio 3: Campo Vectorial Conservativo y Función Potencial

Dado el campo vectorial $F: \mathbb{R}^3 \rightarrow \mathbb{R}^3$:

$$F(x,y,z) = (e^{yz}, \, 2y + xz e^{yz}, \, xy e^{yz})$$



### 🧮 Resolución Paso a Paso

#### a) Verificación de Campo Conservativo

Calculamos el rotor del campo vectorial $F = (P, Q, R)$:

$$\text{rot } F = \nabla \times F = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ e^{yz} & 2y + xze^{yz} & xye^{yz} \end{vmatrix}$$

* Componente $\mathbf{i}$: $\frac{\partial}{\partial y}(xye^{yz}) - \frac{\partial}{\partial z}(2y + xze^{yz}) = (xe^{yz} + xyze^{yz}) - (xe^{yz} + xyze^{yz}) = 0$
* Componente $\mathbf{j}$: $\frac{\partial}{\partial z}(e^{yz}) - \frac{\partial}{\partial x}(xye^{yz}) = ye^{yz} - ye^{yz} = 0$
* Componente $\mathbf{k}$: $\frac{\partial}{\partial x}(2y + xze^{yz}) - \frac{\partial}{\partial y}(e^{yz}) = ze^{yz} - ze^{yz} = 0$

Como $\text{rot } F = (0,0,0)$ en $\mathbb{R}^3$, **el campo vectorial $F$ es conservativo**.

#### b) Cálculo de la Función Potencial $f(x,y,z)$ e Integral de Línea

Integramos $P$ respecto a $x$:

$$f(x,y,z) = \int e^{yz} \, dx = x e^{yz} + g(y,z)$$

Derivamos respecto a $y$ e igualamos a $Q$:

$$\frac{\partial f}{\partial y} = xz e^{yz} + \frac{\partial g}{\partial y} = 2y + xz e^{yz} \implies \frac{\partial g}{\partial y} = 2y \implies g(y,z) = y^2 + h(z)$$

Derivamos respecto a $z$ e igualamos a $R$:

$$\frac{\partial f}{\partial z} = xy e^{yz} + h'(z) = xy e^{yz} \implies h'(z) = 0 \implies h(z) = C$$

La función potencial es:

$$f(x,y,z) = x e^{yz} + y^2 + C$$

#### Evaluación de la Integral de Línea $\int_C F \cdot d\mathbf{r}$

Dado que el campo es conservativo, la integral de línea es independiente de la trayectoria y depende solo de los puntos extremo $(1,0,0)$ y $(3,1,0)$:

$$\int_{C} F \cdot d\mathbf{r} = f(3,1,0) - f(1,0,0)$$

* $f(3,1,0) = 3 e^{(1)(0)} + 1^2 + C = 3 + 1 + C = 4 + C$
* $f(1,0,0) = 1 e^{(0)(0)} + 0^2 + C = 1 + C$

$$\int_{C} F \cdot d\mathbf{r} = (4 + C) - (1 + C) = 3$$



## 📌 Ejercicio 4: Cinemática de Curvas Espaciales

Dada la función vectorial de posición:

$$\mathbf{r}(t) = t \mathbf{i} + (2t - 5) \mathbf{j} + 3t \mathbf{k} = (t, \, 2t - 5, \, 3t)$$



### 🧮 Cálculo de Vectores Cinemáticos

#### 1. Vector Velocidad $\mathbf{v}(t)$

$$\mathbf{v}(t) = \mathbf{r}'(t) = (1, 2, 3)$$

#### 2. Rapidez $\Vert{}\mathbf{v}(t)\Vert{}$

$$\Vert{}\mathbf{v}(t)\Vert{} = \Vert{}\mathbf{r}'(t)\Vert{} = \sqrt{1^2 + 2^2 + 3^2} = \sqrt{1 + 4 + 9} = \sqrt{14}$$

#### 3. Vector Aceleración $\mathbf{a}(t)$

$$\mathbf{a}(t) = \mathbf{r}''(t) = (0, 0, 0)$$
