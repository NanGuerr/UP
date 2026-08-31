# 📝 Resolución de Ecuación Diferencial Ordinaria mediante Factor Integrante

**Problema:** Hallar la solución general de la ecuación diferencial:

$$2y \, dx + (x - \sin\sqrt{y}) \, dy = 0$$



## 🔍 Paso 1: Comprobación de la exactitud de la ecuación

Identificamos las funciones $M(x,y)$ y $N(x,y)$ de la forma estándar $M(x,y)dx + N(x,y)dy = 0$:

* **$M(x,y) = 2y$**
* **$N(x,y) = x - \sin\sqrt{y}$**

Calculamos sus derivadas parciales cruzadas:

* $rac{\partial M}{\partial y} = 2$
* $rac{\partial N}{\partial x} = 1$

Como $rac{\partial M}{\partial y} 
eq rac{\partial N}{\partial x}$ (es decir, $2 
eq 1$), **la ecuación diferencial NO es exacta**.



## 🧮 Paso 2: Determinación del factor integrante $\mu$

Analizamos cuál criterio permite hallar un factor integrante dependiente de una sola variable.

### Intento 1: ¿Existe un factor integrante $\mu(x)$?

$$rac{rac{\partial M}{\partial y} - rac{\partial N}{\partial x}}{N} = rac{2 - 1}{x - \sin\sqrt{y}} = rac{1}{x - \sin\sqrt{y}}$$

Esta expresión depende tanto de $x$ como de $y$, por lo que **no existe** un factor integrante que dependa únicamente de $x$.

### Intento 2: ¿Existe un factor integrante $\mu(y)$?

$$rac{rac{\partial N}{\partial x} - rac{\partial M}{\partial y}}{M} = rac{1 - 2}{2y} = -rac{1}{2y}$$

Como el resultado depende únicamente de $y$, definimos $k(y) = -rac{1}{2y}$.

Calculamos el factor integrante $\mu(y)$ resolviendo la ecuación separable $rac{d\mu}{\mu} = k(y) dy$:

$$rac{d\mu}{\mu} = -rac{1}{2y} \, dy$$

$$\int rac{d\mu}{\mu} = \int -rac{1}{2y} \, dy$$

$$\ln|\mu| = -rac{1}{2}\ln|y| + k$$

$$\ln|\mu| = \ln|y|^{-1/2} + k$$

$$\mu(y) = C \cdot y^{-1/2}$$

Tomando la constante $C = 1$, obtenemos el **factor integrante**:

$$\mu(y) = y^{-1/2}$$



## ⚖️ Paso 3: Transformación a una ecuación exacta

Multiplicamos toda la ecuación diferencial original por el factor integrante $\mu(y) = y^{-1/2}$:

$$y^{-1/2} \cdot \left[ 2y \, dx + (x - \sin\sqrt{y}) \, dy 
ight] = 0$$

$$2y^{1/2} \, dx + \left( y^{-1/2}x - y^{-1/2}\sin\sqrt{y} 
ight) \, dy = 0$$

Renombramos las funciones de la nueva ecuación como $P(x,y)$ y $Q(x,y)$:

* **$P(x,y) = 2y^{1/2}$**
* **$Q(x,y) = y^{-1/2}x - y^{-1/2}\sin\sqrt{y}$**

Verificamos la exactitud comprobando las derivadas parciales:

* $rac{\partial P}{\partial y} = 2 \cdot rac{1}{2}y^{-1/2} = y^{-1/2}$
* $rac{\partial Q}{\partial x} = y^{-1/2}$

Como $rac{\partial P}{\partial y} = rac{\partial Q}{\partial x}$, **la nueva ecuación diferencial es exacta**.



## 🎯 Paso 4: Obtención de la función potencial $F(x,y)$

Dado que es exacta, existe una función $F(x,y)$ tal que $rac{\partial F}{\partial x} = P$ y $rac{\partial F}{\partial y} = Q$.

### Integración respecto de $x$:

$$F(x,y) = \int P(x,y) \, dx = \int 2y^{1/2} \, dx$$

$$F(x,y) = 2y^{1/2}x + g(y)$$

### Determinación de $g(y)$:

Derivamos $F(x,y)$ respecto de $y$ e igualamos la expresión a $Q(x,y)$:

$$rac{\partial F}{\partial y} = x \cdot rac{1}{2}y^{-1/2} \cdot 2 + g'(y) = y^{-1/2}x + g'(y)$$

Igualando a $Q(x,y)$:

$$y^{-1/2}x + g'(y) = y^{-1/2}x - y^{-1/2}\sin\sqrt{y}$$

Simplificamos cancelando los términos comunes $y^{-1/2}x$:

$$g'(y) = -y^{-1/2}\sin\sqrt{y}$$

Integramos respecto a $y$ para obtener $g(y)$:

$$g(y) = \int -y^{-1/2}\sin\left(y^{1/2}
ight) \, dy$$

**Cálculo auxiliar por sustitución:**
* Sea $t = y^{1/2} \implies dt = rac{1}{2}y^{-1/2}dy \implies 2dt = y^{-1/2}dy$

$$g(y) = -\int \sin(t) \cdot 2 \, dt = -2 \int \sin(t) \, dt = -2(-\cos(t)) + C_1$$

Sustituyendo $t = y^{1/2}$:

$$g(y) = 2\cos\left(y^{1/2}
ight) + C_1$$



## ✨ Paso 5: Solución General

Reconstruimos la función potencial $F(x,y)$ e igualamos a una constante $C_2$:

$$F(x,y) = 2x y^{1/2} + 2\cos\left(y^{1/2}
ight) + C_1 = C_2$$

Agrupando las constantes $A = C_2 - C_1$, la solución general de la ecuación diferencial es:

$$2x\sqrt{y} + 2\cos\sqrt{y} = A$$
