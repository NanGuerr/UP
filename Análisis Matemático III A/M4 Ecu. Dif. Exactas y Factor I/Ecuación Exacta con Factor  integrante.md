# 📝 Resolución de Ecuación Diferencial Exacta

**Problema:** Hallar la solución general de $2ye^{2xy}dx + (2xe^{2xy} + 2y)dy = 0$



## 🔍 Paso 1: Verificamos la condición de simetría
Identificamos $M(x;y)$ y $N(x;y)$ y calculamos sus derivadas parciales:

*   **$M(x;y) = 2ye^{2xy}$** 
    ➡️ *Derivada parcial:* $M'_y(x;y) = 2e^{2xy} + 2ye^{2xy} \cdot 2x$
*   **$N(x;y) = 2xe^{2xy} + 2y$** 
    ➡️ *Derivada parcial:* $N'_x(x;y) = 2e^{2xy} + 2xe^{2xy} \cdot 2y$

✅ Como las derivadas son iguales, se cumple que $\exists F / F'_x = M \land F'_y = N$.



## 🧮 Paso 2: Para hallar $F$ integramos $M$ respecto de $x$
$$F(x;y) = \int M dx = \int 2ye^{2xy} dx$$

**Cálculo de la integral:**
$$\int e^{2xy} dx = \int e^t \frac{dt}{2y} = \frac{1}{2y} \int e^t dt = \frac{1}{2y} e^t$$
*Volver a sustituir:*
$$\frac{1}{2y} \cdot e^{2xy}$$

Multiplicando por el factor $2y$ de nuestra integral original y agregando la función dependiente de $y$, obtenemos:
$$F(x;y) = e^{2xy} + g(y)$$



## ⚖️ Paso 3: Derivamos $F$ respecto de $y$ e igualamos a $N$ para determinar $g(y)$
$$F'_y(x;y) = e^{2xy} \cdot 2x + g'(y) = 2x \cdot e^{2xy} + 2y$$
*(El término de la derecha corresponde a $N$)*

**Simplificamos** cancelando los términos comunes:
$$g'(y) = 2y$$

**Integramos** para hallar $g(y)$:
$$g(y) = y^2 + C_1$$



## 🎯 Paso 4: Solución de la ecuación
Sustituimos $g(y)$ en nuestra función $F$ y la igualamos a una constante $C_2$:
$$F(x;y) = e^{2xy} + y^2 + C_1 = C_2$$

Agrupamos las constantes:
$$F(x;y) = e^{2xy} + y^2 = C_2 - C_1$$

Llamando $C$ a la resta de $(C_2 - C_1)$, llegamos al resultado final:
✨ **$F(x;y) = e^{2xy} + y^2 = C$**
