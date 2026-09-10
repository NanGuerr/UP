# 🚗 Movimiento Rectilíneo Uniformemente Variado (MRUV)

Este documento detalla la teoría fundamental, la deducción de las ecuaciones horarias y las expresiones analíticas del **Movimiento Rectilíneo Uniformemente Variado (MRUV)**, estructurado con rigor matemático para su correcta visualización en entornos Markdown y GitHub.



## 📐 1. Introducción al MRUV

El **Movimiento Rectilíneo Uniformemente Variado (MRUV)** se caracteriza por describir una trayectoria en línea recta donde la velocidad del cuerpo experimenta variaciones iguales en intervalos de tiempo iguales. En consecuencia, la característica principal es que la aceleración permanece constante en el tiempo:

* **Trayectoria:** Rectilínea.
* **Aceleración ($a$):** Constante ($a = \text{cte}$).
* **Velocidad ($v$):** Variable ($\Delta v \neq 0$).

A partir de la definición de aceleración media, el cociente entre la variación de la velocidad y el intervalo temporal se expresa como:

$$a = \frac{\Delta v}{\Delta t} = \frac{v_f - v_i}{t_f - t_i}$$

Si consideramos que el tiempo inicial es $t_i = 0\text{ s}$, obtenemos la expresión de la velocidad final en función del tiempo:

$$v_f = v_i + a \cdot t_f$$



## ⏱️ 2. Ecuación Horaria de la Velocidad $v(t)$

La **velocidad instantánea** en el MRUV está representada por una función lineal del tiempo, cuya pendiente coincide con la aceleración constante del cuerpo:

$$v(t) = v_i + a \cdot t$$

* Donde:
  * $v(t)$: Velocidad en cualquier instante $t$.
  * $v_i$: Velocidad inicial.
  * $a$: Aceleración constante.
  * $t$: Tiempo transcurrido.



## 📈 3. Interpretación Gráfica y Deducción de la Ecuación Horaria de la Posición $x(t)$

En un gráfico de velocidad en función del tiempo ($v$ vs $t$), el área comprendida bajo la recta representa el **desplazamiento total** ($\Delta x$) del móvil:

$$\Delta x = \text{Área bajo la gráfica}$$

Podemos descomponer dicha área geométrica en un rectángulo inferior (formado por la velocidad inicial $v_i$) y un triángulo superior (formado por la variación de velocidad):

$$A = b \cdot h + \frac{b \cdot h}{2}$$

Sustituyendo los términos correspondientes al intervalo temporal $\Delta t$ y la variación de velocidad:

$$\Delta x = v_i \cdot \Delta t + \frac{(v_f - v_i) \cdot \Delta t}{2}$$

Recordando que $v_f - v_i = a \cdot \Delta t$, sustituimos este resultado en la ecuación de áreas:

$$\Delta x = v_i \cdot \Delta t + \frac{a \cdot (\Delta t)^2}{2}$$

Reorganizando la expresión algebraica, obtenemos la **ecuación horaria de la posición en función del tiempo** para el MRUV:

$$\Delta x = v_i \cdot t + \frac{1}{2} a \cdot t^2$$

O expresada en función de las posiciones inicial y final ($x(t) = x_i + \Delta x$):

$$x(t) = x_i + v_i \cdot t + \frac{1}{2} a \cdot t^2$$



## 🔗 4. Ecuación Independiente del Tiempo (Torricelli)

En ciertas aplicaciones prácticas donde el tiempo no es un dato conocido ni requerido, se puede relacionar la velocidad, la aceleración y el desplazamiento directamente combinando las ecuaciones anteriores:

A partir de la fórmula del desplazamiento medio:

$$\Delta x = \frac{(v_f + v_i) \cdot \Delta t}{2}$$

Despejando el intervalo de tiempo $\Delta t$:

$$\Delta t = \frac{2 \Delta x}{v_f + v_i}$$

Sustituyendo esta equivalencia temporal en la fórmula de la aceleración, se llega a la expresión geométrica e independiente del tiempo:

$$a = \frac{v_f^2 - v_i^2}{2 \Delta x}$$

Despejando la velocidad final al cuadrado, obtenemos la conocida **ecuación complementaria**:

$$v_f^2 = v_i^2 + 2a \cdot \Delta x$$
