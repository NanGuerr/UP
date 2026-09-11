# 🚗 Cinemática - Velocidad, Rapidez y Aceleración

Este documento detalla los conceptos fundamentales de la cinemática física en comparación con el sentido cotidiano, abarcando las diferencias entre rapidez y velocidad, velocidad media e instantánea, y el cálculo de la aceleración a partir de tablas de posición y tiempo.



## 🏃‍♂️ 1. Velocidad vs. Rapidez (Física vs. Cotidiano)

En el lenguaje cotidiano, los términos **velocidad** y **rapidez** suelen utilizarse como sinónimos; sin embargo, en la **Física** tienen definiciones conceptuales distintas:

* **Rapidez ($v$):** Es una magnitud escalar que únicamente indica cuán rápido se mueve un cuerpo (la relación entre la distancia recorrida y el tiempo transcurrido). No toma en cuenta la dirección.
* **Velocidad ($\vec{v}$):** Es una magnitud **vectorial**, lo que significa que requiere de tres componentes fundamentales para quedar completamente definida:
  1. **Valor (Módulo):** La magnitud numérica o rapidez.
  2. **Dirección:** La línea recta sobre la cual se desplaza el cuerpo.
  3. **Sentido:** Hacia dónde se orienta el movimiento dentro de esa dirección (positivo o negativo según el sistema de referencia).



## 🏎️ 2. Movimiento Relativo y Sistemas de Referencia

El estado de movimiento o reposo de un objeto es **relativo** al punto de referencia que se elija:

* Dependiendo del sistema de coordenadas cartesianas adoptado, los valores de posición y velocidad pueden adquirir signos positivos ($+v_0$) o negativos ($-v_0$).
* El cambio de posición respecto al tiempo define las características geométricas y dinámicas del trayecto.



## ⏱️ 3. Tipos de Velocidad

Durante el análisis del movimiento de una partícula, se distinguen dos tipos principales de velocidad:

1. **Velocidad Media ($v_m$):** Representa el promedio de la velocidad en un intervalo de tiempo finito. Se calcula mediante la variación de posición entre la variación de tiempo:
   $$v_m = \frac{\Delta x}{\Delta t} = \frac{x_f - x_i}{t_f - t_i}$$

2. **Velocidad Instantánea:** Es la velocidad que posee el cuerpo en un instante de tiempo específico (en un segundo determinado de su trayectoria).



## 📊 4. Ejemplo Práctico: Análisis de una Tabla de Posición y Tiempo

A continuación, se analiza un conjunto de datos experimentales donde se registra la posición $x$ de un móvil en función del tiempo $t$:

| Posición ($x$ en metros) | Tiempo ($t$ en segundos) |
| :--- | :--- |
| $0\text{ m}$ (Punto inicial / 0) | $0\text{ s}$ |
| $20\text{ m}$ (Punto A) | $5\text{ s}$ |
| $40\text{ m}$ (Punto B) | $15\text{ s}$ |
| $60\text{ m}$ (Punto C) | $30\text{ s}$ |
| $80\text{ m}$ (Punto D) | $40\text{ s}$ |



### 🧮 Procedimientos de Cálculo

#### A. Cálculo de la velocidad media total (entre el inicio y el punto D)
Utilizando la fórmula general de la velocidad media:
$$v_m = \frac{x_f - x_i}{t_f - t_i}$$

Sustituyendo los valores extremos de la tabla:
$$v_m = \frac{80\text{ m} - 0\text{ m}}{40\text{ s} - 0\text{ s}} = \frac{80\text{ m}}{40\text{ s}} = 2\text{ m/s}$$

#### B. Cálculo de la velocidad media en el tramo B-C (entre $15\text{ s}$ y $30\text{ s}$)
* Posición inicial ($x_i$): $40\text{ m}$ en $t_i = 15\text{ s}$
* Posición final ($x_f$): $60\text{ m}$ en $t_f = 30\text{ s}$

Sustituyendo en la fórmula:
$$v_{BC} = \frac{60\text{ m} - 40\text{ m}}{30\text{ s} - 15\text{ s}} = \frac{20\text{ m}}{15\text{ s}} \approx 1.33\text{ m/s}$$

#### C. Cálculo de la velocidad media en el tramo C-D (entre $30\text{ s}$ y $40\text{ s}$)
* Posición inicial ($x_i$): $60\text{ m}$ en $t_i = 30\text{ s}$
* Posición final ($x_f$): $80\text{ m}$ en $t_f = 40\text{ s}$

Sustituyendo en la fórmula:
$$v_{CD} = \frac{80\text{ m} - 60\text{ m}}{40\text{ s} - 30\text{ s}} = \frac{20\text{ m}}{10\text{ s}} = 2\text{ m/s}$$



## 🚀 5. Aceleración ($a$)

La **aceleración** mide el **cambio de la velocidad en el tiempo**. 

* Si la velocidad aumenta ($v \uparrow$), la aceleración es **positiva**.
* Si la velocidad disminuye ($v \downarrow$), la aceleración es **negativa** (desaceleración o frenado).

### 📐 Fórmula de la Aceleración Media
$$a = \frac{\Delta v}{\Delta t} = \frac{v_f - v_i}{t_f - t_i}$$



### 🧮 Ejemplo de Cálculo de Aceleración entre los Tramos B-C y C-D

Si analizamos el cambio de velocidad entre el tramo $B-C$ ($v_i = 1.33\text{ m/s}$ en $t_i = 30\text{ s}$) y el tramo $C-D$ ($v_f = 2\text{ m/s}$ en $t_f = 40\text{ s}$):

$$a = \frac{2\text{ m/s} - 1.33\text{ m/s}}{40\text{ s} - 30\text{ s}}$$

$$a = \frac{0.67\text{ m/s}}{10\text{ s}} \approx 0.067\text{ m/s}^2$$
