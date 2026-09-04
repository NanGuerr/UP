# 📝 Examen de Física 1 - Primer Parcial Recuperatorio (Universidad de Palermo) 🚀

Este documento contiene la transcripción completa de las consignas del examen parcial recuperatorio de Física 1, junto con el desarrollo analítico detallado y la resolución paso a paso de cada uno de los 4 problemas propuestos. Las expresiones matemáticas están formateadas con notación LaTeX compatible con GitHub (`$ ... $` y `$$ ... $$`).



## 📌 Condiciones Generales de Evaluación ⏱️
* **Puntaje mínimo para aprobar:** 50 puntos. ✅
* **Puntaje por ejercicio:** 25 puntos cada uno (4 ejercicios en total). 🎯



## 📈 Ejercicio 1: Cinemática - Análisis de Gráfico Velocidad vs. Tiempo

### Enunciado ❓
Un móvil se mueve según el diagrama de velocidad en función del tiempo de la figura.
* a) Explique qué clase de movimiento realiza en cada etapa (4 puntos).
* b) Encuentre la aceleración del móvil en cada etapa y grafíquela en función del tiempo (5 puntos).
* c) Escriba la ecuación horaria correspondiente a cada etapa del movimiento suponiendo que en $t = 0$ el móvil parte de $x = 0$ (8 puntos).
* d) Encuentre la distancia total que recorre el móvil en 60 seg (8 puntos).

*(Datos del gráfico: Etapa 1 de $t = 0$ a $t = 20\text{ s}$ (velocidad sube de $0$ a $5\text{ m/s}$); Etapa 2 de $t = 20$ a $t = 40\text{ s}$ (velocidad constante en $5\text{ m/s}$); Etapa 3 de $t = 40$ hasta cruzar el eje y llegar a $-5\text{ m/s}$ en $t = 60\text{ s}$)*.

### Procedimiento y Resolución ✍️

#### a) Clases de movimiento por etapas:
* **Etapa 1 ($0 \le t \le 20\text{ s}$):** El móvil realiza un **Movimiento Rectilíneo Uniformemente Variado (MRUV) acelerado**, ya que su velocidad aumenta linealmente desde $0$ hasta $5\text{ m/s}$.
* **Etapa 2 ($20 < t \le 40\text{ s}$):** El móvil realiza un **Movimiento Rectilíneo Uniforme (MRU)**, ya que su velocidad permanece constante a $5\text{ m/s}$.
* **Etapa 3 ($40 < t \le 60\text{ s}$):** El móvil realiza un **Movimiento Rectilíneo Uniformemente Variado (MRUV) desacelerado/frenado** hasta detenerse e invertir el sentido de su movimiento, alcanzando $-5\text{ m/s}$ en $t = 60\text{ s}$.

#### b) Cálculo de la aceleración en cada etapa:
* **Etapa 1:** 
  $$a_1 = \frac{\Delta v}{\Delta t} = \frac{5 - 0}{20 - 0} = \frac{5}{20} = 0.25 \text{ m/s}^2$$
* **Etapa 2:** 
  Como la velocidad es constante, la aceleración es nula:
  $$a_2 = 0 \text{ m/s}^2$$
* **Etapa 3:** 
  Desde $t = 40\text{ s}$ (donde $v = 5\text{ m/s}$) hasta $t = 60\text{ s}$ (donde $v = -5\text{ m/s}$):
  $$a_3 = \frac{-5 - 5}{60 - 40} = \frac{-10}{20} = -0.5 \text{ m/s}^2$$

#### c) Ecuaciones horarias de posición $x(t)$:
Recordemos la ecuación general del MRUV: $x(t) = x_0 + v_0 t + \frac{1}{2} a t^2$.
* **Etapa 1 ($0 \le t \le 20\text{ s}$):** $x_0 = 0, v_0 = 0, a = 0.25$
  $$x_1(t) = 0 + 0(t) + \frac{1}{2}(0.25)t^2 = 0.125 t^2$$
  *(Posición al final de la etapa 1 en $t = 20\text{ s}$: $x(20) = 0.125(20)^2 = 50\text{ m}$)*.

* **Etapa 2 ($20 < t \le 40\text{ s}$):** Movimiento con velocidad constante $v = 5\text{ m/s}$ partiendo de $x_0 = 50\text{ m}$ en $t = 20\text{ s}$:
  $$x_2(t) = 50 + 5(t - 20)$$
  *(Posición al final de la etapa 2 en $t = 40\text{ s}$: $x(40) = 50 + 5(20) = 150\text{ m}$)*.

* **Etapa 3 ($40 < t \le 60\text{ s}$):** Movimiento con $v_0 = 5\text{ m/s}$, $a = -0.5\text{ m/s}^2$ partiendo de $x_0 = 150\text{ m}$ en $t = 40\text{ s}$:
  $$x_3(t) = 150 + 5(t - 40) - \frac{1}{2}(0.5)(t - 40)^2$$

#### d) Distancia total recorrida en 60 segundos:
Para hallar la distancia total (módulo del desplazamiento acumulado sin importar la dirección), calculamos el área bajo la curva del gráfico $v-t$ (considerando áreas de triángulos y rectángulos):
* **Área 1 (Etapa 1 - triángulo):** 
  $$A_1 = \frac{20 \times 5}{2} = 50\text{ m}$$
* **Área 2 (Etapa 2 - rectángulo):** 
  $$A_2 = (40 - 20) \times 5 = 20 \times 5 = 100\text{ m}$$
* **Área 3 (Etapa 3 - triángulos superior e inferior):**
  * El móvil se detiene cuando $v = 0$ (en el tiempo $t = 50\text{ s}$, ya que la pendiente es $-0.5$ y baja de $5$ a $0$ en $10$ segundos). Triángulo de avance:
    $$A_{3a} = \frac{(50 - 40) \times 5}{2} = \frac{10 \times 5}{2} = 25\text{ m}$$
  * Luego retrocede desde $t = 50$ hasta $t = 60\text{ s}$:
    $$A_{3b} = \frac{(60 - 50) \times (-5)}{2} = \frac{10 \times (-5)}{2} = -25\text{ m} \quad (\text{en módulo } 25\text{ m})$$

* **Distancia total recorrida ($d_{total}$):** Suma de los módulos de los espacios recorridos:
  $$d_{total} = 50 + 100 + 25 + 25 = 200\text{ m}$$

### Resultados Finales 🎯
* **b) Aceleraciones:** $a_1 = 0.25\text{ m/s}^2$, $a_2 = 0$, $a_3 = -0.5\text{ m/s}^2$. 📊
* **c) Ecuaciones horarias:** $x_1(t) = 0.125t^2$, $x_2(t) = 50 + 5(t-20)$, $x_3(t) = 150 + 5(t-40) - 0.25(t-40)^2$. 📈
* **d) Distancia total:** $200\text{ m}$. 📏



## 🪨 Ejercicio 2: Cinemática - Tiro Vertical y Caída Libre

### Enunciado ❓
Una piedra es lanzada hacia arriba desde una terraza a $15\text{ m}$ de altura con una velocidad inicial de $10\text{ m/s}$. Calcular:
* a) La altura máxima alcanzada por la piedra.
* b) El tiempo que tarda en alcanzar la altura máxima.
* c) La velocidad de la piedra cuando pasa por un punto situado a $18\text{ m}$ de altura, al subir y al bajar.
* d) La velocidad de la piedra al pasar por un punto ubicado a $10\text{ m}$ de altura.
* e) El tiempo que tarda en alcanzar el suelo.

*(Asumir gravedad $g = 9.8\text{ m/s}^2$ o $10\text{ m/s}^2$; utilizaremos $g = 9.8\text{ m/s}^2$ para mayor precisión).*

### Procedimiento y Resolución ✍️
Definimos el sistema de referencia con origen en el suelo ($y = 0$) apuntando hacia arriba.
* Posición inicial: $y_0 = 15\text{ m}$
* Velocidad inicial: $v_0 = +10\text{ m/s}$
* Aceleración de la gravedad: $g = -9.8\text{ m/s}^2$

Ecuaciones generales:
$$y(t) = 15 + 10t - 4.9t^2$$
$$v(t) = 10 - 9.8t$$

#### a) Altura máxima alcanzada ($h_{max}$):
En la altura máxima, la velocidad final es cero ($v = 0$).
$$0 = 10 - 9.8t \implies t_{subida} = \frac{10}{9.8} \approx 1.02\text{ s}$$
Sustituimos este tiempo en la ecuación horaria de posición:
$$y_{max} = 15 + 10(1.02) - 4.9(1.02)^2$$
$$y_{max} = 15 + 10.2 - 5.09 = 20.11\text{ m}$$

#### b) Tiempo que tarda en alcanzar la altura máxima:
$$t = 1.02\text{ s}$$

#### c) Velocidad al pasar por $y = 18\text{ m}$ (al subir y al bajar):
Usamos la ecuación independiente del tiempo: $v^2 = v_0^2 + 2g(y - y_0)$
$$v^2 = (10)^2 + 2(-9.8)(18 - 15)$$
$$v^2 = 100 - 19.6(3) = 100 - 58.8 = 41.2$$
$$v = \pm \sqrt{41.2} \approx \pm 6.42\text{ m/s}$$
* **Al subir:** $v = +6.42\text{ m/s}$ ↗️
* **Al bajar:** $v = -6.42\text{ m/s}$ ↘️

#### d) Velocidad al pasar por $y = 10\text{ m}$ (por debajo de la terraza):
$$v^2 = (10)^2 + 2(-9.8)(10 - 15)$$
$$v^2 = 100 + 98 = 198$$
$$v = -\sqrt{198} \approx -14.07\text{ m/s}$$ (Es negativa porque la piedra va cayendo hacia el suelo).

#### e) Tiempo que tarda en alcanzar el suelo ($y = 0$):
Igualamos la ecuación de posición a $0$:
$$0 = 15 + 10t - 4.9t^2 \implies 4.9t^2 - 10t - 15 = 0$$
Aplicamos la fórmula cuadrática ($t = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$):
$$t = \frac{10 \pm \sqrt{(-10)^2 - 4(4.9)(-15)}}{2(4.9)} = \frac{10 \pm \sqrt{100 + 294}}{9.8} = \frac{10 \pm \sqrt{394}}{9.8}$$
$$t = \frac{10 \pm 19.85}{9.8}$$
Descartamos la solución negativa. Tomamos la positiva:
$$t = \frac{10 + 19.85}{9.8} = \frac{29.85}{9.8} \approx 3.05\text{ s}$$

### Resultados Finales 🎯
* **a) Altura máxima:** $20.11\text{ m}$ 🏔️
* **b) Tiempo de subida:** $1.02\text{ s}$ ⏱️
* **c) Velocidad en $18\text{ m}$:** $+6.42\text{ m/s}$ (subiendo) y $-6.42\text{ m/s}$ (bajando) ↕️
* **d) Velocidad en $10\text{ m}$:** $-14.07\text{ m/s}$ 📉
* **e) Tiempo total al suelo:** $3.05\text{ s}$ ⏱️



## 📐 Ejercicio 3: Dinámica - Sistema de Dos Cuerpos en Plano Inclinado

### Enunciado ❓
En el sistema de la figura los cuerpos A y B (llamados $M_1$ y $M_2$) tienen una masa de $10\text{ kg}$ y $15\text{ kg}$ respectivamente. El plano tiene una inclinación de $30^{\circ}$ respecto de la horizontal. Su coeficiente de fricción es $\mu = 0.1$. Calcular:
* a) La fuerza que debe aplicarse al sistema para que se deslice hacia arriba con una aceleración de $1\text{ m/s}^2$.
* b) La tensión en el cable que une a los cuerpos.

*(Nota: $M_1 = 10\text{ kg}$ y $M_2 = 15\text{ kg}$ unidos por un cable inextensible sobre el plano inclinado).*

### Procedimiento y Resolución ✍️
1. **Identificar datos y componentes de fuerzas:**
   * $M_1 = 10\text{ kg}$
   * $M_2 = 15\text{ kg}$
   * Masa total del sistema: $M = M_1 + M_2 = 25\text{ kg}$
   * Inclinación: $\theta = 30^{\circ}$
   * Coeficiente de fricción: $\mu = 0.1$
   * Aceleración deseada hacia arriba del plano: $a = 1\text{ m/s}^2$
   * Gravedad: $g = 9.8\text{ m/s}^2$

2. **Calcular las fuerzas paralelas al plano inclinado:**
   * Componente del peso paralela al plano para cada masa:
     * $P_{1x} = M_1 g \sin(30^{\circ}) = 10 \times 9.8 \times 0.5 = 49\text{ N}$
     * $P_{2x} = M_2 g \sin(30^{\circ}) = 15 \times 9.8 \times 0.5 = 73.5\text{ N}$
     * $P_{total x} = (M_1 + M_2)g \sin(30^{\circ}) = 25 \times 9.8 \times 0.5 = 122.5\text{ N}$

   * Fuerza de rozamiento total (opuesta al movimiento hacia arriba):
     * Normal total: $N = (M_1 + M_2)g \cos(30^{\circ}) = 25 \times 9.8 \times \frac{\sqrt{3}}{2} \approx 212.18\text{ N}$
     * Rozamiento total: $F_{roz} = \mu \cdot N = 0.1 \times 212.18 \approx 21.22\text{ N}$

3. **a) Calcular la fuerza aplicada ($F$) para subir con $a = 1\text{ m/s}^2$:**
   Aplicamos la segunda ley de Newton para todo el sistema moviéndose hacia arriba del plano:
   $$F - P_{total x} - F_{roz} = M_{total} \cdot a$$
   $$F - 122.5 - 21.22 = 25 \cdot 1$$
   $$F - 143.72 = 25 \implies F = 143.72 + 25 = 168.72\text{ N}$$

4. **b) Calcular la tensión en el cable ($T$):**
   Analizamos el cuerpo superior o inferior. Tomemos el cuerpo $M_2$ (el que va atrás o adelante según cómo esté tirado; asumamos que la fuerza $F$ empuja o tira del sistema hacia arriba. Si $M_2$ es el de mayor masa y está arriba o abajo, planteamos para el cuerpo situado más abajo, ej. $M_1$):
   Suponiendo que la fuerza actúa sobre el bloque superior $M_2$ y este estira a $M_1$ mediante el cable:
   $$T - P_{1x} - F_{roz1} = M_1 \cdot a$$
   * $F_{roz1} = \mu M_1 g \cos(30^{\circ}) = 0.1 \times 10 \times 9.8 \times 0.866 \approx 8.49\text{ N}$
   $$T - 49 - 8.49 = 10 \cdot 1$$
   $$T - 57.49 = 10 \implies T = 67.49\text{ N}$$

### Resultados Finales 🎯
* **a) Fuerza aplicada:** $168.72\text{ N}$ 🏋️‍♂️
* **b) Tensión en el cable:** $67.49\text{ N}$ 🔗



## 🔄 Ejercicio 4: Movimiento Circular Uniforme (MCU)

### Enunciado ❓
Un disco de $90\text{ cm}$ de diámetro gira con MCU completando $180$ vueltas en quince minutos. Determinar:
* a) Su frecuencia en Hz.
* b) Su período.
* c) Su velocidad angular.
* d) La velocidad tangencial de un punto ubicado en el borde.
* e) La aceleración centrípeta de este mismo punto.

### Procedimiento y Resolución ✍️
1. **Extraer y convertir datos:**
   * Diámetro del disco: $D = 90\text{ cm} = 0.9\text{ m} \implies$ Radio: $R = 0.45\text{ m}$
   * Número de vueltas: $N = 180\text{ vueltas}$
   * Tiempo: $t = 15\text{ minutos} = 15 \times 60 = 900\text{ s}$

2. **a) Frecuencia ($f$) en Hz:**
   La frecuencia es el número de vueltas por unidad de segundo:
   $$f = \frac{N}{t} = \frac{180\text{ vueltas}}{900\text{ s}} = 0.2\text{ Hz}$$

3. **b) Período ($T$):**
   El período es la inversa de la frecuencia:
   $$T = \frac{1}{f} = \frac{1}{0.2} = 5\text{ s}$$

4. **c) Velocidad angular ($\omega$):**
   $$\omega = 2 \pi f = 2 \pi (0.2) = 0.4 \pi \approx 1.257\text{ rad/s}$$

5. **d) Velocidad tangencial ($v$) en el borde:**
   $$v = \omega \cdot R = 1.257\text{ rad/s} \times 0.45\text{ m} \approx 0.566\text{ m/s}$$

6. **e) Aceleración centrípeta ($a_c$):**
   $$a_c = \omega^2 \cdot R = (1.257)^2 \times 0.45 \approx 1.58\text{ rad/s}^2 \times 0.45 = 0.711\text{ m/s}^2$$
   *(O bien $a_c = \frac{v^2}{R} = \frac{(0.566)^2}{0.45} = \frac{0.3203}{0.45} \approx 0.712\text{ m/s}^2$)*.

### Resultados Finales 🎯
* **a) Frecuencia:** $0.2\text{ Hz}$ 🔄
* **b) Período:** $5\text{ s}$ ⏱️
* **c) Velocidad angular:** $1.257\text{ rad/s}$ 🌀
* **d) Velocidad tangencial:** $0.566\text{ m/s}$ 🚀
* **e) Aceleración centrípeta:** $0.712\text{ m/s}^2$ 🎯


*Documento generado automáticamente para estudio y preparación de exámenes de Física I.* ✨
