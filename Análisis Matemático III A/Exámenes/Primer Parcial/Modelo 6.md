# 📚 Resolución del Primer Parcial - Análisis Matemático III 📐

**Estudiante:** Álvaro Joaquín Carrizo  
**Materia:** Análisis Matemático III



## 📌 Ejercicio 1: Determinación de la Constante $m$ para Ecuación Exacta ⚖️

### 📝 Transcripción del Enunciado
> Hallar el valor de $m$ para que la ecuación diferencial:
> $$(4xy^3 + \operatorname{sen} x) \, dx + (m x^2 y^2 - \cos y) \, dy = 0$$
> sea **exacta**.



### 🔍 Procedimiento Detallado paso a paso

1. **Identificación de Funciones $M(x,y)$ y $N(x,y)$:**
   Comparamos la expresión dada con la forma estándar $M(x,y) \, dx + N(x,y) \, dy = 0$:
   - $M(x,y) = 4xy^3 + \operatorname{sen} x$
   - $N(x,y) = m x^2 y^2 - \cos y$

2. **Cálculo de Derivadas Parciales Cruzadas:**
   Para que la ecuación diferencial sea **exacta**, se debe cumplir la condición de Euler/Symmetry:
   $$\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$$

   - Derivando $M(x,y)$ con respecto a $y$:
     $$\frac{\partial M}{\partial y} = \frac{\partial}{\partial y}(4xy^3 + \operatorname{sen} x) = 12xy^2$$

   - Derivando $N(x,y)$ con respecto a $x$:
     $$\frac{\partial N}{\partial x} = \frac{\partial}{\partial x}(m x^2 y^2 - \cos y) = 2mxy^2$$

3. **Igualación y Resolución para $m$:**
   Igualamos ambas derivadas parciales:
   $$12xy^2 = 2mxy^2$$

   Dividiendo ambos miembros entre $2xy^2$ (asumiendo $xy \neq 0$):
   $$12 = 2m \implies m = 6$$



### ✅ Respuesta Final
$$\mathbf{m = 6}$$



## 📌 Ejercicio 2: Factor Integrante según Variable 🧮

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$y \, dx + 3x \, dy = 0$$
> Determinar si es exacta o si admite un factor integrante $\mu(x)$ que dependa solo de $x$.



### 🔍 Procedimiento Detallado paso a paso

1. **Identificación de Componentes:**
   - $M(x,y) = y$
   - $N(x,y) = 3x$

2. **Prueba de Exactitud:**
   - $\frac{\partial M}{\partial y} = 1$
   - $\frac{\partial N}{\partial x} = 3$

   Como $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$ ($1 \neq 3$), la ecuación **no es exacta**.

3. **Cálculo del Factor Integrante $\mu(x)$:**
   Calculamos la expresión para la dependencia exclusiva de $x$:
   $$\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} = \frac{1 - 3}{3x} = -\frac{2}{3x}$$

   Como el resultado depende únicamente de $x$, existe un factor integrante $\mu(x)$:
   $$\mu(x) = e^{\int -\frac{2}{3x} \, dx} = e^{-\frac{2}{3} \ln|x|} = x^{-\frac{2}{3}}$$



### ✅ Respuesta Final
La ecuación **no es exacta**. Admite un factor integrante que depende exclusivamente de $x$, expresado como:
$$\mu(x) = x^{-\frac{2}{3}}$$



## 📌 Ejercicio 3: Ecuación Diferencial Lineal de Primer Orden ✏️

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$\frac{dy}{dx} - \frac{y}{x} = x^2 \operatorname{sen} x$$
> Determine si es homogénea, exacta o lineal y encuentre la solución general empleando el método más conveniente.



### 🔍 Procedimiento Detallado paso a paso

1. **Clasificación:**
   La ecuación tiene la forma estándar de una **ecuación diferencial lineal de primer orden**:
   $$\frac{dy}{dx} + P(x)y = f(x)$$
   donde $P(x) = -\frac{1}{x}$ y $f(x) = x^2 \operatorname{sen} x$.

2. **Cálculo del Factor Integrante $\mu(x)$:**
   $$\mu(x) = e^{\int P(x) \, dx} = e^{\int -\frac{1}{x} \, dx} = e^{-\ln|x|} = e^{\ln\left(x^{-1}\right)} = x^{-1} = \frac{1}{x}$$

3. **Multiplicación de la Ecuación por el Factor Integrante:**
   $$\frac{1}{x} \cdot \left(\frac{dy}{dx} - \frac{1}{x} y\right) = \frac{1}{x} \left(x^2 \operatorname{sen} x\right)$$
   $$\frac{d}{dx}\left(\frac{y}{x}\right) = x \operatorname{sen} x$$

4. **Integración de Ambos Lados:**
   $$\frac{y}{x} = \int x \operatorname{sen} x \, dx$$

   * **Cálculo Auxiliar (Integración por Partes $\int u \, dv = uv - \int v \, du$):**
     - $u = x \implies du = dx$
     - $dv = \operatorname{sen} x \, dx \implies v = -\cos x$

     $$\int x \operatorname{sen} x \, dx = -x \cos x - \int (-\cos x) \, dx = -x \cos x + \operatorname{sen} x + C$$

5. **Obtención de la Solución General:**
   $$\frac{y}{x} = -x \cos x + \operatorname{sen} x + C$$

   Multiplicando por $x$:
   $$y(x) = x(-x \cos x + \operatorname{sen} x + C)$$
   $$y(x) = -x^2 \cos x + x \operatorname{sen} x + Cx$$



### ✅ Respuesta Final
Es una ecuación **lineal**. La solución general es:
$$y(x) = -x^2 \cos x + x \operatorname{sen} x + Cx$$



## 📌 Ejercicio 4: Problema de Aplicación / Depreciación 🚗📉

### 📝 Transcripción del Enunciado
> Un automóvil cuesta **$25\,000** y se deprecia a una tasa continua proporcional con $k = 0{,}15$ anual. **¿En cuántos años se reducirá su valor a la mitad?**



### 🔍 Procedimiento Detallado paso a paso

1. **Planteo de la Ecuación Diferencial:**
   Sea $V(t)$ el valor del vehículo en el año $t$:
   $$\frac{dV}{dt} = -k V \implies \frac{dV}{dt} = -0{,}15 V$$

2. **Resolución por Separación de Variables:**
   $$\frac{dV}{V} = -0{,}15 \, dt$$
   Integrando ambos lados:
   $$\int \frac{dV}{V} = \int -0{,}15 \, dt \implies \ln|V| = -0{,}15 t + C$$
   $$V(t) = V_0 e^{-0{,}15 t}$$

   Con la condición inicial $V(0) = 25\,000$:
   $$V(t) = 25\,000 e^{-0{,}15 t}$$

3. **Cálculo del Tiempo para Vida Media ($V(t) = \frac{V(0)}{2}$):**
   $$\frac{25\,000}{2} = 25\,000 e^{-0{,}15 t} \implies \frac{1}{2} = e^{-0{,}15 t}$$

   Aplicando logaritmo natural en ambos miembros:
   $$\ln\left(\frac{1}{2}\right) = -0{,}15 t$$
   $$-\ln(2) = -0{,}15 t \implies t = \frac{\ln(2)}{0{,}15}$$

4. **Sustitución Numérica:**
   $$t = \frac{0{,}6931}{0{,}15} \approx 4{,}62 \text{ años}$$



### ✅ Respuesta Final
El valor del automóvil tardará en reducirse a la mitad aproximadamente **4,62 años** (4 años y 7 meses aproximadamente).
