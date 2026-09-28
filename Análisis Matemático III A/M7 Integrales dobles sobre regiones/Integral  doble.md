
$$\int_{\frac{1}{2}x^2}^{x^2} \left( \int_{\frac{1}{2}y^2}^{y^2} \frac{y^2}{x} \, dx \right) dy$$

---

### Paso 1: Resolver la integral interior

La parte circulada en azul es:

$$\int_{\frac{1}{2}y^2}^{y^2} \frac{y^2}{x} \, dx$$

Como integramos con respecto a $x$, tratamos a $y$ (y por tanto a $y^2$) como una constante. Podemos sacar el $y^2$ fuera de la integral:

$$y^2 \int_{\frac{1}{2}y^2}^{y^2} \frac{1}{x} \, dx$$

La antiderivada de $\frac{1}{x}$ es $\ln\vert{}x\vert{}$. Evaluamos desde el límite inferior $\frac{1}{2}y^2$ hasta el límite superior $y^2$:

$$y^2 \left[ \ln\vert{}x\vert{} \right]_{\frac{1}{2}y^2}^{y^2} = y^2 \left( \ln(y^2) - \ln\left(\frac{1}{2}y^2\right)  \right)$$

Usando las propiedades de los logaritmos ($$\ln(A) - \ln(B) = \ln\left(\frac{A}{B}\right)$$):

$$\ln\left(\frac{y^2}{\frac{1}{2}y^2}\right) = \ln(2)$$

Por lo tanto, el resultado de la integral interior es:

$$y^2 \ln(2)$$

---

### Paso 2: Resolver la integral exterior

Ahora sustituimos este resultado en la integral exterior:

$$\int_{\frac{1}{2}x^2}^{x^2} y^2 \ln(2) \, dy$$

Como estamos integrando con respecto a $y$, $\ln(2)$ es una constante y sale de la integral:

$$\ln(2) \int_{\frac{1}{2}x^2}^{x^2} y^2 \, dy$$

Calculamos la integral de $y^2$:

$$\int y^2 \, dy = \frac{y^3}{3}$$

Evaluamos desde $y = \frac{1}{2}x^2$ hasta $y = x^2$:

$$\ln(2) \left[ \frac{y^3}{3} \right]_{\frac{1}{2}x^2}^{x^2} = \ln(2) \left( \frac{(x^2)^3}{3} - \frac{(\frac{1}{2}x^2)^3}{3} \right)$$

Simplificamos los términos:

$$(x^2)^3 = x^6$$

$$\left(\frac{1}{2}x^2\right)^3 = \frac{1}{8}x^6$$

Sustituyendo esto de vuelta:

$$\ln(2) \left( \frac{x^6}{3} - \frac{\frac{1}{8}x^6}{3} \right) = \ln(2) \left( \frac{x^6}{3} - \frac{x^6}{24} \right)$$

Encontramos un denominador común (24):

$$\frac{8x^6}{24} - \frac{x^6}{24} = \frac{7x^6}{24}$$

---

### Resultado Final

$$\frac{7\ln(2)}{24} x^6$$
