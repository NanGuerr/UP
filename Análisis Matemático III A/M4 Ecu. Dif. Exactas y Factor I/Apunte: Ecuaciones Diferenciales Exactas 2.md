# 📘 Apunte: Ecuaciones Dif. Exactas y Factor Integrante - Pte 2 .

## 🔍 Introducción al Problema
Supongamos que queremos resolver la ecuación diferencial:

$$(3xy + y^2)dx + (x^2 + xy)dy = 0$$

Al calcular las derivadas parciales cruzadas obtenemos:
- $M'_y = 3x + 2y$
- $N'_x = 2x + y$

Como $M'_y \neq N'_x$, vemos que **la ecuación no es exacta**. 🚫

Si intentamos resolverla buscando una función $F(x,y)$ tal que $F'_x = M$ y $F'_y = N$, llegaríamos a una contradicción:

Integrando $F'_x$ respecto de $x$:

$$F(x,y) = \frac{3x^2y}{2} + xy^2 + h(y)$$

Derivando respecto de $y$ e igualando a $N$:

$$F'_y(x,y) = \frac{3}{2}x^2 + 2xy + h'(y) = x^2 + xy$$
$$h'(y) = -\frac{1}{2}x^2 - xy$$

Como el lado derecho de esta ecuación depende tanto de $x$ como de $y$, **es imposible** resolverla respecto de $y$. Por lo tanto, no existe tal función $F(x,y)$.



## 🛠️ Factor Integrante

A veces es posible convertir una ecuación diferencial que no es exacta en una que sí lo sea multiplicándola por un factor integrante conveniente. Queremos encontrar una función $\mu(x,y)$ tal que:

$$\mu(x,y) \cdot [M(x,y)dx + N(x,y)dy] = 0$$

sea una ecuación diferencial exacta. ✨

> **Observación:** En general, no existe una forma sistemática de hallar estos factores integrantes y solo pueden encontrarse en casos muy particulares. El caso más sencillo es cuando el factor integrante depende **solo de la variable $x$ o solo de la variable $y$**.



## 📍 Factor Integrante que depende solo de $x$: $\mu(x)$

Para que $\mu(x) \cdot [Mdx + Ndy] = 0$ sea exacta, definimos:
- $P(x,y) = \mu(x) \cdot M(x,y)$
- $Q(x,y) = \mu(x) \cdot N(x,y)$

Derivando parcialmente (por regla del producto para $Q$):
- $P'_y(x,y) = \mu(x) \cdot M'_y(x,y)$
- $Q'_x(x,y) = \mu(x) \cdot N'_x(x,y) + \mu'(x) \cdot N(x,y)$

Por la condición de exactitud ($P'_y = Q'_x$):

$$\mu(x) \cdot M'_y = \mu(x) \cdot N'_x + \mu'(x) \cdot N$$

Despejando $\mu'(x)$:

$$\mu'(x) = \left[ \frac{M'_y(x,y) - N'_x(x,y)}{N(x,y)} \right] \cdot \mu(x)$$

Si la expresión $\frac{M'_y - N'_x}{N}$ **depende solo de $x$**, entonces podemos resolver la ecuación diferencial de variables separables para hallar $\mu(x)$. 🎯



### 📌 Ejemplo 1 (Factor $\mu(x)$)

Resolver:
$$(y + \ln x)dx - x dy = 0$$

**1. Verificación:**
- $M(x,y) = y + \ln x \implies M'_y = 1$
- $N(x,y) = -x \implies N'_x = -1$
La ecuación **no es exacta**.

**2. Buscamos el factor integrante:**

$$\frac{M'_y - N'_x}{N} = \frac{1 - (-1)}{-x} = -\frac{2}{x}$$

Como depende solo de $x$, planteamos:

$$\mu'(x) = -\frac{2}{x} \cdot \mu(x)$$
$$\frac{d\mu}{\mu} = -\frac{2}{x} dx$$

Integrando:
$$\ln|\mu| = -2\ln|x| \implies \mu(x) = \frac{1}{x^2}$$

**3. Multiplicamos la ED por $\mu(x)$:**

$$\left( \frac{y + \ln x}{x^2} \right)dx - \frac{1}{x}dy = 0$$

*(Ahora es exacta: $P'_y = \frac{1}{x^2}$ y $Q'_x = \frac{1}{x^2}$)* ✅

**4. Resolvemos integrando $Q$ respecto de $y$:**

$$F(x,y) = \int \left(-\frac{1}{x}\right) dy = -\frac{y}{x} + h(x)$$

Derivamos respecto a $x$ e igualamos a $P$:

$$F'_x = \frac{y}{x^2} + h'(x) = \frac{y + \ln x}{x^2}$$
$$h'(x) = \frac{\ln x}{x^2} = x^{-2} \ln x$$

Integramos por partes ($u = \ln x, \ dv = x^{-2}dx$):

$$h(x) = -\frac{\ln x}{x} - \frac{1}{x} + C_1$$

**🎯 Solución general:**
$$-\frac{y}{x} - \frac{\ln x}{x} - \frac{1}{x} = C$$



## 📍 Factor Integrante que depende solo de $y$: $\mu(y)$

Por simetría, si suponemos que el factor integrante es función solo de $y$, llegamos a:

$$\mu'(y) = \left[ \frac{N'_x(x,y) - M'_y(x,y)}{M(x,y)} \right] \cdot \mu(y)$$

Existirá este factor si la expresión $\frac{N'_x - M'_y}{M}$ **depende solo de $y$**. 🎯



### 📌 Ejemplo 2 (Factor $\mu(y)$)

Resolver:
$$(2xy^2 - y)dx + (2x - x^2y)dy = 0$$

**1. Verificación:**
- $M'_y = 4xy - 1$
- $N'_x = 2 - 2xy$
La ecuación **no es exacta**.

**2. Buscamos el factor integrante:**
Primero probamos con $x$:

$$\frac{M'_y - N'_x}{N} = \frac{(4xy - 1) - (2 - 2xy)}{2x - x^2y} = \frac{6xy - 3}{x(2 - xy)} = \frac{3(2xy - 1)}{x(2 - xy)}$$
*(Depende de ambas variables, no sirve).* 🚫

Probamos con $y$:

$$\frac{N'_x - M'_y}{M} = \frac{(2 - 2xy) - (4xy - 1)}{2xy^2 - y} = \frac{3 - 6xy}{y(2xy - 1)} = \frac{-3(2xy - 1)}{y(2xy - 1)} = -\frac{3}{y}$$
*(Depende solo de $y$, ¡sí sirve!)* ✅

Planteamos la ED para $\mu$:

$$\mu'(y) = -\frac{3}{y}\mu(y) \implies \frac{d\mu}{\mu} = -\frac{3}{y}dy$$

Integrando:
$$\ln|\mu| = -3\ln|y| \implies \mu(y) = \frac{1}{y^3}$$

**3. Multiplicamos la ED por $\mu(y)$:**

$$\left( \frac{2x}{y} - \frac{1}{y^2} \right)dx + \left( \frac{2x}{y^3} - \frac{x^2}{y^2} \right)dy = 0$$
*(Ahora es exacta).* ✅

**4. Resolvemos integrando $P$ respecto de $x$:**

$$F(x,y) = \int \left( \frac{2x}{y} - \frac{1}{y^2} \right) dx = \frac{x^2}{y} - \frac{x}{y^2} + g(y)$$

Derivamos respecto a $y$ e igualamos a $Q$:

$$F'_y = -\frac{x^2}{y^2} + \frac{2x}{y^3} + g'(y) = \frac{2x}{y^3} - \frac{x^2}{y^2}$$
$$g'(y) = 0 \implies g(y) = K_1$$

**🎯 Solución general:**
$$\frac{x^2}{y} - \frac{x}{y^2} = C$$
