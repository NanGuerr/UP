# 📝 Resolución de Ecuación No Exacta con Factor Integrante

**Problema:** Hallar la solución de la ecuación diferencial:
$$(x^2 + y^2 + x)dx + (xy)dy = 0$$



## 🔍 Paso 1: Verificamos si la ecuación es exacta
Identificamos $M(x,y)$ y $N(x,y)$:
* **$M(x,y) = x^2 + y^2 + x$** * **$N(x,y) = xy$** Calculamos las derivadas parciales:
* $M'_y = 2y$
* $N'_x = y$

❌ Como $M'_y \neq N'_x$, **la ecuación NO es exacta**. 
Por lo tanto, buscamos un **factor integrante** $\mu$.



## 🧮 Paso 2: Calculamos el Factor Integrante $\mu$
Calculamos la expresión para ver si depende solo de $x$:
$$\frac{M'_y - N'_x}{N} = \frac{2y - y}{xy} = \frac{y}{xy} = \frac{1}{x}$$

Como la expresión depende únicamente de $x$, llamamos $p(x) = \frac{1}{x}$.
El factor integrante $\mu(x)$ se calcula como:
$$\mu(x) = e^{\int p(x) dx} = e^{\int \frac{1}{x} dx} = e^{\ln(x)} = x$$

🪄 **Nuestro factor integrante es $\mu = x$**.



## ⚖️ Paso 3: Multiplicamos la ecuación original por $\mu$
Multiplicamos toda la ecuación diferencial por $x$:
$$x(x^2 + y^2 + x)dx + x(xy)dy = 0$$
$$(x^3 + xy^2 + x^2)dx + (x^2y)dy = 0$$

Ahora tenemos una **nueva ecuación**. Verificamos si es exacta con los nuevos $(M^*)$ y $)N^*)$:
* **$M^*(x,y) = x^3 + xy^2 + x^2$** $\implies (M^*)'_y = 2xy$
* **$N^*(x,y) = x^2y$** $\implies (N^*)'_x = 2xy$

✅ Ahora sí $(M^*)'_y = (N^*)'_x$, la ecuación es **exacta**.



## 🎯 Paso 4: Hallamos la función potencial $F(x,y)$
Como es exacta, existe una función $F$ tal que $F'_x = M^*$ y $F'_y = N^*$.

**1. Integramos $N^*$ respecto a $y$** (es más sencillo en este caso):
$$F(x,y) = \int N^* dy = \int x^2y dy$$
$$F(x,y) = x^2 \frac{y^2}{2} + h(x)$$

**2. Derivamos $F$ respecto a $x$ e igualamos a $M^*$ para hallar $h(x)$:**
$$F'_x = 2x \frac{y^2}{2} + h'(x) = xy^2 + h'(x)$$

Igualamos a $M^*$:
$$xy^2 + h'(x) = x^3 + xy^2 + x^2$$

Cancelamos $xy^2$:
$$h'(x) = x^3 + x^2$$

**3. Integramos para hallar $h(x)$:**
$$h(x) = \int (x^3 + x^2) dx = \frac{x^4}{4} + \frac{x^3}{3} + C_1$$



## ✨ Paso 5: Solución General
Sustituimos $h(x)$ en $F(x,y)$ y lo igualamos a una constante $C$:

$$F(x,y) = \frac{x^2y^2}{2} + \frac{x^4}{4} + \frac{x^3}{3} = C$$

¡Esta es la solución general de la ecuación diferencial!
