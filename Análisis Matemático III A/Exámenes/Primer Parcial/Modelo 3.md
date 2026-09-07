# 📚 Resolució de Evaluación - Ecuaciones Diferenciales



## 📌 Pregunta 1: Interés Compuesto Continuo 💰

### 📝 Transcripción del Enunciado
> Cuando el interés se capitaliza continuamente, en cualquier momento la cantidad de dinero aumenta a razón proporcional a la cantidad presente, donde la constante de proporcionalidad es la tasa de interés anual. Se depositan **$5000** en una cuenta de ahorro que rinde el **5,75%** de interés anual. **¿En cuántos años se habrá duplicado el capital?**



### 🔍 Procedimiento Detallado

1. **Formulación del Modelo Diferencial:**
   La tasa de cambio del capital $P(t)$ con respecto al tiempo $t$ es proporcional al capital presente:
   $$\frac{dP}{dt} = k \cdot P$$
   donde $k = 0{,}0575$ (tasa de interés anual del 5.75%).

2. **Resolución de la Ecuación Diferencial por Separación de Variables:**
   $$\frac{dP}{P} = k \cdot dt$$
   Integrando ambos lados:
   $$\int \frac{dP}{P} = \int k \cdot dt \implies \ln(P) = k t + C$$
   Despejando $P(t)$:
   $$P(t) = P_0 e^{k t}$$
   donde $P_0 = 5000$ es el capital inicial.

3. **Cálculo del Tiempo de Duplicación:**
   Queremos encontrar el tiempo $t$ tal que el capital final sea el doble del inicial, es decir, $P(t) = 2 P_0 = 10000$:
   $$2 P_0 = P_0 e^{k t} \implies 2 = e^{k t}$$
   Aplicando logaritmo natural en ambos lados:
   $$\ln(2) = k t \implies t = \frac{\ln(2)}{k}$$

4. **Sustitución de Valores:**
   $$t = \frac{\ln(2)}{0{,}0575} \approx \frac{0{,}693147}{0{,}0575} \approx 12{,}0548 \text{ años}$$



### ✅ Respuesta Final
El capital se habrá duplicado en aproximadamente **12,05 años** (aproximadamente **12 años y 20 días**).



## 📌 Pregunta 2: Ecuación Diferencial Ordinaria 📐

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$x \cdot y' = y + 2x \cdot e^{\frac{y}{x}}$$
> **Determine si es homogénea, exacta o lineal y encuentre la solución general empleando el método que considere más conveniente.**



### 🔍 Procedimiento Detallado

1. **Análisis de Clasificación:**
   Reescribimos la ecuación en términos de $y'$:
   $$y' = \frac{y}{x} + 2 e^{\frac{y}{x}}$$
   Como el lado derecho está expresado completamente en términos de la razón $\frac{y}{x}$, la ecuación es **Homogénea de grado 0**.

2. **Resolución mediante Sustitución:**
   Sea $u = \frac{y}{x} \implies y = u \cdot x$.
   Derivando respecto a $x$:
   $$y' = u + x \cdot \frac{du}{dx}$$

3. **Sustitución en la Ecuación Diferencial:**
   $$u + x \cdot \frac{du}{dx} = u + 2 e^u$$
   Restando $u$ en ambos lados:
   $$x \cdot \frac{du}{dx} = 2 e^u$$

4. **Separación de Variables e Integración:**
   $$\frac{du}{2 e^u} = \frac{dx}{x} \implies \frac{1}{2} e^{-u} du = \frac{dx}{x}$$
   Integrando ambos lados:
   $$\int \frac{1}{2} e^{-u} du = \int \frac{1}{x} dx$$
   $$-\frac{1}{2} e^{-u} = \ln|x| + C$$
   Multiplicando por $-2$:
   $$e^{-u} = -2 \ln|x| + C'$$

5. **Restitución de $u = \frac{y}{x}$:**
   $$e^{-\frac{y}{x}} = -2 \ln|x| + C' \implies -\frac{y}{x} = \ln\left(C' - 2 \ln|x|\right)$$
   $$y(x) = -x \cdot \ln\left(C - 2 \ln|x|\right)$$



### ✅ Respuesta Final
* **Clasificación:** Es una ecuación diferencial **Homogénea**.
* **Solución General:**
  $$y(x) = -x \cdot \ln\left(C - 2 \ln|x|\right) \quad \text{o de forma implícita } e^{-\frac{y}{x}} + 2\ln|x| = C$$



## 📌 Pregunta 3: Condición de Homogeneidad 🧪

### 📝 Transcripción del Enunciado
> La ecuación diferencial:
> $$x^2 y^{m+1} \cdot \ln\left(\frac{x^n}{y^3}\right) dx + x^3 y^m \cdot \{sen}\left(\frac{y}{x}\right) dy = 0$$
> **Seleccione la única respuesta correcta:**
> - **A)** Es homogénea si $n=3$ y $m=4$
> - **B)** Es homogénea si $n=4$ y $m=3$
> - **C)** Es homogénea para cualquier valor de $m$ y $n$
> - **D)** No es homogénea sin importar los valores de $m$ y $n$



### 🔍 Procedimiento Detallado

1. **Análisis de los Argumentos Transcendentes:**
   Para que una ecuación diferencial sea homogénea, los argumentos de las funciones trascendentes ($\ln$, $\{sen}$) deben ser adimensionales (de grado 0).
   * En el término $\{sen}\left(\frac{y}{x}\right)$, la razón $\frac{y}{x}$ es homogénea de grado 0.
   * En el término $\ln\left(\frac{x^n}{y^3}\right)$, para que el argumento no tenga dimensiones, los grados de $x$ y $y$ en el cociente deben ser iguales:
     $$n = 3$$

2. **Análisis de los Coeficientes Polinómicos:**
   Expresamos la ecuación como $M(x,y)dx + N(x,y)dy = 0$:
   * $M(x,y) = x^2 y^{m+1} \cdot \ln\left(\frac{x^n}{y^3}\right)$
   * $N(x,y) = x^3 y^m \cdot \{sen}\left(\frac{y}{x}\right)$

   Calculamos el grado de homogeneidad de los factores monomiales:
   * Grado de $M$: $2 + (m + 1) = m + 3$
   * Grado de $N$: $3 + m = m + 3$

   Observamos que los coeficientes $M$ y $N$ tienen el mismo grado $m + 3$ para **cualquier valor de $m$**.

3. **Conclusión:**
   * Para garantizar que $\frac{x^n}{y^3}$ sea de grado 0, se requiere **$n = 3$**.
   * El valor de $m$ cancela algebraicamente en ambos términos, pero analizando las opciones disponibles, la única que cumple $n = 3$ es la **Opción A** ($n=3$ y $m=4$).



### ✅ Respuesta Correcta
👉 **A) Es homogénea si $n=3$ y $m=4$**



## 📌 Pregunta 4: Factor Integrante 🧮

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$\left(3x^2 - y^2\right) dy - 2xy \, dx = 0$$
> **Seleccione todas las respuestas correctas:**
> - **A)** Admite un factor integrante que depende sólo de $x$
> - **B)** Admite un factor integrante que depende solo de $y$
> - **C)** El factor integrante es $\mu(x) = -\frac{4}{x}$
> - **D)** El factor integrante es $\mu(y) = -\frac{4}{y}$
> - **E)** El factor integrante es $\mu(y) = \frac{1}{y^4}$



### 🔍 Procedimiento Detallado

1. **Identificación de Términos:**
   Reescribiendo en la forma estándar $M(x,y)dx + N(x,y)dy = 0$:
   $$-2xy \, dx + (3x^2 - y^2) \, dy = 0$$
   Donde:
   * $M(x,y) = -2xy$
   * $N(x,y) = 3x^2 - y^2$

2. **Cálculo de Derivadas Parciales:**
   * $\frac{\partial M}{\partial y} = -2x$
   * $\frac{\partial N}{\partial x} = 6x$

   Como $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$, la ecuación **no es exacta**.

3. **Prueba de Factor Integrante que depende solo de $y$, $\mu(y)$:**
   La fórmula para la dependencia solo de $y$ es:
   $$\frac{1}{M} \left( \frac{\partial N}{\partial x} - \frac{\partial M}{\partial y} \right) = \frac{1}{-2xy} \left( 6x - (-2x) \right) = \frac{8x}{-2xy} = -\frac{4}{y}$$
   Dado que este resultado depende **exclusivamente de $y$**, la ecuación admite un factor integrante $\mu(y)$.

4. **Obtención del Factor Integrante $\mu(y)$:**
   $$\mu(y) = e^{\int -\frac{4}{y} dy} = e^{-4 \ln|y|} = y^{-4} = \frac{1}{y^4}$$



### ✅ Respuestas Correctas
👉 **B) Admite un factor integrante que depende solo de y**
👉 **E) El factor integrante es $\mu(y) = \frac{1}{y^4}$**



## 📌 Pregunta 5: Familia de Curvas 📈

### 📝 Transcripción del Enunciado
> La solución general de la ecuación:
> $$y' = k \cdot \frac{x}{y}$$
> **Seleccione la opción correcta:**
> - **A)** Es una familia de hipérbolas
> - **B)** Es una familia de circunferencias de centro (0;0)
> - **C)** Es una familia de elipses
> - **D)** Depende del valor de la constante $k$



### 🔍 Procedimiento Detallado

1. **Resolución por Separación de Variables:**
   $$\frac{dy}{dx} = k \cdot \frac{x}{y} \implies y \, dy = k x \, dx$$

2. **Integración de Ambos Lados:**
   $$\int y \, dy = \int k x \, dx \implies \frac{y^2}{2} = k \frac{x^2}{2} + C'$$
   Multiplicando por 2:
   $$y^2 - k x^2 = C$$

3. **Análisis Geométrico según el valor de $k$:**
   * Si **$k > 0$**: La ecuación representa una **familia de hipérbolas** ($y^2 - kx^2 = C$).
   * Si **$k = -1$**: La ecuación toma la forma $x^2 + y^2 = C$, representando una **familia de circunferencias con centro en $(0,0)$**.
   * Si **$k < 0$ (con $k \neq -1$)**: Representa una **familia de elipses** ($y^2 + |k|x^2 = C$).

4. **Conclusión:**
   Dado que el tipo de cónica o geometría de las curvas solución varía drásticamente según la constante $k$, la forma de la familia de curvas **depende del valor de la constante $k$**.



### ✅ Respuesta Correcta
👉 **D) Depende del valor de la constante k**
