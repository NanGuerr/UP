# 📝 Resolución de Ecuación Diferencial Exacta

**Problema:** Hallar la solución general de $2ye^{2xy}dx + (2xe^{2xy} + 2y)dy = 0$

---

## 🔍 Paso 1: Verificamos la condición de simetría
Identificamos $M(x;y)$ y $N(x;y)$ y calculamos sus derivadas parciales para comprobar si la ecuación es exacta:

*   **$M(x;y) = 2ye^{2xy}$** 
    ➡️ *Derivada parcial respecto a y:* $M'_y(x;y) = 2e^{2xy} + 2ye^{2xy} \cdot 2x$
*   **$N(x;y) = 2xe^{2xy} + 2y$** 
    ➡️ *Derivada parcial respecto a x:* $N'_x(x;y) = 2e^{2xy} + 2xe^{2xy} \cdot 2y$

✅ Como $M'_y = N'_x$, se cumple la condición de simetría. Por lo tanto, existe una función $F$ tal que $F'_x = M \land F'_y = N$.

---

## 🧮 Paso 2: Para hallar $F$ integramos $M$ respecto de $x$
Planteamos la integral de $M$:
$$F(x;y) = \int M dx = \int 2ye^{2xy} dx$$

**Cálculo auxiliar de la integral:**
Para calcular $\int e^{2xy} dx$, tomamos una sustitución donde $t = 2xy \implies dt = 2y dx \implies dx = \frac{dt}{2y}$:
$$\int e^{2xy} dx = \int e^t \frac{dt}{2y} = \frac{1}{2y} \int e^t dt = \frac{1}{2y} e^t$$

Al volver a sustituir la variable $t$:
$$\frac{1}{2y} \cdot e^{2xy}$$

Multiplicando el resultado por el factor $2y$ original de nuestra $M$, obtenemos la función potencial más una función $g(y)$ que actúa como constante de integración respecto a $x$:
$$F(x;y) = e^{2xy} + g(y)$$

---

## ⚖️ Paso 3: Derivamos $F$ respecto de $y$ e igualamos a $N$ para determinar $g(y)$
Derivamos nuestra función $F$ hallada en el paso anterior respecto de $y$:
$$F'_y(x;y) = e^{2xy} \cdot 2x + g'(y)$$

Igualamos este resultado a $N$:
$$e^{2xy} \cdot 2x + g'(y) = 2x \cdot e^{2xy} + 2y$$

**Simplificamos** cancelando los términos comunes ($2x \cdot e^{2xy}$) en ambos lados:
$$g'(y) = 2y$$

**Integramos** respecto de $y$ para hallar la función $g(y)$:
$$g(y) = y^2 + C_1$$

---

## 🎯 Paso 4: Solución de la ecuación
Reconstruimos $F(x;y)$ sustituyendo el valor de $g(y)$ encontrado y lo igualamos a una constante general $C_2$:
$$F(x;y) = e^{2xy} + y^2 + C_1 = C_2$$

Agrupamos las constantes del lado derecho de la igualdad:
$$F(x;y) = e^{2xy} + y^2 = C_2 - C_1$$

Llamamos $C$ a la constante resultante de $(C_2 - C_1)$:
$$F(x;y) = e^{2xy} + y^2 = C$$

✨ **Solución final:**
$$e^{2xy} + y^2 = C$$
