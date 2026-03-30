
---

# 📝 Resolución de Autoevaluación (Variables Separables)

A continuación, presento la resolución detallada de cada pregunta basándome en los conceptos de **ecuaciones diferenciales de variables separables** estudiados en el material de Zill y los apuntes de la cátedra. 🎓

---

### 🔍 Pregunta 1: Indicar cuáles de las siguientes ecuaciones son de variables separables

Para que una ecuación sea separable, debe poder escribirse en la forma:
$$g(x)dx = h(y)dy \quad \text{o} \quad \frac{dy}{dx} = g(x)h(y)$$

* **a) $(1+xy)dx + (1-xy)dy = 0$** ❌
    * **No es separable.** El término $xy$ está sumado o restado a la unidad y no existe una forma algebraica de factorizarlo como un producto de una función puramente de $x$ por una de $y$.
* **b) $y' = e^{x - \ln x + y}$** ✅
    * **Sí es separable.** Por propiedades de la potenciación:
        $$y' = e^x \cdot e^{-\ln x} \cdot e^y = e^x \cdot \frac{1}{x} \cdot e^y = \left(\frac{e^x}{x}\right) \cdot e^y$$
        Aquí, $f(x) = \frac{e^x}{x}$ y $g(y) = e^y$.
* **c) $(x + xy)dx - ydy = 0$** ✅
    * **Sí es separable.** Podemos factorizar $x$ en el primer término:
        $$x(1 + y)dx - ydy = 0 \implies x \, dx = \frac{y}{1+y} \, dy$$

---

### 📈 Pregunta 2: La curva para la cual la pendiente es proporcional a la ordenada

* **Planteamiento:** "La pendiente en cualquier punto $(x,y)$" se traduce como $y'$. "Proporcional a la ordenada ($y$)" se traduce como $k \cdot y$.
* **Ecuación Diferencial:** $\frac{dy}{dx} = ky$
* **Separación e Integración:**
    1.  $\frac{dy}{y} = k \, dx$
    2.  $\ln|y| = kx + C$
    3.  $y = e^{kx+C} = e^C \cdot e^{kx} = A \cdot e^{kx}$

💡 **Respuesta:** **c) Una familia de funciones exponenciales.**

---

### ⭕ Pregunta 3: Solución general de $y' = -x/y$ (con $C > 0$)

* **Ecuación:** $\frac{dy}{dx} = -\frac{x}{y}$
* **Separación:** $y \, dy = -x \, dx$
* **Integración:**
    $$\int y \, dy = \int -x \, dx \implies \frac{y^2}{2} = -\frac{x^2}{2} + C'$$
* **Resultado:** $\frac{x^2}{2} + \frac{y^2}{2} = C' \implies x^2 + y^2 = 2C'$.
    Llamamos $C = 2C'$ (donde $C > 0$):
    $$x^2 + y^2 = C$$

✨ **Respuesta:** **a) Una familia de circunferencias.** (Centradas en el origen con radio $\sqrt{C}$).

---

### ❓ Pregunta 4: ¿Toda solución de una ED de variables separables es explícita?

**Falso.** ❌

Muchas veces, al integrar, obtenemos una **solución implícita** de la forma $H(y) = G(x) + C$. Por ejemplo, en el ejercicio de la Pregunta 3 ($x^2 + y^2 = C$), la solución es una relación implícita. No siempre es posible o conveniente despejar $y$ para que quede como una función explícita $y = f(x)$.

---

### 📐 Pregunta 5: La parábola $y^2 - 4x = 5$ respecto a $y' = 2/y$

1.  **Verificación de la ED:** Derivamos de forma implícita:
    $$y^2 - 4x = 5 \implies 2y \cdot y' - 4 = 0$$
    $$2y \cdot y' = 4 \implies y' = \frac{4}{2y} = \frac{2}{y}$$
    *La ecuación satisface la ED.* ✅

2.  **Verificación de la condición particular $y(1) = 3$:**
    Sustituimos $x=1$ y $y=3$ en la ecuación de la parábola:
    $$(3)^2 - 4(1) = 9 - 4 = 5$$
    Como $5 = 5$, la curva pasa por el punto $(1,3)$. ✅

🎯 **Respuesta:** **b) Es la solución particular de la ecuación $y' = 2/y$ que verifica $y(1) = 3$.**
*(No es la general porque carece de la constante arbitraria C)*.

---
