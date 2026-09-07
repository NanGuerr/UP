# 📚 Examen Parcial - Análisis Matemático III / Ecuaciones Diferenciales



## 📌 Pregunta 1: Modelo Epidemiológico 🦠

### 📝 Transcripción del Enunciado
> En una escuela de 500 estudiantes, una enfermedad se propaga con una tasa de contagio del 8% diario, pero simultáneamente los estudiantes se recuperan a una tasa del 3% diario. Si inicialmente hay 20 infectados, **¿Al cabo de cuántos días habrá 42 infectados?** Utilice una ecuación diferencial para modelizar el problema.



### 🔍 Procedimiento Detallado

1. **Definición de Variables:**
   - Sea $I(t)$ el número de estudiantes infectados en el tiempo $t$ (medido en días).
   - Tasa de contagio: $r_{\text{in}} = 8\% = 0{,}08$ diario.
   - Tasa de recuperación: $r_{\text{out}} = 3\% = 0{,}03$ diario.
   - Tasa neta de crecimiento de infectados: $k = 0{,}08 - 0{,}03 = 0{,}05$ por día.
   - Condición inicial: $I(0) = 20$.

2. **Formulación y Resolución de la Ecuación Diferencial:**
   La tasa de cambio de infectados respecto al tiempo viene dada por:
   $$\frac{dI}{dt} = k \cdot I = 0{,}05 I$$

   Separando variables e integrando:
   $$\frac{dI}{I} = 0{,}05 \, dt$$
   $$\int \frac{dI}{I} = \int 0{,}05 \, dt \implies \ln(I) = 0{,}05 t + C$$
   $$I(t) = I_0 e^{0{,}05 t}$$

   Aplicando la condición inicial $I_0 = 20$:
   $$I(t) = 20 e^{0{,}05 t}$$

3. **Cálculo del Tiempo para $I(t) = 42$:**
   $$42 = 20 e^{0{,}05 t}$$
   $$2{,}1 = e^{0{,}05 t}$$
   Aplicando logaritmo natural en ambos lados:
   $$\ln(2{,}1) = 0{,}05 t \implies t = \frac{\ln(2{,}1)}{0{,}05}$$
   $$t \approx \frac{0{,}741937}{0{,}05} \approx 14{,}84 \text{ días}$$



### ✅ Respuesta Final
Al cabo de aproximadamente **14,84 días** (o alrededor de **15 días**) habrá 42 infectados.



## 📌 Pregunta 2: Factor Integrante 🧮

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$y \, dx + (x^2 y - x) \, dy = 0$$
> **Seleccione las opciones correctas:**
> - **A)** Admite un factor integrante que depende de $y$.
> - **B)** El factor integrante es $\mu(x) = \frac{1}{x^2}$
> - **C)** El factor integrante es $\mu(y) = -\frac{2}{y}$
> - **D)** El factor integrante es $\mu(x) = -\frac{2}{x}$
> - **E)** Admite un factor integrante que depende de $x$.



### 🔍 Procedimiento Detallado

1. **Identificación de Términos ($M \, dx + N \, dy = 0$):**
   - $M(x,y) = y$
   - $N(x,y) = x^2 y - x$

2. **Comprobación de Exactitud:**
   - $\frac{\partial M}{\partial y} = 1$
   - $\frac{\partial N}{\partial x} = 2xy - 1$

   Como $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$, la ecuación no es exacta.

3. **Búsqueda de Factor Integrante que depende solo de $x$, $\mu(x)$:**
   Calculamos la condición de dependencia de $x$:
   $$\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} = \frac{1 - (2xy - 1)}{x^2 y - x} = \frac{2 - 2xy}{x(xy - 1)} = \frac{-2(xy - 1)}{x(xy - 1)} = -\frac{2}{x}$$

   Como el resultado depende únicamente de $x$, la ecuación **admite un factor integrante $\mu(x)$**.

4. **Obtención de $\mu(x)$:**
   $$\mu(x) = e^{\int -\frac{2}{x} dx} = e^{-2 \ln|x|} = x^{-2} = \frac{1}{x^2}$$



### ✅ Respuestas Correctas
👉 **B) El factor integrante es $\mu(x) = \frac{1}{x^2}$**  
👉 **E) Admite un factor integrante que depende de $x$.**



## 📌 Pregunta 3: Geometría de Curvas 📐

### 📝 Transcripción del Enunciado
> La curva que cumple que la pendiente de la recta tangente en un punto $(x, y)$ es igual al doble de la abscisa es dicho punto es:
> - **A)** Una parábola.
> - **B)** Una hipérbola.
> - **C)** Una circunferencia.
> - **D)** Una elipse.



### 🔍 Procedimiento Detallado

1. **Formulación de la Ecuación Diferencial:**
   La pendiente de la recta tangente en cualquier punto $(x, y)$ es la derivada $\frac{dy}{dx}$. Del enunciado:
   $$\frac{dy}{dx} = 2x$$

2. **Resolución por Integración Directa:**
   $$dy = 2x \, dx \implies \int dy = \int 2x \, dx$$
   $$y = x^2 + C$$

3. **Análisis Geométrico:**
   La ecuación $y = x^2 + C$ corresponde algebraicamente a la familia de **parábolas** con eje de simetría vertical.



### ✅ Respuesta Correcta
👉 **A) Una parábola.**



## 📌 Pregunta 4: Condición de Exactitud ⚖️

### 📝 Transcripción del Enunciado
> La ecuación diferencial $a \cdot e^{2x} \{sen}(3y) \, dx + b \cdot e^{2x} \cos(3y) \, dy = 0$ es exacta si y solo si:
> - **A)** $b = -\frac{3}{2} a$
> - **B)** $b = \frac{3}{2} a$
> - **C)** $a = -\frac{3}{2} b$
> - **D)** $a = \frac{3}{2} b$



### 🔍 Procedimiento Detallado

1. **Identificación de Componentes:**
   - $M(x,y) = a \cdot e^{2x} \{sen}(3y)$
   - $N(x,y) = b \cdot e^{2x} \cos(3y)$

2. **Cálculo de Derivadas Parciales:**
   - $\frac{\partial M}{\partial y} = a \cdot e^{2x} \cdot 3 \cos(3y) = 3a \cdot e^{2x} \cos(3y)$
   - $\frac{\partial N}{\partial x} = b \cdot 2e^{2x} \cos(3y) = 2b \cdot e^{2x} \cos(3y)$

3. **Igualación para Ecuación Exacta ($\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$):**
   $$3a \cdot e^{2x} \cos(3y) = 2b \cdot e^{2x} \cos(3y)$$
   $$3a = 2b$$

4. **Despeje de las Opciones:**
   - Despejando $b$: $b = \frac{3}{2} a$
   - Despejando $a$: $a = \frac{2}{3} b$



### ✅ Respuesta Correcta
👉 **B) $b = \frac{3}{2} a$**



## 📌 Pregunta 5: Solución General de EDO Exacta 🧪

### 📝 Transcripción del Enunciado
> Dada la ecuación diferencial:
> $$(y e^{xy} + \{sen} x) \, dx + (x e^{xy} + \cos y) \, dy = 0$$
> **Determine si es homogénea, exacta o lineal y encuentre la solución general empleando el método que considere más conveniente.**



### 🔍 Procedimiento Detallado

1. **Clasificación y Prueba de Exactitud:**
   - $M(x,y) = y e^{xy} + \{sen} x$
   - $N(x,y) = x e^{xy} + \cos y$

   Derivadas parciales:
   - $\frac{\partial M}{\partial y} = 1 \cdot e^{xy} + y \cdot (x e^{xy}) = e^{xy}(1 + xy)$
   - $\frac{\partial N}{\partial x} = 1 \cdot e^{xy} + x \cdot (y e^{xy}) = e^{xy}(1 + xy)$

   Dado que $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, la ecuación es **Exacta**.

2. **Obtención de la Función Potencial $f(x,y)$:**
   Existe una función $f(x,y)$ tal que $\frac{\partial f}{\partial x} = M$ y $\frac{\partial f}{\partial y} = N$.

   Integrando $M$ respecto a $x$:
   $$f(x,y) = \int (y e^{xy} + \{sen} x) \, dx = e^{xy} - \cos x + g(y)$$

3. **Determinación de $g(y)$:**
   Derivamos $f(x,y)$ respecto a $y$ e igualamos a $N(x,y)$:
   $$\frac{\partial f}{\partial y} = x e^{xy} + g'(y)$$
   $$x e^{xy} + g'(y) = x e^{xy} + \cos y \implies g'(y) = \cos y$$

   Integrando respecto a $y$:
   $$g(y) = \{sen} y$$

4. **Solución General:**
   Sustituyendo $g(y)$ en $f(x,y) = C$:
   $$e^{xy} - \cos x + \{sen} y = C$$



### ✅ Respuesta Final
* **Clasificación:** Es una ecuación diferencial **Exacta**.
* **Solución General:**
  $$e^{xy} - \cos x + \{sen} y = C$$
