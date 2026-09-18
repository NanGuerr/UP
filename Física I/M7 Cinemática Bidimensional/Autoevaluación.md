# Autoevaluación Cinemática vectorial y bidimensional 📐

Un jugador patea un penal con una velocidad inicial de 13 m/s y con un ángulo de 45° respecto del piso. El arco se encuentra a 13 m. Determinar:**

**¿Qué tiempo transcurre desde que patea hasta que la pelota llega al arco?** ⏱️

* **Opción A:** 3 años
* **Opción B:** 1.41 s
* **Opción C:** 1.14 s
* **Opción D:** 2 días

Para determinar el tiempo de vuelo hasta el arco, se debe analizar el movimiento en el eje horizontal, el cual se comporta como un Movimiento Rectilíneo Uniforme (MRU) con velocidad constante. 👟

Calculamos la componente horizontal de la velocidad inicial ($v_{0x}$) utilizando el ángulo de disparo:

$$v_{0x} = v_0 \cdot \cos(\theta)$$

$$v_{0x} = 13 \cdot \cos(45^\circ)$$

$$v_{0x} \approx 13 \cdot 0.7071 \approx 9.19\text{ m/s}$$

Aplicamos la ecuación horaria de la posición para el eje horizontal ($x(t) = v_{0x} \cdot t$) considerando que el origen está en el punto de lanzamiento y la distancia objetivo al arco es de 13 m: 🥅

$$13 = 9.19 \cdot t$$

Despejamos el tiempo ($t$):

$$t = \frac{13}{9.19}$$

$$t \approx 1.414\text{ s}$$

✅ La opción correcta es la **Opción B**.



📉 **¿A qué distancia desde donde fue pateada toca el piso la pelota?**

* **Opción A:** 17.2 m
* **Opción B:** No pica.
* **Opción C:** 350 m
* **Opción D:** 18 m

Para hallar el alcance, definido como la posición medida en el eje horizontal para la cual el objeto hace contacto con el piso en su regreso, debemos determinar el tiempo de vuelo total. 📏

Calculamos la componente vertical de la velocidad inicial ($v_{0y}$) utilizando el ángulo de elevación de 45°:

$$v_{0y} = v_0 \cdot \sin(\theta)$$

$$v_{0y} = 13 \cdot \sin(45^\circ) \approx 13 \cdot 0.7071 \approx 9.19\text{ m/s}$$

El tiempo de vuelo ($t_v$) se obtiene igualando a cero la ecuación horaria de altura (asumiendo que el lanzamiento se realiza desde $y_0 = 0\text{ m}$). Utilizando el valor estándar de la gravedad $g = 9.8\text{ m/s}^2$ para mayor precisión geométrica en este problema: 🌍

$$y(t) = v_{0y} \cdot t - \frac{1}{2} g \cdot t^2$$

$$0 = 9.19 \cdot t_v - 4.9 \cdot t_v^2$$

Despejamos el tiempo dividiendo ambos lados por $t_v$ (descartando la solución $t=0$ correspondiente al instante inicial):

$$4.9 \cdot t_v = 9.19$$

$$t_v = \frac{9.19}{4.9} \approx 1.876\text{ s}$$

Para encontrar el alcance horizontal total, reemplazamos este tiempo de vuelo en la ecuación horaria del eje horizontal, utilizando la componente $v_{0x} \approx 9.19\text{ m/s}$ que permanece constante a lo largo del trayecto: 🚀

$$x(t) = x_0 + v_{0x} \cdot t$$

$$x(1.876) = 0 + 9.19 \cdot 1.876$$

$$x \approx 17.24\text{ m}$$

La pelota toca el piso a una distancia de aproximadamente 17.2 m.

✅ La opción correcta es la **Opción A**.



🧱 **Un artillero dispara una bala con un ángulo de 45° respecto de la horizontal, a 20 m/s. A 20 m de éste se encuentra un muro cuya altura es de 21 m. Determinar: ¿A qué altura del muro impacta la bala?** 💥

* **Opción A:** 10.2 m
* **Opción B:** 30.36 m
* **Opción C:** 40.82 m

Para determinar a qué altura impacta la bala, debemos analizar las ecuaciones horarias del tiro oblicuo, descomponiendo el movimiento en el eje horizontal y vertical. 📐

Primero, calculamos las componentes de la velocidad inicial ($v_0 = 20\text{ m/s}$ y $\theta = 45^\circ$):

$$v_{0x} = v_0 \cdot \cos(\theta) = 20 \cdot \cos(45^\circ) \approx 14.14\text{ m/s}$$

$$v_{0y} = v_0 \cdot \sin(\theta) = 20 \cdot \sin(45^\circ) \approx 14.14\text{ m/s}$$

En el eje horizontal, la velocidad permanece constante ya que no hay aceleración ($a_x = 0$). Calculamos el tiempo ($t$) que tarda la bala en recorrer la distancia horizontal hasta el muro ($x = 20\text{ m}$): ⏳

$$x(t) = v_{0x} \cdot t$$

$$20 = 14.14 \cdot t$$

$$t = \frac{20}{14.14} \approx 1.414\text{ s}$$

A continuación, utilizamos este tiempo en la ecuación horaria de altura para el eje vertical, donde el movimiento se ve afectado por la aceleración de la gravedad. Utilizando el valor $g = 9.8\text{ m/s}^2$ para los cálculos de la trayectoria: 🔽

$$y(t) = v_{0y} \cdot t - \frac{1}{2} g \cdot t^2$$

$$y(1.414) = 14.14 \cdot 1.414 - 4.9 \cdot (1.414)^2$$

$$y(1.414) \approx 20 - 4.9 \cdot 2$$

$$y(1.414) \approx 20 - 9.8 = 10.2\text{ m}$$

Como la altura calculada (10.2 m) es menor que la altura total del muro (21 m), la bala impacta en el muro a esa altura exacta.

✅ La opción correcta es la **Opción A**.



📈 **Pregunta 4: ¿Qué altura máxima logrará la bala?**

Para determinar la altura máxima que alcanza la bala, utilizamos los datos del problema anterior ($v_0 = 20\text{ m/s}$ y $\theta = 45^\circ$): 🎯

Componente vertical de la velocidad inicial:


$$v_{0y} = 20 \cdot \sin(45^\circ) \approx 14.14\text{ m/s}$$

En el punto más alto de la trayectoria, la componente vertical de la velocidad se anula ($v_y = 0$). Calculamos primero el tiempo que tarda en alcanzar esa altura ($t_{hmax}$): 🔝

$$v_y(t) = v_{0y} - g \cdot t$$

$$0 = 14.14 - 9.8 \cdot t_{hmax}$$

$$t_{hmax} = \frac{14.14}{9.8} \approx 1.443\text{ s}$$

Reemplazamos este tiempo en la ecuación horaria de la posición vertical para obtener la altura máxima ($h_{max}$): 🏔️

$$h_{max} = y(t_{hmax}) = v_{0y} \cdot t_{hmax} - \frac{1}{2} g \cdot t_{hmax}^2$$

$$h_{max} = 14.14 \cdot 1.443 - 4.9 \cdot (1.443)^2$$

$$h_{max} \approx 20.40 - 10.20 = 10.20\text{ m}$$

*(Nota: Si en la cátedra utilizan la gravedad redondeada a $g = 10\text{ m/s}^2$, el tiempo resulta $t_{hmax} = 1.414\text{ s}$ y la altura máxima da exactamente $h_{max} = 10\text{ m}$).* 💡

La bala alcanzará una altura máxima de **10.2 m** (o 10 m redondeando la gravedad).
