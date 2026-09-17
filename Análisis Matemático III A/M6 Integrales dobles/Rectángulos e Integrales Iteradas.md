# 📘 Integrales Dobles sobre Rectángulos e Integrales Iteradas



## 📄 Resumen Ejecutivo

Este documento sintetiza los fundamentos matemáticos y las aplicaciones prácticas de las integrales dobles sobre regiones rectangulares, basándose en las obras de Stewart y Larson. El concepto central es la transición de la integral definida de una variable al cálculo de volúmenes y áreas bajo superficies en el espacio tridimensional.

Los puntos clave identificados incluyen:

* 📐 **Definición Formal:** La integral doble se define como el límite de una doble suma de Riemann, representando el volumen bajo una función continua $f(x, y)$ sobre un rectángulo $R$.
* 🔄 **Integrales Iteradas:** Es el método práctico por excelencia para evaluar integrales dobles, permitiendo desglosar una operación compleja en dos integrales simples sucesivas.
* 🔀 **Teorema de Fubini:** Establece que, para funciones continuas, el orden de integración (respecto a $x$ o respecto a $y$) no altera el resultado final, proporcionando flexibilidad estratégica en el cálculo.
* 📊 **Propiedades y Aplicaciones:** Se destacan la linealidad, la aditividad de regiones y el cálculo del valor promedio de una función, además de técnicas de aproximación como la Regla del Punto Medio.



## 1. 📐 Fundamentos de la Integral Doble

La integral doble extiende el concepto de integral definida a funciones de dos variables definidas en una región cerrada y acotada del plano $xy$.

### 1.1. Definición y Aproximación de Riemann
Para una función $f$ definida en un rectángulo $R = [a, b] \times [c, d]$, la región se divide en subrectángulos $R_{ij}$ con área $\Delta A = \Delta x \cdot \Delta y$.

* 🧊 **Suma de Riemann:** Se aproxima el volumen total sumando los volúmenes de prismas rectangulares cuya altura es $f(x_{ij}^*, y_{ij}^*)$, donde $(x_{ij}^*, y_{ij}^*)$ es un punto muestra en cada subrectángulo.
* ♾️ **Límite Formal:** La integral doble de $f$ sobre $R$ es el límite de la doble suma de Riemann cuando el número de divisiones tiende a infinito:
  $$\iint_{R} f(x, y) \, \text{d}A = \lim_{m,n \to \infty} \sum_{i=1}^{m} \sum_{j=1}^{n} f(x_{ij}^*, y_{ij}^*) \, \Delta A$$

### 1.2. Interpretación Geométrica
Si $f(x, y) \ge 0$, la integral doble $\iint_{R} f(x, y) \, \text{d}A$ representa exactamente el volumen del sólido $S$ que se encuentra arriba del rectángulo $R$ y debajo de la superficie $z = f(x, y)$. Si la función toma valores negativos, la integral representa la diferencia neta de volúmenes por encima y por debajo del plano $xy$.



## 2. ⚙️ Metodología de Evaluación: Integrales Iteradas

Debido a la dificultad de evaluar el límite de sumas de Riemann directamente, se utiliza el concepto de integración parcial.

### 2.1. Mecánica del Cálculo
Una integral iterada permite evaluar la integral doble mediante dos integrales simples:

1. **Integración Parcial respecto a $y$:** Se mantiene $x$ constante y se integra $f(x, y)$ desde $y = c$ hasta $y = d$. El resultado, $A(x)$, es una función que depende únicamente de $x$.
2. **Integración respecto a $x$:** Se integra la función $A(x)$ desde $x = a$ hasta $x = b$.

$$\text{Notación: } \int_{a}^{b} \int_{c}^{d} f(x, y) \, \text{d}y \, \text{d}x = \int_{a}^{b} \left[ \int_{c}^{d} f(x, y) \, \text{d}y \right] \text{d}x$$

### 2.2. Flexibilidad del Orden de Integración
De igual manera, se puede integrar primero respecto a $x$ (manteniendo $y$ constante) y luego respecto a $y$:
$$\int_{c}^{d} \int_{a}^{b} f(x, y) \, \text{d}x \, \text{d}y$$



## 3. 🔀 El Teorema de Fubini

Este teorema es la piedra angular del cálculo de integrales múltiples. Establece la igualdad de las integrales iteradas bajo condiciones específicas de continuidad.

| Condición | Consecuencia Técnica |
| :--- | :--- |
| **Continuidad** | Si $f$ es continua en el rectángulo $R = [a, b] \times [c, d]$, ambas integrales iteradas son iguales. |
| **Discontinuidad Limitada** | El teorema también es válido si $f$ está acotada en $R$ y es discontinua solo en un número finito de curvas suaves. |

🎯 **Importancia Estratégica:** En la práctica, un orden de integración puede ser significativamente más sencillo que el otro. Por ejemplo, en funciones como $y \cdot \sin(xy)$, integrar primero respecto a $x$ puede evitar el uso de integración por partes.

### 3.1. Caso Especial: Funciones Factorizables
Si la función $f(x, y)$ puede expresarse como el producto de dos funciones independientes, $g(x)$ y $h(y)$, la integral doble sobre un rectángulo se simplifica al producto de dos integrales simples:
$$\iint_{R} g(x)h(y) \, \text{d}A = \left( \int_{a}^{b} g(x) \, \text{d}x \right) \cdot \left( \int_{c}^{d} h(y) \, \text{d}y \right)$$



## 4. 🧮 Propiedades de las Integrales Dobles

Las integrales dobles heredan y expanden las propiedades de las integrales simples:

* ➕ **Linealidad:**
  $$\iint_{R} c \cdot f(x, y) \, \text{d}A = c \cdot \iint_{R} f(x, y) \, \text{d}A \quad (\text{donde } c \text{ es una constante})$$
  $$\iint_{R} \left[ f(x, y) \pm g(x, y) \right] \text{d}A = \iint_{R} f(x, y) \, \text{d}A \pm \iint_{R} g(x, y) \, \text{d}A$$
* 📈 **Monotonicidad:** Si $f(x, y) \ge g(x, y)$ para todo $(x, y)$ en $R$, entonces:
  $$\iint_{R} f(x, y) \, \text{d}A \ge \iint_{R} g(x, y) \, \text{d}A$$
* 🧩 **Aditividad de Regiones:** Si $R = R_1 \cup R_2$, donde $R_1$ y $R_2$ no se sobreponen (su intersección tiene área 0), entonces:
  $$\iint_{R} f(x, y) \, \text{d}A = \iint_{R_1} f(x, y) \, \text{d}A + \iint_{R_2} f(x, y) \, \text{d}A$$



## 5. 🚀 Técnicas Avanzadas y Aplicaciones

### 5.1. Regla del Punto Medio
📍 Para aproximar una integral doble de forma más precisa que con los extremos de los subrectángulos, se utiliza el centro $(\bar{x}_i, \bar{y}_j)$ de cada subrectángulo:
$$\iint_{R} f(x, y) \, \text{d}A \approx \sum_{i=1}^{m} \sum_{j=1}^{n} f(\bar{x}_i, \bar{y}_j) \, \Delta A$$

### 5.2. Valor Promedio de una Función
📊 El valor promedio de una función integrable $f$ sobre una región plana $R$ con área $A$ se define como:
$$f_{\text{prom}} = \frac{1}{A} \iint_{R} f(x, y) \, \text{d}A$$



## 6. 📌 Conclusiones y Observaciones Críticas

* ➖ **Resultados Negativos:** Una integral doble puede dar un resultado negativo si la mayor parte de la superficie se encuentra debajo del plano $xy$. En estos casos, el valor absoluto representa el volumen, pero el signo indica su posición relativa respecto al plano de referencia.
* 🛠️ **Selección del Orden:** El análisis subraya la importancia de evaluar la función antes de integrar. Elegir $\text{d}x \, \text{d}y$ o $\text{d}y \, \text{d}x$ no es solo una cuestión de preferencia, sino una herramienta para simplificar el proceso analítico y evitar métodos laboriosos como la integración por partes o el uso de funciones no elementales.
* 📚 **Referencia Bibliográfica de Autoridad:** Las metodologías expuestas se basan en los textos de James Stewart (*Cálculo de Trascendentes Tempranas*) y Ron Larson (*Cálculo 2 de varias variables*), asegurando la rigurosidad académica de los procedimientos descritos.
