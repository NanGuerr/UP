# ⚛️ Física 1 - Segundo Parcial (Primer Cuatrimestre 2008) - Universidad de Palermo 🎓


## 🪙 1. Dinámica del Movimiento Circular (Mesa Giratoria)

### 📋 Enunciado del Problema
Se coloca una moneda pequeña a $50	ext{ cm}$ ($0.5	ext{ m}$) del centro de una mesa giratoria horizontal plana. Se observa que la mesa describe tres revoluciones en $3.14	ext{ seg}$ ($\pi  pprox 3.1416$). Calcular:
* **a)** ¿Cuál sería el coeficiente de fricción necesario para que la moneda no salga despedida?
* **b)** Si el coeficiente de fricción entre la mesa y la moneda es $0.2$, calcular la máxima velocidad angular a la que debería girar la mesa para que la moneda no salga despedida.



### ⚙️ Procedimiento y Resolución Detallada

Datos iniciales:
* Radio $R = 50	ext{ cm} = 0.5	ext{ m}$
* Número de revoluciones $N = 3$ en $t = 3.14	ext{ s}$ ($\pi	ext{ seg}$)
* Aceleración de la gravedad $g = 9.8	ext{ m/s}^2$ (o $10	ext{ m/s}^2$)

#### a) Coeficiente de fricción necesario ($\mu$)
Primero determinamos la frecuencia $f$ y la velocidad angular $\omega$ del movimiento circular uniforme:
* Frecuencia: $f = rac{N}{t} = rac{3}{3.14}  pprox rac{3}{\pi}	ext{ Hz}$
* Velocidad angular: $\omega = 2\pi f = 2\pi \left(rac{3}{\pi}
ight) = 6	ext{ rad/s}$

La fuerza centrípeta que mantiene a la moneda girando en trayectoria circular es proporcionada exclusivamente por la fuerza de rozamiento estático entre la moneda y la mesa:
$$F_c = F_{	ext{roz}}$$
$$m \cdot \omega^2 \cdot R = \mu \cdot N = \mu \cdot m \cdot g$$

Cancelando la masa $m$ de ambos miembros, despejamos el coeficiente de fricción $\mu$:
$$\mu = rac{\omega^2 \cdot R}{g}$$

Sustituyendo los valores (usando $g = 9.8	ext{ m/s}^2$):
$$\mu = rac{(6)^2 \cdot 0.5}{9.8} = rac{36 \cdot 0.5}{9.8} = rac{18}{9.8}  pprox 1.84$$

#### b) Máxima velocidad angular con $\mu = 0.2$
Utilizamos la misma relación de fuerzas, pero ahora despejamos la velocidad angular máxima $\omega_{	ext{max}}$ a partir de $\mu = 0.2$:
$$\mu \cdot g = \omega_{	ext{max}}^2 \cdot R \implies \omega_{	ext{max}} = \sqrt{rac{\mu \cdot g}{R}}$$

Sustituyendo los valores:
$$\omega_{	ext{max}} = \sqrt{rac{0.2 \cdot 9.8}{0.5}} = \sqrt{rac{1.96}{0.5}} = \sqrt{3.92}  pprox 1.98	ext{ rad/s}$$



## 📐 2. Trabajo y Energía en un Plano Inclinado con Rozamiento

### 📋 Enunciado del Problema
Calcular el coeficiente de rozamiento dinámico de una rampa inclinada a $30^{\circ}$ sabiendo que cuando un objeto se encuentra en el punto más alto, a $20	ext{ m}$ de altura, está en reposo; y cuando llega al punto más bajo su velocidad es de $5	ext{ m/seg}$.



### ⚙️ Procedimiento y Resolución Detallada

Datos iniciales:
* Ángulo del plano inclinado $ lpha = 30^{\circ}$
* Altura inicial $h = 20	ext{ m}$
* Velocidad inicial $v_0 = 0	ext{ m/s}$ (reposo)
* Velocidad final en la base $v_f = 5	ext{ m/s}$
* Aceleración de la gravedad $g = 9.8	ext{ m/s}^2$

La distancia recorrida a lo largo de la rampa ($d$) se relaciona con la altura mediante la trigonometría:
$$\sin( lpha) = rac{h}{d} \implies d = rac{h}{\sin(30^{\circ})} = rac{20}{0.5} = 40	ext{ m}$$

Aplicamos el **Teorema del Trabajo y la Energía Mecánica** (el trabajo de las fuerzas no conservativas, en este caso el rozamiento, es igual a la variación de la energía mecánica):
$$W_{	ext{roz}} = \Delta E_{	ext{mec}} = E_{	ext{mec, final}} - E_{	ext{mec, inicial}}$$

* Energía mecánica inicial (en la parte alta):
  $$E_{	ext{mec, inicial}} = E_{k0} + E_{p0} = 0 + m \cdot g \cdot h = m \cdot (9.8) \cdot 20 = 196m$$
* Energía mecánica final (en la base, donde $h = 0$):
  $$E_{	ext{mec, final}} = E_{kf} + E_{pf} = rac{1}{2} m \cdot v_f^2 + 0 = rac{1}{2} m \cdot (5)^2 = 12.5m$$

El trabajo del rozamiento es negativo e igual a:
$$W_{	ext{roz}} = -F_{	ext{roz}} \cdot d = -(\mu \cdot N) \cdot d$$
Dado que en un plano inclinado la normal es $N = m \cdot g \cdot \cos( lpha)$:
$$W_{	ext{roz}} = -\mu \cdot m \cdot g \cdot \cos(30^{\circ}) \cdot d$$

Igualando ambas expresiones:
$$-\mu \cdot m \cdot g \cdot \cos(30^{\circ}) \cdot d = 12.5m - 196m$$

Cancelamos la masa $m$ en toda la ecuación:
$$-\mu \cdot (9.8) \cdot \cos(30^{\circ}) \cdot 40 = 12.5 - 196$$
$$-339.48 \cdot \mu = -183.5$$
$$\mu = rac{183.5}{339.48}  pprox 0.54$$



## 🧊 3. Dinámica y Energía con Restricción de Métodos (Mesa y Caída Libre)

### 📋 Enunciado del Problema
Un objeto es lanzado horizontalmente con una velocidad de $2	ext{ m/seg}$ sobre una mesa cuyo coeficiente de fricción es $0.1$. Luego de recorrer $50	ext{ cm}$ ($0.5	ext{ m}$) el objeto alcanza el borde de la mesa y cae desde una altura de $1	ext{ m}$. 
Calcular:
* **a)** La velocidad del objeto cuando alcanza el borde de la mesa.
* **b)** La velocidad del objeto al golpear el suelo.
* **c)** La altura del objeto cuando su velocidad es $3	ext{ m/seg}$.
*(Nota obligatoria: No utilice consideraciones cinemáticas, emplee métodos energéticos).*



### ⚙️ Procedimiento y Resolución Detallada

Datos:
* $v_0 = 2	ext{ m/s}$
* $\mu = 0.1$
* Distancia en la mesa $d = 0.5	ext{ m}$
* Altura de caída $h_{	ext{mesa}} = 1	ext{ m}$
* $g = 9.8	ext{ m/s}^2$

#### a) Velocidad al alcanzar el borde de la mesa
Aplicamos el Teorema del Trabajo y la Energía en el tramo horizontal:
$$W_{	ext{roz}} = \Delta E_k = rac{1}{2} m \cdot v_{	ext{borde}}^2 - rac{1}{2} m \cdot v_0^2$$
$$-\mu \cdot m \cdot g \cdot d = rac{1}{2} m \cdot v_{	ext{borde}}^2 - rac{1}{2} m \cdot v_0^2$$

Cancelando la masa $m$:
$$-0.1 \cdot (9.8) \cdot 0.5 = rac{1}{2} v_{	ext{borde}}^2 - rac{1}{2} (2)^2$$
$$-0.49 = rac{1}{2} v_{	ext{borde}}^2 - 2$$
$$rac{1}{2} v_{	ext{borde}}^2 = 2 - 0.49 = 1.51$$
$$v_{	ext{borde}}^2 = 3.02 \implies v_{	ext{borde}} = \sqrt{3.02}  pprox 1.74	ext{ m/s}$$

#### b) Velocidad del objeto al golpear el suelo
En el aire no hay rozamiento con el aire, por lo que se conserva la energía mecánica total desde el borde de la mesa hasta el suelo:
$$E_{	ext{mec, borde}} = E_{	ext{mec, suelo}}$$
$$rac{1}{2} m \cdot v_{	ext{borde}}^2 + m \cdot g \cdot h_{	ext{mesa}} = rac{1}{2} m \cdot v_{	ext{suelo}}^2 + 0$$

Cancelando la masa $m$:
$$rac{1}{2} (3.02) + (9.8) \cdot (1) = rac{1}{2} v_{	ext{suelo}}^2$$
$$1.51 + 9.8 = rac{1}{2} v_{	ext{suelo}}^2$$
$$11.31 = rac{1}{2} v_{	ext{suelo}}^2 \implies v_{	ext{suelo}}^2 = 22.62$$
$$v_{	ext{suelo}} = \sqrt{22.62}  pprox 4.76	ext{ m/s}$$

#### c) Altura del objeto cuando su velocidad es $3	ext{ m/s}$
Por conservación de la energía mecánica durante la caída:
$$rac{1}{2} m \cdot v_{	ext{borde}}^2 + m \cdot g \cdot h_{	ext{mesa}} = rac{1}{2} m \cdot v^2 + m \cdot g \cdot h$$

Sustituyendo $v = 3	ext{ m/s}$ y despejando la altura $h$ (cancelando $m$):
$$1.51 + 9.8 \cdot 1 = rac{1}{2} (3)^2 + 9.8 \cdot h$$
$$11.31 = 4.5 + 9.8 \cdot h$$
$$9.8 \cdot h = 11.31 - 4.5 = 6.81$$
$$h = rac{6.81}{9.8}  pprox 0.695	ext{ m}$$



## 🎯 4. Choques y Dinámica (Bala y Bloque con Rozamiento)

### 📋 Enunciado del Problema
Una bala de masa $m = 5	ext{ g} = 0.005	ext{ kg}$ se mueve hacia un cuerpo de masa $M = 1	ext{ kg}$ que a su vez se mueve hacia la bala. Los módulos de las velocidades de la bala y del cuerpo en el instante inmediatamente anterior al choque son $500	ext{ m/seg}$ y $10	ext{ m/seg}$ respectivamente. La bala atraviesa al cuerpo y lo abandona con una velocidad de $100	ext{ m/seg}$. Sabiendo que el coeficiente de rozamiento entre el cuerpo y el plano es $\mu = 0.2$, determinar la distancia que recorre el cuerpo después del choque hasta detenerse.



### ⚙️ Procedimiento y Resolución Detallada

Definimos un sistema de referencia unidimensional:
* Supongamos que la bala se mueve hacia la derecha: $v_{1i} = +500	ext{ m/s}$
* El cuerpo se mueve en sentido contrario (hacia la izquierda): $V_{1i} = -10	ext{ m/s}$

#### A. Conservación de la cantidad de movimiento durante el choque
$$ ec{p}_{	ext{inicial}} =  ec{p}_{	ext{final}}$$
$$m \cdot v_{1i} + M \cdot V_{1i} = m \cdot v_{1f} + M \cdot V_{1f}$$

Sustituyendo los valores conocidos:
$$0.005 \cdot (500) + 1 \cdot (-10) = 0.005 \cdot (100) + 1 \cdot V_{1f}$$
$$2.5 - 10 = 0.5 + V_{1f}$$
$$-7.5 = 0.5 + V_{1f} \implies V_{1f} = -7.5 - 0.5 = -8	ext{ m/s}$$
*(El signo negativo indica que el bloque de 1 kg sale repelido en dirección opuesta a su movimiento original tras el impacto con la bala).*

#### B. Distancia recorrida por el cuerpo tras el choque hasta detenerse
Utilizamos el teorema del trabajo y la energía para el bloque de masa $M = 1	ext{ kg}$ desde que sale del choque con velocidad $V_{1f} = 8	ext{ m/s}$ (tomando módulo) hasta detenerse ($v_f = 0$):
$$W_{	ext{roz}} = \Delta E_k$$
$$-F_{	ext{roz}} \cdot d = 0 - rac{1}{2} M \cdot V_{1f}^2$$
$$-\mu \cdot M \cdot g \cdot d = -rac{1}{2} M \cdot V_{1f}^2$$

Cancelando la masa $M$ y los signos negativos:
$$\mu \cdot g \cdot d = rac{1}{2} V_{1f}^2$$
$$0.2 \cdot (9.8) \cdot d = rac{1}{2} (8)^2$$
$$1.96 \cdot d = 32$$
$$d = rac{32}{1.96}  pprox 16.33	ext{ m}$$
