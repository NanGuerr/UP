# 📝 Resolución de Examen: Geometría de Curvas, Integrales Dobles y De Línea

## 📌 Ejercicio 1: Recta Tangente y Plano Normal a una Curva en $\\mathbb{R}^3$

**Problema:** Sabiendo que la ecuación continua/simétrica de la recta tangente a la curva imagen de $f: D \subset \\mathbb{R} \\rightarrow \\mathbb{R}^3$ en $t_0$ es:

$$\\frac{1 - x}{-2} = \\frac{y - 3}{4} = \\frac{z + 1}{-3}$$

Indicar las respuestas correctas entre las opciones dadas.



### 🧮 Análisis y Resolución

#### 1. Reescritura de la Recta Tangente en Forma Canónica
Reordenamos la primera fracción multiplicando el numerador y denominador por $-1$:

$$\\frac{x - 1}{2} = \\frac{y - 3}{4} = \\frac{z + 1}{-3}$$

De esta ecuación simétrica se identifican directamente:
* **Punto de paso en $t_0$:** $P_0 = f(t_0) = (1, 3, -1)$
* **Vector director (tangente):** $\\mathbf{v} = f'(t_0) = (2, 4, -3)$

#### 2. Ecuación Vectorial de la Recta Tangente
La ecuación vectorial de la recta tangente se expresa como:

$$(x, y, z) = P_0 + \\lambda \\mathbf{v} = (1, 3, -1) + \\lambda (2, 4, -3)$$

* **Evaluación de la Opción B:** Es **FALSA**, la opción B utiliza el vector $(-2, 4, -3)$ que no es colineal a $(2, 4, -3)$.
* **Evaluación de la Opción A:** Es **CORRECTA**.

#### 3. Ecuación del Plano Normal a la Curva
El plano normal en $P_0$ tiene como vector normal al vector tangente $\\mathbf{n} = \\mathbf{v} = (2, 4, -3)$. Su ecuación cartesiana es:

$$2(x - 1) + 4(y - 3) - 3(z - (-1)) = 0$$

$$2x - 2 + 4y - 12 - 3z - 3 = 0 \\implies 2x + 4y - 3z = 17$$

* **Evaluación de la Opción C y D:** Ambas opciones evalúan expresiones con constantes $15$ y $13$. Ninguna de las opciones mostradas coincide exactamente con la ecuación correcta $2x + 4y - 3z = 17$.

#### 4. Vector Tangente Unitario $\\mathbf{T}(t_0)$
Calculamos la norma del vector director $\\mathbf{v} = (2, 4, -3)$:

$$\\|\\mathbf{v}\\| = \\sqrt{2^2 + 4^2 + (-3)^2} = \\sqrt{4 + 16 + 9} = \\sqrt{29}$$

El vector tangente unitario se obtiene normalizando $\\mathbf{v}$ (o $-\\mathbf{v}$):

$$\\mathbf{T}(t_0) = \\left( \\frac{2}{\\sqrt{29}}, \\frac{4}{\\sqrt{29}}, -\\frac{3}{\\sqrt{29}} \\right) \\quad \\text{o} \\quad \\mathbf{T}(t_0) = \\left( -\\frac{2}{\\sqrt{29}}, \\frac{4}{\\sqrt{29}}, -\\frac{3}{\\sqrt{29}} \\right) \\quad (\\text{si } \\mathbf{v} = (-2, 4, -3))$$

* **Evaluación de la Opción E:** Es **CORRECTA** cuando se toma el vector tangente proporcional $(-2, 4, -3)$ dividido por $\\sqrt{29}$.



## 📌 Ejercicio 2: Cambio del Orden de Integración en Integral Doble

**Problema:** Calcular la integral doble invirtiendo el orden de integración:

$$\\int_{0}^{1} \\int_{x^2}^{1} x^3 \\sin(y^3) \\, dy \\, dx$$



### 🧮 Resolución Paso a Paso

#### 1. Cambio de Región a Tipo 2 (Horizontalmente Simple)
La región de integración original está dada por $x^2 \\le y \\le 1$ para $0 \\le x \\le 1$.

Invertimos los límites despejando $x = \\sqrt{y}$:
* $0 \\le x \\le \\sqrt{y}$
* $0 \\le y \\le 1$

#### 2. Reorganización e Integración respecto a $x$
$$\\int_{0}^{1} \\int_{0}^{\\sqrt{y}} x^3 \\sin(y^3) \\, dx \\, dy = \\int_{0}^{1} \\sin(y^3) \\left[ \\frac{x^4}{4} \\right]_{0}^{\\sqrt{y}} dy = \\frac{1}{4} \\int_{0}^{1} y^2 \\sin(y^3) \\, dy$$

#### 3. Integración respecto a $y$ mediante Sustitución
* Sea $t = y^3 \\implies dt = 3y^2 \\, dy \\implies y^2 \\, dy = \\frac{dt}{3}$
* Si $y = 0 \\implies t = 0$
* Si $y = 1 \\implies t = 1$

Reemplazando:

$$\\frac{1}{4} \\int_{0}^{1} \\sin(t) \\cdot \\frac{dt}{3} = \\frac{1}{12} \\left[ -\\cos(t) \\right]_{0}^{1} = \\frac{1}{12} (1 - \\cos(1))$$



## 📌 Ejercicio 3: Cambio de Variables en Integrales Dobles (Jacobiano)

**Problema:** Calcular $\\iint_{D} x \\cdot y \\, dA$ sobre la región $D$:

$$D = \\{ (x,y) \\mid 0 \\le y - x \\le 1, \\, -2 \\le y - 2x \\le 0 \\}$$



### 🧮 Resolución Paso a Paso

#### 1. Transformación de Variables
Definimos:
* $u = y - x \\implies 0 \\le u \\le 1$
* $v = y - 2x \\implies -2 \\le v \\le 0$

Despejando las variables originales:
$$u - v = (y - x) - (y - 2x) = x \\implies x = u - v$$
$$y = u + x = u + (u - v) \\implies y = 2u - v$$

#### 2. Cálculo del Jacobiano $|J|$
$$J = \\begin{vmatrix} \\frac{\\partial x}{\\partial u} & \\frac{\\partial x}{\\partial v} \\\\ \\frac{\\partial y}{\\partial u} & \\frac{\\partial y}{\\partial v} \\end{vmatrix} = \\begin{vmatrix} 1 & -1 \\\\ 2 & -1 \\end{vmatrix} = (1)(-1) - (-1)(2) = 1 \\implies |J| = 1$$

#### 3. Integración en el Plano $uv$
$$\\int_{-2}^{0} \\int_{0}^{1} (u - v)(2u - v) \\cdot 1 \\, du \\, dv = \\int_{-2}^{0} \\int_{0}^{1} (2u^2 - 3uv + v^2) \\, du \\, dv$$

Integrando respecto a $u$:
$$\\int_{0}^{1} (2u^2 - 3uv + v^2) \\, du = \\left[ \\frac{2}{3}u^3 - \\frac{3}{2}vu^2 + v^2 u \\right]_{0}^{1} = \\frac{2}{3} - \\frac{3}{2}v + v^2$$

Integrando respecto a $v$:
$$\\int_{-2}^{0} \\left( \\frac{2}{3} - \\frac{3}{2}v + v^2 \\right) dv = \\left[ \\frac{2}{3}v - \\frac{3}{4}v^2 + \\frac{1}{3}v^3 \\right]_{-2}^{0} = 0 - \\left( -\\frac{4}{3} - 3 - \\frac{8}{3} \\right) = 7$$



## 📌 Ejercicio 4: Longitud de Arco de una Curva Paramétrica

**Problema:** Calcular la longitud de arco $S$ de la curva $r(t) = (t^3, 2t^2, 2)$ para $0 \\le t \\le 1$.



### 🧮 Resolución Paso a Paso

#### 1. Derivada y Norma del Vector Velocidad
* $r'(t) = (3t^2, 4t, 0)$
* $\|r'(t)\| = \\sqrt{(3t^2)^2 + (4t)^2 + 0^2} = \\sqrt{9t^4 + 16t^2} = \\sqrt{t^2(9t^2 + 16)} = t \\sqrt{9t^2 + 16}$

#### 2. Integral para la Longitud de Arco
$$S = \\int_{0}^{1} \\|r'(t)\\| \\, dt = \\int_{0}^{1} t \\sqrt{9t^2 + 16} \\, dt$$

#### 3. Integración por Sustitución
* Sea $w = 9t^2 + 16 \\implies dw = 18t \\, dt \\implies t \\, dt = \\frac{dw}{18}$
* Si $t = 0 \\implies w = 16$
* Si $t = 1 \\implies w = 25$

$$S = \\int_{16}^{25} w^{1/2} \\cdot \\frac{dw}{18} = \\frac{1}{18} \\left[ \\frac{w^{3/2}}{\\frac{3}{2}} \\right]_{16}^{25} = \\frac{1}{27} \\left( 25^{3/2} - 16^{3/2} \\right)$$

Como $25^{3/2} = 5^3 = 125$ y $16^{3/2} = 4^3 = 64$:

$$S = \\frac{1}{27} (125 - 64) = \\frac{61}{27}$$



## 📌 Ejercicio 5: Integral de Línea de un Campo Escalar

**Problema:** Dada la curva $r(t) = (t^3, 2t^2, 2)$ para $0 \\le t \\le 1$ y la función escalar $f(x,y,z) = \left( \\frac{9}{2}y + z^4 \\right)^{-1/2}$, calcular la integral de línea de escalar:

$$\\int_{C} f(x,y,z) \\, ds$$



### 🧮 Resolución Paso a Paso

#### 1. Evaluación de $f$ sobre la Curva Parametrizada
Sustituimos $x = t^3$, $y = 2t^2$, $z = 2$:

$$f(r(t)) = \\left( \\frac{9}{2}(2t^2) + 2^4 \\right)^{-1/2} = (9t^2 + 16)^{-1/2} = \\frac{1}{\\sqrt{9t^2 + 16}}$$

#### 2. Planteamiento de la Integral de Línea
Recordamos que $ds = \\|r'(t)\\| \, dt = t \\sqrt{9t^2 + 16} \\, dt$:

$$\\int_{C} f \\, ds = \\int_{0}^{1} f(r(t)) \\|r'(t)\\| \\, dt = \\int_{0}^{1} \\frac{1}{\\sqrt{9t^2 + 16}} \\cdot t \\sqrt{9t^2 + 16} \\, dt$$

#### 3. Simplificación y Evaluación
Los términos $\\sqrt{9t^2 + 16}$ se cancelan completamente:

$$\\int_{C} f \\, ds = \\int_{0}^{1} t \\, dt = \\left[ \\frac{t^2}{2} \\right]_{0}^{1} = \\frac{1}{2}$$
"""

file_path = '/mnt/data/resolucion_clase_2025_11_03.md'
with open(file_path, 'w', encoding='utf-8') as f:
    f.write(content)

print(f"File generated: [file-tag: {file_path.split('/')[-1]}]")

```

```text
File generated: [file-tag: resolucion_clase_2025_11_03.md]


```

# 📝 Transcripción y Resolución de Examen: Geometría de Curvas, Integrales Dobles y De Línea

Este documento contiene la transcripción completa, corrección de expresiones matemáticas en sintaxis LaTeX y desarrollo paso a paso de los ejercicios del examen de la clase del **3 de noviembre de 2025**.



## 📌 Ejercicio 1: Recta Tangente y Plano Normal a una Curva en $\mathbb{R}^3$

**Problema:** Sabiendo que la ecuación simétrica de la recta tangente a la curva imagen de $f: D \subset \mathbb{R} \rightarrow \mathbb{R}^3$ en $t_0$ es:

$$\frac{1 - x}{-2} = \frac{y - 3}{4} = \frac{z + 1}{-3}$$

Indicar las respuestas correctas entre las opciones planteadas.



### 🧮 Análisis y Resolución

#### 1. Reescritura de la Recta Tangente en Forma Canónica

Reordenamos la primera fracción multiplicando el numerador y el denominador por $-1$:

$$\frac{x - 1}{2} = \frac{y - 3}{4} = \frac{z + 1}{-3}$$

De la ecuación simétrica estándar se identifican:

* **Punto de paso en $t_0$:** $P_0 = f(t_0) = (1, 3, -1)$
* **Vector director (tangente):** $\mathbf{v} = f'(t_0) = (2, 4, -3)$

#### 2. Ecuación Vectorial de la Recta Tangente

La ecuación vectorial de la recta tangente se expresa como:

$$(x, y, z) = P_0 + \lambda \mathbf{v} = (1, 3, -1) + \lambda (2, 4, -3)$$

* **Evaluación de la Opción A:** $(x,y,z) = (1,3,-1) + \lambda(2,4,-3)$ es **CORRECTA**.
* **Evaluación de la Opción B:** $(x,y,z) = (1,3,-1) + \lambda(-2,4,-3)$ es **INCORRECTA**.

#### 3. Ecuación del Plano Normal a la Curva

El plano normal en $P_0$ tiene como vector normal al vector tangente $\mathbf{n} = \mathbf{v} = (2, 4, -3)$. Su ecuación cartesiana se calcula mediante el producto escalar:

$$2(x - 1) + 4(y - 3) - 3(z - (-1)) = 0$$

$$2x - 2 + 4y - 12 - 3z - 3 = 0 \implies 2x + 4y - 3z = 17$$

#### 4. Vector Tangente Unitario $\mathbf{T}(t_0)$

Calculamos la norma del vector director $\mathbf{v} = (2, 4, -3)$:

$$\Vert{}\mathbf{v}\Vert{} = \sqrt{2^2 + 4^2 + (-3)^2} = \sqrt{4 + 16 + 9} = \sqrt{29}$$

El vector tangente unitario se obtiene dividiendo entre su norma:

$$\mathbf{T}(t_0) = \left( \frac{2}{\sqrt{29}}, \frac{4}{\sqrt{29}}, -\frac{3}{\sqrt{29}} \right)$$



## 📌 Ejercicio 2: Cambio del Orden de Integración en Integral Doble

**Problema:** Calcular la integral doble invirtiendo el orden de integración:

$$\int_{0}^{1} \int_{x^2}^{1} x^3 \sin(y^3) \, dy \, dx$$



### 🧮 Resolución Paso a Paso

#### 1. Cambio de Región a Tipo 2 (Horizontalmente Simple)

La región de integración original está acotada por $x^2 \le y \le 1$ para $0 \le x \le 1$.

Despejando $x$ en función de $y$, obtenemos $x = \sqrt{y}$. Los nuevos límites de integración son:

* $0 \le x \le \sqrt{y}$
* $0 \le y \le 1$

#### 2. Reorganización e Integración respecto a $x$

$$\int_{0}^{1} \int_{0}^{\sqrt{y}} x^3 \sin(y^3) \, dx \, dy = \int_{0}^{1} \sin(y^3) \left[ \frac{x^4}{4} \right]_{0}^{\sqrt{y}} dy = \frac{1}{4} \int_{0}^{1} y^2 \sin(y^3) \, dy$$

#### 3. Integración respecto a $y$ mediante Sustitución

* Sea $t = y^3 \implies dt = 3y^2 \, dy \implies y^2 \, dy = \frac{dt}{3}$
* Si $y = 0 \implies t = 0$
* Si $y = 1 \implies t = 1$

Reemplazando en la integral:

$$\frac{1}{4} \int_{0}^{1} \sin(t) \cdot \frac{dt}{3} = \frac{1}{12} \left[ -\cos(t) \right]_{0}^{1} = \frac{1}{12} (1 - \cos(1))$$



## 📌 Ejercicio 3: Cambio de Variables en Integrales Dobles (Jacobiano)

**Problema:** Calcular $\iint_{D} x \cdot y \, dA$ sobre la región $D$:

$$D = \{ (x,y) \mid 0 \le y - x \le 1, \, -2 \le y - 2x \le 0 \}$$



### 🧮 Resolución Paso a Paso

#### 1. Transformación de Variables

Definimos:

* $u = y - x \implies 0 \le u \le 1$
* $v = y - 2x \implies -2 \le v \le 0$

Despejando las variables originales:


$$u - v = (y - x) - (y - 2x) = x \implies x = u - v$$

$$y = u + x = u + (u - v) \implies y = 2u - v$$

#### 2. Cálculo del Jacobiano $\vert{}J\vert{}$

$$J = \begin{vmatrix} \frac{\partial x}{\partial u} & \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial u} & \frac{\partial y}{\partial v} \end{vmatrix} = \begin{vmatrix} 1 & -1 \\ 2 & -1 \end{vmatrix} = (1)(-1) - (-1)(2) = 1 \implies \vert{}J\vert{} = 1$$

#### 3. Integración en el Plano $uv$

$$\int_{-2}^{0} \int_{0}^{1} (u - v)(2u - v) \cdot 1 \, du \, dv = \int_{-2}^{0} \int_{0}^{1} (2u^2 - 3uv + v^2) \, du \, dv$$

Integrando respecto a $u$:


$$\int_{0}^{1} (2u^2 - 3uv + v^2) \, du = \left[ \frac{2}{3}u^3 - \frac{3}{2}vu^2 + v^2 u \right]_{0}^{1} = \frac{2}{3} - \frac{3}{2}v + v^2$$

Integrando respecto a $v$:


$$\int_{-2}^{0} \left( \frac{2}{3} - \frac{3}{2}v + v^2 \right) dv = \left[ \frac{2}{3}v - \frac{3}{4}v^2 + \frac{1}{3}v^3 \right]_{-2}^{0} = 0 - \left( -\frac{4}{3} - 3 - \frac{8}{3} \right) = 7$$



## 📌 Ejercicio 4: Longitud de Arco de una Curva Paramétrica

**Problema:** Calcular la longitud de arco $S$ de la curva $r(t) = (t^3, 2t^2, 2)$ para $0 \le t \le 1$.



### 🧮 Resolución Paso a Paso

#### 1. Derivada y Norma del Vector Velocidad

* $r'(t) = (3t^2, 4t, 0)$
* $\Vert{}r'(t)\Vert{} = \sqrt{(3t^2)^2 + (4t)^2 + 0^2} = \sqrt{9t^4 + 16t^2} = t \sqrt{9t^2 + 16}$

#### 2. Integral para la Longitud de Arco

$$S = \int_{0}^{1} \Vert{}r'(t)\Vert{} \, dt = \int_{0}^{1} t \sqrt{9t^2 + 16} \, dt$$

#### 3. Integración por Sustitución

* Sea $w = 9t^2 + 16 \implies dw = 18t \, dt \implies t \, dt = \frac{dw}{18}$
* Si $t = 0 \implies w = 16$
* Si $t = 1 \implies w = 25$

$$S = \int_{16}^{25} w^{1/2} \cdot \frac{dw}{18} = \frac{1}{18} \left[ \frac{w^{3/2}}{\frac{3}{2}} \right]_{16}^{25} = \frac{1}{27} \left( 25^{3/2} - 16^{3/2} \right)$$

Dado que $25^{3/2} = 125$ y $16^{3/2} = 64$:

$$S = \frac{1}{27} (125 - 64) = \frac{61}{27}$$



## 📌 Ejercicio 5: Integral de Línea de un Campo Escalar

**Problema:** Dada la curva $r(t) = (t^3, 2t^2, 2)$ para $0 \le t \le 1$ y la función escalar $f(x,y,z) = \left( \frac{9}{2}y + z^4 \right)^{-1/2}$, calcular la integral de línea:

$$\int_{C} f(x,y,z) \, ds$$



### 🧮 Resolución Paso a Paso

#### 1. Evaluación de $f$ sobre la Curva Parametrizada

Sustituimos las componentes $x = t^3$, $y = 2t^2$, $z = 2$:

$$f(r(t)) = \left( \frac{9}{2}(2t^2) + 2^4 \right)^{-1/2} = (9t^2 + 16)^{-1/2} = \frac{1}{\sqrt{9t^2 + 16}}$$

#### 2. Planteamiento de la Integral de Línea

Recordando que $ds = \Vert{}r'(t)\Vert{} \, dt = t \sqrt{9t^2 + 16} \, dt$:

$$\int_{C} f \, ds = \int_{0}^{1} f(r(t)) \Vert{}r'(t)\Vert{} \, dt = \int_{0}^{1} \frac{1}{\sqrt{9t^2 + 16}} \cdot t \sqrt{9t^2 + 16} \, dt$$

#### 3. Simplificación y Evaluación

Cancelando el término $\sqrt{9t^2 + 16}$:

$$\int_{C} f \, ds = \int_{0}^{1} t \, dt = \left[ \frac{t^2}{2} \right]_{0}^{1} = \frac{1}{2}$$
