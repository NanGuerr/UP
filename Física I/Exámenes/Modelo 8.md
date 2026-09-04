# ⚛️ Física 1 
Este documento contiene la transcripción detallada, el análisis paso a paso y la resolución explicativa de los ejercicios del examen recuperatorio del segundo parcial de **Física 1** de la Universidad de Palermo. Las expresiones matemáticas están adaptadas para una correcta visualización en GitHub Markdown.



## 🚴 1. Dinámica del Movimiento Circular Uniforme (Curva de un Ciclista)

### 📋 Enunciado del Problema
* **a)** ¿Cuál es el mínimo radio de un círculo en el cual puede ir un ciclista si su velocidad es de $29	ext{ km/h}$ y el coeficiente de rozamiento entre las llantas y el pavimento es $0.32$?
* **b)** Si el radio de curvatura fuese $15	ext{ m}$, ¿cuál sería la máxima velocidad que podría desarrollar el ciclista?



### ⚙️ Procedimiento y Resolución Detallada

Convertimos la velocidad dada a unidades del Sistema Internacional (m/s):
$$v = 29	ext{ km/h} = rac{29}{3.6}  pprox 8.056	ext{ m/s}$$
Consideramos la aceleración de la gravedad $g = 9.8	ext{ m/s}^2$ (o $10	ext{ m/s}^2$).

#### a) Mínimo radio de curvatura ($R_{	ext{min}}$)
La fuerza centrípeta que permite al ciclista trazar la curva es proporcionada por la fuerza de rozamiento estático entre los neumáticos y el suelo:
$$F_c = F_{	ext{roz}}$$
$$rac{m \cdot v^2}{R} = \mu \cdot N = \mu \cdot m \cdot g$$

Cancelando la masa $m$ de ambos lados de la ecuación, despejamos el radio $R$:
$$R = rac{v^2}{\mu \cdot g}$$

Sustituyendo los valores numéricos:
$$R = rac{(8.056)^2}{0.32 \cdot 9.8} = rac{64.90}{3.136}  pprox 20.69	ext{ m}$$

#### b) Máxima velocidad con un radio $R = 15	ext{ m}$
Utilizando la misma expresión dinámica, despejamos ahora la velocidad máxima $v_{	ext{max}}$:
$$v_{	ext{max}} = \sqrt{\mu \cdot g \cdot R}$$

Sustituyendo los valores:
$$v_{	ext{max}} = \sqrt{0.32 \cdot 9.8 \cdot 15} = \sqrt{47.04}  pprox 6.86	ext{ m/s} \quad ( pprox 24.7	ext{ km/h})$$



## 📐 2. Trabajo y Energía en un Plano Inclinado y Caída Libre

### 📋 Enunciado del Problema
Al cuerpo de la figura se le da un empujón hacia arriba imprimiéndole una velocidad inicial de $v_0 = 6	ext{ m/seg}$. Cuando el cuerpo llega al borde superior del plano inclinado sigue de largo y cae hacia el piso desde el extremo superior del plano. La inclinación del plano es de $20^{\circ}$ respecto de la horizontal, su altura es $h = 1	ext{ m}$ y su coeficiente de rozamiento dinámico es $\mu = 0.1$. 
Usando consideraciones energéticas, calcular:
* **a)** La velocidad con la que el cuerpo llega al borde superior del plano inclinado, justo antes de caer.
* **b)** La velocidad con la que el cuerpo llegará al suelo cuando caiga desde el borde superior.



### ⚙️ Procedimiento y Resolución Detallada

Datos iniciales:
* Velocidad inicial al pie de la rampa: $v_0 = 6	ext{ m/s}$
* Altura del plano inclinado: $h = 1	ext{ m}$
* Ángulo de inclinación: $ lpha = 20^{\circ}$
* Coeficiente de rozamiento dinámico: $\mu = 0.1$
* $g = 9.8	ext{ m/s}^2$

La distancia recorrida a lo largo de la rampa ($d$) se calcula mediante trigonometría:
$$\sin(20^{\circ}) = rac{h}{d} \implies d = rac{1}{\sin(20^{\circ})} = rac{1}{0.342}  pprox 2.92	ext{ m}$$

#### a) Velocidad al llegar al borde superior ($v_{	ext{borde}}$)
Aplicamos el **Teorema del Trabajo y la Energía Mecánica** en el trayecto sobre la rampa (desde la base hasta la parte superior):
$$W_{	ext{roz}} = \Delta E_{	ext{mec}} = E_{	ext{mec, borde}} - E_{	ext{mec, base}}$$

* Energía mecánica en la base ($h_0 = 0$):
  $$E_{	ext{mec, base}} = rac{1}{2} m \cdot v_0^2 + 0 = rac{1}{2} m \cdot (6)^2 = 18m$$
* Energía mecánica en el borde superior ($h = 1	ext{ m}$):
  $$E_{	ext{mec, borde}} = rac{1}{2} m \cdot v_{	ext{borde}}^2 + m \cdot g \cdot h = rac{1}{2} m \cdot v_{	ext{borde}}^2 + m \cdot (9.8) \cdot (1) = rac{1}{2} m \cdot v_{	ext{borde}}^2 + 9.8m$$

El trabajo de la fuerza de rozamiento es negativo:
$$W_{	ext{roz}} = -F_{	ext{roz}} \cdot d = -(\mu \cdot N) \cdot d = -\mu \cdot m \cdot g \cdot \cos(20^{\circ}) \cdot d$$
Sustituyendo valores numéricos:
$$W_{	ext{roz}} = -0.1 \cdot m \cdot (9.8) \cdot \cos(20^{\circ}) \cdot 2.92 = -0.98 \cdot (0.9397) \cdot 2.92 \cdot m  pprox -2.69m$$

Igualando las expresiones:
$$-2.69m = \left(rac{1}{2} v_{	ext{borde}}^2 + 9.8
ight)m - 18m$$

Cancelamos la masa $m$ en toda la ecuación:
$$-2.69 = rac{1}{2} v_{	ext{borde}}^2 + 9.8 - 18$$
$$-2.69 = rac{1}{2} v_{	ext{borde}}^2 - 8.2$$
$$rac{1}{2} v_{	ext{borde}}^2 = 8.2 - 2.69 = 5.51$$
$$v_{	ext{borde}}^2 = 11.02 \implies v_{	ext{borde}} = \sqrt{11.02}  pprox 3.32	ext{ m/s}$$

#### b) Velocidad al llegar al suelo ($v_{	ext{suelo}}$)
Una vez que el cuerpo abandona el borde superior del plano inclinado y cae al vacío, la única fuerza que realiza trabajo es la gravedad (despreciando la resistencia del aire). Por lo tanto, **se conserva la energía mecánica** desde el borde superior hasta el impacto contra el suelo:
$$E_{	ext{mec, borde}} = E_{	ext{mec, suelo}}$$
$$rac{1}{2} m \cdot v_{	ext{borde}}^2 + m \cdot g \cdot h = rac{1}{2} m \cdot v_{	ext{suelo}}^2 + 0$$

Cancelando la masa $m$ y sustituyendo valores:
$$rac{1}{2} (3.02 	ext{ [o } 11.02 	ext{ para } v^2]) + (9.8) \cdot (1) = rac{1}{2} v_{	ext{suelo}}^2$$
$$rac{11.02}{2} + 9.8 = rac{1}{2} v_{	ext{suelo}}^2$$
$$5.51 + 9.8 = rac{1}{2} v_{	ext{suelo}}^2$$
$$15.31 = rac{1}{2} v_{	ext{suelo}}^2 \implies v_{	ext{suelo}}^2 = 30.62$$
$$v_{	ext{suelo}} = \sqrt{30.62}  pprox 5.53	ext{ m/s}$$



## 🎢 3. Sistema Mixto (Riel Curvo sin Rozamiento y Tramo Plano con Fricción)

### 📋 Enunciado del Problema
Un cuerpo desliza por un riel que tiene la forma indicada en la figura. En la zona curvada el rozamiento es despreciable, mientras que en la región plana el coeficiente de fricción dinámico es $\mu = 0.2$. El cuerpo se suelta en el punto más alto del riel curvo a una altura $h$. *(Nota: Asumir $h$ dada o deducible, típicamente de problemas estándar; emplearemos $h$ simbólica o valor típico si procede, o plantearemos las expresiones analíticas completas).*
Usando consideraciones energéticas, calcular:
* **a)** La distancia que recorrerá el cuerpo en la parte plana de la vía antes de detenerse.
* **b)** ¿Cuál será la velocidad del cuerpo cuando haya recorrido $2	ext{ m}$ sobre la zona plana?



### ⚙️ Procedimiento y Resolución Detallada

#### a) Distancia recorrida en la parte plana hasta detenerse ($d_{	ext{total}}$)
El cuerpo se suelta desde el reposo en el punto más alto de la rampa curva a una altura $h$. Toda su energía potencial gravitatoria inicial se convierte en trabajo disipativo por rozamiento en la zona plana hasta que se detiene por completo ($v_f = 0$):
$$E_{p,	ext{ inicial}} = |W_{	ext{roz}}ิ|$$
$$m \cdot g \cdot h = F_{	ext{roz}} \cdot d_{	ext{total}} = (\mu \cdot m \cdot g) \cdot d_{	ext{total}}$$

Cancelando la masa $m$ y la gravedad $g$ de ambos miembros:
$$h = \mu \cdot d_{	ext{total}} \implies d_{	ext{total}} = rac{h}{\mu}$$
*(Por ejemplo, si $h$ fuera un valor estándar como $1	ext{ m}$ o $2	ext{ m}$, se calcularía directamente; con $\mu = 0.2$, la distancia total es $d_{	ext{total}} = 5h$).*

#### b) Velocidad del cuerpo tras recorrer $2	ext{ m}$ en la zona plana ($v(2	ext{m})$)
Aplicamos el Teorema del Trabajo y la Energía Mecánica entre el punto de partida (en lo alto) y el punto situado a $d = 2	ext{ m}$ sobre el tramo horizontal:
$$W_{	ext{roz}} (2	ext{m}) = \Delta E_k = E_{k,	ext{ final}} - E_{k,	ext{ inicial}}$$
$$-(\mu \cdot m \cdot g) \cdot d = rac{1}{2} m \cdot v^2 - 0$$

Cancelando la masa $m$:
$$-\mu \cdot g \cdot d = rac{1}{2} v^2 \implies v = \sqrt{2 \cdot (-\mu \cdot g \cdot d + g \cdot h)}$$
*(Más formalmente, considerando la energía potencial inicial menos el trabajo disipativo en los $2	ext{ m}$):*
$$rac{1}{2} v^2 = g \cdot h - \mu \cdot g \cdot d \implies v = \sqrt{2g(h - \mu \cdot d)}$$



## 🚂 4. Choques Inelásticos y Trabajo Disipativo

### 📋 Enunciado del Problema
* **a)** Un móvil de masa $m_1 = 50	ext{ kg}$ se desplaza sobre una superficie horizontal sin rozamiento con velocidad $v_1 = 80	ext{ m/seg}$. En un instante dado se deposita encima un bulto de masa desconocida ($m_2$). Determinar la masa del bulto si la velocidad del conjunto disminuye a la mitad.
* **b)** A continuación el conjunto continúa moviéndose sobre una superficie rugosa y se detiene después de haber recorrido $100	ext{ m}$. Calcular, usando consideraciones energéticas, el coeficiente de rozamiento entre el móvil y la superficie.



### ⚙️ Procedimiento y Resolución Detallada

#### a) Determinación de la masa del bulto ($m_2$)
Durante el acoplamiento o choque inelástico vertical/horizontal sin fuerzas externas en la dirección del movimiento, se conserva la cantidad de movimiento lineal:
$$p_{	ext{inicial}} = p_{	ext{final}}$$
$$m_1 \cdot v_1 = (m_1 + m_2) \cdot v_f$$

El enunciado indica que la velocidad del conjunto disminuye a la mitad:
$$v_f = rac{v_1}{2} = rac{80}{2} = 40	ext{ m/s}$$

Sustituyendo los valores conocidos ($m_1 = 50	ext{ kg}$, $v_1 = 80	ext{ m/s}$):
$$50 \cdot 80 = (50 + m_2) \cdot 40$$
$$4000 = 2000 + 40 \cdot m_2$$
$$40 \cdot m_2 = 4000 - 2000 = 2000$$
$$m_2 = rac{2000}{40} = 50	ext{ kg}$$
*(El bulto tiene una masa de $50	ext{ kg}$, por lo que la masa total combinada es $M = 100	ext{ kg}$).*

#### b) Coeficiente de rozamiento dinámico con la superficie rugosa ($\mu$)
El sistema combinado de masa $M = 100	ext{ kg}$ se desplaza con una velocidad inicial de $v_f = 40	ext{ m/s}$ y se detiene ($v_{	ext{final}} = 0$) tras recorrer una distancia $d = 100	ext{ m}$ sobre una superficie rugosa.

Aplicamos el Teorema del Trabajo y la Energía Mecánica:
$$W_{	ext{roz}} = \Delta E_k$$
$$-F_{	ext{roz}} \cdot d = 0 - rac{1}{2} M \cdot v_f^2$$
$$-(\mu \cdot M \cdot g) \cdot d = -rac{1}{2} M \cdot v_f^2$$

Cancelando la masa total $M$ y los signos negativos:
$$\mu \cdot g \cdot d = rac{1}{2} v_f^2$$
$$\mu = rac{v_f^2}{2 \cdot g \cdot d}$$

Sustituyendo los valores numéricos ($v_f = 40	ext{ m/s}$, $g = 9.8	ext{ m/s}^2$, $d = 100	ext{ m}$):
$$\mu = rac{(40)^2}{2 \cdot (9.8) \cdot 100} = rac{1600}{1960}  pprox 0.816$$
