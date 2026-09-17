# 🚀 Foro Desplazamiento en el Plano

Para responder al foro de Cinemática Bidimensional, se presenta una propuesta estructurada y rigurosa con tres alternativas distintas que combinan movimientos cinemáticos estudiados (MRU, MRUV / Caída Libre, Tiro Oblicuo y MCU) para trasladar un móvil desde el punto inicial $P_i = (0 \text{ m}, 2 \text{ m})$ hasta el punto final $P_f = (4 \text{ m}, 0 \text{ m})$.



## 📌 Planteo del Problema

* 📍 **Vector posición inicial:** $\vec{r}_0 = (0\hat{i} + 2\hat{j}) \text{ m}$
* 🎯 **Vector posición final:** $\vec{r}_f = (4\hat{i} + 0\hat{j}) \text{ m}$
* ⚙️ **Condición:** Combinar al menos dos movimientos de cinemática (despreciando el tiempo de transición entre ellos).



## 🟥 Alternativa 1: Traza Rectangular — MRU Horizontal + Caída Libre (MRUV)

### 📄 Descripción de la Trayectoria
El móvil se desplaza primero horizontalmente a la derecha en la altura $y = 2 \text{ m}$ hasta situarse sobre la coordenada $x = 4 \text{ m}$, y luego cae verticalmente hasta el suelo en $y = 0 \text{ m}$.

### ➡ Tramo 1: Movimiento Rectilíneo Uniforme (MRU)
* **Trayecto:** Desde $(0, 2)$ hasta $(4, 2)$.
* **Ecuaciones horarias:**
  $$x(t) = v_x \cdot t, \quad y(t) = 2 \text{ m}$$
* **Ejemplo numérico:** Asumiendo una velocidad constante de $v_x = 2 \text{ m/s}$, el tiempo del tramo es:
  $$\Delta t_1 = \frac{4 \text{ m}}{2 \text{ m/s}} = 2 \text{ s}$$

### ⬇ Tramo 2: Caída Libre (MRUV vertical)
* **Trayecto:** Desde $(4, 2)$ hasta $(4, 0)$.
* **Ecuaciones horarias** (tomando $g = 10 \text{ m/s}^2$ y $v_{0y} = 0 \text{ m/s}$):
  $$x(t) = 4 \text{ m}, \quad y(t) = 2 \text{ m} - \frac{1}{2}g t^2 = 2 - 5t^2$$
* **Tiempo de caída ($\Delta t_2$):**
  $$2 - 5(\Delta t_2)^2 = 0 \implies \Delta t_2 = \sqrt{0{,}4} \approx 0{,}63 \text{ s}$$

💡 **Análisis de Viabilidad:** Completamente viable. Representa, por ejemplo, un móvil guiado por una plataforma horizontal superior que llega al borde en $x = 4 \text{ m}$ y se deja caer por un canalón vertical hasta la superficie.



## 🟨 Alternativa 2: Tiro Horizontal (TO) + MRU sobre el Suelo

### 📄 Descripción de la Trayectoria
El móvil sale lanzado horizontalmente desde $(0, 2)$, describe una parábola hasta hacer contacto con el suelo en el punto intermedio $(2, 0)$, y desde allí rueda en MRU sobre el piso hasta llegar a $(4, 0)$.

### ↗ Tramo 1: Tiro Oblicuo con ángulo inicial $\theta = 0^\circ$ (Tiro Horizontal)
* **Trayecto:** Desde $(0, 2)$ hasta $(2, 0)$.
* **Ecuación vertical:**
  $$y(t) = 2 - 5t^2 = 0 \implies t_1 \approx 0{,}63 \text{ s}$$
* **Velocidad horizontal requerida ($v_{0x}$):**
  $$x(t_1) = v_{0x} \cdot 0{,}632 \text{ s} = 2 \text{ m} \implies v_{0x} = \frac{2 \text{ m}}{0{,}632 \text{ s}} \approx 3{,}16 \text{ m/s}$$

### ➡ Tramo 2: MRU Horizontal sobre el eje $y = 0$
* **Trayecto:** Desde $(2, 0)$ hasta $(4, 0)$.
* **Ecuación horizontal:**
  $$x(t) = 2 + 3{,}16 \cdot t, \quad y(t) = 0 \text{ m}$$
* **Tiempo adicional ($\Delta t_2$):**
  $$\Delta t_2 = \frac{2 \text{ m}}{3{,}16 \text{ m/s}} \approx 0{,}63 \text{ s}$$

💡 **Análisis de Viabilidad:** Viable. Modela el lanzamiento de un objeto desde una mesa que impacta en el suelo a los $2 \text{ m}$ de distancia horizontal y continúa desplazándose sin fricción por el piso hasta los $4 \text{ m}$.



## 🟦 Alternativa 3: Arco de Curva Circular (MCU) + MRU Horizontal

### 📄 Descripción de la Trayectoria
El móvil recorre un cuarto de circunferencia de radio $R = 2 \text{ m}$ centrado en el origen $(0,0)$ desde el punto $(0, 2)$ hasta el punto $(2, 0)$, y posteriormente continúa en línea recta en MRU hasta $(4, 0)$.

### 🔄 Tramo 1: Movimiento Circular Uniforme (MCU)
* **Trayecto:** Arco de $(0, 2)$ a $(2, 0)$ con radio $R = 2 \text{ m}$.
* **Ecuación angular:** $\theta(t) = \frac{\pi}{2} - \omega t$ (variando el ángulo desde $90^\circ$ a $0^\circ$).
* **Ecuaciones paramétricas de posición:**
  $$x(t) = 2\cos(\theta(t)), \quad y(t) = 2\sin(\theta(t))$$
* **Salida:** Al llegar a $\theta = 0^\circ$ ($x = 2 \text{ m}, y = 0 \text{ m}$), la velocidad tangencial apunta exactamente en la dirección horizontal del eje positivo $+x$.

### ➡ Tramo 2: MRU Rectilíneo Horizontal
* **Trayecto:** Desde $(2, 0)$ hasta $(4, 0)$ siguiendo la dirección tangencial adquirida.
* **Ecuación horaria:**
  $$x(t) = 2 + v_{\text{tangencial}} \cdot t, \quad y(t) = 0 \text{ m}$$

💡 **Análisis de Viabilidad:** Altamente viable y elegante. Físicamente equivale a una partícula deslizándose sobre un riel circular guía de un cuarto de vuelta y liberándose suavemente sobre una vía recta horizontal.



## 📊 Conclusión de la Comparación

* 🟦 **La Alternativa 1 (MRU + Caída Libre)** es la más simple conceptualmente para descomponer en ejes independientes.
* 🟨 **La Alternativa 2 (Tiro Horizontal + MRU)** aprovecha la aceleración natural de la gravedad para cubrir parte del trayecto parabólico.
* 🟩 **La Alternativa 3 (MCU + MRU)** demuestra el cambio continuo en la dirección del vector velocidad sin alterar su módulo en el primer tramo, entregando el móvil alineado con la trayectoria recta del segundo tramo.
