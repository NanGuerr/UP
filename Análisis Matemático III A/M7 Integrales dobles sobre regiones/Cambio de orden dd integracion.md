# 🔄 Transcripción y Análisis: Cambio del Orden de Integración

Este documento detalla los procedimientos explicados en el video por la docente María Gabriela Esperón (Universidad de Palermo) sobre cómo realizar el cambio de orden de integración en integrales dobles. 🎓📐



## 🗺️ 1. Definición de Regiones Planas

Antes de resolver el problema, es fundamental recordar los dos tipos principales de regiones de integración.

### 📍 Región de Tipo I
Una región plana $D$ es de **tipo I** si se encuentra acotada entre las gráficas de dos funciones continuas de $x$.
*   La variable $x$ varía entre dos extremos fijos: $a \le x \le b$.
*   La variable $y$ varía entre dos funciones de $x$: $g_1(x) \le y \le g_2(x)$.

La integral doble sobre esta región se plantea integrando primero respecto a $y$ y luego respecto a $x$:

$$ \iint_{D} f(x,y) \, dA = \int_{a}^{b} \int_{g_1(x)}^{g_2(x)} f(x,y) \, dy \, dx $$

### 📍 Región de Tipo II
Una región plana $D$ es de **tipo II** si se encuentra acotada entre las gráficas de dos funciones continuas de $y$.
*   La variable $y$ varía entre dos extremos fijos: $c \le y \le d$.
*   La variable $x$ varía entre dos funciones de $y$: $h_1(y) \le x \le h_2(y)$.

La integral doble sobre esta región se plantea integrando primero respecto a $x$ y luego respecto a $y$:

$$ \iint_{D} f(x,y) \, dA = \int_{c}^{d} \int_{h_1(y)}^{h_2(y)} f(x,y) \, dx \, dy $$



## ⚠️ 2. El Problema Propuesto

Supongamos que queremos calcular la siguiente integral iterada, planteada inicialmente sobre una región de Tipo I (orden $dy \, dx$):

$$ \int_{0}^{1} \int_{x^2}^{1} x \cdot e^{y^2} \, dy \, dx $$

### 🛑 El Obstáculo
El problema que se presenta es que **no podemos hallar en términos finitos la primitiva** de la integral interior $\int e^{y^2} dy$. La función $e^{y^2}$ no tiene una antiderivada que pueda expresarse mediante funciones elementales. 

Por lo tanto, **es obligatorio hacer un cambio en el orden de integración** transformando la región a Tipo II. 🔄



## 🛠️ 3. Cambio de Orden de Integración

### Paso 3.1: Identificar los límites actuales (Tipo I) 🔍
*   Límites exteriores (para $x$): $x = 0$ a $x = 1$.
*   Límites interiores (para $y$): $y = x^2$ a $y = 1$.

### Paso 3.2: Redefinir la región (Tipo II) 📊
Al observar la gráfica de la región, delimitada por la parábola $y = x^2$ y las rectas $y = 1$ y $x = 0$, podemos replantear los límites:
*   Si despejamos $x$ de la curva inferior $y = x^2$, obtenemos $x = \sqrt{y}$.
*   **Nuevos límites exteriores (para $y$):** $y$ variará entre las constantes $0$ y $1$ ($0 \le y \le 1$).
*   **Nuevos límites interiores (para $x$):** $x$ variará desde el eje $y$ ($x = 0$) hasta la curva ($x = \sqrt{y}$), por lo que $0 \le x \le \sqrt{y}$.

### Paso 3.3: Plantear la nueva integral 📝
Escribimos la integral con el orden $dx \, dy$:

$$ \int_{0}^{1} \int_{0}^{\sqrt{y}} x \cdot e^{y^2} \, dx \, dy $$



## 🧮 4. Resolución de la Nueva Integral

La gran ventaja de este nuevo orden es que ahora integraremos primero con respecto a $x$, considerando a $y$ (y por ende a $e^{y^2}$) como una constante. ✅

### Paso A: Integración interior (respecto a $x$) 🔢
Calculamos la primitiva de $x$, que es $\frac{x^2}{2}$:

$$ \int_{0}^{\sqrt{y}} x \cdot e^{y^2} \, dx = \left[ \frac{x^2}{2} \right]_{0}^{\sqrt{y}} \cdot e^{y^2} $$

Evaluamos aplicando la Regla de Barrow (límite superior menos inferior):

$$ = \left( \frac{(\sqrt{y})^2}{2} - \frac{0^2}{2} \right) \cdot e^{y^2} = \frac{y}{2} \cdot e^{y^2} $$

### Paso B: Integración exterior (respecto a $y$) 🔢
Reemplazamos este resultado en la integral exterior. Podemos sacar la constante $\frac{1}{2}$ fuera de la integral:


$$ \frac{1}{2} \int_{0}^{1} y \cdot e^{y^2} \, dy $$

### Paso C: Sustitución de variables 🔄
Para resolver esta integral, aplicamos el método de sustitución:
*   Sea $t = y^2$
*   Derivando: $dt = 2y \, dy \implies dy = \frac{dt}{2y}$

**Cambio de límites de integración:**
*   Si $y = 0 \implies t = 0^2 = 0$
*   Si $y = 1 \implies t = 1^2 = 1$
*(En este caso particular, los límites numéricos de $t$ resultan ser iguales a los de $y$).*

Sustituimos en la integral:

$$ \frac{1}{2} \int_{0}^{1} y \cdot e^{t} \cdot \frac{dt}{2y} $$

Simplificamos la variable $y$ y extraemos el divisor $2$ multiplicando a la fracción externa:

$$ = \frac{1}{4} \int_{0}^{1} e^{t} \, dt $$

### Paso D: Resultado Final 🎉
La integral de $e^t$ es $e^t$. Evaluamos entre los nuevos límites $0$ y $1$:


$$ = \frac{1}{4} \left[ e^t \right]_{0}^{1} = \frac{1}{4} (e^1 - e^0) $$

Recordando que $e^0 = 1$, llegamos al resultado final:

$$ = \frac{1}{4} (e - 1) $$
