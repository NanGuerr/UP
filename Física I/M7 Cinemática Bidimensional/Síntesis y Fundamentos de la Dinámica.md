# 📘 Cinemática Bidimensional y Fundamentos de la Dinámica

Este documento sintetiza los principios fundamentales de la cinemática en dos dimensiones y las leyes del movimiento que rigen la dinámica 🚀. El análisis se centra en dos tipos de desplazamiento complejo: el tiro oblicuo 🎯, caracterizado por una trayectoria parabólica resultante de la combinación de movimientos rectilíneos en los ejes horizontal y vertical; y el movimiento circular uniforme (MCU) 🔄, donde la partícula mantiene un radio constante y una velocidad angular uniforme. Finalmente, se exponen las Leyes de Newton 🍎, que proporcionan el marco teórico para comprender las causas del movimiento, introduciendo conceptos críticos como la masa (resistencia al cambio de velocidad) y la interacción de fuerzas 💥.

## 1️⃣ Cinemática Bidimensional: El Tiro Oblicuo (TO)

El tiro oblicuo, o movimiento parabólico, ocurre cuando un objeto es lanzado con una velocidad inicial $v_0$ formando un ángulo $\theta$ con el eje horizontal 📐. Para su análisis físico, se aplican simplificaciones estándar: gravedad constante y ausencia de rozamiento con el aire 🌬️.

### 🔀 Descomposición del Movimiento

El TO es el resultado de la combinación simultánea de dos movimientos independientes en cada eje:

* **Eje Horizontal (x):** Se comporta como un Movimiento Rectilíneo Uniforme (MRU) ➡️. La velocidad permanece constante ($a_x = 0$).
* **Eje Vertical (y):** Como un tiro vertical y caída libre (MRUV) ⬇️. La velocidad varía por la acción de la gravedad ($g$).

### 📊 Ecuaciones Horarias Fundamentales

Asumiendo el eje $y$ positivo hacia arriba y un valor de gravedad ajustado a 10 m/s²:

| Eje | Posición | Velocidad | Aceleración |
| --- | --- | --- | --- |
| **Horizontal (x)** | $$x(t) = x_0 + v_0 \cos(\theta) (t - t_0)$$ | $$v_x(t) = v_0 \cos(\theta)$$ | $$a_x(t) = 0$$|
| **Vertical (y)** | $$y(t) = y_0 + v_0 \sin(\theta) (t - t_0) - 5 \frac{\text{m}}{\text{s}^2} (t - t_0)^2$$ | $$v_y(t) = v_0 \sin(\theta) - 10 \frac{\text{m}}{\text{s}^2} (t - t_0)$$ | $$a_y(t) = -10 \frac{\text{m}}{\text{s}^2}$$ |

### 📍 Puntos Críticos de la Trayectoria

* **Altura Máxima ($h_{\max}$):** En este punto, la componente vertical de la velocidad es nula ($v_y = 0$) 🔝. Es un error común asumir que la velocidad total es cero; en realidad, solo la componente vertical se anula, mientras que la horizontal persiste.
* **Alcance:** Es la distancia horizontal total recorrida cuando el objeto regresa al nivel del suelo ($y = 0$) 📏.
* **Velocidad Tangencial:** En cualquier punto, el vector velocidad es tangente a la trayectoria 📉. Su módulo se calcula mediante el teorema de Pitágoras:

$$v = \sqrt{v_x^2 + v_y^2}$$



## 2️⃣ Movimiento Circular Uniforme (MCU)

El MCU describe partículas que se desplazan en una trayectoria circular recorriendo ángulos iguales en tiempos iguales 🎡.

### 📐 Magnitudes y Relaciones

* **Velocidad Angular ($\omega$):** Es el cambio del ángulo respecto al tiempo ($\omega = \frac{\Delta\theta}{\Delta t}$). En el MCU, es constante ⏱️.
* **Velocidad Tangencial ($v$):** Se relaciona con la velocidad angular y el radio ($R$) mediante la fórmula $v = \omega R$ 🔄.
* **Aceleración Angular ($\gamma$):** Dado que la velocidad angular es constante, la aceleración angular es cero ($\gamma = 0$) 🛑.

### 🎯 La Aceleración Centrípeta ($a_c$)

Aunque el módulo de la velocidad tangencial sea constante, el vector velocidad cambia permanentemente de dirección y sentido 🧭. Esta variación es producida por la aceleración centrípeta, definida como:


$$a_c = \omega^2 R = \frac{v^2}{R}$$

## 3️⃣ Las Leyes del Movimiento de Newton

Sir Isaac Newton estableció las causas del movimiento, integrando los trabajos previos de Galileo y Kepler 🔭. Un concepto central en su teoría es la masa, definida como la resistencia de un cuerpo a los cambios en su velocidad 🧱.

### ⚖️ Las Tres Leyes Fundamentales

* **Ley de la Inercia:** Todo cuerpo permanece en estado de reposo o de movimiento rectilíneo y uniforme a menos que fuerzas externas lo obliguen a cambiar dicho estado 🛋️.
* **Ley de la Fuerza y la Aceleración:** El cambio de movimiento (aceleración) es proporcional a la fuerza motriz aplicada y ocurre en la dirección de la línea recta en la que se aplica dicha fuerza 🚀.
* **Ley de Acción y Reacción:** A cada acción se opone siempre una reacción igual; las acciones mutuas de dos cuerpos entre sí están siempre dirigidas en sentidos opuestos 🪃.

## 4️⃣ Datos de Aplicación: Caso Práctico (Golf) ⛳

Basado en el análisis de un proyectil (pelota de golf) con $v_0 =$ 50 m/s y $\theta =$ 65°, se derivan los siguientes comportamientos físicos 🏌️‍♂️:

* **Componentes iniciales:**
* $v_{0x} \approx$ 21.13 m/s
* $v_{0y} \approx$ 45.32 m/s


* **Dinámica de vuelo:** Si el proyectil cae por debajo del nivel inicial (ej. un bunker a -10 m 🏖️), el tiempo de vuelo aumenta respecto a una trayectoria simétrica. En el ejemplo citado, el tiempo de vuelo resultó en 9.28 s, logrando un alcance de 196.09 m 🏟️.
* **Altura Máxima:** Se alcanza cuando el tiempo es de 4.53 s (donde $v_y = 0$), resultando en una altura de 102.67 m ☁️.
