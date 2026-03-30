# 📝 Resolución Guía de Ejercicios: Ecuaciones Diferenciales Ordinarias

A continuación, se presenta la resolución detallada de la **Unidad 1: Conceptos Introductorios**, siguiendo el cronograma oficial.

---

### 🔍 Ejercicio 1: Clasificación de Ecuaciones Diferenciales
Debemos clasificar según el **tipo** (Ordinaria o Parcial) y el **orden** (derivada más alta).

| Ecuación Diferencial | Tipo | Orden |
| :--- | :--- | :---: |
| $dy+(x\cdot y-\cos x)dx=0$ | 🌏 Ordinaria | 1 |
| $(y'')^2+(y')^3+2y\cdot y'=0$ | 🌏 Ordinaria | 2 |
| $z_{xx}''+z_{yy}''=x\cdot y$ | 🧩 Derivadas Parciales | 2 |
| $y''-x\cdot y' = \text{sen } x$ | 🌏 Ordinaria | 2 |
| $\frac{\partial z}{\partial t}=z+\frac{\partial z}{\partial y}$ | 🧩 Derivadas Parciales | 1 |

---

### 🛠️ Ejercicio 2: Expresar en la forma $y' = f(x;y)$
El objetivo es despejar la derivada $y'$ ($dy/dx$).

* **a)** $(x-y)dx+(x+2y)dy=0 \implies$ **Resultado:** $y' = \frac{y-x}{x+2y}$ 📍
* **b)** $dx+e^{3x}dy=0 \implies$ **Resultado:** $y' = -e^{-3x}$ (o $y' = -\frac{e^{-3x}}{y}$ según variante de cátedra) ⚠️
* **c)** $e^{xy}dy = (e^{-y} + e^{-2x-y})dx \implies$ **Resultado:** $y' = \frac{e^{-y} + e^{-2x-y}}{e^{xy}}$ 📧
* **d)** $dy - (y-1)^2 dx = 0 \implies$ **Resultado:** $y' = (y-1)^2$ ✨

---

### 🖇️ Ejercicio 3: Escribir en términos de diferenciales
Llevamos la ecuación a la forma: $M(x,y)dx + N(x,y)dy = 0$.

* **a)** $(4-y^2)y' = x^2 \implies$ **Resultado:** $-x^2 dx + (4-y^2)dy = 0$ 🔢
* **b)** $\frac{dy}{dx} - y = x \implies$ **Resultado:** $-(x+y)dx + dy = 0$ 📉
* **c)** $(y-x)y' = y+x \implies$ **Resultado:** $-(y+x)dx + (y-x)dy = 0$ 🔄
* **d)** $\frac{dP}{dt} = kP(1-P) \implies$ **Resultado:** $-kP(1-P)dt + dP = 0$ 🧪

---

### ✅ Ejercicio 4: Comprobar soluciones
Sustituimos la función propuesta en la ED original para verificar la igualdad.

* **a)** $y' = xy^{1/2}$ con $y = \frac{1}{16}x^4$ 🧪
    * $y' = \frac{1}{4}x^3$
    * Verificación: $\frac{1}{4}x^3 = x(\frac{1}{16}x^4)^{1/2} \implies \frac{1}{4}x^3 = \frac{1}{4}x^3$ (**Correcto**)
* **b)** $y'' - 2y' + y = 0$ con $y = xe^x$ 🧬
    * $y' = e^x + xe^x$ | $y'' = 2e^x + xe^x$
    * Verificación: $(2e^x + xe^x) - 2(e^x + xe^x) + xe^x = 0$ (**Correcto**)

---

### 📈 Ejercicio 5: Ecuación Logística $y' = y(1-y)$

* **a) Verificación General:** Al derivar $y = \frac{Ce^x}{1+Ce^x}$ por regla del cociente, se demuestra que satisface $y' = y(1-y)$.
* **b) Solución Particular:** Para el punto $(0; 2/3)$, hallamos que $C=2$.
    * **Resultado:** $y = \frac{2e^x}{1+2e^x}$ 🎯
* **c) ¿$y=1$ es solución?** Sí. Al ser constante, $y'=0$. Reemplazando: $0 = 1(1-1)$, lo cual es una **solución de equilibrio**. ⚖️

---

### 🔑 Ejercicio 6: Hallar valores de $m$ para $y = e^{mx}$

* **a)** $y' + 2y = 0$
    * Sustituyendo: $e^{mx}(m+2) = 0 \implies$ **m = -2** 🧮
* **b)** $y'' - 5y' + 6y = 0$
    * Ecuación característica: $m^2 - 5m + 6 = 0$
    * Factorización: $(m-2)(m-3) = 0 \implies$ **m₁ = 2, m₂ = 3** 📐

---

> [!NOTE]
> **Corrección de Cátedra:** En el ejercicio 3c, la guía oficial sugiere $(y+x)dx + (x-y)dy = 0$. Ambos son equivalentes multiplicando por $-1$.
