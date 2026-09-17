# 📊 Definición de Integral Doble



## 🎬 Transcripción del Video

Considere la función $f(x, y)$ definida en el rectángulo $Q$, igual al producto cartesiano del intervalo $[a, b]$ con el intervalo $[c, d]$.
$$Q = [a, b] \times [c, d]$$


El rectángulo $Q$ se particiona en $m \times n$ subrectángulos más pequeños. El producto cartesiano de los subintervalos $\Delta x_i$ por $\Delta y_j$ determina el subrectángulo $A_{ij}$. Se denota como norma de $A_{ij}$ ($\Vert{}A_{ij}\Vert{}$) el área del subrectángulo que se halla en la fila $i$ y la columna $j$ de la partición.

Se construye el prisma de la posición $(i, j)$ tomando como altura la imagen de un punto $(x_i, y_j)$ que pertenece al subrectángulo $A_{ij}$. Así, la altura del prisma es $f(x_i, y_j)$.

Se construyen los prismas para cada uno de los $m \times n$ subrectángulos. Cuando se suman los volúmenes de los prismas, se obtiene una aproximación del volumen de la figura:
$$\text{Volumen} \approx \sum_{i=1}^m \sum_{j=1}^n f(x_i, y_j) \Vert{}A_{ij}\Vert{}$$


Un refinamiento de la partición proporciona una mejor aproximación. La integral doble es el límite de la suma cuando la norma de la partición tiende a cero:
$$\iint_Q f(x, y) \, dx \, dy = \lim_{\Vert{}A_{ij}\Vert{} \to 0} \sum_{i=1}^m \sum_{j=1}^n f(x_i, y_j) \Vert{}A_{ij}\Vert{}$$


**Área de regiones planas:**
La integral doble se aplica para calcular áreas de regiones planas. La sección de área indica que $y$ varía entre $g(x)$ y $f(x)$, mientras que $x$ varía entre $a$ y $b$:
$$g(x) \le y \le f(x)$$


$$a \le x \le b$$


$$\text{Área} = \int_a^b \int_{g(x)}^{f(x)} \, dy \, dx$$


**Ejemplo:**
Para calcular el área que muestra la figura, se fija un sector de área paralelo al eje $y$. Se tiene que $y$ varía entre $g(x) = x^2 - x$ y $f(x) = x$:
$$x^2 - x \le y \le x$$


Cuando se desplaza el sector dentro de la región, se ve que $x$ varía entre $0$ y $2$:
$$0 \le x \le 2$$


Se plantea la integral para calcular el área:
$$\text{Área} = \int_0^2 \int_{x^2 - x}^x \, dy \, dx$$


Cuando se calculan integrales múltiples, se procede de adentro hacia afuera. Es decir, primero se resuelve la integral para $y$:
$$\int_0^2 \int_{x^2 - x}^x \, dy \, dx = \int_0^2 \left. y \right\vert{}_{x^2 - x}^x \, dx = \int_0^2 \left( x - (x^2 - x) \right) \, dx = \int_0^2 (2x - x^2) \, dx$$


Ahora se procede a integrar respecto a $x$. Integrando $2x$ se obtiene $x^2$, menos la integral de $x^2$ que es $\frac{x^3}{3}$:
$$= \left. \left( x^2 - \frac{x^3}{3} \right) \right\vert{}_0^2$$


Este resultado se evalúa entre $0$ y $2$:
$$= \left( 2^2 - \frac{2^3}{3} \right) - 0 = 4 - \frac{8}{3} = \frac{12 - 8}{3} = \frac{4}{3}$$





## 📌 Resumen de Fórmulas Corregidas en LaTeX

📐 **Definición de Integral Doble:**


$$\iint_Q f(x, y) \, dx \, dy = \lim_{\Vert{}A_{ij}\Vert{} \to 0} \sum_{i=1}^m \sum_{j=1}^n f(x_i, y_j) \Vert{}A_{ij}\Vert{}$$

📐 **Cálculo de Área de Regiones Planas:**


$$\text{Área} = \int_a^b \int_{g(x)}^{f(x)} \, dy \, dx$$

📐 **Resolución del Ejemplo:**


$$\int_0^2 \int_{x^2 - x}^x \, dy \, dx = \int_0^2 (2x - x^2) \, dx = \left. \left( x^2 - \frac{x^3}{3} \right) \right\vert{}_0^2 = 4 - \frac{8}{3} = \frac{4}{3}$$
