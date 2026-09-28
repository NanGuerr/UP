### **Pregunta 1**

**Enunciado:** El área de la región sombreada se puede expresar mediante una sola integral doble como:

* **Análisis de la región:**
* Observando el gráfico, la región está limitada inferiormente por la recta horizontal $y = 1$ y por la recta $y = \frac{1}{2}x$ (es decir, $x = 2y$).


* Está limitada superiormente por la hipérbola $x \cdot y = 8$ (es decir, $x = \frac{8}{y}$).
* Los límites de integración exterior para $y$ van desde el valor inferior $y = 1$ hasta el punto de intersección entre $y = \frac{1}{2}x$ y $x \cdot y = 8$. Igualando ambas: $(2y)y = 8 \implies 2y^2 = 8 \implies y^2 = 4 \implies y = 2$ (tomando el valor positivo). Por lo tanto, $1 \le y \le 2$.
* Para una franja horizontal (región tipo II), $x$ varía desde la recta de la izquierda ($x = 2y$) hasta la hipérbola de la derecha ($x = \frac{8}{y}$).


* **Respuesta correcta:** **A. $A = \int_{1}^{2}\int_{2y}^{\frac{8}{y}} 1 \, dx \, dy$**




### **Pregunta 2**

**Enunciado:** Indicar la respuesta correcta para el cambio del orden de integración de $\int_{0}^{1}\int_{e^{y}}^{e}\frac{1}{\ln x}dx\,dy$.

* **Análisis:**
* En la integral original, los límites son: $0 \le y \le 1$ y $e^{y} \le x \le e$ (lo que implica que $y \le \ln x$).
* Al cambiar al orden $dy \, dx$:
* La variable $x$ varía desde el valor mínimo $x = e^0 = 1$ hasta el valor máximo $x = e$, es decir, $1 \le x \le e$.
* Para cada $x$ fijo, la variable $y$ va desde $0$ hasta la curva superior $y = \ln x$ ($0 \le y \le \ln x$).




* **Respuesta correcta:** **B. $\int_{0}^{1}\int_{e^{y}}^{e}\frac{1}{\ln x}dx\,dy = \int_{1}^{e}\int_{0}^{\ln x}\frac{1}{\ln x}dy\,dx$**




### **Pregunta 3**

**Enunciado:** La región limitada por las curvas $y = x^2$ y $x = y^2$.

* **Análisis:**
* La curva $y = x^2$ se puede reescribir como $x = \sqrt{y}$ (para $x \ge 0$).
* La curva $x = y^2$ se puede reescribir como $y = \sqrt{x}$ (para $y \ge 0$).
* Esta región se encuentra acotada entre $0 \le x \le 1$ y $0 \le y \le 1$. Al ser acotada por funciones continuas tanto de $x$ como de $y$, puede describirse sin inconvenientes como una región de Tipo 1 (despejando $y$ en función de $x$) o como una región de Tipo 2 (despejando $x$ en función de $y$).


* **Respuesta correcta:** **D. Se puede pensar tanto como una región de tipo 1 como de tipo 2**




### **Pregunta 4**

**Enunciado:** Si $D$ es la región sombreada limitada por $y = \frac{1}{2}x^3$ e $y = 2x$ y $f(x;y)$ es una función continua, indicar todas las respuestas correctas:

* **Análisis:**
* **Como región de Tipo 1 ($dy \, dx$):**
* Los puntos de intersección se obtienen igualando $\frac{1}{2}x^3 = 2x \implies x^3 = 4x \implies x(x^2 - 4) = 0$, de donde $x = 0$ y $x = 2$.
* La variable $x$ va de $0$ a $2$ ($0 \le x \le 2$).
* La variable $y$ va desde la cúbica inferior $\frac{1}{2}x^3$ hasta la recta superior $2x$ ($\frac{1}{2}x^3 \le y \le 2x$).
* Esto genera la integral: $\int_{0}^{2}\int_{\frac{1}{2}x^{3}}^{2x}f(x;y)dydx$ (**Opción B es correcta**).




* **Como región de Tipo 2 ($dx \, dy$):**
* La variable $y$ va desde $0$ hasta el punto superior $y = 4$ ($0 \le y \le 4$).
* La variable $x$ va desde la recta de la izquierda ($y = 2x \implies x = \frac{y}{2}$) hasta la cúbica de la derecha ($y = \frac{1}{2}x^3 \implies x = \sqrt[3]{2y}$).
* Esto genera la integral: $\int_{0}^{4}\int_{\frac{y}{2}}^{\sqrt[3]{2y}}f(x;y)dxdy$ (**Opción A es correcta**).






* **Respuestas correctas:** **A y B**




### **Pregunta 5**

**Enunciado:** Si $\iint_{D}f(x;y)dA=\int_{0}^{3}\int_{\frac{2}{3}y}^{1}f(x;y)dx\,dy$, entonces la región de integración $D$ es:

* **Análisis:**
* Los límites de la integral iterada muestran que el orden interior es $dx$ y el exterior es $dy$.
* Por lo tanto, los límites de las variables son:
* $0 \le y \le 3$

* $\frac{2}{3}y \le x \le 1$



* Esto define formalmente a la región como el conjunto de puntos $D = \{(x, y) \mid 0 \le y \le 3, \; \frac{2}{3}y \le x \le 1\}$.
