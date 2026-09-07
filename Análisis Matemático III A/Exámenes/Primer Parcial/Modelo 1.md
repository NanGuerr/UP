# 📝 Examen de Ecuaciones Diferenciales - Transcripción y Resolución Detallada

## ❓ Pregunta 1 (15 / 15 pts) ✅

### 📌 Enunciado
La solución del problema de valores iniciales:
$$-3 \, dx + (x - 2)^2 \, dy = 0, \quad y(-1) = 2$$

#### Opciones de respuesta:
* **(A)** Es una función lineal.
* **(B)** Es una función exponencial.
* **(C)** Es una función homográfica. **(Seleccionada Correcta)**
* **(D)** Es una función cuadrática.



### 🔍 Procedimiento y Resolución Detallada

1. **Separación de variables:**
   Dada la ecuación diferencial:
   $$(x - 2)^2 \, dy = 3 \, dx$$
   Dividimos entre $(x - 2)^2$:
   $$dy = rac{3}{(x - 2)^2} \, dx$$

2. **Integración de ambos lados:**
   $$\int dy = \int 3(x - 2)^{-2} \, dx$$
   $$y(x) = 3 \cdot rac{(x - 2)^{-1}}{-1} + C$$
   $$y(x) = -rac{3}{x - 2} + C$$

3. **Aplicación de la condición inicial $y(-1) = 2$:**
   $$2 = -rac{3}{-1 - 2} + C$$
   $$2 = -rac{3}{-3} + C$$
   $$2 = 1 + C \implies C = 1$$

4. **Solución particular:**
   $$y(x) = -rac{3}{x - 2} + 1$$
   O equivalentemente:
   $$y(x) = rac{-(x - 2) - 3}{x - 2} = rac{-x + 2 - 3}{x - 2} = rac{-x - 1}{x - 2} = rac{x + 1}{2 - x}$$

5. **Conclusión:**
   La función obtenida $y(x) = 1 - rac{3}{x - 2}$ es una **función homográfica** (de la forma $y = rac{ax + b}{cx + d}$).



## ❓ Pregunta 2 (10 / 20 pts) ⚠️

### 📌 Enunciado
Dada la ecuación diferencial:
$$x \, dy - y \, dx = (2x^2 - 3) \, dx$$

#### Opciones de respuesta:
* **(A)** Admite un factor integrante que depende sólo de $y$.
* **(B)** El factor integrante es $\mu(x) = rac{1}{x^2}$.
* **(C)** El factor integrante es $\mu(x) = -rac{2}{x}$.
* **(D)** El factor integrante es $\mu(y) = rac{1}{y^2}$.
* **(E)** Admite un factor integrante que depende sólo de $x$. **(Seleccionada)**



### 🔍 Procedimiento y Resolución Detallada

1. **Reordenar la ecuación diferencial:**
   Reorganizamos la expresión en la forma estándar $M(x, y) \, dx + N(x, y) \, dy = 0$:
   $$(y + 2x^2 - 3) \, dx - x \, dy = 0$$
   Donde:
   * $M(x, y) = y + 2x^2 - 3$
   * $N(x, y) = -x$

2. **Verificación de exactitud:**
   Calculamos las derivadas parciales cruzadas:
   $$rac{\partial M}{\partial y} = 1$$
   $$rac{\partial N}{\partial x} = -1$$
   Como $rac{\partial M}{\partial y} 
eq rac{\partial N}{\partial x}$, la ecuación **no es exacta**.

3. **Búsqueda de un factor integrante que dependa solo de $x$ [$\mu(x)$]:**
   Evaluamos el cociente:
   $$rac{rac{\partial M}{\partial y} - rac{\partial N}{\partial x}}{N} = rac{1 - (-1)}{-x} = rac{2}{-x} = -rac{2}{x}$$
   Dado que esta expresión depende únicamente de $x$, existe un factor integrante $\mu(x)$:
   $$\mu(x) = e^{\int -rac{2}{x} \, dx} = e^{-2 \ln|x|} = x^{-2} = rac{1}{x^2}$$

4. **Análisis de la respuesta:**
   * La opción **(E)** indica que admite un factor integrante que depende solo de $x$, lo cual es correcto cualitativamente.
   * La opción **(B)** da la forma exacta del factor integrante $\mu(x) = rac{1}{x^2}$.



## ❓ Pregunta 3 (15 / 15 pts) ✅

### 📌 Enunciado
La ecuación diferencial:
$$(x + y \cdot e^{2xy}) \, dx + n x \cdot e^{2xy} \, dy = 0$$
es exacta si:

#### Opciones de respuesta:
* **(A)** $n = 2$
* **(B)** No existe ningún valor de $n$ para que sea exacta.
* **(C)** $n = 1$ **(Seleccionada Correcta)**
* **(D)** $n = -1$



### 🔍 Procedimiento y Resolución Detallada

1. **Identificación de funciones:**
   * $M(x, y) = x + y \, e^{2xy}$
   * $N(x, y) = n x \, e^{2xy}$

2. **Condición de exactitud:**
   Una ecuación diferencial es exacta si y solo si:
   $$rac{\partial M}{\partial y} = rac{\partial N}{\partial x}$$

3. **Cálculo de las derivadas parciales:**
   * Derivada de $M$ respecto a $y$ (aplicando la regla del producto):
     $$rac{\partial M}{\partial y} = 0 + rac{\partial}{\partial y}(y \cdot e^{2xy}) = 1 \cdot e^{2xy} + y \cdot (2x e^{2xy}) = e^{2xy}(1 + 2xy)$$

   * Derivada de $N$ respecto a $x$ (aplicando la regla del producto):
     $$rac{\partial N}{\partial x} = n \cdot rac{\partial}{\partial x}(x \cdot e^{2xy}) = n \left[ 1 \cdot e^{2xy} + x \cdot (2y e^{2xy}) 
ight] = n e^{2xy}(1 + 2xy)$$

4. **Igualación para determinar $n$:**
   $$e^{2xy}(1 + 2xy) = n e^{2xy}(1 + 2xy)$$
   Dividiendo ambos lados por $e^{2xy}(1 + 2xy)$:
   $$n = 1$$



## ❓ Pregunta 4 (20 / 25 pts) ⚠️

### 📌 Enunciado
Dada la ecuación diferencial:
$$3x^2 (1 + \ln y) \, dx + \left(rac{x^3}{y} - 2y
ight) dy = 0$$
Determine si es homogénea, exacta o lineal y encuentre la solución general empleando el método que considere más conveniente.

> 💬 **Comentario del docente:** *La Ecuación es exacta, confunde exacta con homogénea.*



### 🔍 Procedimiento y Resolución Detallada

1. **Identificación de los términos:**
   * $M(x, y) = 3x^2 (1 + \ln y)$
   * $N(x, y) = rac{x^3}{y} - 2y$

2. **Verificación de Exactitud:**
   * Derivada parcial de $M$ respecto a $y$:
     $$rac{\partial M}{\partial y} = 3x^2 \cdot rac{1}{y} = rac{3x^2}{y}$$
   * Derivada parcial de $N$ respecto a $x$:
     $$rac{\partial N}{\partial x} = rac{3x^2}{y} - 0 = rac{3x^2}{y}$$
   Como $rac{\partial M}{\partial y} = rac{\partial N}{\partial x}$, **la ecuación diferencial es EXACTA**.

3. **Obtención de la función potencial $f(x, y)$:**
   Buscamos $f(x, y)$ tal que $rac{\partial f}{\partial x} = M$ y $rac{\partial f}{\partial y} = N$.

   * Integrando $M(x, y)$ respecto a $x$:
     $$f(x, y) = \int 3x^2(1 + \ln y) \, dx = (1 + \ln y) \int 3x^2 \, dx = x^3(1 + \ln y) + g(y)$$

   * Derivando $f(x, y)$ respecto a $y$ e igualando a $N(x, y)$:
     $$rac{\partial f}{\partial y} = rac{x^3}{y} + g'(y) = rac{x^3}{y} - 2y$$
     $$g'(y) = -2y$$

   * Integrando $g'(y)$ respecto a $y$:
     $$g(y) = \int -2y \, dy = -y^2$$

4. **Solución General:**
   $$f(x, y) = x^3(1 + \ln y) - y^2 = C$$
   $$x^3 + x^3 \ln y - y^2 = C$$



## ❓ Pregunta 5 (25 / 25 pts) ✅

### 📌 Enunciado
En una solución hay $16	ext{ gramos}$ de un producto químico. Al cabo de $45	ext{ minutos}$ hay $25	ext{ gramos}$ del producto. Si la tasa de incremento del producto químico es proporcional a la raíz cuadrada del tiempo que el producto ha estado en la solución, ¿cuánto tiempo debe transcurrir para que haya $100	ext{ gramos}$ de producto químico en la solución?



### 🔍 Procedimiento y Resolución Detallada

1. **Planteamiento de la Ecuación Diferencial:**
   Sea $x(t)$ la cantidad de gramos de producto químico al tiempo $t$ (en minutos).
   La tasa de variación viene dada por:
   $$rac{dx}{dt} = k \sqrt{t} = k t^{1/2}$$

2. **Condiciones Iniciales y de Borde:**
   * $x(0) = 16	ext{ g}$
   * $x(45) = 25	ext{ g}$
   * Se busca $t$ tal que $x(t) = 100	ext{ g}$

3. **Integración de la Ecuación Diferencial:**
   $$dx = k t^{1/2} \, dt$$
   $$\int dx = k \int t^{1/2} \, dt$$
   $$x(t) = k \cdot rac{t^{3/2}}{3/2} + C = rac{2}{3} k t^{3/2} + C$$

4. **Determinación de las constantes:**
   * Usando $x(0) = 16$:
     $$x(0) = C = 16 \implies C = 16$$
     Por lo tanto:
     $$x(t) = rac{2}{3} k t^{3/2} + 16$$

   * Usando $x(45) = 25$:
     $$25 = rac{2}{3} k (45)^{3/2} + 16$$
     $$9 = rac{2}{3} k (45 \sqrt{45})$$
     $$9 = rac{2}{3} k (45 \cdot 3\sqrt{5}) = 90 \sqrt{5} \, k$$
     $$k = rac{9}{90 \sqrt{5}} = rac{1}{10 \sqrt{5}}$$

5. **Expresión particular para $x(t)$:**
   $$x(t) = rac{2}{3} \cdot rac{1}{10 \sqrt{5}} \, t^{3/2} + 16 = rac{t^{3/2}}{15 \sqrt{5}} + 16$$

6. **Cálculo del tiempo $t$ para $x(t) = 100	ext{ g}$:**
   $$100 = rac{t^{3/2}}{15 \sqrt{5}} + 16$$
   $$84 = rac{t^{3/2}}{15 \sqrt{5}}$$
   $$t^{3/2} = 84 \cdot 15 \sqrt{5} = 1260 \sqrt{5}$$

   Elevamos ambos lados al cuadrado:
   $$t^3 = (1260 \sqrt{5})^2 = 1587600 \cdot 5 = 7\,938\,000$$

   Calculamos la raíz cúbica:
   $$t = \sqrt[3]{7\,938\,000}  pprox 199.48	ext{ minutos}$$

7. **Resultado Final:**
   Deben transcurrir aproximadamente **199.48 minutos** (o aproximadamente $3	ext{ horas}, 19	ext{ minutos y } 29	ext{ segundos}$) para que haya $100	ext{ gramos}$ de producto químico en la solución.
