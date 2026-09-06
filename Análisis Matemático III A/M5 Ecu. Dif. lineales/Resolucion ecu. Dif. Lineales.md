
### 💡 Cálculo del Factor Integrante $\mu(x) de x.y'+ 2y = e^2x$

Para que el lado izquierdo sea igual a la derivada del producto $\frac{d}{dx}[\mu(x) \cdot y] = \mu(x) \cdot y' + \mu'(x) \cdot y$, igualamos los coeficientes de $y$:

$$\mu'(x) = \frac{2}{x} \cdot \mu(x)$$

Esta es una **ecuación de variables separables**:

$$\frac{d\mu}{dx} = \frac{2}{x} \cdot \mu$$

Separamos variables:

$$\frac{d\mu}{\mu} = \frac{2}{x} \, dx$$

Integramos ambos miembros:

$$\int \frac{d\mu}{\mu} = \int \frac{2}{x} \, dx$$

$$\ln|\mu| = 2\ln|x| + C$$

Aplicando propiedades de los logaritmos:

$$\ln|\mu| = \ln|x|^2 + C$$

Aplicamos la función exponencial a ambos miembros:

$$\mu(x) = x^2 \cdot k$$

Tomando $k = 1$, obtenemos el **factor integrante**:

$$\mu(x) = x^2$$



## 🛠️ 5. Aplicación del Factor Integrante e Integración

Multiplicamos la ecuación normalizada por el factor integrante $\mu(x) = x^2$:

$$x^2 \cdot y' + x^2 \cdot \frac{2}{x} \cdot y = x^2 \cdot \frac{e^{2x}}{x}$$

Simplificando:

$$x^2 \cdot y' + 2x \cdot y = x \cdot e^{2x}$$

El lado izquierdo representa exactamente la derivada del producto $(x^2 \cdot y)$:

$$\frac{d(x^2 \cdot y)}{dx} = x \cdot e^{2x}$$

Separamos variables e integramos:

$$d(x^2 \cdot y) = x \cdot e^{2x} \, dx$$

$$\int d(x^2 \cdot y) = \int x \cdot e^{2x} \, dx$$

$$x^2 \cdot y = \int x \cdot e^{2x} \, dx$$



## 📐 6. Resolución de la Integral por Partes

Calculamos la integral del lado derecho $\int x \cdot e^{2x} \, dx$ utilizando el **método de integración por partes**:

$$\int u \, dv = u \cdot v - \int v \, du$$

Elegimos:
- $u = x \implies du = dx$
- $dv = e^{2x} \, dx \implies v = \frac{e^{2x}}{2}$

Sustituyendo en la fórmula:

$$\int x \cdot e^{2x} \, dx = x \cdot \frac{e^{2x}}{2} - \int \frac{e^{2x}}{2} \, dx$$

$$\int x \cdot e^{2x} \, dx = \frac{x \cdot e^{2x}}{2} - \frac{1}{2} \int e^{2x} \, dx$$

$$\int x \cdot e^{2x} \, dx = \frac{x \cdot e^{2x}}{2} - \frac{1}{2} \cdot \left(\frac{e^{2x}}{2}\right) + C$$

$$\int x \cdot e^{2x} \, dx = \frac{x \cdot e^{2x}}{2} - \frac{1}{4} e^{2x} + C$$



## 🎉 7. Obtención de la Solución General

Sustituimos el resultado de la integral en la ecuación principal:

$$x^2 \cdot y = \frac{x \cdot e^{2x}}{2} - \frac{1}{4} e^{2x} + C$$

Despejamos $y$ multiplicando todo por $\frac{1}{x^2}$:

$$y = \left( \frac{x \cdot e^{2x}}{2} - \frac{1}{4} e^{2x} + C \right) \cdot \frac{1}{x^2}$$

O de forma equivalente expresando término a término:

$$y(x) = \frac{e^{2x}}{2x} - \frac{e^{2x}}{4x^2} + \frac{C}{x^2}$$


🎯 **¡Fin del procedimiento!**
