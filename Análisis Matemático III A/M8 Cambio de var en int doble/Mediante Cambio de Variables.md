# 📊 Integral Doble Mediante Cambio de Variables 📐

Este documento detalla paso a paso la resolución de una integral doble utilizando un cambio de coordenadas (transformación de variables) y el cálculo del Jacobiano a partir de las regiones gráficas y analíticas dadas.

---

## 🧮 1. Planteamiento del Problema

Dada la integral doble sobre la región $R$:

$$ \iint_{R} \left( x + y \right)^{2} e^{x - y} \, dx \, dy $$

Con las siguientes restricciones que delimitan la región $R$ en el plano cartesiano:
* $\text{Línea } a: x + y = 1$
* $\text{Línea } b: x + y = 4$
* $\text{Línea } c: x - y = -1$
* $\text{Línea } d: x - y = 1$

---

## 🔄 2. Cambio de Variable y Transformación

Para simplificar el integrando exponencial y algebraico, definimos la siguiente transformación de variables:

1. $u = x + y$
2. $v = x - y$

### Despeje de las variables originales $x$ e $y$:
* Sumando ambas ecuaciones:
  $$ u + v = 2x \implies x = \frac{u + v}{2} $$
* Restando ambas ecuaciones:
  $$ u - v = 2y \implies y = \frac{u - v}{2} $$

### Nuevos límites de integración en el plano $uv$:
* De $x + y = 1 \implies u = 1$
* De $x + y = 4 \implies u = 4$
* De $x - y = -1 \implies v = -1$
* De $x - y = 1 \implies v = 1$

Por lo tanto, la región transformada $R^{*}$ corresponde a un rectángulo definido en los intervalos $1 \le u \le 4$ y $-1 \le v \le 1$.

---

## ⚙️ 3. Cálculo del Jacobiano

El Jacobiano de la transformación de las coordenadas $(x, y)$ a $(u, v)$ se calcula mediante el determinante de la matriz de derivadas parciales:

$$ \frac{\partial(x, y)}{\partial(u, v)} = \begin{vmatrix} \frac{\partial x}{\partial u} & \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial u} & \frac{\partial y}{\partial v} \end{vmatrix} = \begin{vmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & -\frac{1}{2} \end{vmatrix} $$

Resolviendo el determinante:

$$ \frac{\partial(x, y)}{\partial(u, v)} = \left( \frac{1}{2} \right) \left( -\frac{1}{2} \right) - \left( \frac{1}{2} \right) \left( \frac{1}{2} \right) = -\frac{1}{4} - \frac{1}{4} = -\frac{2}{4} = -\frac{1}{2} $$

Tomando el valor absoluto del Jacobiano para aplicarlo en la integral:

$$ \left| \frac{\partial(x, y)}{\partial(u, v)} \right| = \left| -\frac{1}{2} \right| = \frac{1}{2} $$

---

## 📐 4. Planteamiento de la Integral en el Plano $uv$

Sustituyendo el integrando, el Jacobiano y los nuevos límites en la fórmula de cambio de variable:

$$ \iint_{R^{*}} f(u, v) \left| \frac{\partial(x, y)}{\partial(u, v)} \right| \, du \, dv = \int_{-1}^{1} \int_{1}^{4} u^{2} e^{v} \left( \frac{1}{2} \right) \, du \, dv $$

Expresado como integral iterada:

$$ \int_{-1}^{1} \left[ \int_{1}^{4} \frac{1}{2} u^{2} e^{v} \, du \right] \, dv $$

---

## 🧮 5. Resolución de las Integrales Iteradas

### Paso A: Integración respecto a $u$
Evaluamos la integral interior:

$$ \int_{1}^{4} \frac{1}{2} u^{2} e^{v} \, du = \frac{1}{2} e^{v} \left[ \frac{u^{3}}{3} \right]_{1}^{4} $$

Evaluando en los límites de integración:

$$ = \frac{1}{6} e^{v} \left[ 4^{3} - 1^{3} \right] = \frac{1}{6} e^{v} \left( 64 - 1 \right) = \frac{1}{6} e^{v} \cdot 63 = \frac{21}{2} e^{v} $$

### Paso B: Integración respecto a $v$
Sustituimos el resultado anterior en la integral exterior:

$$ \int_{-1}^{1} \frac{21}{2} e^{v} \, dv = \frac{21}{2} e^{v} \Big|_{-1}^{1} $$

Evaluando en los límites superior e inferior:

$$ = \frac{21}{2} \left[ e^{1} - e^{-1} \right] = \frac{21}{2} \left( e - \frac{1}{e} \right) $$

---

## ✅ 6. Resultado Final

El valor exacto de la integral doble es:

$$ \frac{21}{2} \left( e - \frac{1}{e} \right) $$
