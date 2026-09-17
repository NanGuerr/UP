# 📐 Integrales Dobles sobre Rectángulos


## 📚 Marco Teórico: Integrales Dobles y Teorema de Fubini

Sea $$R = [a,b] \times [c,d] = { (x,y) \in \mathbb{R}^{2}} :a x \le b, \ c \le y \le d $$ una región rectangular en el plano $xy$.

Si $f(x,y)$ es continua sobre $R$, la integral doble de $f$ sobre $R$ se evalúa mediante integrales iteradas aplicando el **Teorema de Fubini**:

$$\iint_{R} f(x,y) \, \text{d}A = \int_{a}^{b} \left( \int_{c}^{d} f(x,y) \, \text{d}y \right) \text{d}x = \int_{c}^{d} \left( \int_{a}^{b} f(x,y) \, \text{d}x \right) \text{d}y$$

### 💡 Propiedad de Separabilidad de Variables
Si la función integrando se descompone como el producto de dos funciones de una sola variable, $f(x,y) = g(x) \cdot h(y)$, la integral doble sobre un rectángulo se factoriza directamente como el producto de dos integrales simples definidas:

$$\iint_{R} g(x) h(y) \, \text{d}A = \left( \int_{a}^{b} g(x) \, \text{d}x \right) \cdot \left( \int_{c}^{d} h(y) \, \text{d}y \right)$$

### 📦 Cálculo de Volúmenes
Si $f(x,y) \ge 0$ sobre $R$, el volumen $V$ del sólido acotado superiormente por la superficie $z = f(x,y)$ e inferiormente por la región $R$ viene dado por:

$$V = \iint_{R} f(x,y) \, \text{d}A$$



## 1. 🔄 Integrales Iteradas

### 🔹 Ejercicio 1.a
Calcular la integral iterada:
$$I = \int_{0}^{1} \int_{1}^{3} (1 + 4xy) \, \text{d}x \, \text{d}y$$

* **Paso 1: Integración interior respecto a $x$ (tratando a $y$ como constante)**
  $$\int_{1}^{3} (1 + 4xy) \, \text{d}x = \left[ x + 2x^{2}y \right]_{x=1}^{x=3} = \left( 3 + 2(3)^{2}y \right) - \left( 1 + 2(1)^{2}y \right) = (3 + 18y) - (1 + 2y) = 2 + 16y$$

* **Paso 2: Integración exterior respecto a $y$**
  $$I = \int_{0}^{1} (2 + 16y) \, \text{d}y = \left[ 2y + 8y^{2} \right]_{0}^{1} = \left( 2(1) + 8(1)^{2} \right) - 0 = 10$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($10$).



### 🔹 Ejercicio 1.b
Calcular la integral iterada:
$$I = \int_{-1}^{1} \int_{2}^{4} (x^{2} + y^{2}) \, \text{d}y \, \text{d}x$$

* **Paso 1: Integración interior respecto a $y$**
  $$\int_{2}^{4} (x^{2} + y^{2}) \, \text{d}y = \left[ x^{2}y + \frac{y^{3}}{3} \right]_{y=2}^{y=4} = \left( 4x^{2} + \frac{64}{3} \right) - \left( 2x^{2} + \frac{8}{3} \right) = 2x^{2} + \frac{56}{3}$$

* **Paso 2: Integración exterior respecto a $x$**  
  Dado que el integrando es una función par y el intervalo es simétrico $[-1,1]$:
  $$I = \int_{-1}^{1} \left( 2x^{2} + \frac{56}{3} \right) \text{d}x = 2 \int_{0}^{1} \left( 2x^{2} + \frac{56}{3} \right) \text{d}x = 2 \left[ \frac{2x^{3}}{3} + \frac{56x}{3} \right]_{0}^{1} = 2 \left( \frac{2}{3} + \frac{56}{3} \right) = 2 \left( \frac{58}{3} \right) = \frac{116}{3}$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($\frac{116}{3}$).



### 🔹 Ejercicio 1.c
Calcular la integral iterada:
$$I = \int_{1}^{2} \int_{1}^{4} \left( \frac{x}{y} + \frac{y}{x} \right) \text{d}y \, \text{d}x$$

* **Paso 1: Integración interior respecto a $y$**
  $$\int_{1}^{4} \left( x \cdot \frac{1}{y} + \frac{1}{x} \cdot y \right) \text{d}y = \left[ x \ln|y| + \frac{y^{2}}{2x} \right]_{y=1}^{y=4} = \left( x \ln 4 + \frac{16}{2x} \right) - \left( x \ln 1 + \frac{1}{2x} \right)$$
  Usando $\ln 4 = 2 \ln 2$ y $\ln 1 = 0$:
  $$= 2x \ln 2 + \frac{15}{2x}$$

* **Paso 2: Integración exterior respecto a $x$**
  $$I = \int_{1}^{2} \left( 2x \ln 2 + \frac{15}{2x} \right) \text{d}x = \left[ x^{2} \ln 2 + \frac{15}{2} \ln|x| \right]_{1}^{2} = \left( 4 \ln 2 + \frac{15}{2} \ln 2 \right) - (1 \ln 2 + 0)$$
  $$I = \left( 3 + \frac{15}{2} \right) \ln 2 = \frac{21}{2} \ln 2$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($\frac{21}{2} \ln 2$).



### 🔹 Ejercicio 1.d
Calcular la integral iterada:
$$I = \int_{0}^{\ln 5} \int_{0}^{\ln 2} e^{2x - y} \, \text{d}x \, \text{d}y$$

* **Paso 1: Factorización por separabilidad de variables**  
  Como $e^{2x - y} = e^{2x} \cdot e^{-y}$, la integral se factoriza en dos integrales independientes:

  $$I = \left( \int_{0}^{\ln 2} e^{2x} \, \text{d}x \right) \cdot \left( \int_{0}^{\ln 5} e^{-y} \, \text{d}y \right)$$

* **Paso 2: Evaluación de cada integral simple**

$$\int_{0}^{\ln 2} e^{2x} \, \text{d}x = \left[ \frac{e^{2x}}{2} \right]_{0}^{\ln 2} = \frac{e^{2 \ln 2} - 1}{2} = \frac{e^{\ln 4} - 1}{2} = \frac{4 - 1}{2} = \frac{3}{2}$$

$$\int_{0}^{\ln 5} e^{-y} \, \text{d}y = \left[ -e^{-y} \right]_{0}^{\ln 5} = -e^{-\ln 5} - \left( -e^{0} \right) = -\frac{1}{5} + 1 = \frac{4}{5}$$

* **Paso 3: Producto de los resultados**
  $$I = \frac{3}{2} \cdot \frac{4}{5} = \frac{12}{10} = \frac{6}{5}$$

> ⚠️ **Análisis de la Discrepancia con el PDF Oficial:** El PDF de respuestas oficiales indica como resultado el entero $6$.  
> Si el integrando hubiera sido $e^{2x + y}$ (signo positivo en el exponente):
> $$\int_{0}^{\ln 5} e^{y} \, \text{d}y = \left[ e^{y} \right]_{0}^{\ln 5} = 5 - 1 = 4 \implies I = \frac{3}{2} \cdot 4 = 6$$
> Se concluye que existe una errata tipográfica en la guía de respuestas de la cátedra (confusión entre $e^{2x - y}$ y $e^{2x + y}$). El valor matemáticamente exacto para la expresión planteada $e^{2x - y}$ es $\frac{6}{5}$.



### 🔹 Ejercicio 1.e
Calcular la integral iterada:
$$I = \int_{0}^{1} \int_{1}^{2} (x + y)^{-2} \, \text{d}x \, \text{d}y$$

* **Paso 1: Integración interior respecto a $x$**
  $$\int_{1}^{2} (x + y)^{-2} \, \text{d}x = \left[ -\frac{1}{x + y} \right]_{x=1}^{x=2} = -\frac{1}{2 + y} - \left( -\frac{1}{1 + y} \right) = \frac{1}{1 + y} - \frac{1}{2 + y}$$

* **Paso 2: Integración exterior respecto a $y$**
  $$I = \int_{0}^{1} \left( \frac{1}{1 + y} - \frac{1}{2 + y} \right) \text{d}y = \left[ \ln|1 + y| - \ln|2 + y| \right]_{0}^{1} = (\ln 2 - \ln 3) - (\ln 1 - \ln 2)$$
  $$I = \ln 2 - \ln 3 + \ln 2 = -\ln 3 + 2 \ln 2 = \ln \left( \frac{4}{3} \right)$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($-\ln 3 + 2 \ln 2$).



## 2. 🔲 Integrales Dobles sobre Regiones Rectangulares

### 🔸 Ejercicio 2.a
Calcular $$\iint_{R} 6x^{2}y^{3} \, \text{d}A$$ sobre la región $$R = \{ (x,y) : 0 \le x \le 3, \ 0 \le y \le 1 \}$$

* **Paso 1: Planteo por separabilidad de variables**
  $$\iint_{R} 6x^{2}y^{3} \, \text{d}A = \left( \int_{0}^{3} 6x^{2} \, \text{d}x \right) \cdot \left( \int_{0}^{1} y^{3} \, \text{d}y \right)$$

* **Paso 2: Integración y producto**
  
$$\int_{0}^{3} 6x^{2} \, \text{d}x = \left[ 2x^{3} \right]_{0}^{3} = 2(27) = 54$$
$$\int_{0}^{1} y^{3} \, \text{d}y = \left[ \frac{y^{4}}{4} \right]_{0}^{1} = \frac{1}{4}$$
$$I = 54 \cdot \frac{1}{4} = \frac{27}{2}$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($\frac{27}{2}$).



### 🔸 Ejercicio 2.b
Calcular $\iint_{R} x y e^{y} \, \text{d}A$ sobre la región $R = [0,2] \times [0,1]$.

* **Paso 1: Planteo por separabilidad de variables**
  $$\iint_{R} x y e^{y} \, \text{d}A = \left( \int_{0}^{2} x \, \text{d}x \right) \cdot \left( \int_{0}^{1} y e^{y} \, \text{d}y \right)$$

* **Paso 2: Evaluación de las integrales**

$$\int_{0}^{2} x \, \text{d}x = \left[ \frac{x^{2}}{2} \right]_{0}^{2} = 2$$
Para la integral de $y e^{y}$, aplicamos integración por partes ($u = y \implies \text{d}u = \text{d}y$; $dv = e^{y} \, \text{d}y \implies v = e^{y}$):

$$\int_{0}^{1} y e^{y} \, \text{d}y = \left[ y e^{y} - e^{y} \right]_{0}^{1} = \left( 1e^{1} - e^{1} \right) - \left( 0 - e^{0} \right) = 0 - (-1) = 1$$

* **Paso 3: Producto final**
  $$I = 2 \cdot 1 = 2$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($2$).



### 🔸 Ejercicio 2.c
Calcular $\iint_{R} \frac{x y^{2}}{x^{2} + 1} \, \text{d}A$ sobre la región $R = [0,1] \times [-3,3]$.

* **Paso 1: Factorización de integrales**
  $$\iint_{R} \frac{x y^{2}}{x^{2} + 1} \, \text{d}A = \left( \int_{0}^{1} \frac{x}{x^{2} + 1} \, \text{d}x \right) \cdot \left( \int_{-3}^{3} y^{2} \, \text{d}y \right)$$

* **Paso 2: Integración**

$$\int_{0}^{1} \frac{x}{x^{2} + 1} \, \text{d}x = \left[ \frac{1}{2} \ln(x^{2} + 1) \right]_{0}^{1} = \frac{1}{2} \ln 2 - 0 = \frac{1}{2} \ln 2$$

$$\int_{-3}^{3} y^{2} \, \text{d}y = \left[ \frac{y^{3}}{3} \right]_{-3}^{3} = \frac{27}{3} - \left( -\frac{27}{3} \right) = 9 + 9 = 18$$

* **Paso 3: Producto final**
  $$I = \left( \frac{1}{2} \ln 2 \right) \cdot 18 = 9 \ln 2$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($9 \ln 2$).



### 🔸 Ejercicio 2.d
Calcular $\iint_{R} x e^{xy} \, \text{d}A$ sobre la región $R = [0,1] \times [0,1]$.

* **Paso 1: Elección conveniente del orden de integración**  
  Integrando primero respecto de $y$:
  $$\iint_{R} x e^{xy} \, \text{d}A = \int_{0}^{1} \left( \int_{0}^{1} x e^{xy} \, \text{d}y \right) \text{d}x$$

* **Paso 2: Integración interior respecto a $y$**  
  Dado que $\frac{\partial}{\partial y}(e^{xy}) = x e^{xy}$:
  $$\int_{0}^{1} x e^{xy} \, \text{d}y = \left[ e^{xy} \right]_{y=0}^{y=1} = e^{x} - e^{0} = e^{x} - 1$$

* **Paso 3: Integración exterior respecto a $x$**
  $$I = \int_{0}^{1} (e^{x} - 1) \, \text{d}x = \left[ e^{x} - x \right]_{0}^{1} = (e^{1} - 1) - (e^{0} - 0) = (e - 1) - 1 = e - 2$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($e - 2$).



## 3. 🧊 Aplicaciones al Cálculo de Volúmenes

### 📦 Ejercicio 3
Hallar el volumen del sólido que se encuentra bajo el paraboloide $z = x^{2} + y^{2}$ y arriba del rectángulo $R = [-2,2] \times [-3,3]$.

* **Paso 1: Planteo de la integral del volumen**
  $$V = \iint_{R} (x^{2} + y^{2}) \, \text{d}A = \int_{-2}^{2} \int_{-3}^{3} (x^{2} + y^{2}) \, \text{d}y \, \text{d}x$$

* **Paso 2: Integración respecto a $y$**
  $$\int_{-3}^{3} (x^{2} + y^{2}) \, \text{d}y = \left[ x^{2}y + \frac{y^{3}}{3} \right]_{y=-3}^{y=3} = (3x^{2} + 9) - (-3x^{2} - 9) = 6x^{2} + 18$$

* **Paso 3: Integración respecto a $x$**
  $$V = \int_{-2}^{2} (6x^{2} + 18) \, \text{d}x = \left[ 2x^{3} + 18x \right]_{-2}^{2} = \left( 2(8) + 18(2) \right) - \left( 2(-8) + 18(-2) \right)$$
  $$V = (16 + 36) - (-16 - 36) = 52 + 52 = 104$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($104$).



### 📦 Ejercicio 4
Hallar el volumen del sólido que se encuentra bajo el paraboloide elíptico $z = \frac{x^{2}}{4} + \frac{y^{2}}{9}$ y arriba del rectángulo $R = [-1,1] \times [-2,2]$.

* **Paso 1: Planteo de la integral iterada**
  $$V = \int_{-1}^{1} \int_{-2}^{2} \left( \frac{x^{2}}{4} + \frac{y^{2}}{9} \right) \text{d}y \, \text{d}x$$

* **Paso 2: Integración interior respecto a $y$**
  $$\int_{-2}^{2} \left( \frac{x^{2}}{4} + \frac{y^{2}}{9} \right) \text{d}y = \left[ \frac{x^{2}y}{4} + \frac{y^{3}}{27} \right]_{y=-2}^{y=2} = \left( \frac{2x^{2}}{4} + \frac{8}{27} \right) - \left( -\frac{2x^{2}}{4} - \frac{8}{27} \right) = x^{2} + \frac{16}{27}$$

* **Paso 3: Integración exterior respecto a $x$**
  $$V = \int_{-1}^{1} \left( x^{2} + \frac{16}{27} \right) \text{d}x = \left[ \frac{x^{3}}{3} + \frac{16x}{27} \right]_{-1}^{1} = \left( \frac{1}{3} + \frac{16}{27} \right) - \left( -\frac{1}{3} - \frac{16}{27} \right)$$
  $$V = \frac{2}{3} + \frac{32}{27} = \frac{18 + 32}{27} = \frac{50}{27}$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($\frac{50}{27}$).



### 📦 Ejercicio 5
Hallar el volumen del sólido que se encuentra en el primer octante, limitado por el cilindro $z = 9 - y^{2}$ y el plano $x = 2$.

* **Paso 1: Determinación de los límites de integración de la región $R$**
  * El primer octante establece $x \ge 0$, $y \ge 0$, $z \ge 0$.
  * La proyección sobre el plano $xy$ está acotada por $x = 0$ hasta $x = 2$.
  * Para la variable $y$, la condición $z \ge 0 \implies 9 - y^{2} \ge 0 \implies y \le 3$. Como $y \ge 0$, el intervalo es $0 \le y \le 3$.
  * La región de integración rectangular es $R = [0,2] \times [0,3]$.

* **Paso 2: Integración iterada**
  $$V = \iint_{R} (9 - y^{2}) \, \text{d}A = \int_{0}^{2} \int_{0}^{3} (9 - y^{2}) \, \text{d}y \, \text{d}x$$

  Por separabilidad de variables:
  $$V = \left( \int_{0}^{2} \text{d}x \right) \cdot \left( \int_{0}^{3} (9 - y^{2}) \, \text{d}y \right) = 2 \cdot \left[ 9y - \frac{y^{3}}{3} \right]_{0}^{3} = 2 \cdot \left( 27 - \frac{27}{3} \right) = 2 \cdot (27 - 9) = 2 \cdot 18 = 36$$

> **Resultado:** Coincidente con la respuesta oficial del PDF ($36$).



## 📈 Tabla Resumen y Validación de Respuestas

| Ejercicio | Expresión u Obj. Físico | Resultado Calculado | Coincidencia con PDF |
| :---: | :--- | :---: | :---: |
| **1.a** | $\int_{0}^{1} \int_{1}^{3} (1 + 4xy) \, \text{d}x \, \text{d}y$ | $10$ | Coincide |
| **1.b** | $\int_{-1}^{1} \int_{2}^{4} (x^{2} + y^{2}) \, \text{d}y \, \text{d}x$ | $\frac{116}{3}$ | Coincide |
| **1.c** | $\int_{1}^{2} \int_{1}^{4} \left( \frac{x}{y} + \frac{y}{x} \right) \text{d}y \, \text{d}x$ | $\frac{21}{2} \ln 2$ | Coincide |
| **1.d** | $\int_{0}^{\ln 5} \int_{0}^{\ln 2} e^{2x - y} \, \text{d}x \, \text{d}y$ | $\frac{6}{5}$ | Errata oficial ($6$ vs $\frac{6}{5}$) |
| **1.e** | $\int_{0}^{1} \int_{1}^{2} (x + y)^{-2} \, \text{d}x \, \text{d}y$ | $-\ln 3 + 2 \ln 2$ | Coincide |
| **2.a** | $\iint_{R} 6x^{2}y^{3} \, \text{d}A$ sobre $[0,3] \times [0,1]$ | $\frac{27}{2}$ | Coincide |
| **2.b** | $\iint_{R} x y e^{y} \, \text{d}A$ sobre $[0,2] \times [0,1]$ | $2$ | Coincide |
| **2.c** | $\iint_{R} \frac{x y^{2}}{x^{2} + 1} \, \text{d}A$ sobre $[0,1] \times [-3,3]$ | $9 \ln 2$ | Coincide |
| **2.d** | $\iint_{R} x e^{xy} \, \text{d}A$ sobre $[0,1] \times [0,1]$ | $e - 2$ | Coincide |
| **3** | Vol. $z = x^{2} + y^{2}$ sobre $[-2,2] \times [-3,3]$ | $104$ | Coincide |
| **4** | Vol. $z = \frac{x^{2}}{4} + \frac{y^{2}}{9}$ sobre $[-1,1] \times [-2,2]$ | $\frac{50}{27}$ | Coincide |
| **5** | Vol. $1^{\text{er}}$ octante $z = 9 - y^{2}$, $x = 2$ | $36$ | Coincide |
