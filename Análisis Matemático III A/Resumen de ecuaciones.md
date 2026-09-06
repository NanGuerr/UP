# 📚 Métodos de Resolución de Ecuaciones Diferenciales

El estudio de las ecuaciones diferenciales requiere una comprensión rigurosa de su clasificación, ya que el tipo y la estructura algebraica de la ecuación determinan de manera unívoca el método analítico necesario para resolverla.

A continuación, se detalla la definición matemática, los criterios de identificación y las fórmulas de cada uno de los tipos de ecuaciones solicitados, concluyendo con un cuadro comparativo para visualizar sus diferencias estructurales.



## 🌊 1. Ecuaciones en Derivadas Parciales (EDP)

A diferencia de las Ecuaciones Diferenciales Ordinarias (EDO), que involucran derivadas respecto a una única variable independiente, las Ecuaciones en Derivadas Parciales (EDP) se definen por la presencia de una función desconocida que depende de dos o más variables independientes. En consecuencia, las derivadas que aparecen en la ecuación son derivadas parciales.

### 📐 Fórmula / Forma estándar (ejemplo clásico de segundo orden):
$$\\frac{\\partial^2 u}{\\partial x^2} + \\frac{\\partial^2 u}{\\partial y^2} = 0 \\quad \\text{o bien} \\quad z_{xx}'' + z_{yy}'' = 0$$

* 🔍 **Criterio de identificación:** Se reconocen por la presencia de la notación de derivadas parciales ($\\partial$) o subíndices de derivación mixtos o puros ($z_x$, $z_{xx}$, $z_{yy}$) asociados a múltiples variables independientes (por ejemplo, $x$ e $y$, o $t$ e $y$).
* 🎯 **Propósito:** Modelan fenómenos físicos donde las magnitudes varían en el espacio y en el tiempo de manera simultánea.



## 📏 2. Ecuaciones Diferenciales Lineales (de primer orden)

La linealidad es una clasificación basada en la estructura algebraica de la variable dependiente $y$ y de sus derivadas dentro de una EDO. Una ecuación diferencial ordinaria de primer orden se clasifica como lineal si cumple estrictamente con que la variable dependiente y su derivada son de primer grado (potencia igual a 1) y no se multiplican entre sí.

### 📐 Fórmula / Forma canónica (o normalizada):
$$y' + P(x) \\cdot y = Q(x)$$

* 🔍 **Criterio de identificación:**
  * La variable dependiente $y$ y su derivada $y'$ deben estar elevadas únicamente a la potencia $1$.
  * No pueden existir productos entre la variable dependiente y sus derivadas (términos como $y \\cdot y'$ o $y^2$ invalidan la linealidad).
  * Los coeficientes de $y$ y $y'$ (representados por $P(x)$) y el término independiente ($Q(x)$) deben depender exclusivamente de la variable independiente $x$ o ser constantes. No se permiten funciones no lineales de la variable dependiente, tales como $\{sen}(y)$, $\\cos(y)$ o $e^y$.

* ⚙️ **Método de resolución:** Se resuelve de manera estándar multiplicando toda la ecuación por el factor integrante:
  $$\\mu(x) = e^{\\int P(x) \\, dx}$$
  Esto transforma el miembro izquierdo en la derivada exacta del producto de la función por el factor integrante:
  $$\\frac{d}{dx}[\\mu(x) \\cdot y] = \\mu(x) \\cdot Q(x)$$



## ⚖️ 3. Ecuaciones Diferenciales Homogéneas (de primer orden)

Una ecuación diferencial ordinaria de primer orden de la forma $y' = f(x, y)$ se clasifica como homogénea si la función del miembro derecho $f(x, y)$ es una función homogénea de grado cero. Esto significa que al escalar las variables por un parámetro $t$, se cumple que $f(tx, ty) = t^0 \\cdot f(x, y) = f(x, y)$.

### 📐 Fórmula / Forma estándar:
$$M(x, y) \\, dx + N(x, y) \\, dy = 0 \\quad \\text{donde } M \\text{ y } N \\text{ son funciones homogéneas del mismo grado } n$$

Equivalentemente, la ecuación se puede reescribir en términos de la razón o cociente de las variables:
$$y' = F\\left(\\frac{y}{x}\\right)$$

* 🔍 **Criterio de identificación:** Al verificar algebraicamente el grado de homogeneidad mediante la sustitución de $x \\to tx$ e $y \\to ty$, se demuestra que el factor de escala $t^n$ puede extraerse como factor común con el mismo exponente en todas las funciones componentes de la ecuación.

* ⚙️ **Método de resolución:** Se realiza un cambio de variables mediante la sustitución $y = u \\cdot x$ (lo que implica que diferencialmente $dy = u \\, dx + x \\, du$). Esta sustitución matemática desacopla las variables y transforma de manera unívoca la ecuación homogénea en una ecuación de variables separables en términos de $u$ y $x$.



## 🎯 4. Ecuaciones Diferenciales Exactas

Una ecuación diferencial escrita en la forma diferencial $M(x, y) \\, dx + N(x, y) \\, dy = 0$ se clasifica como exacta si el miembro izquierdo corresponde exactamente al diferencial total de una función de dos variables $F(x, y)$. Es decir, existe una función potencial $F(x, y)$ tal que $dF = F'_x \\, dx + F'_y \\, dy = 0$.

### 📐 Fórmula / Forma estándar:
$$M(x, y) \\, dx + N(x, y) \\, dy = 0 \\quad \\text{tal que} \\quad dF(x, y) = 0$$

* 🔍 **Criterio de identificación (Condición de simetría):**
  Asumiendo que las funciones y sus derivadas parciales son continuas en una región del plano, la ecuación es exacta si y solo si las derivadas parciales cruzadas son iguales:
  $$\\frac{\\partial M}{\\partial y} = \\frac{\\partial N}{\\partial x} \\quad (M'_y = N'_x)$$
  Esta condición matemática se fundamenta de manera rigurosa en el Teorema de Schwarz sobre la igualdad de las derivadas parciales mixtas continuas de segundo orden.

* ⚙️ **Método de resolución:** Se integra una de las funciones respecto a su variable correspondiente para plantear la función potencial, por ejemplo, integramos $M$ respecto a $x$ añadiendo una constante de integración que depende de $y$:
  $$F(x, y) = \\int M(x, y) \\, dx + g(y)$$
  Se deriva parcialmente $F$ respecto a $y$ y se iguala a $N(x, y)$ para determinar la derivada $g'(y)$ y, por integración simple, hallar $g(y)$.
  La solución general se expresa de forma implícita como la familia de curvas de nivel de la función potencial:
  $$F(x, y) = C$$

> 💡 **Nota:** Si la condición de simetría no se cumple inicialmente, la ecuación no es exacta, pero en ocasiones puede multiplicarse por un factor integrante $\\mu$ para forzar la exactitud.



## 📊 Cuadro Comparativo de Ecuaciones Diferenciales

| Tipo de Ecuación | Fórmula / Forma Estándar | Criterio de Identificación Clave | Método de Resolución Principal | Características Distintivas |
| :--- | :--- | :--- | :--- | :--- |
| **Derivadas Parciales (EDP)** | $\\frac{\\partial^2 u}{\\partial x^2} + \\frac{\\partial^2 u}{\\partial y^2} = 0$ | La función incógnita depende de dos o más variables independientes. | Separación de variables para EDPs, métodos de integración por coordenadas. | Es una clasificación por tipo. No confundir con el análisis ordinario de una sola variable. |
| **Lineales (EDO de 1º orden)** | $y' + P(x) \\cdot y = Q(x)$ | Tanto $y$ como $y'$ están elevadas a la potencia 1 y no se multiplican entre sí. Coeficientes dependen solo de $x$. | Multiplicación por factor integrante: $\\mu(x) = e^{\\int P(x) \\, dx}$. | Es una clasificación por linealidad. No admite términos no lineales de la variable dependiente como ${sen}(y)$. |
| **Homogéneas (EDO de 1º orden)** | $y' = F\\left(\\frac{y}{x}\\right)$ o $M \\, dx + N \\, dy = 0$ | Las funciones del diferencial son homogéneas del mismo grado $n$, o la derivada depende solo del cociente $y/x$. | Sustitución matemática $y = u \\cdot x$ ($dy = u \\, dx + x \\, du$). | Transforma la ecuación original en una de variables separables en términos de $u$ y $x$. |
| **Exactas (EDO de 1º orden)** | $M(x, y) \\, dx + N(x, y) \\, dy = 0$ | Cumplen con la condición de derivadas parciales cruzadas de simetría: $M'_y = N'_x$. | Integración parcial para reconstruir la función potencial $F(x, y) = C$. | Representa el diferencial total de una función de dos variables. Admite el uso de factores integrantes si la simetría falla. |

