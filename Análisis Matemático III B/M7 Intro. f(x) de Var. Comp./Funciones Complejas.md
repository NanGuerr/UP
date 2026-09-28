# 📐 Geometría de Funciones Complejas Elementales

¡Bienvenido a este módulo introductorio sobre la geometría de los números y funciones complejas! 🚀



## 🎙️ Transcripción Audio / Visual del Video

*  🎬 *[Pantalla de título]*: **Geometría de funciones complejas elementales** (Universidad de Palermo).
*  ❓ ¿Qué pasa al tratar de calcular la raíz cuadrada de $-1$? Parece que la calculadora tira `ERROR!`.
*  🔢 En el mundo de los números reales, sabemos que ningún número elevado al cuadrado puede ser $-1$:
  $$x^2 \neq -1 \quad \text{para } x \in \mathbb{R}$$
  Sin embargo, en el mundo de los números complejos, este problema se resuelve con el número imaginario $i$:
  $$i^2 = -1$$
*  💡 Hay dos maneras básicas de ver a los números complejos:
  1. **Forma binomial**
  2. **Forma trigonométrica**
*  🔤 **Forma Binomial:** Nos permite expresar un número complejo en términos de sus partes real e imaginaria:
  $$z = x + iy \quad \text{con } x, y \in \mathbb{R}$$
*  📐 **Forma Trigonométrica (o Exponencial):** Nos permite expresar un número complejo en términos de su módulo y su argumento:
  $$z = \vert{}z\vert{} \cdot e^{i \cdot \arg(z)}$$
  * **Módulo ($\vert{}z\vert{}$):** Es la distancia al origen.
  * **Argumento ($\arg(z)$):** Es el ángulo de rotación respecto al semieje real positivo.
*  ✖️ **Multiplicación de Números Complejos:** Al multiplicar dos números complejos, sus módulos se multiplican mientras que sus argumentos se suman:
  $$\vert{}z_1 \cdot z_2\vert{} = \vert{}z_1\vert{} \cdot \vert{}z_2\vert{}$$
  $$\arg(z_1 \cdot z_2) = \theta_1 + \theta_2$$
  Como los argumentos son ángulos entre $0$ y $2\pi$, si nos pasamos de este último valor, restando $2\pi$ obtenemos el mismo ángulo.
* 🔄 Esta idea permite definir funciones de variable compleja:
  $$f: \mathbb{C} \to \mathbb{C} \quad (z \in \mathbb{C} \to f(z) \in \mathbb{C})$$
  Es decir, funciones que se evalúan en números complejos y devuelven de resultado otros números complejos.
* 🗺️ Los invito a pensar el plano complejo de la siguiente manera:
  1. **Transformación de Puntos:** A cada punto se le asigna otro punto.
  2. **Campo Vectorial / Flechas:** A cada punto se le asigna una flecha (vector).
  Esto nos brinda dos interpretaciones geométricas de una función compleja.
* 🪞 **Ejemplo 1: Conjugación.** Conjugar es reflejar sobre el eje real ($\text{Re}$). Esto se debe a que conjugar es cambiarle el signo a la parte imaginaria:
  $$\bar{z} = x - iy$$
* 🧮 **Ejemplo 2: Función Potencia Cuadrada ($f(z) = z^2$).** Por las propiedades del producto entre dos números complejos, elevar al cuadrado es elevar al cuadrado la longitud y duplicar el ángulo:
  $$\vert{}f(z)\vert{} = \vert{}z\vert{}^2$$
  $$\arg(f(z)) = 2\theta$$
* 🎯 **Proyección sobre el Eje Real:** ¿Cómo definiríamos la función que proyecta sobre el eje real? Escribiendo a un número complejo en forma binomial ($z = x + iy$):
  $$f(x + iy) = x$$
* 🎯 **Proyección sobre el Eje Imaginario:** De forma análoga, la proyección sobre el eje imaginario se define como:
  $$f(x + iy) = y$$
* 🔄 **Inverso Multiplicativo ($f(z) = z^{-1}$):** Como $z \cdot z^{-1} = 1$:
  * La suma del argumento de $z$ con el argumento de su inverso debe ser un múltiplo entero de $2\pi$ (es decir, el ángulo se invierte a $-\theta$).
  * El producto entre sus módulos debe ser $1$ (por lo que el módulo se invierte: $\vert{}z^{-1}\vert{} = \frac{1}{\vert{}z\vert{}}$).
* ❓ Sería interesante preguntarse qué acciones producen otros tipos de funciones en la geometría del plano complejo:
  $$\sin(z) \quad ? \quad \cos(z) \quad ? \quad e^z \quad ? \quad \ln(z) \quad ?$$
  Primero habría que preguntarse cómo definirlas y qué representan.
* 🎉 Este video es a modo de introducción en el mundo de las funciones complejas. ¡Vamos de a poco, que vamos bien! 🎓



## 📚 Descripción Detallada de Procedimientos y Conceptos

### 1. Extensión del Conjunto Numérico
* **Limitación Real:** La ecuación $x^2 + 1 = 0$ no posee solución en $\mathbb{R}$ debido a que el cuadrado de cualquier número real es no negativo ($x^2 \ge 0$).
* **Unidad Imaginaria:** Se define el elemento $i$ tal que $i = \sqrt{-1} \implies i^2 = -1$, extendiendo el sistema numérico a los Números Complejos ($\mathbb{C}$).



### 2. Representaciones de un Número Complejo

#### A. Forma Binomial / Cartesiana
Un número complejo $z \in \mathbb{C}$ se representa en el plano de Argand como:
$$z = x + i y$$
* **Parte Real:** $\text{Re}(z) = x \in \mathbb{R}$
* **Parte Imaginaria:** $\text{Im}(z) = y \in \mathbb{R}$

#### B. Forma Polar / Trigonométrica / Exponencial (Fórmula de Euler)
Utilizando coordenadas polares $(r, \theta)$:
$$z = \vert{}z\vert{} (\cos\theta + i \sin\theta) = \vert{}z\vert{} e^{i\theta}$$
* **Módulo:** $\vert{}z\vert{} = \sqrt{x^2 + y^2}$ (Distancia euclidiana al origen)
* **Argumento:** $\theta = \arg(z) = \arctan\left(\frac{y}{x}\right)$ (Ángulo orientado desde el semieje real positivo)



### 3. Operaciones Geométricas Fundamental

| Operación | Definición Matemática | Efecto Geométrico |
| :--- | :--- | :--- |
| **Conjugación** | $\bar{z} = x - iy = \vert{}z\vert{}e^{-i\theta}$ | Reflexión especular respecto al eje real ($\text{Re}$). |
| **Cuadrado** | $z^2 = \vert{}z\vert{}^2 e^{i(2\theta)}$ | Escala el módulo al cuadrado y duplica el ángulo de rotación. |
| **Proyección Real** | $f(z) = \text{Re}(z) = x$ | Mapea horizontalmente el punto al eje real. |
| **Proyección Imaginaria** | $f(z) = \text{Im}(z) = y$ | Mapea verticalmente el punto al eje imaginario. |
| **Inversión** | $z^{-1} = \frac{1}{\vert{}z\vert{}} e^{-i\theta}$ | Inversión del módulo respectitvo al círculo unitario y reflexión del ángulo. |



### 4. Interpretaciones Geométricas de $f: \mathbb{C} \to \mathbb{C}$
1. **Mapeo de Planos:** Una transformación que traslada/deforma un conjunto de puntos del plano $Z$ a un plano $W$.
2. **Campo Vectorial:** Asignación de un vector posición/fuerza $\vec{v}(x,y)$ a cada coordenada del plano.
