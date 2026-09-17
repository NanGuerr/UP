# 🔄 Propuesta Alternativa: Movimiento Rectilíneo Uniforme (MRU) elevado seguido de Tiro Horizontal

Para lograr el desplazamiento desde el punto (0 m, 2 m) hasta el objetivo en (4 m, 0 m), se propone una secuencia invertida a la original: iniciar con un desplazamiento horizontal rectilíneo a 2 m de altura y, a mitad del trayecto, dejar caer el objeto libremente para que la inercia complete el recorrido mediante un tiro horizontal. 🛤️📉

## ➡️ Fase 1: Movimiento Rectilíneo Uniforme (MRU)
El objeto inicia en la posición (0 m, 2 m) y se desplaza sobre una superficie horizontal plana hasta la coordenada (2 m, 2 m). Este movimiento se desarrolla sobre una línea recta a velocidad constante, es decir, sin aceleración. 📏 La ecuación horaria de la posición en función del tiempo para MRU expresa la posición del móvil como función de la variable tiempo. ⏱️

## 📉 Fase 2: Tiro Horizontal
Al alcanzar la coordenada (2 m, 2 m), la superficie de apoyo termina y el móvil comienza a caer, describiendo una trayectoria parabólica. En los tiros horizontales, el ángulo inicial es 0°, por lo que no habrá componente inicial en $y$ de la velocidad. 📐 El tiro oblicuo/horizontal es una combinación simultánea de un movimiento rectilíneo uniforme en el eje horizontal y una caída libre en el eje vertical. La aceleración en el eje $x$ es nula, y en el eje $y$ es la de la gravedad. 🌍

## 🧮 Resolución Analítica de los Procedimientos

Para garantizar que la transición sea fluida y no requiera un cambio abrupto de velocidad, calibramos el sistema resolviendo primero la Fase 2 para encontrar la velocidad horizontal necesaria. ⚙️

### 📐 Cálculo de la Fase 2 (Tiro Horizontal):

Establecemos un sistema de referencia con origen en el punto de lanzamiento de esta fase (2 m, 2 m), considerando la aceleración de la gravedad como $-10 \text{ m/s}^2$ al apuntar el eje $y$ positivo hacia arriba. ⬆️

Las posiciones iniciales de esta fase son $x_0 = 2$ m y $y_0 = 2$ m. 📍

El móvil debe tocar el piso en $y = 0$ m. Igualamos a cero la ecuación horaria de altura para despejar el tiempo de vuelo. ⏳

$$y(t) = y_0 + v_{0y} \cdot t - 5 \cdot t^2$$
$$0 = 2 + 0 \cdot t - 5 \cdot t^2$$
$$5 \cdot t^2 = 2$$
$$t = \sqrt{0.4} \approx 0.632 \text{ s}$$

Para hallar el alcance (4 m), reemplazamos el tiempo de vuelo en la ecuación horaria del eje horizontal. 📏

$$x(t) = x_0 + v_{0x} \cdot t$$
$$4 = 2 + v_{0x} \cdot (0.632)$$
$$2 = v_{0x} \cdot 0.632$$
$$v_{0x} \approx 3.16 \text{ m/s}$$

### 📏 Cálculo de la Fase 1 (MRU):

Para que el movimiento sea continuo, el móvil debe recorrer el primer tramo (de $x = 0$ a $x = 2$) con la misma velocidad horizontal de $3.16 \text{ m/s}$. 🚀

Aplicamos la ecuación del MRU partiendo desde $x_0 = 0$ con $t_0 = 0$. 🏁

$$x(t) = x_0 + v \cdot t$$
$$2 = 0 + 3.16 \cdot t$$
$$t = \frac{2}{3.16} \approx 0.633 \text{ s}$$

## 🔍 Análisis de Viabilidad de la Propuesta

*   **🔗 Coherencia Cinemática:** El modelo integra perfectamente las ecuaciones del MRU unidimensional con la cinemática del tiro horizontal.
*   **✅ Viabilidad Física Real:** A diferencia de la propuesta inicial (Tiro horizontal seguido de MRU en el suelo), que requiere un mecanismo teóricamente ideal para absorber el choque vertical de la caída sin perder la inercia horizontal, esta alternativa es físicamente natural. 🍃
*   **🌊 Transición de Movimientos:** El cambio entre la Fase 1 y la Fase 2 no requiere ninguna fuerza externa impulsiva ni un mecanismo de detención. Al perder el plano de apoyo en $x = 2$ m, la aceleración de la gravedad comienza a actuar instantáneamente sobre el eje $y$, modificando el vector velocidad para ser tangente a la nueva trayectoria parabólica. La rapidez en el eje $x$ de $3.16 \text{ m/s}$ se conserva intacta por inercia (despreciando el rozamiento del aire) garantizando un empalme perfecto entre ambas fases. ✨
