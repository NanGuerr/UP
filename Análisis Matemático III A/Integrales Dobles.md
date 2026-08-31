# 📝 Integrales Dobles y Cambio de Orden de Integración

## 📌 1. Integrales Dobles sobre Regiones Rectangulares

Para integrar una función $f(x,y)$ sobre una región rectangular $R = [a,b] \times [c,d]$, el teorema de Fubini permite evaluar la integral doble mediante integrales iteradas en cualquier orden:

$$\iint_{R} f(x,y) \, dA = \int_{c}^{d} \left[ \int_{a}^{b} f(x,y) \, dx \right] dy = \int_{a}^{b} \left[ \int_{c}^{d} f(x,y) \, dy \right] dx$$



### ✏️ Ejercicio 1: Evaluación en Ambos Órdenes de Integración

**Problema:** Calcular la integral doble:

$$\int_{1}^{3} \int_{0}^{1} (1 + 4xy) \, dx \, dy$$

#### 🔹 Forma 1: Integrando respecto a $x$ primero

$$\int_{1}^{3} \left[ \int_{0}^{1} (1 + 4xy) \, dx \right] dy$$

1. **Integral interna respecto a $x$:**
   $$\int_{0}^{1} (1 + 4xy) \, dx = \left[ x + 2x^2 y \right]_{0}^{1} = (1 + 2y) - (0 + 0) = 1 + 2y$$

2. **Integral externa respecto a $y$:**
   $$\int_{1}^{3} (1 + 2y) \, dy = \left[ y + y^2 \right]_{1}^{3} = (3 + 3^2) - (1 + 1^2) = (3 + 9) - (1 + 1) = 12 - 2 = 10$$



#### 🔹 Forma 2: Integrando respecto a $y$ primero

$$\int_{0}^{1} \left[ \int_{1}^{3} (1 + 4xy) \, dy \right] dx$$

1. **Integral interna respecto a $y$:**
   $$\int_{1}^{3} (1 + 4xy) \, dy = \left[ y + 2xy^2 \right]_{1}^{3} = (3 + 2x(3^2)) - (1 + 2x(1^2)) = (3 + 18x) - (1 + 2x) = 2 + 16x$$

2. **Integral externa respecto a $x$:**
   $$\int_{0}^{1} (2 + 16x) \, dx = \left[ 2x + 8x^2 \right]_{0}^{1} = (2(1) + 8(1^2)) - (0 + 0) = 2 + 8 = 10$$



## 📌 2. Integrales Dobles sobre Regiones Generales

### 🔹 Región Tipo 1 (Verticalmente Simple)
La variable $x$ está acotada por constantes y $y$ por funciones de $x$:

$$D = \{ (x,y) \mid a \le x \le b, \, g_1(x) \le y \le g_2(x) \}$$

$$\iint_{D} f(x,y) \, dA = \int_{a}^{b} \int_{g_1(x)}^{g_2(x)} f(x,y) \, dy \, dx$$



### 🔹 Región Tipo 2 (Horizontalmente Simple)
La variable $y$ está acotada por constantes y $x$ por funciones de $y$:

$$D = \{ (x,y) \mid c \le y \le d, \, h_1(y) \le x \le h_2(y) \}$$

$$\iint_{D} f(x,y) \, dA = \int_{c}^{d} \int_{h_1(y)}^{h_2(y)} f(x,y) \, dx \, dy$$



## ✏️ Ejercicio 2: Integral Doble sobre una Región Tipo 1

**Problema:** Calcular la integral doble:

$$\iint_{D} x^3 y^2 \, dA$$

Donde la región $D$ está definida por:

$$D = \{ (x,y) \mid 0 \le x \le 2, \, -x \le y \le x \}$$



### 🧮 Resolución Paso a Paso

1. **Planteamiento de la integral iterada:**
   $$\int_{0}^{2} \int_{-x}^{x} x^3 y^2 \, dy \, dx$$

2. **Integración respecto a $y$:**
   $$\int_{0}^{2} x^3 \left[ \frac{y^3}{3} \right]_{-x}^{x} dx = \frac{1}{3} \int_{0}^{2} x^3 \left( x^3 - (-x)^3 \right) dx$$

   Dado que $(-x)^3 = -x^3$, tenemos:
   $$x^3 - (-x)^3 = x^3 + x^3 = 2x^3$$

3. **Sustituyendo en la integral respecto a $x$:**
   $$\frac{1}{3} \int_{0}^{2} x^3 (2x^3) \, dx = \frac{2}{3} \int_{0}^{2} x^6 \, dx$$

4. **Integración final:**
   $$\frac{2}{3} \left[ \frac{x^7}{7} \right]_{0}^{2} = \frac{2}{21} \left( 2^7 - 0^7 \right) = \frac{2}{21} (128) = \frac{256}{21}$$



## ✏️ Ejercicio 3: Cambio de Orden de Integración (Caso 1)

**Problema:** Calcular la integral:

$$\int_{0}^{2} \int_{x}^{2} x \sqrt{1 + y^3} \, dy \, dx$$



### 🧮 Resolución Paso a Paso

#### 1. Análisis de la imposibilidad directa
La función antiderivada de $\sqrt{1 + y^3}$ respecto a $y$ no se puede expresar mediante funciones elementales. Por ello, es necesario cambiar el orden de integración de **Tipo 1** a **Tipo 2**.

#### 2. Cambio de región a Tipo 2
Los límites de la región original son:
* $x \le y \le 2$
* $0 \le x \le 2$

En el plano $xy$, esta región corresponde al triángulo acotado por $x = 0$, $y = 2$ y la recta $y = x$.

Expresada como **Tipo 2**:
* $0 \le x \le y$
* $0 \le y \le 2$

#### 3. Planteamiento en el nuevo orden
$$\int_{0}^{2} \int_{0}^{y} x \sqrt{1 + y^3} \, dx \, dy$$

#### 4. Integración respecto a $x$
$$\int_{0}^{2} \sqrt{1 + y^3} \left[ \frac{x^2}{2} \right]_{0}^{y} dy = \frac{1}{2} \int_{0}^{2} y^2 \sqrt{1 + y^3} \, dy$$

#### 5. Integración respecto a $y$ por Sustitución
* Sea $t = 1 + y^3 \implies dt = 3y^2 \, dy \implies y^2 \, dy = \frac{dt}{3}$

**Cambio de límites:**
* Si $y = 0 \implies t = 1 + 0^3 = 1$
* Si $y = 2 \implies t = 1 + 2^3 = 9$

Reemplazando en la integral:
$$\frac{1}{2} \int_{1}^{9} t^{1/2} \cdot \frac{dt}{3} = \frac{1}{6} \int_{1}^{9} t^{1/2} \, dt = \frac{1}{6} \left[ \frac{t^{3/2}}{\frac{3}{2}} \right]_{1}^{9} = \frac{1}{6} \cdot \frac{2}{3} \left[ t^{3/2} \right]_{1}^{9} = \frac{1}{9} \left( 9^{3/2} - 1^{3/2} \right)$$

Como $9^{3/2} = (\sqrt{9})^3 = 3^3 = 27$:
$$\frac{1}{9} (27 - 1) = \frac{26}{9}$$



## ✏️ Ejercicio 4: Cambio de Orden de Integración (Caso 2)

**Problema:** Calcular la integral:

$$\int_{0}^{1} \int_{x^2}^{1} x \sin(y^2) \, dy \, dx$$



### 🧮 Resolución Paso a Paso

#### 1. Análisis de la región
La integral dada está planteada como **Tipo 1** con límites:
* $x^2 \le y \le 1$
* $0 \le x \le 1$

#### 2. Cambio de orden a Tipo 2
Despejando $x$ de la parábola $y = x^2$, obtenemos $x = \sqrt{y}$. Los nuevos límites son:
* $0 \le x \le \sqrt{y}$
* $0 \le y \le 1$

#### 3. Reordenamiento de la integral
$$\int_{0}^{1} \int_{0}^{\sqrt{y}} x \sin(y^2) \, dx \, dy$$

#### 4. Integración respecto a $x$
$$\int_{0}^{1} \sin(y^2) \left[ \frac{x^2}{2} \right]_{0}^{\sqrt{y}} dy = \frac{1}{2} \int_{0}^{1} (\sqrt{y})^2 \sin(y^2) \, dy = \frac{1}{2} \int_{0}^{1} y \sin(y^2) \, dy$$

#### 5. Integración respecto a $y$ por Sustitución
* Sea $t = y^2 \implies dt = 2y \, dy \implies y \, dy = \frac{dt}{2}$

**Cambio de límites:**
* Si $y = 0 \implies t = 0^2 = 0$
* Si $y = 1 \implies t = 1^2 = 1$

Reemplazando en la integral:
$$\frac{1}{2} \int_{0}^{1} \sin(t) \cdot \frac{dt}{2} = \frac{1}{4} \int_{0}^{1} \sin(t) \, dt = \frac{1}{4} \left[ -\cos(t) \right]_{0}^{1}$$

$$\frac{1}{4} \left( -\cos(1) - (-\cos(0)) \right) = \frac{1}{4} (1 - \cos(1))$$
