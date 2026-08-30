# 📘 Apunte: Ecuaciones Diferenciales Exactas - Parte I 🎓

## 📝 Conceptos Básicos y Definición

Definimos el **diferencial total** de una función de dos variables $z=F(x,y)$ como:

$$dF = F'_x \cdot dx + F'_y \cdot dy$$

**💡 Ejemplo introductorio:**
Supongamos que queremos resolver la ecuación:

$$(2x+y^2)dx + 2xy \, dy = 0$$

Esta ecuación no es de variables separables ni homogénea. Pero si observamos la función $F(x,y) = x^2 + x \cdot y^2$, notamos que sus derivadas parciales son:
- $F'_x(x,y) = 2x + y^2$
- $F'_y(x,y) = 2xy$

Entonces, la ecuación diferencial se puede escribir como la diferencial de la función $F$:

$$d(x^2 + x \cdot y^2) = 0 \implies dF = 0$$

Luego, la función $F(x,y) = x^2 + x \cdot y^2 = C$ (donde $C$ es una constante arbitraria) es una solución de la ecuación diferencial definida implícitamente.

---

## 🔍 Definiciones Formales

**1️⃣ Expresión diferencial exacta:**
Una expresión diferencial $M(x,y)dx + N(x,y)dy$ es una *diferencial exacta* en una región $R$ del plano $xy$ si corresponde al diferencial de una función $F(x,y)$.

**2️⃣ Ecuación diferencial exacta:**
Una ecuación diferencial de primer orden de la forma:

$$M(x,y)dx + N(x,y)dy = 0$$

es una ecuación diferencial exacta si el lado izquierdo es una diferencial exacta. Es decir, existe una función $F$ tal que $F'_x = M$ y $F'_y = N$, definiendo implícitamente la solución general $F(x,y) = C$.

---

## ⚖️ Teorema: Criterio de Exactitud

Sean las funciones $M$, $N$, $M'_y$ y $N'_x$ continuas en la región $R: a < x < b \ ; \ c < y < d$.
La ecuación diferencial $M(x,y)dx + N(x,y)dy = 0$ es **exacta si y solo si**:

$$M'_y = N'_x$$

para todo punto $(x,y) \in R$.

**🧠 Demostración rápida (Teorema de Schwarz):**
Si es exacta, existe $F(x,y)$ tal que $M = F'_x$ y $N = F'_y$.
Derivando nuevamente obtenemos las derivadas cruzadas:

$$M'_y = (F'_x)'_y = F''_{xy}$$
$$N'_x = (F'_y)'_x = F''_{yx}$$

Como $F$ admite derivadas parciales segundas continuas, por el Teorema de Schwarz, $F''_{xy} = F''_{yx}$, concluyendo que $M'_y = N'_x$.

---

## 🚀 Ejemplos Resueltos

### 📌 Ejemplo 1
**Resolver verificando primero que es exacta:**

$$(x^2 - 2y)dx + (y - 2x)dy = 0$$

**1. Verificación:**
- $M(x,y) = x^2 - 2y \implies M'_y = -2$
- $N(x,y) = y - 2x \implies N'_x = -2$

Como $M'_y = N'_x$, la ecuación **es exacta**. ✅

**2. Integración de $M$ respecto a $x$ para hallar $F(x,y)$:**

$$F(x,y) = \int (x^2 - 2y)dx = \frac{x^3}{3} - 2xy + g(y)$$

*(Nota: $g(y)$ es la constante de integración respecto a $x$, por lo que depende exclusivamente de $y$).*

**3. Derivamos $F$ respecto a $y$ e igualamos a $N$:**

$$F'_y(x,y) = -2x + g'(y)$$

Igualando con $N(x,y) = y - 2x$:

$$-2x + g'(y) = y - 2x \implies g'(y) = y$$

**4. Integramos para hallar $g(y)$:**

$$g(y) = \frac{y^2}{2} + K_1$$

**🎯 Solución general:**

$$F(x,y) = \frac{x^3}{3} - 2xy + \frac{y^2}{2} = C$$

---

### 📌 Ejemplo 2
**Hallar la solución general de la ecuación:**

$$(4x + 1)dx - 2ydy = 0$$

*(Nota del desarrollo: En el apunte original aparece un pequeño error tipográfico en el enunciado que indica $4x-1$, pero los cálculos se realizan con $M = 4x+1$).*

**1. Verificación:**
- $M(x,y) = 4x + 1 \implies M'_y = 0$
- $N(x,y) = -2y \implies N'_x = 0$

La ecuación diferencial **es exacta**. ✅

**2. Integración de $M$ respecto a $x$:**

$$F(x,y) = \int (4x + 1)dx = 2x^2 + x + g(y)$$

**3. Derivamos $F$ respecto a $y$ e igualamos a $N$:**

$$F'_y(x,y) = 0 + g'(y)$$

Igualando con $N$:

$$g'(y) = -2y \implies g(y) = -y^2 + K_1$$

**🎯 Solución general:**

$$2x^2 + x - y^2 = C$$

*💡 Observación: También es posible comenzar el procedimiento integrando $N$ respecto de $y$. La elección dependerá de cuál de las dos integrales sea más fácil de calcular.*

---

### 📌 Ejemplo 3 (Con condición inicial)
**Resolver la ecuación con la condición inicial $y(2) = 4$:**

$$\frac{y}{x-1}dx + [\ln(x-1) + 2y]dy = 0$$

**1. Verificación:**
- $M(x,y) = \frac{y}{x-1} \implies M'_y = \frac{1}{x-1}$
- $N(x,y) = \ln(x-1) + 2y \implies N'_x = \frac{1}{x-1}$

La ecuación **es exacta**. ✅

**2. Integración de $N$ respecto a $y$:**
*(Elegimos $N$ esta vez para ejemplificar la observación anterior).*

$$F(x,y) = \int [\ln(x-1) + 2y]dy = y\ln(x-1) + y^2 + h(x)$$

**3. Derivamos $F$ respecto a $x$ e igualamos a $M$:**

$$F'_x(x,y) = \frac{y}{x-1} + h'(x)$$

Igualando con $M(x,y)$:

$$\frac{y}{x-1} + h'(x) = \frac{y}{x-1} \implies h'(x) = 0 \implies h(x) = K_1$$

**🎯 Solución general:**

$$y\ln(x-1) + y^2 = C$$

**4. Aplicamos la condición inicial $y(2) = 4$:**
Reemplazamos la $x$ por 2 y la $y$ por 4 en la solución general:

$$4\ln(2-1) + 4^2 = C$$
$$4\ln(1) + 16 = C \implies C = 16$$

**✨ Solución particular:**

$$y\ln(x-1) + y^2 = 16$$
