# 📐 Resolución de Problemas de Cinemática Vectorial y Unidimensional

Este documento recopila la resolución detallada, paso a paso, de un conjunto de problemas evaluativos de cinemática (movimiento 2D, caída libre, MRU y MRUV), estructurados con rigor académico para estudiantes de ingeniería.



## 📋 Pregunta 1: Movimiento Bidimensional en Coordenadas Cartesianas

Una araña macho efectúa un movimiento 2D cuya ecuación horaria de la posición está determinada por:
$$\vec{r}(t) = 3t \hat{i} + (2t^2 + 3) \hat{j}$$

### 🎯 Objetivos
1. Determinar la posición de la partícula en el instante $t = 5\text{ s}$.
2. Hallar la ecuación cartesiana de la trayectoria.



### 🔍 Procedimiento y Desarrollo

#### 1. Posición en el instante $t = 5\text{ s}$
Para encontrar el vector posición $\vec{r}(t)$ evaluamos ambas componentes paramétricas en $t = 5\text{ s}$:

* **Componente en el eje $x$:**
  $$x(5) = 3(5) = 15$$

* **Componente en el eje $y$:**
  $$y(5) = 2(5^2) + 3 = 2(25) + 3 = 50 + 3 = 53$$

Agrupando ambas componentes con sus vectores unitarios, obtenemos:
$$\vec{r}(t=5) = 15 \hat{i} + 53 \hat{j}$$

> **Opción correcta seleccionada:** **Opción G** ($\vec{r}(t=5) = 15 \hat{i} + 53 \hat{j}$)



#### 2. Ecuación de la trayectoria
La ecuación de la trayectoria describe el vínculo geométrico entre las coordenadas $x$ e $y$, eliminando la variable temporal $t$.

* Despejamos el tiempo $t$ a partir de la componente horizontal:
  $$x = 3t \implies t = \frac{x}{3}$$

* Sustituimos esta expresión en la componente vertical $y$:
  $$y = 2\left(\frac{x}{3}\right)^2 + 3$$
  $$y = 2\left(\frac{x^2}{9}\right) + 3$$
  $$y = \frac{2}{9}x^2 + 3$$

> **Opción correcta seleccionada:** **Opción D** ($y = \frac{2}{9}x^2 + 3$)



## 🍏 Pregunta 2: Caída Libre de un Objeto

Se deja caer una pelota desde el reposo, desde una altura de $50\text{ m}$ sobre el nivel del suelo. 

### 🎯 Objetivo
Calcular la rapidez de la pelota justo al impactar el suelo.



### 🔍 Procedimiento y Desarrollo

Para resolver este problema de caída libre, utilizamos la ecuación cinemática independiente del tiempo que vincula la velocidad final, la aceleración de la gravedad y el desplazamiento vertical:

$$v^2 = v_0^2 + 2g \Delta y$$

#### 📊 Datos del problema:
* **Velocidad inicial ($v_0$):** $0\text{ m/s}$ (parte desde el reposo).
* **Altura o desplazamiento vertical ($\Delta y$):** $50\text{ m}$.
* **Aceleración de la gravedad ($g$):** $9.8\text{ m/s}^2$.

Sustituyendo los valores en la ecuación:
$$v^2 = 0^2 + 2 \cdot (9.8\text{ m/s}^2) \cdot (50\text{ m})$$
$$v^2 = 980\text{ m}^2/\text{s}^2$$

Aplicamos la raíz cuadrada para despejar la rapidez:
$$v = \sqrt{980\text{ m}^2/\text{s}^2} \approx 31.3\text{ m/s}$$

> **Opción correcta seleccionada:** **Opción C** ($v = 31.3\text{ m/s}$)



## 🏃‍♂️ Pregunta 3: Cinemática Rectilínea Paramétrica

El movimiento de una partícula está dado por las ecuaciones paramétricas $x = 4t$ e $y = 2t - 2$, en donde $x$ e $y$ se miden en metros y $t$ en segundos.

### 🎯 Objetivos
1. Determinar el vector posición de la partícula para todo instante.
2. Calcular la posición de la partícula a los $5\text{ s}$.
3. Calcular la distancia desde el origen del sistema de referencia hasta la partícula en dicho instante.



### 🔍 Procedimiento y Desarrollo

#### 1. Vector posición para todo instante
Combinando las ecuaciones paramétricas lineales con los vectores unitarios cartesianos $\hat{i}$ y $\hat{j}$:
$$\vec{r}(t) = (4t)\hat{i} + (2t - 2)\hat{j}$$

> **Opción correcta seleccionada:** **Opción L** ($\vec{r}(t) = 4t\hat{i} + (2t - 2)\hat{j}$)



#### 2. Posición a los $5\text{ s}$
Sustituimos $t = 5\text{ s}$ en cada componente:
* $x(5) = 4 \cdot 5 = 20\text{ m}$
* $y(5) = 2 \cdot 5 - 2 = 10 - 2 = 8\text{ m}$

Por lo tanto:
$$\vec{r}(5) = 20\hat{i} + 8\hat{j} \quad (\text{en coordenadas } (20, 8)\text{ metros})$$

> **Opción correcta seleccionada:** **Opción C** ($\vec{r}(t=5) = 20\hat{i} + 8\hat{j}$)



#### 3. Distancia al origen del sistema de referencia
La distancia $d$ desde el origen $(0,0)$ se calcula obteniendo el módulo del vector posición en $t = 5\text{ s}$:
$$d = |\vec{r}(5)| = \sqrt{x(5)^2 + y(5)^2}$$
$$d = \sqrt{20^2 + 8^2} = \sqrt{400 + 64} = \sqrt{464} \approx 21.54\text{ m}$$

> **Opción correcta seleccionada:** **Opción J** ($21.54\text{ m}$)



## 🚂 Pregunta 4: Encuentro Frontal de Dos Trenes (MRU)

De dos estaciones A y B distantes $720\text{ km}$ entre sí, parten dos trenes en sentidos distintos con riesgo de choque frontal. El tren A viaja con una velocidad media constante de $64\text{ km/h}$ y el tren B con una velocidad media constante de $80\text{ km/h}$.

### 🎯 Objetivos
1. Determinar después de qué tiempo de haber partido se cruzan.
2. Calcular a qué distancia de las estaciones de origen ocurre el encuentro.



### 🔍 Procedimiento y Desarrollo

Establecemos un sistema de referencia unidimensional donde la estación A se encuentra en la posición $x_0 = 0\text{ km}$ y la estación B en $x_0 = 720\text{ km}$.

* **Ecuación horaria del tren A (sentido positivo):**
  $$x_A(t) = 64t$$

* **Ecuación horaria del tren B (sentido opuesto/negativo):**
  $$x_B(t) = 720 - 80t$$

#### 1. Tiempo de encuentro
Igualamos ambas posiciones ($x_A(t) = x_B(t)$) para hallar el instante de cruce:
$$64t = 720 - 80t$$
$$64t + 80t = 720$$
$$144t = 720$$
$$t = \frac{720}{144} = 5\text{ hs}$$

> **Opción correcta seleccionada:** **Opción B** ($5\text{ hs}$)



#### 2. Distancia desde las estaciones de origen
Sustituimos $t = 5\text{ hs}$ en la ecuación horaria del tren A:
$$x_A(5) = 64 \cdot 5 = 320\text{ km}$$

Verificamos la distancia desde la estación B:
$$x_B(5) = 720 - 80 \cdot 5 = 720 - 400 = 320\text{ km desde B} \implies 400\text{ km desde la estación A}$$

> **Opción correcta seleccionada:** **Opción A** (A $320\text{ km}$ de la estación A y $400\text{ km}$ de la estación B)



## 🚗 Pregunta 5: Aceleración en Movimiento Uniformemente Variado (MRUV)

Un vehículo que se mueve a $30\text{ m/s}$ disminuye su rapidez uniformemente hasta un valor de $10\text{ m/s}$ en un tiempo de $5\text{ s}$.

### 🎯 Objetivo
Determinar la aceleración del automóvil.



### 🔍 Procedimiento y Desarrollo

Utilizamos la definición analítica de aceleración media (constante en el MRUV):
$$a = \frac{v_f - v_0}{t_f - t_0}$$

#### 📊 Parámetros:
* **Velocidad inicial ($v_0$):** $30\text{ m/s}$
* **Velocidad final ($v_f$):** $10\text{ m/s}$
* **Intervalo temporal ($\Delta t$):** $5\text{ s}$

Sustituyendo los valores en la fórmula:
$$a = \frac{10\text{ m/s} - 30\text{ m/s}}{5\text{ s}} = \frac{-20\text{ m/s}}{5\text{ s}} = -4\text{ m/s}^2$$

El signo negativo denota físicamente una desaceleración (frenado del vehículo).

> **Opción correcta seleccionada:** **Opción A** ($a = -4\text{ m/s}^2$)
