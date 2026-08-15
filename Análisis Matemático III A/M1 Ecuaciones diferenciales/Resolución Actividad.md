# 🧮 Resolución Paso a Paso: Ecuación Diferencial de Variables Separables 📐

Para hallar la solución general de la ecuación diferencial dada, se aplica el método de separación de variables integrando cada miembro. 📝

---

### 🔀 Paso 1: Separación de variables

Dada la ecuación diferencial:

$$x \cdot y^2 dx + (y + x^2 y) dy = 0$$

1. **Factorizamos** $y$ en el segundo término 🔍:

$$x \cdot y^2 dx + y(1 + x^2) dy = 0$$

2. **Reordenamos** los términos despejando el diferencial de $y$ 🔄:

$$y(1 + x^2) dy = -x \cdot y^2 dx$$

3. **Dividimos** ambos miembros entre $y^2 (1 + x^2)$ para agrupar $y$ a la izquierda y $x$ a la derecha ⚖️:

$$\frac{y}{y^2} dy = -\frac{x}{1 + x^2} dx$$

$$\frac{1}{y} dy = -\frac{x}{1 + x^2} dx$$

---

### ♾️ Paso 2: Integración de ambos miembros

Planteamos las integrales correspondientes a cada lado de la igualdad ✍️:

$$\int \frac{1}{y} dy = -\int \frac{x}{1 + x^2} dx$$

* **Integral del miembro izquierdo** ($\int \frac{1}{y} dy$) 👈:

$$\int \frac{1}{y} dy = \ln\vert{}y\vert{}$$

*(por tabla: $\int \frac{1}{x} dx = \ln\vert{}x\vert{}$)* 📑

* **Integral del miembro derecho** ($-\int \frac{x}{1 + x^2} dx$) 👉:

Se puede resolver mediante la sustitución $u = 1 + x^2$ 🛠️:

$$du = 2x \, dx \implies x \, dx = \frac{du}{2}$$

Sustituyendo en la integral 🔄:

$$\int \frac{x}{1 + x^2} dx = \int \frac{1}{u} \cdot \frac{du}{2} = \frac{1}{2} \int \frac{1}{u} du = \frac{1}{2} \ln\vert{}u\vert{} = \frac{1}{2} \ln(1 + x^2)$$

*(por tabla: $\int \frac{x}{a^2 + x^2} dx = \frac{1}{2} \ln(a^2 + x^2)$)* 📑

**Igualando** los resultados de ambas integraciones e incluyendo la constante de integración $C$ ➕:

$$\ln\vert{}y\vert{} = -\frac{1}{2} \ln(1 + x^2) + C$$

---

### 🔓 Paso 3: Despeje de la variable $y$

1. **Aplicamos la propiedad de los logaritmos** $r \cdot \ln(a) = \ln(a^r)$ en el lado derecho 📐:

$$\ln\vert{}y\vert{} = \ln\left((1 + x^2)^{-\frac{1}{2}}\right) + C$$

2. **Aplicamos la función exponencial** en ambos miembros de la ecuación 📈:

$$e^{\ln\vert{}y\vert{}} = e^{\ln\left((1 + x^2)^{-\frac{1}{2}}\right) + C}$$

3. **Usamos la propiedad de los exponentes** $e^{A+B} = e^A \cdot e^B$ y la propiedad $e^{\ln(z)} = z$ 💡:

$$\vert{}y\vert{} = e^{\ln\left((1 + x^2)^{-\frac{1}{2}}\right)} \cdot e^C$$

$$\vert{}y\vert{} = (1 + x^2)^{-\frac{1}{2}} \cdot e^C$$

4. **Definiendo la constante arbitraria** $K = \pm e^C$ (donde $K \in \mathbb{R}$) para eliminar el valor absoluto, obtenemos la solución explícita 🎯:

$$y = K \cdot (1 + x^2)^{-\frac{1}{2}}$$

O expresada en forma de raíz ✨:

$$y = \frac{K}{\sqrt{1 + x^2}}$$
