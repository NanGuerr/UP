# 📘 Funciones de Variable Compleja y Transformaciones

> **Resumen Ejecutivo**: El estudio de las funciones de variable compleja amplía los conceptos del cálculo real al plano complejo $\mathbb{C}$, permitiendo analizar relaciones geométricas y algebraicas de mayor dimensionalidad. A diferencia de las funciones reales definidas en $\mathbb{R}$, una función compleja representa una regla de asignación entre dos planos bidimensionales (el plano del dominio $z$ y el plano de la imagen $w$).



## 🌐 1. Fundamentos del Plano Complejo y Funciones de Variable Compleja

### 1.1 Estructura del Plano Complejo
Un número complejo $z$ se expresa mediante dos componentes reales $x, y \in \mathbb{R}$:
* **Forma Binomial**: $z = x + iy$, donde $x = \text{Re}(z)$ es la parte real, $y = \text{Im}(z)$ es la parte imaginaria, e $i$ es la unidad imaginaria definida por $i^2 = -1$.
* **Conjugado**: $\bar{z} = x - iy$.
* **Forma Trigonométrica y Polar**: $z = |z| e^{i \arg(z)} = |z| (\cos(\arg z) + i \sin(\arg z))$.
* **Módulo**: $|z| = \sqrt{x^2 + y^2}$, representando la distancia al origen.
* **Argumento**: Ángulo de rotación respecto al semieje real positivo $x \ge 0$, definido por $\cos(\arg z) = \frac{x}{|z|}$ y $\sin(\arg z) = \frac{y}{|z|}$. Se considera típicamente en el intervalo $0 \le \arg(z) < 2\pi$ o en su valor principal $\Theta \in (-\pi, \pi]$.
* **Periodicidad**: $\arg(z) = \arg(z) + 2k\pi$ para todo $k \in \mathbb{Z}$.

### 1.2 Operaciones Fundamentales en Forma Binomial y Trigonométrica

| Operación | Forma Binomial / Propiedad | Forma Trigonométrica / Mapeo Polar |
| :--- | :--- | :--- |
| **Suma** | $z_1 + z_2 = (x_1 + x_2) + i(y_1 + y_2)$ | Interpretación vectorial en $\mathbb{R}^2$ |
| **Producto** | $z_1 \cdot z_2 = (x_1 x_2 - y_1 y_2) + i(x_1 y_2 + x_2 y_1)$ | Multiplicación de módulos y suma de argumentos |
| **Módulo al Cuadrado** | $z \cdot \bar{z} = |z|^2 = x^2 + y^2$ | No aplica ángulo |
| **Inverso Multiplicativo** | $z^{-1} = \frac{\bar{z}}{|z|^2}$ (para $z \neq 0$) | $|z^{-1}| = |z|^{-1}$, $\arg(z^{-1}) = -\arg(z)$ |
| **Potencia Entera** | Formulación binomial vía binomio de Newton | $z^n = |z|^n e^{i n \arg(z)}$ |



## 📐 2. Definición, Representación y Clases de Funciones Complejas

### 2.1 Definición de Función Compleja
Sea $S \subset \mathbb{C}$ un conjunto de números complejos. Una función de variable compleja $f$ definida en $S$ es una regla de asignación que asigna a cada número $z \in S$ un número complejo $w = f(z)$.

* **Dominio de Definición**: Conjunto $S$. Si no se especifica explícitamente, se asume el conjunto más grande posible donde la regla esté definida.
* **Descomposición en Componentes Reales**: Todo valor $w = f(z)$ para $z = x + iy$ se expresa mediante dos funciones reales de dos variables reales $u(x,y)$ y $v(x,y)$: 
  $$f(z) = u(x,y) + i v(x,y)$$
* **Expresión en Coordenadas Polares**: Usando $z = r e^{i\theta}$: 
  $$f(z) = u(r,\theta) + i v(r,\theta)$$

> Si $v(x,y) = 0$ para todo punto del dominio, $f(z)$ adopta valores puramente reales y se denomina función real de una variable compleja (por ejemplo, $f(z) = |z|^2 = x^2 + y^2 + i0$).

### 2.2 Funciones Polinómicas y Racionales
* **Funciones Polinómicas**: Tienen la forma:
  $$P(z) = a_n z^n + a_{n-1} z^{n-1} + \dots + a_1 z + a_0 \quad (a_n \neq 0)$$
  Su dominio de definición es todo el plano complejo $\mathbb{C}$.
* **Funciones Racionales**: Cocientes de polinomios de la forma:
  $$f(z) = \frac{P(z)}{Q(z)}$$
  Definidas en todos los puntos del plano complejo excepto en aquellos donde el denominador se anula ($Q(z) = 0$).

### 2.3 Teorema Fundamental del Álgebra y Factorización
Todo polinomio complejo $P(z)$ de grado $n \ge 1$ posee exactamente $n$ raíces complejas (contadas con sus respectivas multiplicidades). Esto garantiza que cualquier polinomio siempre se puede factorizar completamente en el dominio complejo:
$$P(z) = a_n (z - z_1)^{\alpha_1} (z - z_2)^{\alpha_2} \dots (z - z_r)^{\alpha_r}$$
Donde $z_1, z_2, \dots, z_r$ son sus raíces complejas distintas y $\alpha_1, \alpha_2, \dots, \alpha_r$ sus respectivas multiplicidades, cumpliéndose que $\sum_{j=1}^r \alpha_j = n$.



## 🌿 3. Funciones Multivaluadas y Ramas de Radicación

### 3.1 Concepto de Función Multivaluada
Una generalización del concepto de función ocurre cuando la regla de asignación asocia más de un valor a cada punto $z$ del dominio. Para efectuar un análisis sistemático, se eligen selecciones univaluadas de valores denominadas ramas.

### 3.2 La Función Raíz Cuadrada ($w = z^{1/2}$)
La ecuación compleja $w^2 = z$ para un número dado $z = |z| e^{i \arg(z)}$ conduce a un sistema analítico de dos ecuaciones:
* $|w|^2 = |z| \implies |w| = \sqrt{|z|}$
* $2 \arg(w) = \arg(z) + 2k\pi \implies \arg(w) = \frac{\arg(z) + 2k\pi}{2}$

Dado que los valores únicos de $\arg(w)$ en el rango fundamental corresponden a $k = 0$ y $k = 1$, existen dos raíces cuadradas únicas y distintas para todo $z \neq 0$:
$$w_1 = \sqrt{|z|} e^{i \frac{\arg(z)}{2}}$$
$$w_2 = \sqrt{|z|} e^{i \frac{\arg(z) + 2\pi}{2}} = \sqrt{|z|} e^{i \left( \frac{\arg(z)}{2} + \pi \right)}$$

> **Regla geométrica**: El módulo de la raíz cuadrada de $z$ es la raíz cuadrada real del módulo de $z$; sus dos posibles argumentos son la mitad del argumento de $z$, o bien dicha mitad desfasada en $180^\circ$ ($\pi$ radianes).

* **Rama Principal de $z^{1/2}$**: Seleccionando el valor principal del argumento $\Theta \in (-\pi, \pi]$ y restringiendo a la raíz positiva $\sqrt{r}$:
  $$f(z) = \sqrt{r} \exp\left(i \frac{\Theta}{2}\right) \quad (r > 0, -\pi < \Theta \le \pi)$$
  Completada con $f(0) = 0$, esta asignación define una función univaluada en todo el plano complejo.

### 3.3 Raíces $n$-ésimas Generales
Para la ecuación $w^n = z$, existen exactamente $n$ soluciones complejas distintas dadas por la fórmula:
$$w_k = \sqrt[n]{|z|} \exp\left( i \frac{\arg(z) + 2k\pi}{n} \right) \quad \text{para } k = 0, 1, 2, \dots, n-1$$
Geométricamente, las $n$ raíces se sitúan sobre una circunferencia de radio $\sqrt[n]{|z|}$ centrada en el origen y constituyen los vértices de un polígono regular de $n$ lados.



## 🗺️ 4. Concepto de Transformación (Mapeo) Geométrico
Debido a que no se puede graficar una función compleja $w = f(z)$ en un sistema cartesiano convencional de ejes reales (al requerir 4 dimensiones vectoriales $\mathbb{R}^4$), las propiedades geométricas se representan analizando cómo puntos, curvas o regiones del plano $z$ ($xy$) se transforman en sus correspondientes imágenes del plano $w$ ($uv$).

* **Punto Imagen**: $w = f(z)$.
* **Imagen Inversa**: Conjunto de todos los puntos $z$ en el dominio cuya imagen es un $w$ determinado.
* **Transformaciones Elementales**:
  * **Traslación**: $w = z + 1 = (x+1) + iy$ desplaza el plano una unidad hacia la derecha.
  * **Rotación**: $w = iz = r \exp\left(i\left(\theta + \frac{\pi}{2}\right)\right)$ gira el vector posición no nulo un ángulo recto ($90^\circ$) en sentido antihorario respecto al origen.
  * **Reflexión**: $w = \bar{z} = x - iy$ refleja cada punto con respecto al eje real.



## 🔄 5. Análisis Detallado de Transformaciones Específicas

### 5.1 Transformación Potencia $w = z^2$
* **Descomposición Cartesiana**: 
  $$u(x,y) = x^2 - y^2, \quad v(x,y) = 2xy$$
* **Mapeo de Hipérbolas**:
  * Hipérbolas $x^2 - y^2 = c_1$ ($c_1 > 0$): Se transforman de forma biyectiva en la recta vertical $u = c_1$ en el plano $w$.
  * Hipérbolas $2xy = c_2$ ($c_2 > 0$): Se transforman en la recta horizontal $v = c_2$ en el plano $w$.
* **Descomposición Polar**:
  $$w = z^2 \implies \rho e^{i\phi} = r^2 e^{i2\theta} \implies \rho = r^2, \quad \phi = 2\theta + 2k\pi$$
  La imagen de cualquier punto no nulo se obtiene elevando al cuadrado su módulo $|z|$ y duplicando su argumento $\arg(z)$.
* **Generalización $w = z^n$ ($n \ge 2$, entero)**:
  Transforma el plano $z$ en el plano $w$, mapeando cada punto $w \neq 0$ desde $n$ puntos distintos en $z$. La circunferencia $r = r_0$ se transforma en la circunferencia $\rho = r_0^n$.

### 5.2 Transformación Exponencial $w = e^z$
* **Definición y Coordenadas Polares**: 
  $$w = e^z = e^{x + iy} = e^x e^{iy}$$
  Expresado en coordenadas polares en el plano $w$ ($\rho e^{i\phi}$): $\rho = e^x, \quad \phi = y$.

| Elemento en Plano $z$ | Ecuación en $z$ | Imagen en Plano $w$ | Propiedades Geométricas del Mapeo |
| :--- | :--- | :--- | :--- |
| **Recta Vertical** | $x = c_1$ | Circunferencia $\rho = e^{c_1}$ | Mapeo infinito a uno (puntos desfasados por $2\pi$ caen en el mismo punto). |
| **Recta Horizontal** | $y = c_2$ | Rayo semi-infinito $\phi = c_2$ | Mapeo biyectivo que parte desde el origen (sin incluirlo). |
| **Segmento Vertical** | $x = c_1$, $c \le y \le d$ | Arco circular $\rho = e^{c_1}$, $c \le \phi \le d$ | Biyectivo si $d - c < 2\pi$. |
| **Segmento Horizontal** | $a \le x \le b$, $y = c_2$ | Segmento de rayo $e^a \le \rho \le e^b$, $\phi = c_2$ | Recorrido radial hacia afuera al crecer $x$. |



## 💡 6. Compendio de Ejemplos Analíticos Resueltos

* **Ejemplo 1**: Separación de partes $u(x,y)$ y $v(x,y)$ para $f(z) = z^3$
  $$f(z) = (x + iy)^3 = (x^3 - 3xy^2) + i(3x^2y - y^3)$$
  * Parte Real: $u(x,y) = x^3 - 3xy^2$
  * Parte Imaginaria: $v(x,y) = 3x^2y - y^3$

* **Ejemplo 2**: Separación de partes para la función conjugada $f(z) = \bar{z}$
  $$f(x + iy) = x - iy = x + i(-y)$$
  * Parte Real: $u(x,y) = x$
  * Parte Imaginaria: $v(x,y) = -y$

* **Ejemplo 3**: Cálculo analítico de raíces cuadradas ($w^2 = z$)
  * **Caso a ($z = 2 + 2i$)**: Módulo $|z| = 2\sqrt{2}$, argumento $\frac{\pi}{4}$. Soluciones: $w_1 = \sqrt[4]{8} e^{i \frac{\pi}{8}}$, $w_2 = \sqrt[4]{8} e^{i \frac{9\pi}{8}}$.
  * **Caso b ($z = 5i$)**: Módulo $|z| = 5$, argumento $\frac{\pi}{2}$. Soluciones: $w_1 = \sqrt{5} e^{i \frac{\pi}{4}}$, $w_2 = \sqrt{5} e^{i \frac{5\pi}{4}}$.
  * **Caso c ($z = -9$)**: Módulo $|z| = 9$, argumento $\pi$. Soluciones: $w_1 = 3i$, $w_2 = -3i$.

* **Método Cartesiano/Binomial para Raíz Cuadrada**: Para resolver $w^2 = z$ con $z = a + ib$ y $w = x + iy$, se resuelve el sistema:
  $$\begin{cases} x^2 - y^2 = a \\ 2xy = b \end{cases}$$
