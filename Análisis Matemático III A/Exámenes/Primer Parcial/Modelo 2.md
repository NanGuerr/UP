# 📝 Examen de Ecuaciones Diferenciales


## ❓ Pregunta 1 (25 / 25 pts) ✅

### 📌 Enunciado

De acuerdo con la ley de enfriamiento de Newton, si un objeto a temperatura $T$ se introduce en un medio con temperatura constante $M$, entonces la razón de cambio de $T$ es proporcional a la diferencia de temperatura $M - T$.

Una cerveza fría, inicialmente a $35\text{°F}$, se calienta hasta $40\text{°F}$ en $3\text{ minutos}$, estando en un cuarto con temperatura $70\text{°F}$. ¿Al cabo de cuánto tiempo estará la cerveza a una temperatura de $50\text{°F}$?

**Respuesta enviada:**
Aproximadamente $7\text{ minutos}$ y $50\text{ segundos}$.



### 🔍 Procedimiento y Resolución Detallada 🌡️

1. **Planteamiento de la Ecuación Diferencial:**
Según la ley de enfriamiento/calentamiento de Newton:

$$\frac{dT}{dt} = k(M - T)$$



Dado que $M = 70$:

$$\frac{dT}{dt} = k(70 - T)$$


2. **Separación e Integración de Variables:**

$$\frac{dT}{70 - T} = k \, dt$$


$$\int \frac{dT}{70 - T} = \int k \, dt$$


$$-\ln\vert{}70 - T\vert{} = kt + C_1$$


$$\ln\vert{}70 - T\vert{} = -kt - C_1$$


$$70 - T = C e^{-kt} \implies T(t) = 70 - C e^{-kt}$$


3. **Determinación de la Constante $C$ (Condición Inicial $T(0) = 35$):**

$$35 = 70 - C e^{0} \implies C = 35$$



Así, la ecuación de temperatura es:

$$T(t) = 70 - 35 e^{-kt}$$


4. **Determinación de la Constante $k$ (Condición $T(3) = 40$):**

$$40 = 70 - 35 e^{-3k}$$


$$35 e^{-3k} = 30$$


$$e^{-3k} = \frac{30}{35} = \frac{6}{7}$$


$$-3k = \ln\left(\frac{6}{7}\right) \implies k = -\frac{1}{3} \ln\left(\frac{6}{7}\right) \approx 0.051398 \text{ min}^{-1}$$


5. **Cálculo del Tiempo para $T(t) = 50\text{°F}$:**

$$50 = 70 - 35 e^{-kt}$$


$$35 e^{-kt} = 20$$


$$e^{-kt} = \frac{20}{35} = \frac{4}{7}$$


$$-kt = \ln\left(\frac{4}{7}\right) \implies t = \frac{-\ln(4/7)}{k}$$



Sustituyendo el valor de $k$:

$$t = \frac{-\ln(4/7)}{-\frac{1}{3} \ln(6/7)} = 3 \cdot \frac{\ln(4/7)}{\ln(6/7)} = 3 \cdot \frac{-0.559616}{-0.154151} \approx 10.89 \text{ minutos}$$


Convertimos $10.89\text{ minutos}$ a minutos y segundos:

$$0.89 \text{ min} \times 60 \text{ s/min} \approx 53.4 \text{ segundos}$$


* **Tiempo total desde $t = 0$:** $10\text{ minutos}$ y $53\text{ segundos}$.
* **Tiempo transcurrido desde $t = 3$ (los $40\text{°F}$):** $10.89 - 3 = 7.89\text{ minutos}$, lo que equivale exactamente a **$7\text{ minutos}$ y $53\text{ segundos}$** (aproximadamente $7\text{ min } 50\text{ s}$).





## ❓ Pregunta 2 (0 / 15 pts) ❌

### 📌 Enunciado

La solución general de la ecuación $k \cdot y' = \frac{1}{4} \cdot \frac{x}{y}$ representa:

#### Opciones de respuesta:

* **(A)** Una familia de hipérbolas. *(Opción marcada incorrecta)*
* **(B)** Una familia de elipses.
* **(C)** Depende del valor de $k$ y de la constante de integración. **(Respuesta Correcta)**
* **(D)** Una familia de rectas.



### 🔍 Procedimiento y Resolución Detallada 📐

1. **Planteamiento de la Ecuación:**

$$k \frac{dy}{dx} = \frac{x}{4y}$$


2. **Separación de Variables:**

$$4k y \, dy = x \, dx$$


3. **Integración:**

$$\int 4k y \, dy = \int x \, dx$$


$$2k y^2 = \frac{x^2}{2} + C_1$$



Multiplicando por 2 para simplificar:

$$4k y^2 - x^2 = C$$


4. **Análisis Geométrico de la Cónica:**
La forma cuadrática depende del signo del parámetro $k$ y de la constante $C$:
* **Si $k > 0$:** La ecuación $4k y^2 - x^2 = C$ representa una **familia de hipérbolas**.
* **Si $k < 0$:** Podemos reescribir la ecuación como $-4\vert{}k\vert{}y^2 - x^2 = C \implies x^2 + 4\vert{}k\vert{}y^2 = -C$, lo cual representa una **familia de elipses** (si $-C > 0$).
* **Si $k = 0$ o $C = 0$:** Se obtienen pares de rectas intersecantes o soluciones degeneradas.


Por lo tanto, la naturaleza de las curvas **depende explícitamente del valor de $k$ y de la constante de integración $C$**.



## ❓ Pregunta 3 (15 / 15 pts) ✅

### 📌 Enunciado

La ecuación diferencial $(x + y \cdot e^{2xy})\,dx + nx \cdot e^{2xy}\,dy = 0$ es exacta si:

#### Opciones de respuesta:

* **(A)** $n = 2$
* **(B)** No existe ningún valor de $n$ para que sea exacta.
* **(C)** $n = 1$ **(Respuesta Correcta)**
* **(D)** $n = -1$



### 🔍 Procedimiento y Resolución Detallada ⚙️

1. **Identificación de Funciones $M$ y $N$:**

$$M(x, y) = x + y e^{2xy}$$


$$N(x, y) = n x e^{2xy}$$


2. **Condición de Exactitud:**
Una ecuación es exacta si $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$.
3. **Cálculo de Derivadas Parciales:**
* Derivando $M$ con respecto a $y$ (usando la regla del producto):

$$\frac{\partial M}{\partial y} = \frac{\partial}{\partial y}(x) + \frac{\partial}{\partial y}(y e^{2xy}) = 0 + 1 \cdot e^{2xy} + y \cdot (2x e^{2xy}) = e^{2xy}(1 + 2xy)$$


* Derivando $N$ con respecto a $x$ (usando la regla del producto):

$$\frac{\partial N}{\partial x} = n \frac{\partial}{\partial x}(x e^{2xy}) = n \left[1 \cdot e^{2xy} + x \cdot (2y e^{2xy})\right] = n e^{2xy}(1 + 2xy)$$




4. **Igualación:**

$$e^{2xy}(1 + 2xy) = n e^{2xy}(1 + 2xy) \implies n = 1$$





## ❓ Pregunta 4 (10 / 20 pts) ⚠️

### 📌 Enunciado

Dada la ecuación diferencial $x\,dy - y\,dx = (2x^2 - 3)\,dx$

#### Opciones de respuesta:

* **(A)** El factor integrante es $\mu(y) = \frac{1}{y^2}$.
* **(B)** Admite un factor integrante que depende sólo de $y$.
* **(C)** El factor integrante es $\mu(x) = \frac{1}{x^2}$. **(Respuesta Correcta)**
* **(D)** Admite un factor integrante que depende sólo de $x$. **(Respuesta Correcta - Seleccionada)**
* **(E)** El factor integrante es $\mu(x) = -\frac{2}{x}$.



### 🔍 Procedimiento y Resolución Detallada 🧩

1. **Reorganización en Forma Estándar $M\,dx + N\,dy = 0$:**

$$x\,dy - y\,dx - (2x^2 - 3)\,dx = 0$$


$$-(y + 2x^2 - 3)\,dx + x\,dy = 0$$



*(o equivalentemente $(y + 2x^2 - 3)\,dx - x\,dy = 0$)*
Tomando $M(x, y) = y + 2x^2 - 3$ y $N(x, y) = -x$:
2. **Comprobación de Exactitud:**

$$\frac{\partial M}{\partial y} = 1, \quad \frac{\partial N}{\partial x} = -1$$



Como $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$, no es exacta.
3. **Cálculo del Factor Integrante $\mu(x)$:**
Evaluamos el cociente de dependencia exclusiva de $x$:

$$\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} = \frac{1 - (-1)}{-x} = -\frac{2}{x}$$


Como depende solo de $x$, el factor integrante es:

$$\mu(x) = e^{\int -\frac{2}{x} \, dx} = e^{-2 \ln\vert{}x\vert{}} = x^{-2} = \frac{1}{x^2}$$


Tanto la opción que afirma que admite un factor dependiente solo de $x$ como la que especifica $\mu(x) = \frac{1}{x^2}$ son matemáticamente válidas.



## ❓ Pregunta 5 (25 / 25 pts) ✅

### 📌 Enunciado

Dada la ecuación diferencial $(e^x \cdot y + 1)\,dx + (e^x - 1)\,dy = 0$

Determine si es homogénea, exacta o lineal y encuentre la solución que verifica $y(1) = 1$ empleando el método que considere más conveniente.

**Respuesta enviada:**


$$y = \frac{-x + C}{e^x - 1}$$



### 🔍 Procedimiento y Resolución Detallada ✏️

1. **Clasificación como Ecuación Lineal / Exacta:**
Reorganizamos para expresarla como una Ecuación Diferencial Lineal de Primer Orden:

$$(e^x - 1)\,dy = -(e^x y + 1)\,dx$$


$$\frac{dy}{dx} + \frac{e^x}{e^x - 1} y = -\frac{1}{e^x - 1}$$


2. **Resolución por Factor Integrante:**

$$P(x) = \frac{e^x}{e^x - 1}$$


$$\mu(x) = e^{\int \frac{e^x}{e^x - 1} \, dx} = e^{\ln\vert{}e^x - 1\vert{}} = e^x - 1$$


Multiplicando toda la ED por $\mu(x)$:

$$\frac{d}{dx}\left[ y (e^x - 1) \right] = -1$$


3. **Integración:**

$$y (e^x - 1) = \int -1 \, dx$$


$$y (e^x - 1) = -x + C$$


$$y(x) = \frac{-x + C}{e^x - 1}$$


4. **Aplicación de la Condición Inicial $y(1) = 1$:**

$$1 = \frac{-1 + C}{e^1 - 1}$$


$$e - 1 = -1 + C \implies C = e$$


5. **Solución Particular:**

$$y(x) = \frac{e - x}{e^x - 1}$$
