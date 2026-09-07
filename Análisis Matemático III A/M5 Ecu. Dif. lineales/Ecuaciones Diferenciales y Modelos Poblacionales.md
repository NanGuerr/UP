# 📝 Resolución de Ecuaciones Diferenciales y Modelos Poblacionales

## 📌 Ejercicio 1: Ecuación Diferencial Homogénea

**Problema:** Resolver la ecuación diferencial ordinaria:

$$\frac{dy}{dx} = \frac{x - y}{x + y}$$



### 🧮 Resolución Paso a Paso

#### 1. Cambio de Variable para Ecuación Homogénea
Proponemos la sustitución $y = u x \implies dy = u \, dx + x \, du \implies \frac{dy}{dx} = u + x \frac{du}{dx}$.

#### 2. Sustitución en la Ecuación Diferencial
$$u + x \frac{du}{dx} = \frac{x - ux}{x + ux} = \frac{x(1 - u)}{x(1 + u)} = \frac{1 - u}{1 + u}$$

#### 3. Separación de Variables
Despejamos $x \frac{du}{dx}$:

$$x \frac{du}{dx} = \frac{1 - u}{1 + u} - u = \frac{1 - u - u(1 + u)}{1 + u} = \frac{1 - 2u - u^2}{1 + u}$$

Reorganizamos las variables para integrar:

$$\frac{1 + u}{1 - 2u - u^2} \, du = \frac{1}{x} \, dx$$

#### 4. Integración de Ambos Miembros
$$\int \frac{1 + u}{1 - 2u - u^2} \, du = \int \frac{1}{x} \, dx$$

**Cálculo auxiliar por sustitución:**
* Sea $t = 1 - 2u - u^2$
* $dt = (-2 - 2u) \, du = -2(1 + u) \, du \implies (1 + u) \, du = -\frac{dt}{2}$

Sustituyendo en la integral:

$$\int \frac{1}{t} \left( -\frac{dt}{2} \right) = -\frac{1}{2} \int \frac{dt}{t} = -\frac{1}{2} \ln|t| = -\frac{1}{2} \ln|1 - 2u - u^2|$$

Igualando a la integral en $x$:

$$-\frac{1}{2} \ln|1 - 2u - u^2| = \ln|x| + C_1$$

#### 5. Exponenciación y Solución
Multiplicamos por $-2$ y aplicamos la propiedad de los logaritmos:

$$\ln\left( |1 - 2u - u^2|^{-1/2} \right) = \ln|x| + C_1 \implies (1 - 2u - u^2)^{-1/2} = A x$$

#### 6. Retorno a las Variables Originales ($u = \frac{y}{x}$)
$$\left( 1 - \frac{2y}{x} - \frac{y^2}{x^2} \right)^{-1/2} = A x$$

$$\left( \frac{x^2 - 2xy - y^2}{x^2} \right)^{-1/2} = A x \implies \left( \frac{x^2}{x^2 - 2xy - y^2} \right)^{1/2} = A x$$

$$\frac{x}{\sqrt{x^2 - 2xy - y^2}} = A x \implies x^2 - 2xy - y^2 = C$$



## 📌 Ejercicio 2: Modelo de Propagación de una Epidemia (Ecuación Logística)

**Problema:** La velocidad de propagación de una epidemia es proporcional al número de personas infectadas en el tiempo $t$ y al número de personas que no han sido infectadas. En una población de $10000$ habitantes se detecta una enfermedad que afecta inicialmente a $50$ personas. Al cabo de $3$ días, se observa que son $250$ las personas afectadas. Averiguar el número de enfermos que habrá pasados $12$ días.



### 🧮 Resolución Paso a Paso

#### 1. Planteamiento de la Ecuación Diferencial
Sea $P = 10000$ la población total e $I(t)$ el número de infectados en el instante $t$:

$$\frac{dI}{dt} = k I(t)(10000 - I(t))$$

Separando variables:

$$\frac{dI}{I(I - 10000)} = -k \, dt$$

#### 2. Integración por Fracciones Parciales
Descomponemos la fracción:

$$\frac{1}{I(I - 10000)} = \frac{A}{I} + \frac{B}{I - 10000} = \frac{A(I - 10000) + BI}{I(I - 10000)}$$

* Para $I = 0 \implies 1 = A(-10000) \implies A = -\frac{1}{10000}$
* Para $I = 10000 \implies 1 = B(10000) \implies B = \frac{1}{10000}$

Integramos:

$$-\frac{1}{10000} \int \frac{1}{I} \, dI + \frac{1}{10000} \int \frac{1}{I - 10000} \, dI = \int -k \, dt$$

$$\frac{1}{10000} \left( \ln|I - 10000| - \ln|I| \right) = -kt + C_1$$

$$\left( \frac{I - 10000}{I} \right)^{\frac{1}{10000}} = e^{-kt + C_1} \implies \frac{I - 10000}{I} = K e^{-c t}$$

#### 3. Determinación de Constantes y Solución
Para $t = 0$ con $I(0) = 50$:

$$K = \frac{50 - 10000}{50} = \frac{-9950}{50} = -199$$

$$\frac{I - 10000}{I} = -199 e^{-ct}$$

Para $t = 3$ días con $I(3) = 250$:

$$\frac{250 - 10000}{250} = -39 \implies -199 e^{-3c} = -39 \implies e^{-3c} = \frac{39}{199} \approx 0.196$$

$$-3c = \ln(0.196) \implies c \approx 0.543\text{ días}^{-1}$$

Para $t = 12$ días:

$$\frac{I - 10000}{I} = -199 e^{-0.543 \times 12} = -199 e^{-6.516} \approx -0.294$$

$$I - 10000 = -0.294 I \implies 1.294 I = 10000 \implies I(12) \approx 7728\text{ personas}$$
