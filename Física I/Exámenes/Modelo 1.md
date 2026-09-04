# ⚛️ Física 1 - Primer Parcial 

Este documento contiene la transcripción detallada, el análisis paso a paso y la resolución explicativa de los ejercicios del primer examen parcial de **Física 1** de la Universidad de Palermo. Las expresiones matemáticas están adaptadas para una correcta visualización en GitHub Markdown.



## 📈 1. Análisis del Diagrama Velocidad-Tiempo (Cinemática)

### 📋 Enunciado del Problema
Un móvil se mueve según el diagrama de la figura (Gráfica Velocidad vs. Tiempo). 
* **Puntaje:** 25 puntos en total (a: 4 pts, b: 5 pts, c: 8 pts, d: 8 pts).
* **Puntaje mínimo para aprobar:** 50 puntos.



### ⚙️ Procedimiento y Resolución Detallada

#### a) 📝 Explicación del tipo de movimiento en cada etapa
Observando el gráfico de velocidad en función del tiempo, dividimos el movimiento en tres intervalos o etapas distintas:
1. **Etapa 1 ($t = 0\text{ s}$ a $t = 20\text{ s}$):** La velocidad permanece constante con un valor de $v = 2\text{ m/s}$. Por lo tanto, se trata de un **Movimiento Rectilíneo Uniforme (MRU)** con aceleración nula.
2. **Etapa 2 ($t = 20\text{ s}$ a $t = 40\text{ s}$):** La velocidad aumenta linealmente desde $2\text{ m/s}$ hasta $6\text{ m/s}$. Se trata de un **Movimiento Rectilíneo Uniformemente Variado (MRUV)** acelerado.
3. **Etapa 3 ($t = 40\text{ s}$ a $t = 60\text{ s}$):** La velocidad disminuye linealmente desde $6\text{ m/s}$ hasta $0\text{ m/s}$ (se detiene). Se trata de un **Movimiento Rectilíneo Uniformemente Variado (MRUV)** retardado (desacelerado).

#### b) 📐 Aceleración en cada etapa
La aceleración se calcula como la pendiente de la recta en cada tramo del gráfico $v(t)$:
* **Etapa 1:** 
  $$a_1 = \frac{\Delta v}{\Delta t} = \frac{2 - 2}{20 - 0} = 0 \text{ m/s}^2$$
* **Etapa 2:** 
  $$a_2 = \frac{6 - 2}{40 - 20} = \frac{4}{20} = 0.2 \text{ m/s}^2$$
* **Etapa 3:** 
  $$a_3 = \frac{0 - 6}{60 - 40} = \frac{-6}{20} = -0.3 \text{ m/s}^2$$

#### c) 🕒 Ecuaciones horarias de posición ($x(t)$)
Suponiendo que en $t = 0$ el móvil parte de la posición inicial $x_0 = 0$ y velocidad inicial $v_0 = 2\text{ m/s}$:

* **Etapa 1 ($0 \le t \le 20\text{ s}$):** MRU ($x = x_0 + v_0 t + \frac{1}{2}at^2$)
  $$x(t) = 2t$$
  *(Posición al final de la etapa 1, en $t = 20\text{ s}$: $x(20) = 2(20) = 40\text{ m}$)*

* **Etapa 2 ($20 \le t \le 40\text{ s}$):** MRUV con $v_0 = 2\text{ m/s}$, $x_0 = 40\text{ m}$ y $a = 0.2\text{ m/s}^2$ (tomando $t' = t - 20$):
  $$x(t) = 40 + 2(t - 20) + \frac{1}{2}(0.2)(t - 20)^2$$

* **Etapa 3 ($40 \le t \le 60\text{ s}$):** MRUV con $v_0 = 6\text{ m/s}$, aceleración $a = -0.3\text{ m/s}^2$ y la posición acumulada hasta $t=40\text{ s}$:
  * Posición en $t=40\text{ s}$: $x(40) = 40 + 2(20) + \frac{1}{2}(0.2)(20)^2 = 40 + 40 + 40 = 120\text{ m}$
  * Ecuación: $x(t) = 120 + 6(t - 40) - \frac{1}{2}(0.3)(t - 40)^2$

#### d) 📏 Distancia total recorrida en 60 segundos
La distancia total recorrida corresponde al área bajo la curva del gráfico velocidad-tiempo ($v$ vs $t$), la cual se puede descomponer en figuras geométricas sencillas (un rectángulo y dos trapecios, o un rectángulo y un triángulo grande):
* **Área 1 (Rectángulo de $0$ a $20\text{ s}$):** 
  $$\text{Área}_1 = \text{base} \times \text{altura} = 20\text{ s} \times 2\text{ m/s} = 40\text{ m}$$
* **Área 2 (Trapecio de $20$ a $40\text{ s}$):** 
  $$\text{Área}_2 = \frac{\text{base}_1 + \text{base}_2}{2} \times \text{altura} = \frac{2 + 6}{2} \times 20\text{ s} = 4 \times 20 = 80\text{ m}$$
* **Área 3 (Triángulo de $40$ a $60\text{ s}$):** 
  $$\text{Área}_3 = \frac{\text{base} \times \text{altura}}{2} = \frac{(60 - 40) \times 6}{2} = \frac{20 \times 6}{2} = 60\text{ m}$$

> **Distancia Total:** 
> $$d_{\text{total}} = 40\text{ m} + 80\text{ m} + 60\text{ m} = 180\text{ m}$$



## ⛰️ 2. Tiro Vertical y Caída Libre

### 📋 Enunciado del Problema
Una piedra es lanzada desde la terraza de un edificio de $10\text{ m}$ de altura y alcanza una altura máxima de $20\text{ m}$ (medida desde el suelo). Calcular:
* a) La velocidad con que es lanzada la piedra.
* b) El tiempo que tarda en alcanzar la altura máxima.
* c) La velocidad de la piedra cuando pasa por un punto situado a $15\text{ m}$ de altura, al subir y al bajar.
* d) La velocidad de la piedra al llegar al suelo.

*(Nota: Considerar la aceleración de la gravedad $g = 9.8\text{ m/s}^2$ o $10\text{ m/s}^2$. Usaremos $g = 9.8\text{ m/s}^2$ por defecto).*



### ⚙️ Procedimiento y Resolución Detallada

Definimos un sistema de referencia vertical con origen en el suelo ($y_0 = 10\text{ m}$ altura inicial, altura máxima $y_{\text{max}} = 20\text{ m}$). El desplazamiento vertical hasta la altura máxima es $\Delta y = 20 - 10 = 10\text{ m}$.

#### a) 🚀 Velocidad de lanzamiento ($v_0$)
En la altura máxima, la velocidad final de la piedra es cero ($v = 0$). Usamos la ecuación cinemática independiente del tiempo:
$$v^2 = v_0^2 - 2g(y_{\text{max}} - y_0)$$
$$0 = v_0^2 - 2(9.8)(20 - 10)$$
$$0 = v_0^2 - 196 \implies v_0^2 = 196$$
$$v_0 = \sqrt{196} = 14\text{ m/s}$$

#### b) ⏱️ Tiempo en alcanzar la altura máxima ($t_{\text{max}}$)
Usamos la ecuación de velocidad:
$$v = v_0 - g \cdot t_{\text{max}}$$
$$0 = 14 - 9.8 \cdot t_{\text{max}}$$
$$t_{\text{max}} = \frac{14}{9.8} \approx 1.43\text{ s}$$

#### c) 📍 Velocidad a $15\text{ m}$ de altura (subiendo y bajando)
Para $y = 15\text{ m}$, calculamos la velocidad mediante la conservación de la energía mecánica o cinemática:
$$v^2 = v_0^2 - 2g(y - y_0)$$
$$v^2 = 14^2 - 2(9.8)(15 - 10)$$
$$v^2 = 196 - 2(9.8)(5) = 196 - 98 = 98$$
$$v = \pm \sqrt{98} \approx \pm 9.9\text{ m/s}$$
* **Al subir:** $v = +9.9\text{ m/s}$
* **Al bajar:** $v = -9.9\text{ m/s}$

#### d) 🎯 Velocidad al llegar al suelo ($y = 0$)
Aplicamos la misma ecuación para $y = 0$:
$$v^2 = v_0^2 - 2g(0 - y_0) = 14^2 - 2(9.8)(0 - 10)$$
$$v^2 = 196 + 196 = 392$$
$$v = -\sqrt{392} \approx -19.8\text{ m/s}$$ *(El signo negativo indica que se dirige hacia abajo).*



## 🔗 3. Dinámica de Sistemas (Plano Inclinado y Bloques)

### 📋 Enunciado del Problema
Considere el sistema de la figura. Calcule la tensión en la cuerda y la fuerza $F$ necesaria para mover el sistema en la dirección indicada con una aceleración de $1\text{ m/s}^2$, sabiendo que:
* $M_1 = 20\text{ kg}$
* $M_2 = 10\text{ kg}$
* $\mu_1 = \mu_2 = 0.1$ (coeficientes de rozamiento dinámico)
* $\alpha = 30^{\circ}$



### ⚙️ Procedimiento y Resolución Detallada

#### A. Análisis de fuerzas sobre el bloque 1 ($M_1$ en el plano inclinado)
El bloque 1 se mueve hacia arriba por el plano inclinado. Las fuerzas que actúan sobre él son:
* Componente del peso paralela al plano: $P_{1x} = M_1 g \sin(\alpha)$
* Componente del peso perpendicular al plano: $P_{1y} = M_1 g \cos(\alpha)$
* Fuerza Normal: $N_1 = P_{1y} = M_1 g \cos(\alpha)$
* Fuerza de rozamiento: $F_{r1} = \mu_1 N_1 = \mu_1 M_1 g \cos(\alpha)$ (apunta hacia abajo del plano, opuesta al movimiento)
* Tensión de la cuerda: $T$ (tira hacia arriba del plano)

Planteamos la segunda ley de Newton para el bloque 1 en la dirección del movimiento (hacia arriba del plano):
$$T - M_1 g \sin(\alpha) - F_{r1} = M_1 a$$
$$T - M_1 g \sin(\alpha) - \mu_1 M_1 g \cos(\alpha) = M_1 a$$

Sustituyendo los valores numéricos ($g = 9.8\text{ m/s}^2$ o $10\text{ m/s}^2$, usando $g=9.8$):
* $P_{1x} = 20 \times 9.8 \times \sin(30^{\circ}) = 196 \times 0.5 = 98\text{ N}$
* $F_{r1} = 0.1 \times 20 \times 9.8 \times \cos(30^{\circ}) = 19.6 \times 0.866 = 16.98\text{ N}$
* $M_1 a = 20 \times 1 = 20\text{ N}$

Despejando la Tensión $T$:
$$T - 98 - 16.98 = 20 \implies T = 20 + 98 + 16.98 = 134.98\text{ N}$$

#### B. Análisis de fuerzas sobre el bloque 2 ($M_2$ sobre la superficie horizontal)
Sobre el bloque 2 actúan:
* La fuerza aplicada $F$ (hacia la derecha)
* La tensión de la cuerda $T$ (hacia la izquierda)
* Su peso $P_2 = M_2 g$
* La normal horizontal $N_2 = M_2 g$
* La fuerza de rozamiento: $F_{r2} = \mu_2 N_2 = \mu_2 M_2 g$ (hacia la izquierda)

Planteamos la segunda ley de Newton para el bloque 2 en la dirección horizontal:
$$F - T - F_{r2} = M_2 a$$
$$F - T - \mu_2 M_2 g = M_2 a$$

Calculando los términos para el bloque 2:
* $F_{r2} = 0.1 \times 10 \times 9.8 = 9.8\text{ N}$
* $M_2 a = 10 \times 1 = 10\text{ N}$

Despejando la fuerza $F$:
$$F = T + F_{r2} + M_2 a$$
$$F = 134.98 + 9.8 + 10 = 154.78\text{ N}$$

> **Resultados Finales:**
> * Tensión en la cuerda: $T \approx 135\text{ N}$
> * Fuerza necesaria $F$: $F \approx 154.8\text{ N}$



## 🔄 4. Movimiento Circular Uniforme (MCU)

### 📋 Enunciado del Problema
Un disco de $60\text{ cm}$ de diámetro gira con Movimiento Circular Uniforme (MCU) completando $360$ vueltas en media hora. Determinar:
* a) Su frecuencia en Hz.
* b) Su período.
* c) Su velocidad angular.
* d) La velocidad tangencial de un punto ubicado en el borde.
* e) La aceleración centrípeta de este mismo punto.



### ⚙️ Procedimiento y Resolución Detallada

Datos iniciales:
* Diámetro $D = 60\text{ cm} = 0.6\text{ m} \implies$ Radio $R = 0.3\text{ m}$
* Número de vueltas $N = 360$
* Tiempo $t = 30\text{ min} = 30 \times 60 = 1800\text{ s}$

#### a) 📡 Frecuencia en Hz ($f$)
La frecuencia es el número de vueltas por unidad de tiempo en segundos:
$$f = \frac{N}{t} = \frac{360\text{ vueltas}}{1800\text{ s}} = 0.2\text{ Hz} \text{ (o s}^{-1}\text{)}$$

#### b) ⏳ Período ($T$)
El período es el inverso de la frecuencia:
$$T = \frac{1}{f} = \frac{1}{0.2} = 5\text{ s}$$

#### c) 🌀 Velocidad angular ($\omega$)
La velocidad angular se calcula como:
$$\omega = 2 \pi f = 2 \pi (0.2) = 0.4 \pi \approx 1.257\text{ rad/s}$$

#### d) 🚀 Velocidad tangencial ($v$)
La velocidad tangencial en el borde (a una distancia $R = 0.3\text{ m}$ del centro) es:
$$v = \omega \cdot R = 0.4 \pi \times 0.3 = 0.12 \pi \approx 0.377\text{ m/s}$$

#### e) 🎯 Aceleración centrípeta ($a_c$)
La aceleración centrípeta se calcula mediante la fórmula:
$$a_c = \omega^2 \cdot R = (0.4 \pi)^2 \times 0.3 = 0.16 \pi^2 \times 0.3 = 0.048 \pi^2 \approx 0.048 \times 9.8696 \approx 0.474\text{ m/s}^2$$
