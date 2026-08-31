# 📝 Resolución de Ecuaciones Diferenciales Exactas y Problemas de Valor Inicial

Este documento contiene la transcripción completa y estructurada del análisis de ecuaciones diferenciales ordinarias (exactas e homogéneas) desarrolladas en la clase del **21 de agosto de 2025**.



## 📌 Ejercicio 1: Resolución de Ecuación Diferencial Homogénea

**Problema:** Resolver la ecuación diferencial:

$$(x^2 - y^2)dx + 3xy \, dy = 0$$



### 🧮 Desarrollo Paso a Paso

#### 1. Despeje de la Derivada $\frac{dy}{dx}$
Reorganizando los términos:

$$3xy \, dy = (y^2 - x^2)dx \implies \frac{dy}{dx} = \frac{y^2 - x^2}{3xy}$$

#### 2. Cambio de Variable para Ecuaciones Homogéneas
Proponemos la sustitución $y = u x \implies \frac{dy}{dx} = u + x \frac{du}{dx}$:

$$u + x \frac{du}{dx} = \frac{(ux)^2 - x^2}{3x(ux)} = \frac{x^2(u^2 - 1)}{3x^2 u} = \frac{u^2 - 1}{3u}$$

#### 3. Separación de Variables
Despejamos $x \frac{du}{dx}$:

$$x \frac{du}{dx} = \frac{u^2 - 1}{3u} - u = \frac{u^2 - 1 - 3u^2}{3u} = \frac{-2u^2 - 1}{3u}$$

Reorganizando para integrar:

$$\frac{3u}{-2u^2 - 1} \, du = \frac{dx}{x}$$

#### 4. Integración de Ambos Miembros
$$\int \frac{3u}{-2u^2 - 1} \, du = \int \frac{dx}{x}$$

**Sustitución auxiliar:** $t = -2u^2 - 1 \implies dt = -4u \, du \implies u \, du = -\frac{dt}{4}$

$$-\frac{3}{4} \int \frac{dt}{t} = \ln|x| + C_1 \implies -\frac{3}{4} \ln| -2u^2 - 1 | = \ln|x| + C_1$$

Dado que $| -2u^2 - 1 | = 2u^2 + 1$:

$$\ln\left( (2u^2 + 1)^{-3/4} \right) = \ln|x| + C_1 \implies (2u^2 + 1)^{-3/4} = k \cdot x$$

#### 5. Retorno a las Variables Originales ($u = \frac{y}{x}$)
$$\left( 2\frac{y^2}{x^2} + 1 \right)^{-3/4} = k \cdot x \implies \left( \frac{2y^2 + x^2}{x^2} \right)^{-3/4} = k \cdot x$$

$$(2y^2 + x^2)^{-3/4} \cdot x^{3/2} = k \cdot x \implies (2y^2 + x^2)^{-3/4} \cdot x^{1/2} = k$$

Elevando a la potencia $-\frac{4}{3}$:

$$x^{2/3}(x^2 + 2y^2) = C$$



## 📌 Ejercicio 2: Ecuación Diferencial Exacta Polinómica

**Problema:** Resolver la ecuación diferencial:

$$(x^2 - 2y)dx + (y - 2x)dy = 0$$



### 🧮 Desarrollo Paso a Paso

#### 1. Verificación de Exactitud
Identificamos $M(x,y)$ y $N(x,y)$:
* **$M(x,y) = x^2 - 2y \implies \frac{\partial M}{\partial y} = -2$**
* **$N(x,y) = y - 2x \implies \frac{\partial N}{\partial x} = -2$**

Como $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, **la ecuación diferencial es exacta**. Por lo tanto, existe una función potencial $F(x,y)$ tal que $\frac{\partial F}{\partial x} = M$ y $\frac{\partial F}{\partial y} = N$.

#### 2. Obtención de la Función Potencial $F(x,y)$
Integramos $M(x,y)$ respecto de $x$:

$$F(x,y) = \int (x^2 - 2y) \, dx = \frac{x^3}{3} - 2yx + g(y)$$

Derivamos $F(x,y)$ respecto de $y$ e igualamos a $N(x,y)$:

$$\frac{\partial F}{\partial y} = -2x + g'(y) = y - 2x \implies g'(y) = y$$

Integramos $g'(y)$ respecto de $y$:

$$g(y) = \frac{y^2}{2} + C_1$$

#### 3. Solución General
Reconstruimos $F(x,y) = C_2$:

$$\frac{x^3}{3} - 2yx + \frac{y^2}{2} = C$$



## 📌 Ejercicio 3: Ecuación Diferencial Exacta con Funciones Trigonométricas

**Problema:** Resolver la ecuación diferencial:

$$\cos(y) \, dx + (y^2 - x\sin(y)) \, dy = 0$$



### 🧮 Desarrollo Paso a Paso

#### 1. Verificación de Exactitud
* **$M(x,y) = \cos(y) \implies \frac{\partial M}{\partial y} = -\sin(y)$**
* **$N(x,y) = y^2 - x\sin(y) \implies \frac{\partial N}{\partial x} = -\sin(y)$**

Como $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, **la ecuación diferencial es exacta**.

#### 2. Obtención de la Función Potencial $F(x,y)$
Integramos $M(x,y)$ respecto de $x$:

$$F(x,y) = \int \cos(y) \, dx = x\cos(y) + g(y)$$

Derivamos respecto de $y$ e igualamos a $N(x,y)$:

$$\frac{\partial F}{\partial y} = -x\sin(y) + g'(y) = y^2 - x\sin(y) \implies g'(y) = y^2$$

Integramos $g'(y)$:

$$g(y) = \frac{y^3}{3} + C_1$$

#### 3. Solución General y Comprobación
La solución general es:

$$x\cos(y) + \frac{y^3}{3} = C$$

**Comprobación diferencial ($dF = 0$):**
$$dF = \frac{\partial F}{\partial x}dx + \frac{\partial F}{\partial y}dy = \cos(y)dx + (-x\sin(y) + y^2)dy = 0$$



## 📌 Ejercicio 4: Ecuación Diferencial Exacta con Logaritmos

**Problema:** Resolver la ecuación diferencial:

$$\left( \frac{y}{x} - \ln(y) \right) dx + \left( \ln(x) - \frac{x}{y} \right) dy = 0$$



### 🧮 Desarrollo Paso a Paso

#### 1. Verificación de Exactitud
* **$M(x,y) = \frac{y}{x} - \ln(y) \implies \frac{\partial M}{\partial y} = \frac{1}{x} - \frac{1}{y}$**
* **$N(x,y) = \ln(x) - \frac{x}{y} \implies \frac{\partial N}{\partial x} = \frac{1}{x} - \frac{1}{y}$**

Como $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, **la ecuación diferencial es exacta**.

#### 2. Obtención de la Función Potencial $F(x,y)$
En este caso, integramos $N(x,y)$ respecto de $y$:

$$F(x,y) = \int \left( \ln(x) - \frac{x}{y} \right) dy = y\ln(x) - x\ln|y| + h(x)$$

Derivamos respecto de $x$ e igualamos a $M(x,y)$:

$$\frac{\partial F}{\partial x} = \frac{y}{x} - \ln|y| + h'(x) = \frac{y}{x} - \ln(y) \implies h'(x) = 0 \implies h(x) = C_1$$

#### 3. Solución General
$$y\ln(x) - x\ln|y| = C$$



## 📌 Ejercicio 5: Problema de Valor Inicial (PVI)

**Problema:** Resolver la ecuación diferencial con condición inicial:

$$(\cos(x) - x\sin(x) + y^2) \, dx + 2xy \, dy = 0, \quad y(\pi) = 1$$



### 🧮 Desarrollo Paso a Paso

#### 1. Verificación de Exactitud
* **$M(x,y) = \cos(x) - x\sin(x) + y^2 \implies \frac{\partial M}{\partial y} = 2y$**
* **$N(x,y) = 2xy \implies \frac{\partial N}{\partial x} = 2y$**

Como $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, **la ecuación diferencial es exacta**.

#### 2. Obtención de la Función Potencial $F(x,y)$
Integramos $N(x,y)$ respecto de $y$:

$$F(x,y) = \int 2xy \, dy = x y^2 + h(x)$$

Derivamos respecto de $x$ e igualamos a $M(x,y)$:

$$\frac{\partial F}{\partial x} = y^2 + h'(x) = \cos(x) - x\sin(x) + y^2 \implies h'(x) = \cos(x) - x\sin(x)$$

Integramos $h'(x)$:

$$h(x) = \int \cos(x) \, dx - \int x\sin(x) \, dx$$

**Cálculo auxiliar por partes ($\int x\sin(x) \, dx$):**
* Sea $u = x \implies du = dx$
* Sea $dv = \sin(x) \, dx \implies v = -\cos(x)$

$$\int x\sin(x) \, dx = -x\cos(x) - \int (-\cos(x)) \, dx = -x\cos(x) + \sin(x)$$

Sustituyendo el resultado:

$$h(x) = \sin(x) - (-x\cos(x) + \sin(x)) = \sin(x) + x\cos(x) - \sin(x) = x\cos(x)$$

La función potencial completa es:

$$F(x,y) = xy^2 + x\cos(x) = C$$

#### 3. Aplicación de la Condición Inicial $y(\pi) = 1$
Sustituimos $x = \pi$ e $y = 1$:

$$\pi (1)^2 + \pi \cos(\pi) = C$$

Dado que $\cos(\pi) = -1$:

$$\pi(1) + \pi(-1) = C \implies \pi - \pi = 0 \implies C = 0$$

#### 4. Solución Particular
$$xy^2 + x\cos(x) = 0 \implies x(y^2 + \cos(x)) = 0$$

Para $x \neq 0$:

$$y^2 + \cos(x) = 0$$



Para $x \neq 0$:

$$y^2 + \cos(x) = 0$$
