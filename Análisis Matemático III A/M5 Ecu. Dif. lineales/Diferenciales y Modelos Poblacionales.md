# 📝 Ecuaciones Diferenciales y Modelos Poblacionales

Este documento contiene la transcripción y resolución rigurosa de las ecuaciones diferenciales y modelos aplicados desarrollados en la clase del **15 de septiembre de 2025**.



## 📌 Ejercicio 1: Ecuación Diferencial Exacta

**Problema:** Resolver la ecuación diferencial:

$$\frac{dy}{dx} = \frac{3y^2 + 10xy^2}{2 - 6xy - 10x^2 y}$$



### 🧮 Desarrollo Paso a Paso

#### 1. Expresión en Forma Estándar

Reorganizamos la ecuación en la forma $M(x,y)\,dx + N(x,y)\,dy = 0$:

$$(2 - 6xy - 10x^2 y)\,dy = (3y^2 + 10xy^2)\,dx$$

$$(-3y^2 - 10xy^2)\,dx + (2 - 6xy - 10x^2 y)\,dy = 0$$

Identificamos las funciones $M(x,y)$ y $N(x,y)$:

* **$M(x,y) = -3y^2 - 10xy^2$**
* **$N(x,y) = 2 - 6xy - 10x^2 y$**

#### 2. Verificación de Exactitud

Calculamos las derivadas parciales cruzadas:

$$\frac{\partial M}{\partial y} = -6y - 20xy$$

$$\frac{\partial N}{\partial x} = -6y - 20xy$$

Como $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, **la ecuación diferencial es exacta**. Por lo tanto, existe una función potencial $F(x,y)$ tal que $\frac{\partial F}{\partial x} = M$ y $\frac{\partial F}{\partial y} = N$.

#### 3. Obtención de la Función Potencial $F(x,y)$

Integramos $M(x,y)$ respecto de $x$:

$$F(x,y) = \int (-3y^2 - 10xy^2)\,dx = -3y^2 x - 5x^2 y^2 + g(y)$$

Derivamos $F(x,y)$ respecto de $y$ e igualamos a $N(x,y)$:

$$\frac{\partial F}{\partial y} = -6yx - 10x^2 y + g'(y) = 2 - 6xy - 10x^2 y \implies g'(y) = 2$$

Integramos $g'(y)$:

$$g(y) = 2y + C_1$$

#### 4. Solución General

$$-3y^2 x - 5x^2 y^2 + 2y = C$$



## 📌 Ejercicio 2: Modelo de Desintegración Radiactiva

**Problema:** Inicialmente había $100\text{ mg}$ presentes de una sustancia radiactiva. Después de $6\text{ horas}$, la masa disminuyó un $3\%$. Encontrar la cantidad que queda de sustancia después de $24\text{ horas}$ si se sabe que la velocidad de desintegración es proporcional a la cantidad de sustancia presente.



### 🧮 Desarrollo Paso a Paso

#### 1. Planteamiento de la Ecuación Diferencial

Sea $M(t)$ la masa de la sustancia en el instante $t$ (en horas):

$$\frac{dM}{dt} = k M(t) \implies \frac{dM}{M} = k\,dt$$

Integramos ambos lados:

$$\int \frac{dM}{M} = \int k\,dt \implies \ln\vert{}M\vert{} = kt + C_1 \implies M(t) = M_0 e^{kt}$$

Con la condición inicial $M(0) = 100$:

$$M(t) = 100 e^{kt}$$

#### 2. Determinación de la Constante $k$

A las $t = 6\text{ h}$, la masa disminuyó un $3\%$, por lo que queda el $97\%$ de la masa original:

$$M(6) = 100(0.97) = 97\text{ mg}$$

$$100 e^{6k} = 97 \implies e^{6k} = \frac{97}{100} = 0.97$$

$$6k = \ln(0.97) \implies k = \frac{\ln(0.97)}{6} \approx -0.005076\text{ h}^{-1}$$

#### 3. Cálculo de la Masa a las 24 Horas

$$M(24) = 100 e^{24k} = 100 \left(e^{6k}\right)^4 = 100 (0.97)^4 \approx 88.53\text{ mg}$$



## 📌 Ejercicio 3: Modelo de Propagación de una Epidemia (Ecuación Logística)

**Problema:** La velocidad de propagación de una epidemia es proporcional al número de personas infectadas $I(t)$ y al número de personas no infectadas. En una población de $10000$ habitantes, inicialmente hay $50$ personas infectadas. Al cabo de $3\text{ días}$, hay $250$ personas infectadas. Determinar la constante de velocidad y la solución formal del modelo.



### 🧮 Desarrollo Paso a Paso

#### 1. Planteamiento de la Ecuación Diferencial

Población total $P = 10000$. La tasa de infección es:

$$\frac{dI}{dt} = k I(t)(10000 - I(t))$$

Separando variables:

$$\frac{dI}{I(10000 - I)} = k\,dt$$

#### 2. Integración por Fracciones Parciales

Descomponemos el integrando:

$$\frac{1}{I(10000 - I)} = \frac{A}{I} + \frac{B}{10000 - I}$$

$$1 = A(10000 - I) + B I$$

* Para $I = 0 \implies 10000A = 1 \implies A = \frac{1}{10000}$
* Para $I = 10000 \implies 10000B = 1 \implies B = \frac{1}{10000}$

Integramos:

$$\frac{1}{10000} \int \left( \frac{1}{I} + \frac{1}{10000 - I} \right) dI = \int k\,dt$$

$$\frac{1}{10000} \left( \ln\vert{}I\vert{} - \ln\vert{}10000 - I\vert{} \right) = kt + C_1$$

$$\ln\left\vert{} \frac{I}{10000 - I} \right\vert{} = 10000 kt + C_2 \implies \frac{10000 - I}{I} = K e^{-10000 kt}$$

#### 3. Condiciones Iniciales y Evaluación

Para $t = 0$ con $I(0) = 50$:

$$K = \frac{10000 - 50}{50} = \frac{9950}{50} = 199$$

$$\frac{10000 - I}{I} = 199 e^{-c t} \quad (\text{donde } c = 10000 k)$$

Para $t = 3$ días con $I(3) = 250$:

$$\frac{10000 - 250}{250} = \frac{9750}{250} = 39$$

$$199 e^{-3c} = 39 \implies e^{-3c} = \frac{39}{199} \approx 0.196$$

$$-3c = \ln(0.196) \implies c \approx 0.543\text{ días}^{-1}$$

La solución explícita para $I(t)$ es:

$$\frac{10000 - I}{I} = 199 e^{-0.543 t} \implies I(t) = \frac{10000}{1 + 199 e^{-0.543 t}}$$



## 📌 Ejercicio 4: Ecuación Diferencial Homogénea de Grado 3

**Problema:** Resolver la ecuación diferencial:

$$(2x^3 + y^3)\,dx - 3xy^2\,dy = 0$$



### 🧮 Desarrollo Paso a Paso

#### 1. Verificación de Homogeneidad

Sea $M(x,y) = 2x^3 + y^3$ y $N(x,y) = -3xy^2$:

* $M(tx, ty) = 2(tx)^3 + (ty)^3 = t^3(2x^3 + y^3) = t^3 M(x,y)$
* $N(tx, ty) = -3(tx)(ty)^2 = t^3(-3xy^2) = t^3 N(x,y)$

Ambas funciones son homogéneas de grado $3$, por lo que **la ecuación diferencial es homogénea**.

#### 2. Cambio de Variable ($y = u x$)

Reorganizamos la derivada $\frac{dy}{dx}$:

$$\frac{dy}{dx} = \frac{2x^3 + y^3}{3xy^2}$$

Sustituimos $y = ux$ y $\frac{dy}{dx} = u + x\frac{du}{dx}$:

$$u + x\frac{du}{dx} = \frac{2x^3 + (ux)^3}{3x(ux)^2} = \frac{x^3(2 + u^3)}{3x^3 u^2} = \frac{2 + u^3}{3u^2}$$

#### 3. Separación de Variables

$$x\frac{du}{dx} = \frac{2 + u^3}{3u^2} - u = \frac{2 + u^3 - 3u^3}{3u^2} = \frac{2 - 2u^3}{3u^2}$$

Reorganizando términos:

$$\frac{3u^2}{2 - 2u^3}\,du = \frac{dx}{x}$$

#### 4. Integración de Ambos Miembros

$$\int \frac{3u^2}{2 - 2u^3}\,du = \int \frac{dx}{x}$$

**Sustitución auxiliar:** $t = 2 - 2u^3 \implies dt = -6u^2\,du \implies 3u^2\,du = -\frac{dt}{2}$

$$-\frac{1}{2} \int \frac{dt}{t} = \ln\vert{}x\vert{} + C_1 \implies -\frac{1}{2} \ln\vert{}2 - 2u^3\vert{} = \ln\vert{}x\vert{} + C_1$$

$$\ln\left( (2 - 2u^3)^{-1/2} \right) = \ln\vert{}x\vert{} + C_1 \implies (2 - 2u^3)^{-1/2} = K x$$

#### 5. Retorno a las Variables Originales ($u = \frac{y}{x}$)

$$\left( 2 - 2\frac{y^3}{x^3} \right)^{-1/2} = K x$$

Elevando ambos lados al cuadrado:

$$\frac{1}{2 - 2\frac{y^3}{x^3}} = K^2 x^2 \implies \frac{x^3}{2x^3 - 2y^3} = C_2 x^2$$

Simplificando $x^2$:

$$\frac{x}{2(x^3 - y^3)} = C_2 \implies x^3 - y^3 = C x$$
