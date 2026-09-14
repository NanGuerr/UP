# ✍️ Resolución de Ecuaciones Diferenciales Ordinarias (EDO)

En este apunte se detalla la resolución de una **Ecuación Diferencial Ordinaria Lineal de Primer Orden** mediante el método del **Factor Integrante**.



## 📌 Ecuación Diferencial Original

Se plantea la siguiente ecuación diferencial:

$$x \cdot \frac{dy}{dx} - 4y = x^6 \cdot e^x$$



## 🛠️ Paso 1: Transformación a la Forma Canónica

Para aplicar el método del factor integrante, debemos llevar la ecuación a la forma canónica $y' + P(x)y = Q(x)$. Para ello, dividimos toda la ecuación entre $x$ (asumiendo $x \neq 0$):

$$\frac{dy}{dx} - \frac{4}{x} \cdot y = x^5 \cdot e^x$$

o expresada en notación de prima:

$$y' + \left(-\frac{4}{x}\right) \cdot y = x^5 \cdot e^x$$



## 🔍 Paso 2: Deducción del Factor Integrante $\mu(x)$

Queremos multiplicar toda la ecuación por una función factor integrante $\mu(x)$ para forzar que el miembro izquierdo se convierta exactamente en la derivada del producto $\left[\mu(x) \cdot y\right]'$.

Multiplicamos toda la ecuación por $\mu(x)$:

$$\mu(x) \cdot y' + \mu(x) \cdot \left(-\frac{4}{x}\right) \cdot y = \mu(x) \cdot x^5 \cdot e^x$$

Recordando la regla de la derivada de un producto:

$$\left[\mu(x) \cdot y\right]' = \mu(x) \cdot y' + \mu'(x) \cdot y$$

Igualando el lado izquierdo con la derivada del producto:

$$\mu(x) \cdot y' + \mu'(x) \cdot y = \mu(x) \cdot y' + \mu(x) \cdot \left(-\frac{4}{x}\right) \cdot y$$

Simplificando $\mu(x) \cdot y'$ de ambos miembros, obtenemos la ecuación separable para $\mu(x)$:

$$\mu'(x) = -\frac{4}{x} \cdot \mu(x)$$



## 🧮 Paso 3: Obtención de $\mu(x)$ por Separación de Variables

Escribimos la derivada como $\frac{d\mu}{dx}$:

$$\frac{d\mu}{dx} = -\frac{4}{x} \cdot \mu$$

Separamos las variables e integramos ambos miembros:

$$\frac{d\mu}{\mu} = -\frac{4}{x} \cdot dx$$

$$\int \frac{d\mu}{\mu} = \int -\frac{4}{x} \, dx$$

$$\ln|\mu| = -4 \cdot \ln|x| + C$$

Aplicando propiedades de los logaritmos ($\text{b} \cdot \ln(a) = \ln(a^b)$):

$$\ln|\mu| = \ln\left|x^{-4}\right| + C$$

Aplicamos la función exponencial en ambos miembros para despejar $\mu$:

$$\mu = e^{\ln\left|x^{-4}\right| + C} = e^{\ln\left|x^{-4}\right|} \cdot e^C = A \cdot x^{-4}$$

Tomando la constante $A = 1$, obtenemos el factor integrante:

$$\mu(x) = x^{-4}$$



## 🔄 Paso 4: Reemplazo del Factor Integrante en la EDO

Reemplazamos $\mu(x) = x^{-4}$ en la ecuación diferencial multiplicada:

$$x^{-4} \cdot y' + x^{-4} \cdot \left(-\frac{4}{x}\right) \cdot y = x^{-4} \cdot x^5 \cdot e^x$$

Simplificando los términos algebraicos:

$$x^{-4} \cdot y' - 4x^{-5} \cdot y = x \cdot e^x$$

El lado izquierdo equivale exactamente a la derivada del producto $\left(x^{-4} \cdot y\right)'$:

$$\frac{d}{dx}\left(x^{-4} \cdot y\right) = x \cdot e^x$$



## 🧮 Paso 5: Cálculo Auxiliar — Integración por Partes

Para resolver el miembro derecho $\int x \cdot e^x \, dx$, aplicamos el método de **Integración por Partes**:

$$\int u \, dv = u \cdot v - \int v \, du$$

* **Elección de variables:**
  * $u = x \implies du = dx$
  * $dv = e^x \, dx \implies v = e^x$

* **Desarrollo del cálculo:**

$$\int x \cdot e^x \, dx = x \cdot e^x - \int e^x \, dx = x \cdot e^x - e^x + C$$



## 🎯 Paso 6: Integración Final y Despeje de la Solución $y(x)$

Escribimos la ecuación en forma diferencial e integramos ambos miembros:

$$d\left(x^{-4} \cdot y\right) = x \cdot e^x \, dx$$

$$\int d\left(x^{-4} \cdot y\right) = \int x \cdot e^x \, dx$$

Sustituyendo el resultado del cálculo auxiliar:

$$x^{-4} \cdot y = x \cdot e^x - e^x + C$$

Despejamos $y$ dividiendo por $x^{-4}$ (o multiplicando todo por $x^4$):

$$y = \frac{x \cdot e^x - e^x + C}{x^{-4}}$$

$$y(x) = x^4 \cdot \left(x \cdot e^x - e^x + C\right)$$

$$y(x) = x^5 \cdot e^x - x^4 \cdot e^x + C \cdot x^4$$



## 📋 Resumen de la Solución General

| Concepto | Expresión Matemática |
| :--- | :--- |
| **Ecuación diferencial** | $x \cdot \frac{dy}{dx} - 4y = x^6 \cdot e^x$ |
| **Factor Integrante** | $\mu(x) = x^{-4}$ |
| **Solución General** | $y(x) = x^5 \cdot e^x - x^4 \cdot e^x + C \cdot x^4$ |
