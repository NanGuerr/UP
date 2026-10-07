# 📝 Derivadas Complejas y Ecuaciones de Cauchy-Riemann



## ❓ Pregunta 1

**Consigna:** La función $f(x + iy) = (2x^2 - y^2) + i \cdot (x^2 + 4y^2)$:

* A. Es analítica en todo el plano complejo.
* B. Es analítica en el plano complejo sin el origen.
* C. Satisface las ecuaciones de Cauchy-Riemann en todo el plano complejo pero no es analítica en esa región.
* D. No es analítica en ninguna región del plano complejo.

### 🔍 Resolución paso a paso:
1. Identificamos la parte real $u(x,y)$ e imaginaria $v(x,y)$:
   $$u(x,y) = 2x^2 - y^2, \quad v(x,y) = x^2 + 4y^2$$
2. Calculamos las derivadas parciales de primer orden:
   $$u_x = 4x, \quad u_y = -2y$$
   $$v_x = 2x, \quad v_y = 8y$$
3. Planteamos las Ecuaciones de Cauchy-Riemann ($C\text{-}R_1: u_x = v_y$ y $C\text{-}R_2: u_y = -v_x$):
   $$u_x = v_y \implies 4x = 8y \implies x = 2y$$
   $$u_y = -v_x \implies -2y = -2x \implies x = y$$
4. Para que se cumplan ambas en simultáneo, se debe verificar que $2y = y$, lo cual exige que $y = 0$ y por ende $x = 0$. Las ecuaciones de Cauchy-Riemann se satisfacen únicamente en el punto aislado $(0,0)$.
5. Dado que un punto único no constituye una región (conjunto abierto), y aplicando el contrarrecíproco de la parte 1 del teorema de Cauchy-Riemann, $f(z)$ no es analítica en ninguna región del plano complejo.

**✅ Opción correcta:** D. No es analítica en ninguna región del plano complejo.



## ❓ Pregunta 2

**Consigna:** La función $f(z) = z^3$:

* A. Satisface las ecuaciones de Cauchy-Riemann en todo el plano complejo y solo se puede demostrar por teorema.
* B. No satisface las ecuaciones de Cauchy-Riemann en todo el plano complejo.
* C. Satisface las ecuaciones de Cauchy-Riemann en todo el plano complejo y se puede demostrar por teorema y verificando las cuentas.
* D. Satisface las ecuaciones de Cauchy-Riemann en el plano complejo sin el origen.

### 🔍 Resolución paso a paso:
1. **Demostración por teorema:** $f(z) = z^3$ es una función polinómica, por lo que es analítica en todo el plano complejo $\mathbb{C}$. Por la parte 1 del teorema de Cauchy-Riemann, al ser analítica, satisface las ecuaciones de Cauchy-Riemann en todo $\mathbb{C}$.
2. **Demostración verificando las cuentas:**
   Escribiendo $z = x+iy$:
   $$f(x+iy) = (x+iy)^3 = (x^3 - 3xy^2) + i \cdot (3x^2y - y^3)$$
   $$u(x,y) = x^3 - 3xy^2, \quad v(x,y) = 3x^2y - y^3$$
   $$u_x = 3x^2 - 3y^2 \quad \text{y} \quad v_y = 3x^2 - 3y^2 \implies u_x = v_y \text{ para todo } (x,y)$$
   $$u_y = -6xy \quad \text{y} \quad v_x = 6xy \implies u_y = -v_x \text{ para todo } (x,y)$$

**✅ Opción correcta:** C. Satisface las ecuaciones de Cauchy-Riemann en todo el plano complejo y se puede demostrar por teorema y verificando las cuentas.



## ❓ Pregunta 3

**Consigna:** Si $f(z)$ satisface $u_y = -v_x$ en una región, entonces $f(z)$ satisface las ecuaciones de Cauchy-Riemann en esa región.

* Verdadero
* Falso

### 🔍 Resolución paso a paso:
Las ecuaciones de Cauchy-Riemann están compuestas por dos condiciones simultáneas: $C\text{-}R_1: u_x = v_y$ y $C\text{-}R_2: u_y = -v_x$. Si falla una de las dos ecuaciones o solo se especifica el cumplimiento de una sola de ellas, la función no satisface las ecuaciones de Cauchy-Riemann en su totalidad.

**✅ Opción correcta:** Falso.



## ❓ Pregunta 4

**Consigna:** Las funciones polinómicas complejas son analíticas en todo el plano complejo.

* Verdadero
* Falso

### 🔍 Resolución paso a paso:
De acuerdo con la teoría fundamental del análisis complejo, las funciones polinómicas de la forma $p(z) = a_n z^n + a_{n-1} z^{n-1} + \dots + a_0$ son derivables y, por ende, analíticas en todo el plano complejo.

**✅ Opción correcta:** Verdadero.



## ❓ Pregunta 5

**Consigna:** La función $f(x + iy) = (5x) + i \cdot (x^2 - y^2)$:

* A. Es analítica en todo el plano complejo.
* B. Satisface las ecuaciones de Cauchy-Riemann en todo el plano complejo pero no es analítica en esa región.
* C. Es analítica en el plano complejo sin el origen.
* D. No es analítica en ninguna región del plano complejo.

### 🔍 Resolución paso a paso:
1. Componentes: $u(x,y) = 5x$ y $v(x,y) = x^2 - y^2$.
2. Derivadas parciales:
   $$u_x = 5, \quad u_y = 0$$
   $$v_x = 2x, \quad v_y = -2y$$
3. Planteo de Cauchy-Riemann:
   $$u_x = v_y \implies 5 = -2y \implies y = -\frac{5}{2}$$
   $$u_y = -v_x \implies 0 = -2x \implies x = 0$$
4. C-R solo se verifica en el punto aislado $z = -\frac{5}{2}i$. Como un punto no es una región abierta, no satisface C-R en ningún conjunto abierto y por lo tanto no es analítica en ninguna región.

**✅ Opción correcta:** D. No es analítica en ninguna región del plano complejo.



## ❓ Pregunta 6

**Consigna:** La función $f(x + iy) = \left(\frac{x}{x^2+y^2} + x\right) + i \cdot \left(\frac{-y}{x^2+y^2} + y\right)$:

* A. No es analítica en ninguna región del plano complejo.
* B. Satisface las ecuaciones de Cauchy-Riemann en todo el plano complejo pero no es analítica en esa región.
* C. Es analítica en el plano complejo sin el origen.
* D. Es analítica en todo el plano complejo.

### 🔍 Resolución paso a paso:
1. Expresamos la función en variable compleja $z$:
   Dado que $\frac{x - iy}{x^2+y^2} = \frac{\bar{z}}{|z|^2} = \frac{1}{z}$ para $z \neq 0$, la función se reescribe como:
   $$f(z) = \frac{1}{z} + z \quad \text{para } z \neq 0$$
2. Tanto $h(z) = \frac{1}{z}$ como $p(z) = z$ son funciones analíticas en todo el plano salvo en $z = 0$.
3. Verificando las derivadas parciales, se comprueba que $u_x = v_y$ y $u_y = -v_x$ para todo $(x,y) \neq (0,0)$ y sus parciales son continuas (de clase $C^1$) fuera del origen.
4. Por el teorema de Cauchy-Riemann, $f(z)$ es analítica en $\mathbb{C} \setminus \{0\}$.

**✅ Opción correcta:** C. Es analítica en el plano complejo sin el origen.



## ❓ Pregunta 7

**Consigna:** Si $f(z)$ no satisface las ecuaciones de Cauchy-Riemann en una región, entonces $f(z)$ no es analítica en esa región.

* Verdadero
* Falso

### 🔍 Resolución paso a paso:
Por la parte 1 del teorema principal: "Si $f(z)$ es analítica en una región $W$, entonces satisface las ecuaciones de Cauchy-Riemann en $W$". Por el principio del contrarrecíproco, si $f(z)$ no satisface las ecuaciones de Cauchy-Riemann en $W$, entonces $f(z)$ no es analítica en esa región.

**✅ Opción correcta:** Verdadero.



## ❓ Pregunta 8

**Consigna:** Si $f(z)$ satisface las ecuaciones de Cauchy-Riemann en una región, entonces $f(z)$ es analítica en esa región.

* Verdadero
* Falso

### 🔍 Resolución paso a paso:
El mero cumplimiento de las ecuaciones de Cauchy-Riemann no es condición suficiente para garantizar analiticidad. Para asegurar que $f(z)$ sea analítica, se requiere además que las derivadas parciales $u_x, u_y, v_x, v_y$ sean continuas (de clase $C^1$) en esa región. Por lo tanto, la afirmación general es falsa.

**✅ Opción correcta:** Falso.



## ❓ Pregunta 9

**Consigna:** Si $f(z)$ satisface $u_x = v_y$ en una región, entonces $f(z)$ satisface las ecuaciones de Cauchy-Riemann en esa región.

* Verdadero
* Falso

### 🔍 Resolución paso a paso:
De manera idéntica a la Pregunta 3, se requiere el cumplimiento simultáneo de $u_x = v_y$ y $u_y = -v_x$. Satisfacer únicamente la primera ecuación $u_x = v_y$ no implica que la función cumpla con las ecuaciones de Cauchy-Riemann en su totalidad.

**✅ Opción correcta:** Falso.
