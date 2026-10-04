# 📐 Actividad Práctica: Ejercicio de Cambio de Variables en la Integral Doble

A continuación, se presenta el paso a paso resolutivo detallado para la actividad práctica **"Ejercicio de cambio de variables"**, basándose en los fundamentos teóricos y metodológicos de los apuntes de la cátedra.

---

## 📋 Consigna de la actividad

Calcular la integral doble:

$$\iint_{D} \frac{y^{2}}{x} \, dA$$

donde $D$ es la región del plano limitada por las curvas:

* $y = x^2$
* $y = \frac{1}{2}x^2$
* $x = y^2$
* $x = \frac{1}{2}y^2$

---

## 🔍 Paso 1: Análisis de las curvas y propuesta del cambio de variables

Para simplificar una región de integración delimitada por curvas con una estructura algebraica común, conviene observar cómo se agrupan los bordes:

Las parábolas verticales se pueden reescribir agrupando las variables:
* $y = x^2 \implies \frac{y}{x^2} = 1$
* $y = \frac{1}{2}x^2 \implies \frac{y}{x^2} = \frac{1}{2}$

Las parábolas horizontales siguen una estructura simétrica:
* $x = y^2 \implies \frac{x}{y^2} = 1$
* $x = \frac{1}{2}y^2 \implies \frac{x}{y^2} = \frac{1}{2}$

Esto sugiere definir el siguiente cambio de variables:

$$u = \frac{y}{x^2}$$

$$v = \frac{x}{y^2}$$

---

## 📊 Paso 2: Determinación de los nuevos límites de integración (Región $S$)

Sustituyendo los límites de las curvas en las nuevas variables, obtenemos los intervalos para el plano $u-v$:

* **Para la variable $u$:** varía entre $\frac{1}{2}$ y $1$, es decir, $\frac{1}{2} \le u \le 1$.
* **Para la variable $v$:** varía entre $\frac{1}{2}$ y $1$, es decir, $\frac{1}{2} \le v \le 1$.

Por lo tanto, la región compleja $D$ en el plano $x-y$ se transforma en un rectángulo $S$ en el plano $u-v$:

$$S = \left[\frac{1}{2}, 1\right] \times \left[\frac{1}{2}, 1\right]$$

---

## 📐 Paso 3: Cálculo del Jacobiano de la transformación

Para evitar despejar explícitamente $x$ e $y$ en función de $u$ y $v$, podemos utilizar la propiedad del Jacobiano inverso vista en la teoría:

$$\frac{\partial(x,y)}{\partial(u,v)} = \left[ \frac{\partial(u,v)}{\partial(x,y)} \right]^{-1}$$

Calculamos las derivadas parciales de $u$ y $v$ respecto a $x$ e $y$:

* $\frac{\partial u}{\partial x} = -\frac{2y}{x^3}$
* $\frac{\partial u}{\partial y} = \frac{1}{x^2}$
* $\frac{\partial v}{\partial x} = \frac{1}{y^2}$
* $\frac{\partial v}{\partial y} = -\frac{2x}{y^3}$

Planteamos el determinante de la matriz jacobiana:

$$\frac{\partial(u,v)}{\partial(x,y)} = \begin{vmatrix} -\frac{2y}{x^3} & \frac{1}{x^2} \\ \frac{1}{y^2} & -\frac{2x}{y^3} \end{vmatrix} = \left(-\frac{2y}{x^3}\right)\left(-\frac{2x}{y^3}\right) - \left(\frac{1}{x^2}\right)\left(\frac{1}{y^2}\right)$$

$$\frac{\partial(u,v)}{\partial(x,y)} = \frac{4}{x^2 y^2} - \frac{1}{x^2 y^2} = \frac{3}{x^2 y^2}$$

Expresamos el resultado en función de $u$ y $v$:
Sabemos que el producto $u \cdot v = \left(\frac{y}{x^2}\right)\left(\frac{x}{y^2}\right) = \frac{1}{xy}$, por lo que $x^2 y^2 = \frac{1}{u^2 v^2}$.
Sustituyendo esto, nos queda:

$$\frac{\partial(u,v)}{\partial(x,y)} = 3 u^2 v^2$$

Obtenemos el Jacobiano de la transformación directa:

$$\left| \frac{\partial(x,y)}{\partial(u,v)} \right| = \frac{1}{3 u^2 v^2}$$

---

## 🔄 Paso 4: Transformación del integrando

La función original a integrar es $\frac{y^2}{x}$.
Como definimos $v = \frac{x}{y^2}$, su inversa nos da directamente el integrando:

$$\frac{y^2}{x} = \frac{1}{v}$$

---

## 🧮 Paso 5: Planteo y resolución de la integral iterada

Aplicando el Teorema del Cambio de Variables, la integral doble sobre la región $D$ se transforma en la integral sobre el rectángulo $S$:

$$\iint_{D} \frac{y^{2}}{x} \, dA = \int_{1/2}^{1} \int_{1/2}^{1} \left( \frac{1}{v} \right) \cdot \left( \frac{1}{3 u^2 v^2} \right) \, du \, dv$$

Agrupando los términos:

$$\iint_{D} \frac{y^{2}}{x} \, dA = \int_{1/2}^{1} \int_{1/2}^{1} \frac{1}{3 u^2 v^3} \, du \, dv = \frac{1}{3} \int_{1/2}^{1} \frac{1}{v^3} \left( \int_{1/2}^{1} u^{-2} \, du \right) \, dv$$

Resolvemos la integral interior respecto a $u$:

$$\int_{1/2}^{1} u^{-2} \, du = \left[ -u^{-1} \right]_{1/2}^{1} = -1 - \left(-\frac{1}{1/2}\right) = -1 + 2 = 1$$

Sustituimos el resultado en la integral exterior respecto a $v$:

$$\frac{1}{3} \int_{1/2}^{1} v^{-3} (1) \, dv = \frac{1}{3} \left[ \frac{v^{-2}}{-2} \right]_{1/2}^{1} = -\frac{1}{6} \left[ \frac{1}{v^2} \right]_{1/2}^{1}$$

Evaluamos en los límites de integración:

$$= -\frac{1}{6} \left( \frac{1}{1^2} - \frac{1}{(1/2)^2} \right) = -\frac{1}{6} (1 - 4) = -\frac{1}{6} (-3) = \frac{3}{6} = \frac{1}{2}$$

---

## ✨ Resultado final

El valor de la integral doble es:

$$\mathbf{\frac{1}{2}}$$
