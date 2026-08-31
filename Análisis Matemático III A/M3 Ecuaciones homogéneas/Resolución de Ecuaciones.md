# 📝 Resolución de Ecuaciones Diferenciales Homogéneas

## 📌 Ejercicio 1: Resolución de Ecuación Diferencial Homogénea de Grado 0

**Problema:** Resolver la ecuación diferencial:

$$\frac{dy}{dx} = \frac{x - y}{x + y}$$

---

### 🧮 Resolución Paso a Paso

#### 1. Verificación de Homogeneidad
Sea la función $f(x,y) = \frac{x - y}{x + y}$. Evaluamos $f(tx, ty)$:

$$f(tx, ty) = \frac{tx - ty}{tx + ty} = \frac{t(x - y)}{t(x + y)} = t^0 \cdot \frac{x - y}{x + y} = t^0 f(x,y)$$

Puesto que el exponente de $t$ es 0, **la función es homogénea de grado 0**, por lo que la ecuación diferencial es homogénea.

#### 2. Cambio de Variable
Proponemos la sustitución $y = u x \implies dy = u \, dx + x \, du$.

Dividiendo por $dx$:
$$\frac{dy}{dx} = u + x \frac{du}{dx}$$

#### 3. Sustitución en la Ecuación Diferencial
$$u + x \frac{du}{dx} = \frac{x - ux}{x + ux}$$

Factorizando $x$ en el numerador y denominador:
$$u + x \frac{du}{dx} = \frac{x(1 - u)}{x(1 + u)} = \frac{1 - u}{1 + u}$$

#### 4. Separación de Variables
Despejando $x \frac{du}{dx}$:

$$x \frac{du}{dx} = \frac{1 - u}{1 + u} - u = \frac{1 - u - u(1 + u)}{1 + u}$$

$$x \frac{du}{dx} = \frac{1 - u - u - u^2}{1 + u} = \frac{1 - 2u - u^2}{1 + u}$$

Reorganizando en forma separable:

$$\frac{1 + u}{1 - 2u - u^2} \, du = \frac{dx}{x}$$

#### 5. Integración de Ambos Miembros
$$\int \frac{1 + u}{-u^2 - 2u + 1} \, du = \int \frac{dx}{x}$$

**Cálculo auxiliar por sustitución:**
* Sea $t = -u^2 - 2u + 1$
* $dt = (-2u - 2) \, du = -2(u + 1) \, du \implies (1 + u) \, du = -\frac{dt}{2}$

Sustituyendo en la integral respecto a $u$:

$$\int \frac{1}{t} \left( -\frac{dt}{2} \right) = -\frac{1}{2} \int \frac{dt}{t} = -\frac{1}{2} \ln|t| = -\frac{1}{2} \ln|-u^2 - 2u + 1|$$

Igualando las integrales:

$$-\frac{1}{2} \ln|-u^2 - 2u + 1| = \ln|x| + C_1$$

Multiplicando por $-2$:

$$\ln|-u^2 - 2u + 1| = -2\ln|x| - 2C_1 = \ln\left( x^{-2} \right) + C_2$$

Aplicando exponencial a ambos lados:

$$|-u^2 - 2u + 1| = K \cdot x^{-2} \implies (-u^2 - 2u + 1)^{-1/2} = k \cdot x$$

#### 6. Retorno a las Variables Originales ($u = \frac{y}{x}$)
$$\left( -\frac{y^2}{x^2} - 2\frac{y}{x} + 1 \right)^{-1/2} = k \cdot x$$

$$\sqrt{\frac{x^2}{-y^2 - 2xy + x^2}} = k \cdot x \implies \frac{x}{\sqrt{x^2 - 2xy - y^2}} = k \cdot x$$

Simplificando $x$:

$$\frac{1}{\sqrt{x^2 - 2xy - y^2}} = k \implies x^2 - 2xy - y^2 = C$$

---

## 📌 Ejercicio 2: Ecuación Diferencial Homogénea en Forma Diferencial

**Problema:** Resolver la ecuación diferencial:

$$(x^2 - y^2)dx + 3xy \, dy = 0$$

---

### 🧮 Resolución Paso a Paso

#### 1. Despeje de la Derivada $\frac{dy}{dx}$
$$3xy \, dy = (y^2 - x^2)dx \implies \frac{dy}{dx} = \frac{y^2 - x^2}{3xy}$$

#### 2. Cambio de Variable ($y = u x$)
Sustituimos $y = u x$ y $\frac{dy}{dx} = u + x \frac{du}{dx}$:

$$u + x \frac{du}{dx} = \frac{(ux)^2 - x^2}{3x(ux)} = \frac{u^2 x^2 - x^2}{3u x^2}$$

Factorizando $x^2$:

$$u + x \frac{du}{dx} = \frac{x^2 (u^2 - 1)}{x^2 (3u)} = \frac{u^2 - 1}{3u}$$

#### 3. Separación de Variables
$$x \frac{du}{dx} = \frac{u^2 - 1}{3u} - u = \frac{u^2 - 1 - 3u^2}{3u} = \frac{-2u^2 - 1}{3u}$$

Reorganizando las variables:

$$\frac{3u}{-2u^2 - 1} \, du = \frac{dx}{x}$$

#### 4. Integración de Ambos Miembros
$$\int \frac{3u}{-2u^2 - 1} \, du = \int \frac{dx}{x}$$

**Cálculo auxiliar por sustitución:**
* Sea $t = -2u^2 - 1$
* $dt = -4u \, du \implies u \, du = -\frac{dt}{4}$

$$3 \int \frac{1}{t} \left( -\frac{dt}{4} \right) = -\frac{3}{4} \int \frac{dt}{t} = -\frac{3}{4} \ln|t| = -\frac{3}{4} \ln|-2u^2 - 1|$$

Como $-2u^2 - 1 = -(2u^2 + 1)$, se tiene $|-2u^2 - 1| = 2u^2 + 1$:

$$-\frac{3}{4} \ln(2u^2 + 1) = \ln|x| + C_1$$

#### 5. Exponenciación y Solución
$$\ln \left( (2u^2 + 1)^{-3/4} \right) = \ln|x| + C_1$$

$$(2u^2 + 1)^{-3/4} = k \cdot x$$

#### 6. Retorno a las Variables Originales ($u = \frac{y}{x}$)
$$\left( 2\frac{y^2}{x^2} + 1 \right)^{-3/4} = k \cdot x$$

$$\left( \frac{2y^2 + x^2}{x^2} \right)^{-3/4} = k \cdot x$$

$$\frac{(2y^2 + x^2)^{-3/4}}{x^{-3/2}} = k \cdot x \implies (2y^2 + x^2)^{-3/4} \cdot x^{3/2} = k \cdot x$$

Dividiendo por $x$:

$$(2y^2 + x^2)^{-3/4} \cdot x^{1/2} = k$$

Elevando ambos lados a la potencia $-4/3$:

$$\frac{2y^2 + x^2}{x^{-2/3}} = C \implies x^{2/3}(x^2 + 2y^2) = C$$
