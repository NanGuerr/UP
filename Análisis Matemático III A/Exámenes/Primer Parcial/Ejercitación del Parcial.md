# 📚 Guía de Resolución de Ecuaciones Diferenciales



## 💡 1. Capitalización Continua de Interés

### 📝 Problema
Cuando el interés se capitaliza continuamente, la cantidad de dinero aumenta a una razón proporcional a la cantidad presente, donde la constante de proporcionalidad es la tasa de interés anual $r$.

Se depositan **$5.000** en una cuenta de ahorro que rinde **5.75%** de interés anual. ¿En cuántos años se habrá duplicado?



### 📌 Solución Paso a Paso

#### 1. Modelo Matemático y Fórmula
La tasa de cambio del dinero $P(t)$ con respecto al tiempo $t$ viene dada por:

$$\frac{dP}{dt} = r \cdot P(t)$$

donde $r = 5{,}75\% = 0{,}0575$.

Resolviendo por separación de variables se obtiene la fórmula de **capitalización continua**:

$$P(t) = P_0 \cdot e^{r t}$$

* $P_0 = 5000$ (Monto inicial)
* $P(t) = 2 \cdot P_0 = 10000$ (Monto al duplicarse)
* $r = 0{,}0575$
* $t$ = tiempo en años

#### 2. Despeje del Tiempo ($t$)
Sustituyendo $P(t) = 2 P_0$:

$$2 P_0 = P_0 \cdot e^{r t}$$

Dividiendo entre $P_0$:

$$2 = e^{r t}$$

Aplicando logaritmo natural ($\ln$):

$$\ln(2) = r t \implies t = \frac{\ln(2)}{r}$$

#### 3. Cálculo Numérico

$$t = \frac{\ln(2)}{0{,}0575} \approx \frac{0{,}693147}{0{,}0575} \approx 12{,}0547 \text{ años}$$



### ✅ Resultado
El dinero se habrá duplicado en **12,05 años** (aproximadamente **12 años y 20 días**).



## 🔍 2. Clasificación y Resolución de $x y' = y + 2x e^{-y/x}$

### 📝 Problema
Dada la ecuación diferencial:

$$x y' = y + 2x e^{-y/x}$$

Determinar si es homogénea, exacta o lineal y encontrar la solución general.



### 📊 1. Clasificación

Reescribiendo la ecuación con $y' = \frac{dy}{dx}$ y dividiendo entre $x$:

$$\frac{dy}{dx} = \frac{y}{x} + 2 e^{-y/x}$$

* **Homogénea:** Es de la forma $f(y/x)$. **ES HOMOGÉNEA** (grado 0).
* **Exacta:** En forma diferencial $M(x,y)dx + N(x,y)dy = 0$:
  $$(y + 2x e^{-y/x}) dx - x dy = 0$$
  Derivadas parciales:
  $$\frac{\partial M}{\partial y} = 1 - 2e^{-y/x} \quad \neq \quad \frac{\partial N}{\partial x} = -1$$
  **NO ES EXACTA**.
* **Lineal:** Contiene el término no lineal $e^{-y/x}$. **NO ES LINEAL**.



### ⚙️ 2. Solución General

#### Paso 1: Cambio de variable
$$u = \frac{y}{x} \implies y = u \cdot x \implies \frac{dy}{dx} = u + x \frac{du}{dx}$$

#### Paso 2: Sustitución

$$u + x \frac{du}{dx} = u + 2 e^{-u}$$

#### Paso 3: Separación de variables

$$x \frac{du}{dx} = 2 e^{-u} \implies e^{u} du = \frac{2}{x} dx$$

#### Paso 4: Integración

$$\int e^{u} du = \int \frac{2}{x} dx \implies e^{u} = 2 \ln|x| + C$$

#### Paso 5: Volver a variables originales ($u = y/x$)

$$e^{y/x} = 2 \ln|x| + C \implies \frac{y}{x} = \ln\left(2 \ln|x| + C\right)$$



### ✅ Resultado Final

$$y(x) = x \ln\left(2 \ln|x| + C\right)$$



## 📐 3. Análisis de Homogeneidad con Parámetros $m$ y $n$

### 📝 Problema
Dada la ecuación diferencial:

$$x^2 y^{m+1} \ln\left(\frac{x^n}{y^3}\right)dx + x^3 y^m \sin\left(\frac{y}{x}\right)dy = 0$$

Determinar bajo qué condiciones es homogénea.



### 🛠️ Análisis de Grado de Homogeneidad

Sean:
* $N(x,y) = x^3 y^m \sin\left(\frac{y}{x}\right)$ (Grado: $3+m$)
* $M(x,y) = x^2 y^{m+1} \ln\left(\frac{x^n}{y^3}\right)$

Descomponiendo el logaritmo:

$$M(x,y) = x^2 y^{m+1} \left( n \ln(x) - 3 \ln(y) \right)$$

Evaluando con el factor de escala $\lambda$:

$$M(\lambda x, \lambda y) = \lambda^{3+m} x^2 y^{m+1} \left[ (n - 3)\ln\lambda + n \ln x - 3 \ln y \right]$$

Para que $M(x,y)$ sea homogénea, el término con $\ln\lambda$ debe anularse:

$$(n - 3)\ln\lambda = 0 \implies n = 3$$

Si $n = 3$, el grado de $M(x,y)$ pasa a ser $3+m$, coincidiendo con $N(x,y)$ para cualquier valor de $m$.



### ✅ Opción Correcta
**A) Es homogénea si $n=3$ y $m=4$** *(Aplica para $n=3$ con cualquier valor de $m$)*.



## 🎯 4. Factor Integrante de $(3x^2 - y^2)dy - 2xydx = 0$

### 📝 Problema
Dada la ecuación diferencial expresada como $M(x,y)dx + N(x,y)dy = 0$:

$$-2xy \, dx + (3x^2 - y^2) \, dy = 0$$

Determinar la naturaleza de su factor integrante.



### 🧪 Comprobación y Evaluación

1. **Derivadas cruzadas:**
   $$\frac{\partial M}{\partial y} = -2x, \quad \frac{\partial N}{\partial x} = 6x \quad (\text{No es exacta})$$

2. **Prueba para $\mu(y)$:**
   $$\frac{1}{M} \left( \frac{\partial N}{\partial x} - \frac{\partial M}{\partial y} \right) = \frac{6x - (-2x)}{-2xy} = \frac{8x}{-2xy} = -\frac{4}{y}$$

Como el resultado depende **únicamente de $y$**, la ecuación admite un factor integrante $\mu(y)$.

3. **Cálculo de $\mu(y)$:**
   $$\mu(y) = e^{\int -\frac{4}{y} dy} = e^{-4 \ln|y|} = y^{-4} = \frac{1}{y^4}$$



### ✅ Opción Correcta
**B) Admite un factor integrante que solo depende de $y$**.



## 📈 5. Familia de Curvas de $y' = k \frac{x}{y}$

### 📝 Problema
Clasificar la familia de curvas que representa la solución general de:

$$\frac{dy}{dx} = k \frac{x}{y}$$



### ⚙️ Resolución por Separación de Variables

$$y \, dy = k x \, dx$$

$$\int y \, dy = \int k x \, dx \implies \frac{y^2}{2} = k \frac{x^2}{2} + C_1$$

$$y^2 - k x^2 = C$$



### 🏛️ Clasificación Geométrica según $k$

* **Si $k > 0$:** $y^2 - k x^2 = C \implies$ **Hipérbolas**.
* **Si $k = -1$:** $x^2 + y^2 = C \implies$ **Circunferencias**.
* **Si $k < 0$ y $k \neq -1$:** $y^2 + |k| x^2 = C \implies$ **Elipses**.



### ✅ Opción Correcta
**D) Depende del valor de la constante $k$**.
