# 📚 Guía Completa de Ecuaciones Diferenciales Ordinarias (EDO) de Primer Orden

Bienvenido a la guía detallada y estructurada de **Ecuaciones Diferenciales Ordinarias (EDO)**. Este documento contiene explicaciones teórico-prácticas, clasificaciones, métodos paso a paso y la resolución completa de los trabajos prácticos.



## 📌 1. Introducción y Conceptos Fundamentales

### 🎯 ¿Qué es una Ecuación Diferencial?
Hasta ahora hemos trabajado con ecuaciones algebraicas convencionales, por ejemplo:
$$x^{2} + 2x - 3 = 0$$

Supongamos ahora que tenemos una función diferenciable en $\mathbb{R}$:
$$y = e^{0,1 x^{2}}$$

Si derivamos dicha función respecto a $x$:
$$y' = 0,2x \cdot e^{0,1 x^{2}}$$

Puesto que $y = e^{0,1 x^{2}}$, podemos reescribirla como:
$$y' = 0,2x \cdot y$$

Queda planteada una **Ecuación Diferencial**, en la que interactúan una función desconocida $y(x)$ y sus derivadas.



### 💡 Ejemplo Práctico
Supongamos que queremos encontrar una función $y = f(x)$ con la propiedad de que la **pendiente de la recta tangente** en cualquier punto $(x, y)$ sea igual al **doble de la suma de sus coordenadas**.

Podemos formular el problema geométrico como la siguiente EDO:
$$y' = 2(y + x)$$



### 📖 Definición Formal
Una **Ecuación Diferencial (E.D.)** es una igualdad matemática que relaciona una función incógnita con una o más de sus derivadas respecto a sus variables independientes.

**Ejemplos:**
* $y'' + (\sin x) \cdot y = 2$
* $y'^2 + 3y = 3x$
* $\sin x \, dx + e^y \cos y \, dy = 0$
* $y''' + 4y^{(5)} = 0$
* $z_x + z_y = 0$ (Ecuación en derivadas parciales)



## 🗂️ 2. Clasificación de las Ecuaciones Diferenciales

```
                    ┌─────────────────────────────────────────┐
                    │  Clasificación de E.D. según Tipo       │
                    └────────────────────┬────────────────────┘
                                         │
                 ┌───────────────────────┴───────────────────────┐
                 ▼                                               ▼
   ┌──────────────────────────┐                    ┌──────────────────────────┐
   │       Ordinarias         │                    │   Derivadas Parciales    │
   ├──────────────────────────┤                    ├──────────────────────────┤
   │ La función incógnita     │                    │ La función incógnita     │
   │ depende de una sola      │                    │ depende de 2 o más       │
   │ variable independiente.  │                    │ variables independientes.│
   └──────────────────────────┘                    └──────────────────────────┘
```



### 🔢 Orden de una Ecuación Diferencial
El **orden** de una E.D. está determinado por el orden de la **mayor derivada** presente en la ecuación.

**Ejemplos:**
1. $y' + y \sin x = \cos x$ $\longrightarrow$ **Orden 1** (solo aparece $y'$).
2. $y'' + 3x - 5y' = 0$ $\longrightarrow$ **Orden 2** (la derivada de mayor orden es $y''$).
3. $\frac{\partial^2 z}{\partial x^2} + \frac{\partial^2 z}{\partial y^2} = 0$ $\longrightarrow$ **Orden 2**.

> 💡 **Forma General de una EDO de orden $n$:**
> $$F(x, y, y', y'', \dots, y^{(n)}) = 0 \quad \text{o bien} \quad y^{(n)} = f(x, y, y', \dots, y^{(n-1)})$$



### 📐 Grado de una Ecuación Diferencial
El **grado** de una E.D. solo se define si la ecuación se puede expresar como un polinomio respecto a las derivadas de la variable dependiente. Corresponde al **exponente de la derivada de mayor orden**.

**Ejemplos:**
* $y'' + (y')^3 - x = 0$ $\longrightarrow$ **Orden 2, Grado 1** (la derivada mayor es $y''$, elevada a la 1).
* $(y'')^2 + 2y = x$ $\longrightarrow$ **Orden 2, Grado 2**.
* $\sin(y') + x - y = 0$ $\longrightarrow$ **Orden 1, No tiene grado** (la derivada está dentro de una función trascendente).



## 🔍 3. Soluciones de una EDO de Primer Orden

Una EDO de primer orden se presenta usualmente como:
$$y' = f(x,y) \quad \text{o} \quad M(x,y)dx + N(x,y)dy = 0$$

Una **solución** en un intervalo $I$ es una función $y = g(x)$ que posee derivada continua en $I$ y satisface la identidad $g'(x) = f(x, g(x))$.



### 🛠️ Tipos de Soluciones

```
                ┌─────────────────────────────────────────┐
                │          Tipos de Soluciones            │
                └────────────────────┬────────────────────┘
                                     │
         ┌───────────────────────────┼───────────────────────────┐
         ▼                           ▼                           ▼
┌──────────────────┐       ┌──────────────────┐       ┌──────────────────┐
│ Solución General │       │Solución Particular│      │ Solución Singular│
├──────────────────┤       ├──────────────────┤       ├──────────────────┤
│ Contiene $n$     │       │ Se obtiene       │       │ Es solución pero │
│ constantes       │       │ fijando un valor │       │ NO proviene de la│
│ arbitrarias ($C$).│       │ numérico a $C$.  │       │ solución general.│
└──────────────────┘       └──────────────────┘       └──────────────────┘
```

#### A. Solución General
Es la relación $y = \phi(x, C)$ que satisface la EDO para cualquier valor de la constante $C$. Representa una **familia de curvas integrales**.

**Ejemplo:**
Para $y' \cdot x = 1 \implies y = \ln(Cx)$ es la solución general.

#### B. Solución Particular
Se obtiene asignando valores específicos a las constantes a partir de **condiciones iniciales** $y(x_0) = y_0$.

**Ejemplo:**
Si en $y = \ln(Cx)$ requerimos que pase por el punto $(1,0)$:
$$0 = \ln(C \cdot 1) \implies e^0 = C \implies C = 1 \implies y = \ln x$$

#### C. Solución Singular
Es una solución que no se puede derivar de la solución general asignando ningún valor a la constante $C$.

**Ejemplo:**
Para $y = x y' - (y')^2$, la solución general es $y = Cx - C^2$.
Sin embargo, la función $y = \frac{1}{4}x^2$ **también satisface la EDO** pero no existe ningún valor de $C$ tal que $Cx - C^2 = \frac{1}{4}x^2$. Por ende, es una **solución singular**.



## 🧪 4. MÉTODOS DE RESOLUCIÓN DE EDO DE PRIMER ORDEN



### 🅰️ Ecuaciones de Variables Separables

#### 📋 Definición
Son ecuaciones que pueden reescribirse de la forma:
$$\frac{dy}{dx} = f(x) \cdot g(y) \quad \text{o} \quad f_1(x)g_1(y)dx + f_2(x)g_2(y)dy = 0$$

#### ⚙️ Algoritmo de Resolución
1. **Separar variables:** Pasar las $x$ con $dx$ y las $y$ con $dy$:
   $$\frac{1}{g(y)} dy = f(x) dx$$
2. **Integrar ambos miembros:**
   $$\int \frac{1}{g(y)} dy = \int f(x) dx$$
3. **Despejar $y$:** (de ser posible) y añadir la constante $C$.



### 🅱️ Ecuaciones Homogéneas

#### 📋 Definición
Una función $f(x,y)$ es **homogénea de grado $n$** si cumple $f(tx, ty) = t^n f(x,y)$.
Una EDO $\frac{dy}{dx} = f(x,y)$ es **homogénea** si $f(x,y)$ es de grado 0, lo que permite expresarla como $F\left(\frac{y}{x}\right)$.

#### ⚙️ Algoritmo de Resolución
1. **Sustitución de variable:**
   $$y = u \cdot x \implies dy = u \, dx + x \, du \quad \text{o} \quad y' = u + x u'$$
2. Reemplazar $y$ y $dy$ en la EDO.
3. La ecuación transformada SIEMPRE resulta ser de **variables separables** en $(x, u)$.
4. Resolver por separación de variables y al final sustituir $u = \frac{y}{x}$.



### 🅲️ Ecuaciones Exactas

#### 📋 Definición
Una expresión $M(x,y)dx + N(x,y)dy = 0$ es **exacta** si existe una función potencial $F(x,y)$ tal que:
$$\frac{\partial F}{\partial x} = M(x,y) \quad \text{y} \quad \frac{\partial F}{\partial y} = N(x,y)$$

#### ⚖️ Criterio de Exactitud (Teorema de Schwarz)
La EDO es exacta si y solo si:
$$\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$$

#### ⚙️ Algoritmo de Resolución
1. Verificar que $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$.
2. Integrar $M(x,y)$ respecto a $x$:
   $$F(x,y) = \int M(x,y) dx + g(y)$$
3. Derivar $F(x,y)$ respecto a $y$ e igualar a $N(x,y)$:
   $$\frac{\partial F}{\partial y} = N(x,y) \implies g'(y) = \dots$$
4. Integrar $g'(y)$ para hallar $g(y)$.
5. La solución implícita es $F(x,y) = C$.



### 🅳️ Factor Integrante

#### 📋 Definición
Si $M dx + N dy = 0$ **no es exacta**, a veces podemos multiplicarla por una función $\mu$ tal que $\mu M dx + \mu N dy = 0$ sí sea exacta.

#### ⚙️ Casos Frecuentes
* **Si el factor depende solo de $x$:**
  $$P(x) = \frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} \implies \mu(x) = e^{\int P(x) dx}$$
* **Si el factor depende solo de $y$:**
  $$Q(y) = \frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M} \implies \mu(y) = e^{\int Q(y) dy}$$



### 🅴️ Ecuaciones Lineales de Primer Orden

#### 📋 Definición
Tienen la **forma canónica**:
$$y' + P(x) \cdot y = Q(x)$$

#### ⚙️ Método de Variación de Parámetros
1. **Ecuación Homogénea Asociada:** $y' + P(x)y = 0 \implies y_h = A \cdot e^{-\int P(x)dx}$.
2. **Propuesta de Solución Particular:** Reemplazar la constante por un parámetro variable:
   $$y_p = L(x) \cdot e^{-\int P(x)dx}$$
3. Sustituir $y_p$ en la EDO completa para despejar $L'(x) = Q(x) e^{\int P(x)dx}$.
4. **Fórmula General Directa:**
   $$y = e^{-\int P(x)dx} \left[ \int Q(x) e^{\int P(x)dx} dx + C \right]$$



## 📝 RESOLUCIÓN DE TRABAJOS PRÁCTICOS



### ✏️ TRABAJO PRÁCTICO N° 1: Variables Separables y Modelos

#### 📌 Ejercicio 1: Clasificación de EDOs
| Ecuación Diferencial | Tipo | Orden |
| :--- | :--- | :--- |
| $dy + (xy - \cos x)dx = 0$ | Ordinaria | 1 |
| $(y'')^3 + (y')^2 + 2y y'' = x$ | Ordinaria | 2 |
| $\frac{\partial^2 z}{\partial x^2} + \frac{\partial^2 z}{\partial y^2} = x y$ | Derivadas Parciales | 2 |
| $y' - x y = \sin x$ | Ordinaria | 1 |
| $\frac{\partial z}{\partial t} = z + \frac{\partial z}{\partial y}$ | Derivadas Parciales | 1 |

#### 📌 Ejercicio 2: Traducción a Ecuaciones Diferenciales
* **a)** $\frac{dP}{dt} = k P(t)$
* **b)** $\frac{dx}{dt} = k x(t) (N - x(t))$
* **c)** $\frac{dP}{dt} = k P(t) (200.000 - P(t))$
* **d)** $\frac{dT}{dt} = k (M - T(t))$
* **e)** $\frac{dN}{dt} = k N(t)$
* **f)** $\frac{dy}{dx} = 3 y(x)$

#### 📌 Ejercicio 3: Resolución de EDOs Separables
* **a) $y' = \frac{2x}{y}$**
  $$y \, dy = 2x \, dx \implies \frac{y^2}{2} = x^2 + C_1 \implies |y| = \sqrt{2(x^2 + C)}$$

* **b) $\frac{dy}{dx} = 1 + y$**
  $$\frac{dy}{1+y} = dx \implies \ln|1+y| = x + C_1 \implies y = C e^x - 1$$

* **c) $x y \, dx + e^{-x^2}(y^2 - 1) \, dy = 0$**
  $$\frac{y^2 - 1}{y} \, dy = -x e^{x^2} \, dx \implies \int \left(y - \frac{1}{y}\right) dy = -\int x e^{x^2} dx \implies \frac{y^2}{2} - \ln|y| = -\frac{1}{2} e^{x^2} + C$$

* **d) $y' = \frac{b^2 x}{a^2 y}$**
  $$a^2 y \, dy = b^2 x \, dx \implies \frac{a^2 y^2}{2} = \frac{b^2 x^2}{2} + C$$

* **e) $x^3 \frac{dy}{dx} + y^2 = 0$**
  $$-\frac{dy}{y^2} = \frac{dx}{x^3} \implies \frac{1}{y} = -\frac{1}{2x^2} + C \implies y = -\frac{2x^2}{1 + 2Cx^2}$$

* **f) $\frac{dy}{dx} = \frac{\sin x}{\cos y}$**
  $$\cos y \, dy = \sin x \, dx \implies \sin y = -\cos x + C$$

* **g) $\frac{dy}{dx} = \frac{y}{2x}$**
  $$\frac{dy}{y} = \frac{dx}{2x} \implies \ln|y| = \frac{1}{2} \ln|x| + C_1 \implies y = C x^{1/2}$$

* **h) $\frac{dy}{dx} = e^{-y} \cos x$**
  $$e^y dy = \cos x \, dx \implies e^y = \sin x + C \implies y = \ln(\sin x + C)$$

* **i) $x y + y^2 \frac{dy}{dx} = 6x$**
  $$y^2 dy = x(6 - y) dx \implies \frac{y^2}{6-y} dy = x \, dx \implies -y^2 - 6y - 36 \ln|y-6| = x^2 + C$$

#### 📌 Ejercicio 4 a 14: Problemas de Valor Inicial y Aplicaciones
* **4)** $(1+e^x) y' = e^x, \quad y(0)=1 \implies y^2 = 2 \ln(1+e^x) + 1 - 2\ln 2$
* **5)** Curva por $(1,3)$ con pendiente $\frac{y}{x^2} \implies y = 3 e^{1 - 1/x}$
* **8)** Curva por $(0,-2)$ con $y' = y + 3 \implies y = e^x - 3$
* **15) Ley de Enfriamiento de Newton (Escena del Crimen):**
  $$\frac{dT}{dt} = k(T - 22)$$
  A las 23:00 hs $T = 31^\circ\text{C}$; a las 24:00 hs $T = 30^\circ\text{C}$.
  $$T(t) = 22 + 9 e^{kt} \implies 30 = 22 + 9 e^{k(1)} \implies e^k = \frac{8}{9} \implies k \approx -0,11778$$
  Buscamos el momento del deceso ($T = 37^\circ\text{C}$):
  $$37 = 22 + 9 e^{kt} \implies 15 = 9 e^{kt} \implies e^{kt} = \frac{15}{9} = \frac{5}{3}$$
  $$t = \frac{\ln(5/3)}{k} \approx -4,33 \text{ horas} \implies \text{Aproximadamente 4h 20m antes de las 23:00 hs} \implies \mathbf{18:40 \text{ hs}}$$



### ✏️ TRABAJO PRÁCTICO N° 2: Ecuaciones Homogéneas

#### 📌 Problemas Seleccionados:
1. **$(x^2 - y^2)dx + 3xy \, dy = 0$**
   Sustituyendo $y = ux$, $dy = u dx + x du$:
   $$(x^2 - u^2 x^2)dx + 3x(ux)(u dx + x du) = 0 \implies (1 + 2u^2) dx + 3x u \, du = 0$$
   $$\frac{dx}{x} + \frac{3u}{1+2u^2} du = 0 \implies \ln|x| + \frac{3}{4} \ln|1+2u^2| = C_1 \implies C x^2 = \left(2\frac{y^2}{x^2} + 1\right)^{3/2}$$

2. **$\frac{dy}{dx} = \frac{2y}{x} - \frac{y^2}{x^2}$**
   Haciendo $y/x = u \implies u + x u' = 2u - u^2 \implies x u' = u - u^2$:
   $$\frac{du}{u(1-u)} = \frac{dx}{x} \implies y = \frac{A x^2}{A x - 1}$$

3. **$(x^3 + y^3)dx - 3x y^2 dy = 0 \implies x^3 - y^3 = K x$**



### ✏️ TRABAJO PRÁCTICO N° 3: Ecuaciones Exactas

#### 📌 Problemas Seleccionados:
1. **$\cos y \, dx + (y^2 - x \sin y) dy = 0$**
   * $M = \cos y \implies \frac{\partial M}{\partial y} = -\sin y$
   * $N = y^2 - x \sin y \implies \frac{\partial N}{\partial x} = -\sin y$
   Como $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, ¡es exacta!
   $$F(x,y) = \int \cos y \, dx = x \cos y + g(y)$$
   $$\frac{\partial F}{\partial y} = -x \sin y + g'(y) = y^2 - x \sin y \implies g'(y) = y^2 \implies g(y) = \frac{y^3}{3}$$
   $$\mathbf{x \cos y + \frac{y^3}{3} = C}$$

2. **$\frac{1}{x^2+y^2}(x \, dx + y \, dy) = 0, \quad y(0)=4 \implies x^2 + y^2 = 16$**



### ✏️ TRABAJO PRÁCTICO N° 4: Factor Integrante

#### 📌 Problemas Seleccionados:
1. **$(y + \cos x)dx + (x + xy + \sin x)dy = 0$**
   $$\frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M} = \frac{(1 + y + \cos x) - 1}{y + \cos x} = 1 \implies \mu(y) = e^y$$
   Multiplicando por $e^y$:
   $$(y e^y + e^y \cos x) dx + (x e^y + x y e^y + e^y \sin x) dy = 0 \implies \mathbf{e^y x + e^y \sin x = C}$$

2. **$y \, dx - (x + 6y^2) dy = 0 \implies \mu(y) = \frac{1}{y^2} \implies \frac{x}{y} - 6y = C$**



### ✏️ TRABAJO PRÁCTICO N° 5: Ecuaciones Lineales

#### 📌 Problemas Seleccionados:
1. **$y' + 2xy = 2x e^{-x^2}$**
   * $P(x) = 2x \implies \int P(x)dx = x^2$
   * $y = e^{-x^2} \left[ \int 2x e^{-x^2} e^{x^2} dx + C \right] = e^{-x^2} \left[ \int 2x \, dx + C \right] \implies \mathbf{y = x^2 e^{-x^2} + C e^{-x^2}}$

2. **$\frac{dy}{dx} + \frac{y}{x} = x^3 \implies y = \frac{x^4}{5} + \frac{C}{x}$**

3. **Crecimiento de Población de Cultivo (Ejercicio 10):**
   $$N(t) = N_0 e^{k t}$$
   Para $t=2 \implies N(2) = 400$; para $t=6 \implies N(6) = 25600$.
   $$\frac{N(6)}{N(2)} = e^{4k} \implies \frac{25600}{400} = 64 \implies 4k = \ln(64) \implies k \approx 1,04$$
   $$N_0 = \frac{400}{e^{2(1,04)}} = 8 \implies \mathbf{N(t) = 8 e^{1,04 t}}$$
