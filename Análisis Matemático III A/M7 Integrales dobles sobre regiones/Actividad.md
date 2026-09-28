A continuación se presenta la resolución paso a paso de la actividad propuesta, basada en los conceptos y ejemplos de los documentos adjuntos. 📘✨

---

### **Ejercicio 1: Cálculo de la integral iterada y cambio del orden de integración** 📐

#### **Consigna a:**

Calcular la integral iterada graficando previamente la región de integración. Si es necesario, efectuar un cambio en el orden de integración: 🔄


$$\int_{0}^{1}\int_{\sqrt[3]{y}}^{1}e^{x}dxdy$$

#### **Paso 1: Análisis de la región de integración actual ($D$)** 📊

* La integral dada se encuentra planteada en el orden $dx \, dy$, lo cual corresponde a una región descrita inicialmente de tipo II (o respecto a $y$): 📉


* Límites para $y$: $0 \le y \le 1$ 📏

* Límites para $x$: $\sqrt[3]{y} \le x \le 1$ 📏



* De la ecuación de la frontera inferior de $x$, $x = \sqrt[3]{y}$, podemos despejar $y$ elevando al cubo ambos miembros, obteniendo $y = x^3$. 🧮


* La frontera superior para $x$ es $x = 1$, y los límites exteriores para $y$ son $y = 0$ e $y = 1$. 🎯



#### **Paso 2: Gráfico y cambio del orden de integración** 📈

* Si intentamos integrar primero respecto a $x$ tal como está planteado, el integrando es $e^x$, cuya integral respecto a $x$ es inmediata ($\int e^x dx = e^x$). Sin embargo, a modo de práctica y análisis de regiones generales (tal como se estudia en el apunte para funciones cuyas primitivas no son elementales o para simplificar dominios), visualizamos la región $D$ en el plano $x-y$: 👁️‍🗨️


* Está limitada por las curvas $y = 0$ (eje $x$), $y = 1$, $x = 1$ y $x = \sqrt[3]{y}$ (o $y = x^3$). ✏️




* **Nueva descripción de la región como tipo I ($dx \, dy$ por $dy \, dx$)**: 🔄


* Variación de $x$: va desde $0$ hasta $1$ ($0 \le x \le 1$). 📐
* Variación de $y$: desde la curva inferior $y = 0$ hasta la curva superior $y = x^3$ ($0 \le y \le x^3$). 📐



#### **Paso 3: Resolución de la integral** 🧮

Evaluaremos directamente la integral original provista (o mediante su respectivo análisis equivalente). Dada la función $e^x$, evaluarla en el orden original $\int_{0}^{1}\int_{\sqrt[3]{y}}^{1}e^{x}dxdy$ resulta directo: ⚡

1. **Integración interior (respecto a $x$):** 🔤

$$\int_{\sqrt[3]{y}}^{1} e^{x} dx = e^{x} \Big\vert{}_{\sqrt[3]{y}}^{1} = e^{1} - e^{\sqrt[3]{y}} = e - e^{y^{1/3}}$$


2. **Integración exterior (respecto a $y$):** 🔤
Al intentar integrar $e - e^{y^{1/3}}$ respecto a $y$, la antiderivada de $e^{\sqrt[3]{y}}$ no se puede expresar en términos de funciones elementales finitas, lo que **hace estrictamente necesario el cambio en el orden de integración**. ⚠️



* Planteamos la integral con el nuevo orden ($dy \, dx$): 🔄

$$\int_{0}^{1}\int_{0}^{x^{3}} e^{x} dy \, dx$$


* **Paso a) Integración interior respecto a $y$:** 🔢

$$\int_{0}^{x^{3}} e^{x} dy = e^{x} \cdot y \Big\vert{}_{y=0}^{y=x^3} = e^{x} \cdot (x^3 - 0) = x^3 e^{x}$$


* **Paso b) Integración exterior respecto a $x$:** 🔢

$$\int_{0}^{1} x^3 e^{x} dx$$



Para resolver esta integral, aplicamos integración por partes sucesivas o tabla (consignando **"por tabla"** o desarrollo analítico de partes): 📝
* 1ª aplicación: $\int x^3 e^x dx = x^3 e^x - 3 \int x^2 e^x dx$ 
* 2ª aplicación: $\int x^2 e^x dx = x^2 e^x - 2 \int x e^x dx$ 
* 3ª aplicación: $\int x e^x dx = x e^x - \int e^x dx = (x - 1)e^x$ 


Agrupando términos y aplicando los límites de $0$ a $1$: 📦

$$\int_{0}^{1} x^3 e^{x} dx = \left[ (x^3 - 3x^2 + 6x - 6)e^x \right]_{0}^{1}$$



Evaluando en el límite superior ($x = 1$): ⬆️

$$(1 - 3 + 6 - 6)e^{1} = -2e$$



Evaluando en el límite inferior ($x = 0$): ⬇️

$$(0 - 0 + 0 - 6)e^{0} = -6(1) = -6$$



Resultado final de la integral: ✅

$$(-2e) - (-6) = 6 - 2e$$



---

### **Ejercicio 2: Cálculo de área mediante integrales dobles** 📐✨

#### **Consigna:** 🎯

Hallar mediante integrales dobles el área de la región limitada por la parábola de ecuación $x = 6 - y^2$ y la recta de ecuación $-x + y = -4$. 📉📈

#### **Paso 1: Identificación de las curvas y puntos de intersección** 🔍

* Despejamos $x$ de la ecuación de la recta $-x + y = -4$: 📝

$$x = y + 4$$


* La parábola está dada por: 📊

$$x = 6 - y^2$$


* Igualamos ambas expresiones para hallar los puntos de intersección en función de $y$: ⚖️

$$6 - y^2 = y + 4$$


$$y^2 + y - 2 = 0$$


* Resolviendo la ecuación cuadrática para $y$: 🧮

$$y = \frac{-1 \pm \sqrt{1^2 - 4(1)(-2)}}{2} = \frac{-1 \pm \sqrt{9}}{2} = \frac{-1 \pm 3}{2}$$



De donde obtenemos los valores de corte: ✂️
* $y_1 = \frac{-1 + 3}{2} = 1$ ✨
* $y_2 = \frac{-1 - 3}{2} = -2$ ✨



#### **Paso 2: Planteamiento de la región como Tipo II** 🗺️

* Observando los límites de integración en el eje $y$, la región $D$ está acotada entre $c = -2$ y $d = 1$. 📏


* Las cotas horizontales (izquierda a derecha) están dadas por: ↔️


* Límite inferior (izquierda): $h_1(y) = y + 4$ (la recta) 📐
* Límite superior (derecha): $h_2(y) = 6 - y^2$ (la parábola) 📐


* Verificamos las cotas evaluando un punto intermedio (por ejemplo, en $y = 0$, la recta da $x = 4$ y la parábola da $x = 6$, por lo que $4 \le x \le 6$, lo cual es coherente). ✔️

#### **Paso 3: Cálculo del área mediante integral doble** 🧮

Sabemos por propiedad que el área de una región $D$ se calcula como: 📘


$$A(D) = \iint_{D} 1 \, dA$$

Planteando la integral iterada en coordenadas rectangulares para una región de tipo II ($dx \, dy$): 🔄


$$A = \int_{-2}^{1} \int_{y+4}^{6-y^2} 1 \, dx \, dy$$

1. **Integración interior (respecto a $x$):** 🔤

$$\int_{y+4}^{6-y^2} 1 \, dx = x \Big\vert{}_{y+4}^{6-y^2} = (6 - y^2) - (y + 4) = 2 - y - y^2$$


2. **Integración exterior (respecto a $y$):** 🔤

$$A = \int_{-2}^{1} (2 - y - y^2) dy$$


3. **Resolución de la integral definida:** ⚙️
Encontrando la antiderivada término a término: 📝

$$\int_{-2}^{1} (2 - y - y^2) dy = \left[ 2y - \frac{y^2}{2} - \frac{y^3}{3} \right]_{-2}^{1}$$


* Evaluando en el límite superior ($y = 1$): ⬆️

$$\left( 2(1) - \frac{(1)^2}{2} - \frac{(1)^3}{3} \right) = 2 - \frac{1}{2} - \frac{1}{3} = \frac{12 - 3 - 2}{6} = \frac{7}{6}$$


* Evaluando en el límite inferior ($y = -2$): ⬇️

$$\left( 2(-2) - \frac{(-2)^2}{2} - \frac{(-2)^3}{3} \right) = -4 - \frac{4}{2} - \frac{-8}{3} = -4 - 2 + \frac{8}{3} = -6 + \frac{8}{3} = \frac{-18 + 8}{3} = -\frac{10}{3}$$


* Restando ambos límites (Superior - Inferior): ➖

$$A = \frac{7}{6} - \left(-\frac{10}{3}\right) = \frac{7}{6} + \frac{10}{3} = \frac{7 + 20}{6} = \frac{27}{6} = \frac{9}{2} = 4.5$$





#### **Resultado final:** 🎉

* El área de la región plana solicitada es **$\frac{9}{2}$** (o $4.5$ unidades cuadradas). 🏆