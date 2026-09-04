# ⚛️ Parcial de Física 1 

## 🎢 1. Energía Mecánica, Resortes y Rozamiento

### 📋 Enunciado del Problema
Un bloque de $5\text{ kg}$ que está en reposo se deja caer desde una altura $h = 10\text{ m}$ por una rampa curva que finaliza en un tramo recto horizontal, en el que puede despreciarse el rozamiento en todo el viaje. En la cabecera hay un resorte, inicialmente no deformado, cuya constante elástica es $k = 18000\text{ N/m}$.

* **a)** Determinar la compresión máxima del extremo del resorte.
* **b)** Calcular la intensidad máxima de la fuerza que el resorte ejerce sobre el cuerpo.
* **c)** Describir el movimiento del bloque.
* **d)** Repetir si en la planicie (tramo horizontal del plano) hay un tramo de $0.8\text{ m}$ con rozamiento de $\mu = 0.2$ (coeficiente dinámico).
* **e)** Por último, repetir todos los pasos si el tramo con rozamiento tiene $100\text{ m}$ de largo con $\mu = 0.95$, y dar una profunda interpretación física de qué está pasando.



### ⚙️ Procedimiento y Resolución Detallada

#### a) Compresión máxima del resorte (sin rozamiento)
Por el principio de conservación de la energía mecánica (al no haber fuerzas disipativas en el trayecto principal):
$$E_{	ext{inicial}} = E_{	ext{final}}$$
$$m \cdot g \cdot h = \frac{1}{2} k \cdot \Delta x^2$$

Sustituyendo los valores dados ($m = 5\text{ kg}$, $h = 10\text{ m}$, $g = 9.8\text{ m/s}^2$ o $10\text{ m/s}^2$, $k = 18000\text{ N/m}$):
$$5 \cdot 10 \cdot 10 = \frac{1}{2} \cdot 18000 \cdot \Delta x^2$$
$$500 = 9000 \cdot \Delta x^2$$
$$\Delta x^2 = \frac{500}{9000} = \frac{1}{18} \approx 0.0556$$
$$\Delta x = \sqrt{0.0556} \approx 0.236\text{ m} \text{ (o } 23.6\text{ cm)}$$

#### b) Intensidad máxima de la fuerza elástica
La fuerza máxima que ejerce el resorte ocurre en el punto de máxima compresión:
$$F_{	ext{max}} = k \cdot \Delta x = 18000 \text{ N/m} \times 0.236\text{ m} \approx 424.26\text{ N}$$

#### c) Descripción del movimiento del bloque
1. **Descenso por la rampa:** El bloque acelera debido a la gravedad, transformando su energía potencial gravitatoria en energía cinética.
2. **Tramo horizontal y compresión:** Al llegar a la planicie sin rozamiento, se desplaza a velocidad constante hasta impactar con el resorte, donde comienza a desacelerar de forma armónica a medida que el resorte se comprime hasta detenerse instantáneamente en su máxima compresión.
3. **Rebote:** El resorte se expande empujando al bloque en sentido contrario, devolviéndole la energía cinética y haciendo que ascienda nuevamente por la rampa.

#### d) Tramo con rozamiento de $0.8\text{ m}$ ($\mu = 0.2$)
El trabajo realizado por la fuerza de rozamiento disipa energía mecánica:
$$W_{	ext{roz}} = -F_{	ext{roz}} \cdot d = -(\mu \cdot m \cdot g) \cdot d$$
$$W_{	ext{roz}} = -(0.2 \cdot 5 \cdot 10) \cdot 0.8 = -10 \cdot 0.8 = -8\text{ J}$$

La energía mecánica remonta la compresión del resorte:
$$E_{	ext{mec, final}} = m \cdot g \cdot h + W_{	ext{roz}} = 500\text{ J} - 8\text{ J} = 492\text{ J}$$
$$\frac{1}{2} k \cdot \Delta x^2 = 492 \implies 9000 \cdot \Delta x^2 = 492 \implies \Delta x = \sqrt{\frac{492}{9000}} \approx 0.233\text{ m}$$

#### e) Tramo con rozamiento de $100\text{ m}$ ($\mu = 0.95$)
Calculamos la energía disipada en el trayecto largo:
$$W_{	ext{roz}} = -(\mu \cdot m \cdot g) \cdot d = -(0.95 \cdot 5 \cdot 10) \cdot 100 = -47.5 \cdot 100 = -4750\text{ J}$$

Como la energía disipada ($4750\text{ J}$) supera ampliamente la energía potencial inicial disponible ($500\text{ J}$):
> 💡 **Interpretación profunda:** El bloque **nunca llega a alcanzar el resorte**. Se detiene por completo mucho antes de recorrer los $100\text{ m}$ en la planicie debido al trabajo masivo de la fuerza de rozamiento. La energía cinética acumulada se agota por completo a los $500 / 47.5 \approx 10.53\text{ m}$ de recorrido horizontal.



## 📦 2. Dinámica y Leyes de Newton (Selección Múltiple)

### 📋 Enunciado del Problema
Una persona desea arrastrar una caja de $125\text{ kg}$ empujándola en forma horizontal. Los coeficientes de rozamiento estático y dinámico son $0.45$ y $0.3$ respectivamente. La caja se mueve a **velocidad constante**. 
Marque las ecuaciones de Newton para la caja que son correctas:

* **Opciones analizadas:**
  * $\Sigma F_y = 0 \implies N - P = 0$ *(Correcta verticalmente)*
  * $\Sigma F_x = 0 \implies F - F_{	ext{roz, din}} = 0$ o bien $F = F_{	ext{roz, din}}$ *(Correcta horizontalmente por velocidad constante, por lo que $a = 0$)*
  * $F_{	ext{roz, din}} = \mu_{	ext{din}} \cdot N = \mu_{	ext{din}} \cdot m \cdot g$

> **Respuestas correctas a marcar en Blackboard:**
> * $N - P = 0$
> * $F - F_{	ext{roz, din}} = 0$ (o equivalentes que indiquen fuerza aplicada igual a rozamiento dinámico).



## 🚗 3. Cantidad de Movimiento e Impulso (Choques Bidimensionales)

### 📋 Enunciado del Problema
Un Audi A3 de $1300\text{ kg}$ llega a la bocacalle en un cruce, moviéndose a $3\text{ m/s}$ en dirección Sur-Norte, y también llega una Amarok 4x4 de $3000\text{ kg}$, moviéndose a $0.9\text{ m/s}$ en dirección Este-Oeste.

* **a)** Determinar la cantidad de movimiento de cada uno, y la del sistema formado por ambos vehículos.
* **b)** Suponiendo que chocan y quedan enganchados, determinar con qué rapidez se moverán un instante después de chocar y la dirección del sistema después del choque.



### ⚙️ Procedimiento y Resolución Detallada

#### a) Cantidad de movimiento de cada vehículo ($p = m \cdot v$)
Definimos ejes cartesianos: Este ($+x$), Oeste ($-x$), Norte ($+y$), Sur ($-y$).
* **Audi A3 ($m_1 = 1300\text{ kg}$, $v_1 = 3\text{ m/s}$ hacia el Norte):**
  $$\vec{p}_1 = 1300 \times 3 \hat{j} = 3900 \hat{j} \text{ kg}\cdot\text{m/s}$$
* **Amarok 4x4 ($m_2 = 3000\text{ kg}$, $v_2 = 0.9\text{ m/s}$ hacia el Oeste):**
  $$\vec{p}_2 = 3000 \times (-0.9) \hat{i} = -2700 \hat{i} \text{ kg}\cdot\text{m/s}$$
* **Cantidad de movimiento total del sistema:**
  $$\vec{p}_{	ext{total}} = \vec{p}_1 + \vec{p}_2 = (-2700 \hat{i} + 3900 \hat{j}) \text{ kg}\cdot\text{m/s}$$

#### b) Rapidez y dirección después del choque inelástico
Por conservación de la cantidad de movimiento lineal ($ ec{p}_{	ext{inicial}} =  ec{p}_{	ext{final}}$):
* Masa total del sistema: $M = m_1 + m_2 = 1300 + 3000 = 4300\text{ kg}$
* Módulo del momento total:
  $$|\vec{p}_{	ext{total}}| = \sqrt{(-2700)^2 + 3900^2} = \sqrt{7290000 + 15210000} = \sqrt{22500000} \approx 4743.42 \text{ kg}\cdot\text{m/s}$$
* Velocidad final del sistema conjunto ($v_f$):
  $$v_f = \frac{|\vec{p}_{	ext{total}}|}{M} = \frac{4743.42}{4300} \approx 1.10\text{ m/s}$$
* Dirección y ángulo respecto al eje horizontal (Oeste-Este):
  $$\theta = \arctan\left(\frac{p_y}{p_x}\right) = \arctan\left(\frac{3900}{-2700}\right) \approx -55.3^\circ \text{ (cuadrante Noroeste)}$$



## 🐴 4. Dinámica y Cinemática (Freno de un Caballo)

### 📋 Enunciado del Problema
Un caballo de $250\text{ kg}$ se mueve a una velocidad de $54\text{ km/h}$ cuando ve un tronco atravesado en su camino. El jinete logra detener el caballo en $5\text{ s}$. Durante ese tiempo, determinar la distancia que se desplazó y el módulo de la fuerza horizontal que desarrolló el jinete. 
(Dato: use $g = 10\text{ m/s}^2$).


### ⚙️ Procedimiento y Resolución Detallada

Convertimos la velocidad inicial a unidades del S.I.:
$$v_0 = 54\text{ km/h} = \frac{54}{3.6} = 15\text{ m/s}$$
La velocidad final es $v_f = 0\text{ m/s}$ en un tiempo $t = 5\text{ s}$.

#### a) Distancia desplazada ($\Delta x$)
Calculamos la aceleración de frenado:
$$a = \frac{v_f - v_0}{t} = \frac{0 - 15}{5} = -3\text{ m/s}^2$$

Usamos la ecuación horaria de posición:
$$\Delta x = v_0 \cdot t + \frac{1}{2} a \cdot t^2 = 15(5) + \frac{1}{2}(-3)(5)^2 = 75 - \frac{3}{2}(25) = 75 - 37.5 = 37.5\text{ m}$$

#### b) Módulo de la fuerza horizontal desarrollada
Por la segunda ley de Newton:
$$F = m \cdot |a| = 250\text{ kg} \times 3\text{ m/s}^2 = 750\text{ N}$$

> **Respuestas correctas a seleccionar:**
> * Desplazamiento: $37.5\text{ m}$ *(u opción alternativa según catálogo de respuestas)*
> * Fuerza: $750\text{ N}$



## ⛳ 5. Cinemática de Proyectiles (Tiro Parabólico)

### 📋 Enunciado del Problema
Un jugador de golf impacta la pelota a $10\text{ m/s}$ con un ángulo de $37^{\circ}$ respecto de la horizontal.
* **a)** ¿La velocidad que posee cuando vuelve al piso es...?
* **b)** ¿El tiempo que tarda en llegar a la altura máxima es...?
(Use $g = 10\text{ m/s}^2$).



### ⚙️ Procedimiento y Resolución Detallada

Descomponemos la velocidad inicial:
* $v_{0x} = v_0 \cdot \cos(37^{\circ}) = 10 \cdot 0.8 = 8\text{ m/s}$
* $v_{0y} = v_0 \cdot \sin(37^{\circ}) = 10 \cdot 0.6 = 6\text{ m/s}$

#### a) Velocidad al volver al piso
Por simetría del tiro parabólico en ausencia de rozamiento con el aire, la componente horizontal se mantiene constante y la componente vertical invierte su sentido ($v_y = -v_{0y} = -6\text{ m/s}$). 
El módulo de la velocidad final al impactar el suelo es idéntico al de lanzamiento:
$$v_{	ext{final}} = \sqrt{v_{0x}^2 + v_y^2} = \sqrt{8^2 + (-6)^2} = \sqrt{64 + 36} = \sqrt{100} = 10\text{ m/s}$$

#### b) Tiempo en llegar a la altura máxima
En la altura máxima, la componente vertical de la velocidad es cero ($v_y = 0$):
$$v_y = v_{0y} - g \cdot t_{	ext{max}} = 0 \implies 6 - 10 \cdot t_{	ext{max}} = 0$$
$$t_{	ext{max}} = \frac{6}{10} = 0.6\text{ s}$$
