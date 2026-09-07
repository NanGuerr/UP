# 📚 Evaluación de Ecuaciones Diferenciales



## 📌 Pregunta 1: Factor Integrante 🧮

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$y \, dx + 3x \, dy = 0$$
>
> **Opciones de respuesta:**
> - **A)** Admite un factor integrante que depende de $y$.
> - **B)** El factor integrante es $\mu(y) = -\frac{2}{3y}$
> - **C)** El factor integrante es $\mu(x) = x^{-\frac{2}{3}}$
> - **D)** Admite un factor integrante que depende de $x$.



### 🔍 Procedimiento Detallado

1. **Identificación de Componentes:**
   La ecuación está en la forma $M(x,y) \, dx + N(x,y) \, dy = 0$:
   - $M(x,y) = y$
   - $N(x,y) = 3x$

2. **Verificación de Exactitud:**
   Calculamos las derivadas parciales cruzadas:
   - $\frac{\partial M}{\partial y} = 1$
   - $\frac{\partial N}{\partial x} = 3$

   Como $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$, la ecuación diferencial **no es exacta**.

3. **Búsqueda del Factor Integrante $\mu(x)$ (Dependencia exclusiva de $x$):**
   Evaluamos el cociente:
   $$\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} = \frac{1 - 3}{3x} = -\frac{2}{3x}$$

   Como la expresión resultante depende únicamente de $x$, la ecuación **admite un factor integrante que depende de $x$**.

4. **Cálculo del Factor Integrante $\mu(x)$:**
   $$\mu(x) = e^{\int \left(-\frac{2}{3x}\right) dx} = e^{-\frac{2}{3} \ln|x|} = e^{\ln\left(x^{-\frac{2}{3}}\right)} = x^{-\frac{2}{3}}$$



### ✅ Respuestas Correctas
👉 **C)** El factor integrante es $\mu(x) = x^{-\frac{2}{3}}$  
👉 **D)** Admite un factor integrante que depende de $x$.



## 📌 Pregunta 2: Ecuación Diferencial Homogénea 📐

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$(x^2 + xy) \, dx + (y^2 - xy) \, dy = 0$$
> **Determine si es homogénea, exacta o lineal y encuentre la solución general empleando el método que considere más conveniente.**



### 🔍 Procedimiento Detallado

1. **Clasificación:**
   - $M(x,y) = x^2 + xy$ (Grado 2)
   - $N(x,y) = y^2 - xy$ (Grado 2)

   Dado que todos los términos son polinomios homogéneos de grado 2, la ecuación es **Homogénea**.

2. **Resolución mediante la Sustitución $y = u \cdot x$:**
   Diferenciando $y$:
   $$dy = u \, dx + x \, du$$

3. **Sustitución en la Ecuación Diferencial Original:**
   $$(x^2 + x(ux)) \, dx + ((ux)^2 - x(ux))(u \, dx + x \, du) = 0$$
   $$(x^2 + u x^2) \, dx + (u^2 x^2 - u x^2)(u \, dx + x \, du) = 0$$

   Dividiendo toda la ecuación entre $x^2$:
   $$(1 + u) \, dx + (u^2 - u)(u \, dx + x \, du) = 0$$

4. **Agrupación de Términos:**
   $$(1 + u + u^3 - u^2) \, dx + x(u^2 - u) \, du = 0$$
   $$(u^3 - u^2 + u + 1) \, dx + x(u^2 - u) \, du = 0$$

5. **Separación de Variables e Integración:**
   $$\frac{dx}{x} + \frac{u^2 - u}{u^3 - u^2 + u + 1} \, du = 0$$

   Integrando ambos lados se obtiene la constante de integración $C$. Finalmente, restituyendo $u = \frac{y}{x}$ se obtiene la solución implícita del sistema.



### ✅ Respuesta Final
* **Clasificación:** Ecuación Diferencial **Homogénea**.
* **Solución:** Obtenida mediante separación de variables tras la sustitución $y = ux$.



## 📌 Pregunta 3: Interpretación Geometría de Soluciones 📈

### 📝 Transcripción del Enunciado
> La solución general de la ecuación $y' = \frac{y}{x}$ es:
> - **A)** Depende del valor de la constante de integración.
> - **B)** Es una familia de hipérbolas.
> - **C)** Es una familia de rectas que pasan por el origen.
> - **D)** Es una familia de circunferencias concéntricas.



### 🔍 Procedimiento Detallado

1. **Separación de Variables:**
   $$\frac{dy}{dx} = \frac{y}{x} \implies \frac{dy}{y} = \frac{dx}{x}$$

2. **Integración:**
   $$\int \frac{dy}{y} = \int \frac{dx}{x}$$
   $$\ln|y| = \ln|x| + C'$$

3. **Despeje de $y$:**
   $$|y| = e^{\ln|x| + C'} = e^{C'} \cdot |x|$$
   $$y = C \cdot x$$

4. **Análisis Geométrico:**
   La ecuación $y = C x$ representa a la familia de **rectas con pendiente $C$ que atraviesan el origen $(0,0)$**.



### ✅ Respuesta Correcta
👉 **C)** Es una familia de rectas que pasan por el origen.



## 📌 Pregunta 4: Depreciación Financiera 🚗📉

### 📝 Transcripción del Enunciado
> Un automóvil que cuesta **u$d 25000** se deprecia a una tasa del **15% anual**. **¿Cuántos años tardará en reducirse el valor del automóvil a la mitad?** Emplee una ecuación diferencial para resolver el problema.



### 🔍 Procedimiento Detallado

1. **Formulación del Modelo:**
   Sea $V(t)$ el valor del vehículo en el año $t$. La tasa de cambio con respecto al tiempo es proporcional al valor actual:
   $$\frac{dV}{dt} = -k \cdot V$$
   donde $k = 0{,}15$ (tasa de depreciación anual del 15%) y $V(0) = 25000$.

2. **Resolución de la Ecuación Diferencial:**
   $$\frac{dV}{V} = -0{,}15 \, dt \implies \int \frac{dV}{V} = \int -0{,}15 \, dt$$
   $$\ln(V) = -0{,}15 t + C \implies V(t) = V_0 e^{-0{,}15 t}$$
   $$V(t) = 25000 e^{-0{,}15 t}$$

3. **Cálculo del Tiempo para Vida Media ($V(t) = \frac{25000}{2} = 12500$):**
   $$12500 = 25000 e^{-0{,}15 t}$$
   $$\frac{1}{2} = e^{-0{,}15 t}$$

   Aplicando logaritmo natural:
   $$\ln\left(\frac{1}{2}\right) = -0{,}15 t$$
   $$-\ln(2) = -0{,}15 t \implies t = \frac{\ln(2)}{0{,}15}$$

4. **Sustitución Numérica:**
   $$t = \frac{0{,}693147}{0{,}15} \approx 4{,}62 \text{ años}$$



### ✅ Respuesta Final
Tardará aproximadamente **4,62 años** (4 años, 7 meses y 13 días) en reducir su valor inicial a la mitad.



## 📌 Pregunta 5: Parámetro para Ecuación Exacta ⚖️

### 📝 Transcripción del Enunciado
> El valor de "$m$" para que la ecuación $(4x y^3 + \operatorname{sen} x) \, dx + (m x^2 y^2 - \cos y) \, dy = 0$ sea exacta es:
> - **A)** $m = 6$



### 🔍 Procedimiento Detallado

1. **Identificación de Funciones:**
   - $M(x,y) = 4x y^3 + \operatorname{sen} x$
   - $N(x,y) = m x^2 y^2 - \cos y$

2. **Cálculo de Derivadas Parciales:**
   - $\frac{\partial M}{\partial y} = \frac{\partial}{\partial y}(4x y^3 + \operatorname{sen} x) = 12x y^2$
   - $\frac{\partial N}{\partial x} = \frac{\partial}{\partial x}(m x^2 y^2 - \cos y) = 2m x y^2$

3. **Condición de Exactitud ($\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$):**
   $$12 x y^2 = 2m x y^2$$

4. **Despeje de $m$:**
   $$12 = 2m \implies m = \frac{12}{2} = 6$$



### ✅ Respuesta Correcta
👉 **$m = 6$**
