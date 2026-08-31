# 📝 Integrales Dobles y Cambio de Orden de Integración

## 📌 1. Definición de Regiones de Integración en el Plano

Las regiones de integración para integrales dobles en $\mathbb{R}^2$ se clasifican según cómo se definen sus límites:

### 🔹 Región Tipo 1 (Verticalmente Simple)
La variable $x$ está acotada por constantes y la variable $y$ por funciones de $x$:

$$D = \{ (x,y) \mid a \le x \le b, \, g_1(x) \le y \le g_2(x) \}$$

La integral doble en una región Tipo 1 se calcula como:

$$\iint_{D} f(x,y) \, dA = \int_{a}^{b} \left[ \int_{g_1(x)}^{g_2(x)} f(x,y) \, dy \right] dx$$

---

### 🔹 Región Tipo 2 (Horizontalmente Simple)
La variable $y$ está acotada por constantes y la variable $x$ por funciones de $y$:

$$D = \{ (x,y) \mid c \le y \le d, \, h_1(y) \le x \le h_2(y) \}$$

La integral doble en una región Tipo 2 se calcula como:

$$\iint_{D} f(x,y) \, dA = \int_{c}^{d} \left[ \int_{h_1(y)}^{h_2(y)} f(x,y) \, dx \right] dy$$

---

## ✏️ Ejercicio 1: Cálculo Directo sobre una Región Tipo 1

**Problema:** Calcular la integral doble:

$$\iint_{D} \frac{2y}{x^2 + 1} \, dA$$

Donde la región $D$ está definida por:

$$D = \{ (x,y) \mid 0 \le x \le 1, \, 0 \le y \le \sqrt{x} \}$$

---

### 🧮 Resolución Paso a Paso

#### 1. Planteamiento de la Integral Iterada
$$\iint_{D} \frac{2y}{x^2 + 1} \, dA = \int_{0}^{1} \left[ \int_{0}^{\sqrt{x}} \frac{2y}{x^2 + 1} \, dy \right] dx$$

#### 2. Integración respecto a $y$
Tratamos a $x$ como constante en la integral interna:

$$\int_{0}^{1} \frac{1}{x^2 + 1} \left[ \int_{0}^{\sqrt{x}} 2y \, dy \right] dx = \int_{0}^{1} \frac{1}{x^2 + 1} \left[ y^2 \right]_{0}^{\sqrt{x}} dx$$

$$\left[ y^2 \right]_{0}^{\sqrt{x}} = (\sqrt{x})^2 - 0^2 = x$$

Sustituyendo el resultado:

$$\int_{0}^{1} \frac{x}{x^2 + 1} \, dx$$

#### 3. Integración respecto a $x$ por Sustitución
Aplicamos la sustitución de variables:
* $t = x^2 + 1$
* $dt = 2x \, dx \implies x \, dx = \frac{dt}{2}$

**Cambio de límites de integración:**
* Si $x = 0 \implies t = 0^2 + 1 = 1$
* Si $x = 1 \implies t = 1^2 + 1 = 2$

Reemplazando en la integral:

$$\int_{1}^{2} \frac{1}{t} \cdot \frac{dt}{2} = \frac{1}{2} \int_{1}^{2} \frac{1}{t} \, dt = \frac{1}{2} \Big[ \ln|t| \Big]_{1}^{2}$$

$$\frac{1}{2} \left( \ln(2) - \ln(1) \right) = \frac{1}{2} \ln(2)$$

---

## ✏️ Ejercicio 2: Cambio del Orden de Integración

**Problema:** Resolver la siguiente integral invirtiendo el orden de integración:

$$\int_{0}^{1} \int_{y}^{1} \sin(x^2) \, dx \, dy$$

---

### 🧮 Resolución Paso a Paso

#### 1. Análisis de la Región Original
De la integral dada se observan los límites:
* $y \le x \le 1$
* $0 \le y \le 1$

Esta es una región acotada por las rectas $x = y$, $x = 1$ y $y = 0$.

#### 2. Cambio a Región Tipo 1 (Integrar respecto a $y$ primero)
Al invertir el orden de integración, los límites cambian a:
* $0 \le y \le x$
* $0 \le x \le 1$

Reorganizando la integral:

$$\int_{0}^{1} \int_{0}^{x} \sin(x^2) \, dy \, dx$$

#### 3. Integración respecto a $y$
$$\int_{0}^{1} \sin(x^2) \left[ \int_{0}^{x} dy \right] dx = \int_{0}^{1} \sin(x^2) \Big[ y \Big]_{0}^{x} dx = \int_{0}^{1} x \sin(x^2) \, dx$$

#### 4. Integración respecto a $x$ por Sustitución
Aplicamos la sustitución:
* $t = x^2$
* $dt = 2x \, dx \implies x \, dx = \frac{dt}{2}$

**Cambio de límites:**
* Si $x = 0 \implies t = 0$
* Si $x = 1 \implies t = 1$

Reemplazando en la integral:

$$\int_{0}^{1} \sin(t) \cdot \frac{dt}{2} = \frac{1}{2} \left[ -\cos(t) \right]_{0}^{1} = -\frac{1}{2} \left( \cos(1) - \cos(0) \right) = -\frac{1}{2} (\cos(1) - 1) = \frac{1 - \cos(1)}{2}$$

---

## ✏️ Ejercicio 3: Área de una Región Plana Dividida en Subregiones

**Problema:** Calcular el área de la región $D$ acotada por $x \cdot y = 9$, $y = x$, $y = 0$ y $x = 9$.

---

### 🧮 Resolución Paso a Paso

#### 1. Identificación de Puntos de Intersección
* Intersección entre $y = x$ y $x \cdot y = 9$:
  $$x \cdot x = 9 \implies x^2 = 9 \implies x = 3, \, y = 3$$
* Intersección entre $x \cdot y = 9$ y $x = 9$:
  $$9 \cdot y = 9 \implies y = 1$$

#### 2. División de la Región en el Eje $y$ (Región Tipo 2)
Integrando respecto a $y$, la región se divide en dos subregiones $D_1$ y $D_2$:

##### 🔹 Subregión $D_1$ (para $0 \le y \le 1$):
* Límites de $x$: desde $x = y$ hasta $x = 9$.

$$A_1 = \int_{0}^{1} \int_{y}^{9} 1 \, dx \, dy = \int_{0}^{1} [x]_{y}^{9} \, dy = \int_{0}^{1} (9 - y) \, dy$$

$$A_1 = \left[ 9y - \frac{y^2}{2} \right]_{0}^{1} = 9(1) - \frac{1^2}{2} = 9 - \frac{1}{2} = \frac{17}{2}$$

##### 🔹 Subregión $D_2$ (para $1 \le y \le 3$):
* Límites de $x$: desde $x = y$ hasta $x = \frac{9}{y}$.

$$A_2 = \int_{1}^{3} \int_{y}^{\frac{9}{y}} 1 \, dx \, dy = \int_{1}^{3} \left( \frac{9}{y} - y \right) dy$$

$$A_2 = \left[ 9 \ln|y| - \frac{y^2}{2} \right]_{1}^{3} = \left( 9 \ln(3) - \frac{3^2}{2} \right) - \left( 9 \ln(1) - \frac{1^2}{2} \right)$$

$$A_2 = 9 \ln(3) - \frac{9}{2} + \frac{1}{2} = 9 \ln(3) - 4$$

#### 3. Área Total
$$A_T = A_1 + A_2 = \frac{17}{2} + 9 \ln(3) - 4 = 9 \ln(3) + \frac{9}{2}$$
