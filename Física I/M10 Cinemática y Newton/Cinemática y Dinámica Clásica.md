# 📘 Fundamentos de Cinemática y Dinámica Clásica

## 📌 Resumen Ejecutivo
El presente documento ofrece un análisis exhaustivo y estructurado de los principios fundamentales de la cinemática unidimensional y la dinámica newtoniana, sintetizado a partir de los principios de la física clásica.

La cinemática aborda la descripción cuantitativa del movimiento de los cuerpos simplificados como partículas o masas puntuales, prescindiendo de su estructura interna y forma. Se establecen las definiciones operacionales de posición, desplazamiento, velocidad y aceleración, tanto medias como instantáneas, derivando las ecuaciones fundamentales para el movimiento rectilíneo uniforme (MRU) y uniformemente acelerado (MRUA), así como la formulación del movimiento vertical bajo la acción de la gravedad ($g \approx 9,8 \text{ m s}^{-2}$).

La dinámica vincula las causas del movimiento con las fuerzas aplicadas mediante las leyes de Newton. Se examina la superposición de fuerzas para obtener la fuerza resultante, las condiciones formales de equilibrio estático y dinámico ($\sum \mathbf{F} = 0$), y la resolución cinemática en sistemas de referencia relativos. Asimismo, se analiza con especial detalle el fenómeno empírico de la fricción sólida (estática y cinética), demostrando su independencia del área macroscópica de contacto a partir de modelos microscópicos, y la resistencia en medios fluidos representada por las fuerzas viscosas y la Ley de Stokes.



## 🏃 1. Cinemática del Movimiento Rectilíneo

### 1.1. Conceptos Fundamentales
* **Movimiento y Mecánica:** El movimiento es el fenómeno físico más fundamental. La mecánica se define como el conjunto de reglas y principios aplicables al análisis de todo tipo de movimiento y su relación con las interacciones (fuerzas, momentum y energía). Galileo Galilei resumió el papel central de este estudio con la máxima: *"Ignorato motu, ignoratur natura"* ("Si no entendemos el movimiento, no entendemos la naturaleza").
* **Modelo de Partícula (Masa Puntual):** Simplificación en la que un cuerpo se trata como un punto sin considerar su forma, tamaño, dimensiones ni estructura interna. Es una aproximación válida cuando la estructura interna no cambia durante el movimiento y el desplazamiento ocurre en una región mucho mayor que el tamaño del cuerpo (ej. un automóvil en movimiento, la Tierra alrededor del Sol o electrones en un tubo de televisión).
* **Cinemática:** Rama de la mecánica dedicada a la descripción del movimiento observado, término derivado del griego *kinema* ("movimiento").
* **Relatividad del Movimiento y Sistemas de Referencia:** El reposo y el movimiento son conceptos estrictamente relativos que dependen del estado del objeto respecto al cuerpo que sirve de referencia.
  * Para describir el movimiento, un observador fija un sistema de ejes coordenados sobre un objeto en reposo relativo a él.
  * Si dos observadores ($O$ y $O'$) están en movimiento relativo entre sí, sus observaciones sobre el movimiento de un tercer cuerpo serán distintas. Por ejemplo, la descripción geométrica del movimiento planetario pasa de órbitas sumamente complejas bajo un sistema geocéntrico a una descripción mucho más sencilla bajo un sistema heliocéntrico (Nicolás Copérnico y Johannes Kepler).

### 1.2. Velocidad en el Movimiento Rectilíneo
El movimiento rectilíneo es aquel cuya trayectoria ocurre sobre una línea recta (alineada con un eje $X$).
* **Posición y Desplazamiento:** La posición está dada por la coordenada $x = f(t)$ respecto a un origen $O$. El desplazamiento $\Delta x$ durante un intervalo de tiempo $\Delta t = t' - t$ se define como:
  $$\Delta x = x' - x$$
  El signo del desplazamiento ($+$ o $-$) indica el sentido del movimiento sobre el eje.
* **Velocidad Media ($v_{\text{med}}$):** Cociente entre el desplazamiento y el intervalo de tiempo transcurrido:
  $$v_{\text{med}} = \frac{x' - x}{t' - t} = \frac{\Delta x}{\Delta t}$$
* **Velocidad Instantánea ($v$):** Tasa de cambio de la posición respecto al tiempo en un instante dado. Matemáticamente es el límite de la velocidad media cuando $\Delta t$ tiende a cero, lo que equivale a la derivada temporal de la posición:
  $$v = \lim_{\Delta t \to 0} \frac{\Delta x}{\Delta t} = \frac{dx}{dt}$$
  En el lenguaje cotidiano, la magnitud o valor absoluto de la velocidad se denomina rapidez o celeridad. En el Sistema Internacional (SI), la unidad de velocidad es el metro por segundo ($\text{m s}^{-1}$ o $\text{m/s}$).
* **Interpretación Gráfica y Cálculo Integral:**
  * En una gráfica de posición como función del tiempo $x(t)$, la velocidad media entre dos puntos representa la pendiente de la línea secante, mientras que la velocidad instantánea en un punto representa la pendiente de la línea tangente a la curva en dicho punto.
  * Si se conoce la velocidad como función del tiempo $v(t)$, el desplazamiento total entre $t_0$ y $t$ corresponde al área bajo la curva de la gráfica $v(t)$, obtenida mediante integración:
    $$x - x_0 = \int_{t_0}^{t} v \, dt \quad \implies \quad x = x_0 + \int_{t_0}^{t} v \, dt$$

### 1.3. Aceleración en el Movimiento Rectilíneo
Cuando un cuerpo varía su velocidad a lo largo del tiempo, experimenta una aceleración.
* **Aceleración Media ($a_{\text{med}}$):** Cociente entre el cambio de velocidad $\Delta v = v' - v$ y el tiempo transcurrido $\Delta t$:
  $$a_{\text{med}} = \frac{v' - v}{t' - t} = \frac{\Delta v}{\Delta t}$$
* **Aceleración Instantánea ($a$):** Tasa de cambio instantánea de la velocidad respecto al tiempo (derivada temporal de la velocidad o segunda derivada temporal de la posición):
  $$a = \frac{dv}{dt} = \frac{d^2x}{dt^2}$$
  Su unidad en el SI es metros por segundo al cuadrado ($\text{m s}^{-2}$ o $\text{m/s}^2$).
* **Tipos de Movimiento según la Aceleración:**
  * *Acelerado:* La magnitud de la velocidad aumenta con el tiempo.
  * *Desacelerado:* La magnitud de la velocidad disminuye con el tiempo.
  * *Uniformemente Acelerado:* La aceleración permanece constante durante todo el movimiento.
* **Tirón (Jerk):** Rapidez de cambio de la aceleración respecto al tiempo ($da/dt$). Concepto útil en situaciones donde la aceleración varía rápidamente, como en el lanzamiento de cohetes.
* **Determinación de la Velocidad por Integración:**
  $$v - v_0 = \int_{t_0}^{t} a \, dt \quad \implies \quad v = v_0 + \int_{t_0}^{t} a \, dt$$

### 1.4. Ecuaciones del Movimiento Rectilíneo Especial
A partir de la integración de las definiciones de velocidad y aceleración, se obtienen las relaciones cinemáticas clave:

| Tipo de Movimiento | Condición | Ecuaciones de Posición y Velocidad |
| :--- | :--- | :--- |
| **Movimiento Rectilíneo Uniforme (MRU)** | $a = 0$<br>$v = \text{constante}$ | $x = x_0 + v(t - t_0)$ |
| **Movimiento Rectilíneo Uniformemente Acelerado (MRUA)** | $a = \text{constante}$ | $v = v_0 + a(t - t_0)<br>x = x_0 + v_0(t - t_0) + \frac{1}{2}a(t - t_0)^2<br>v^2 = v_0^2 + 2a(x - x_0)$ |

* **Caso Simplificado ($t_0 = 0, x_0 = 0, v_0 = 0$):** 
  $$v = at, \quad x = \frac{1}{2}at^2, \quad v^2 = 2ax$$
  Galileo demostró experimentalmente que para un cuerpo en caída libre o deslizándose por un plano inclinado, el desplazamiento es directamente proporcional al cuadrado del tiempo ($x \propto t^2$).

### 1.5. Movimiento Vertical Libre bajo la Acción de la Gravedad
Cerca de la superficie terrestre (distancias de hasta unos cientos de metros sin resistencia apreciable del aire), todos los cuerpos caen con una aceleración constante independiente de su masa, denominada aceleración de la gravedad ($g$).
* **Valor y Variaciones de $g$:** A nivel del suelo es cercano a $g = 9,8 \text{ m s}^{-2}$. El valor de $g$ disminuye conforme un cuerpo se aleja de la superficie terrestre. Por ejemplo, a una altura de $1000 \text{ m}$ sobre una montaña, el valor de $g$ se reduce únicamente en un $0,03\%$.
* **Ecuaciones de Caída Libre (Eje Vertical $Y$):**
  * *Convenio con sentido positivo hacia ARRIBA ($a = -g$):*
    $$v = v_0 - g(t - t_0)$$
    $$y = y_0 + v_0(t - t_0) - \frac{1}{2}g(t - t_0)^2$$
    $$v^2 = v_0^2 - 2g(y - y_0)$$
  * *Parámetros Máximos:* Para un cuerpo lanzado verticalmente hacia arriba desde $y_0 = 0$ con velocidad $v_0$:
    * Tiempo para alcanzar la altura máxima: $t = \frac{v_0}{g}$
    * Altura máxima alcanzada: $y_{\text{máx}} = \frac{v_0^2}{2g}$
  * *Convenio con sentido positivo hacia ABAJO ($a = +g$):* Se invierten los signos de los términos con $g$, siendo útil cuando el movimiento es puramente descendente.



## ⚖️ 2. Dinámica y Aplicaciones de las Leyes del Movimiento

### 2.1. Movimiento bajo una Fuerza Constante
Cuando una partícula de masa $m$ está sujeta a una fuerza constante $\mathbf{F}$, experimenta una aceleración constante dada por la Segunda Ley de Newton:
$$\mathbf{a} = \frac{\mathbf{F}}{m}$$
* **Ecuación de Velocidad y Trayectoria Vectorial:**
  $$\mathbf{v} - \mathbf{v}_0 = \frac{\mathbf{F}}{m}(t - t_0)$$
  $$\mathbf{r} - \mathbf{r}_0 = \mathbf{v}_0(t - t_0) + \frac{1}{2}\frac{\mathbf{F}}{m}(t - t_0)^2$$
* **Análisis Geométrico:**
  * Si la velocidad inicial $\mathbf{v}_0$ es paralela a $\mathbf{F}$, el movimiento es unidimensional (rectilíneo).
  * Si $\mathbf{v}_0$ no es paralela a $\mathbf{F}$, el movimiento se realiza en un plano definido por ambos vectores. La trayectoria tiende asintóticamente hacia la dirección de la fuerza aplicada.

### 2.2. Fuerza Resultante y Superposición
Si una partícula $m$ interactúa simultáneamente con varias partículas ($m_1, m_2, m_3, \dots$), la masa experimenta múltiples fuerzas individuales ($\mathbf{F}_1, \mathbf{F}_2, \mathbf{F}_3, \dots$).
* La tasa de cambio total del momentum ($\mathbf{p}$) viene dada por la suma vectorial denominada fuerza resultante ($\mathbf{F}$):
  $$\frac{d\mathbf{p}}{dt} = \mathbf{F}_1 + \mathbf{F}_2 + \mathbf{F}_3 + \dots = \mathbf{F}$$
* **Cuerpo sujeto a su Peso ($\mathbf{W} = m\mathbf{g}$) y a una Fuerza Adicional ($\mathbf{F}$):**
  * Si $\mathbf{F}$ actúa hacia abajo: $F + mg = ma \implies a > g$.
  * Si $\mathbf{F}$ actúa hacia arriba:
    * $F > W \implies F - mg = ma$ (aceleración ascendente).
    * $F < W \implies mg - F = ma$ (aceleración descendente menor a $g$).
    * $F = W \implies a = 0$ (movimiento uniforme o reposo).

### 2.3. Equilibrio de una Partícula
Se define formalmente que una partícula está en equilibrio si la suma vectorial de todas las fuerzas que actúan sobre ella es cero, lo que implica que su aceleración es nula ($a = 0$). El cuerpo permanecerá en reposo o en movimiento rectilíneo uniforme.
$$\sum \mathbf{F} = 0 \quad \iff \quad \sum F_x = 0, \quad \sum F_y = 0, \quad \sum F_z = 0$$
* **Equilibrio de Tres Fuerzas Coplanares ($\mathbf{F}_1 + \mathbf{F}_2 + \mathbf{F}_3 = 0$):** Las tres fuerzas deben formar un polígono cerrado (triángulo). Aplicando la regla geométrica de la Ley de los Senos, las magnitudes se relacionan por:
  $$\frac{F_1}{\sin \alpha} = \frac{F_2}{\sin \beta} = \frac{F_3}{\sin \gamma}$$
  donde $\alpha, \beta, \gamma$ representan los ángulos opuestos a las fuerzas respectivas.

### 2.4. Estudio Dinámico de Sistemas Especiales
* **A. Máquina de Atwood:** Dispositivo compuesto por dos masas ($m$ y $m'$) unidas por una cuerda inextensible que pasa por una polea sin rozamiento ni masa.
  * Ecuaciones de movimiento (suponiendo que $m$ desciende y $m'$ asciende): 
    $$mg - F = ma$$
    $$F - m'g = m'a$$
  * Aceleración común ($a$) y tensión de la cuerda ($F$):
    $$a = \left( \frac{m - m'}{m + m'} \right) g, \quad F = \left( \frac{2 m m'}{m + m'} \right) g$$
* **B. Movimiento en Plano Inclinado Liso (Ángulo $\alpha$):**
  * Componente del peso paralela al plano: $W_x = mg \sin \alpha$
  * Componente del peso perpendicular al plano: $W_y = mg \cos \alpha$
  * Fuerza Normal ejercida por el plano: $N = mg \cos \alpha$
  * Fuerza requerida del motor/tracción ($F$) para aceleración $a$: 
    $$F - mg \sin \alpha = ma \implies F = m(a + g \sin \alpha)$$



## 🧊 3. Fuerzas de Fricción Sólida y Fluidos

### 3.1. Naturaleza Microscópica y Macroscópica de la Fricción Sólida
La fricción es la resistencia que se opone al movimiento relativo entre dos superficies en contacto. Su origen reside en las interacciones electromagnéticas entre las moléculas de los materiales en los puntos de contacto microscópicos:
* *Cohesión:* Fricción entre moléculas del mismo material.
* *Adhesión:* Fricción entre moléculas de materiales distintos.

**El Modelo Microscópico de la Fricción:**
Contrario a la intuición, la fuerza de rozamiento estático máxima es independiente del área macroscópica de contacto, ya que las rugosidades microscópicas hacen que el área de contacto real a nivel molecular sea una pequeña fracción del área total, equilibrando la presión normal.

### 3.2. Rozamiento Estático vs. Rozamiento Cinético
* **Rozamiento Estático ($f_s$):** Fuerza variable que equilibra a cualquier fuerza aplicada $F$ para mantener el cuerpo en reposo (varía desde cero hasta un valor límite máximo):
  $$f_s \le \mu_s N, \quad f_{s,\text{máx}} = \mu_s N$$
  donde $\mu_s$ es el coeficiente de rozamiento estático.
* **Rozamiento Cinético ($f_k$):** Fuerza constante de oposición que actúa una vez que el cuerpo ha comenzado a deslizarse:
  $$f_k = \mu_k N$$
  donde $\mu_k$ es el coeficiente de rozamiento cinético.
* **Determinación Experimental del Coeficiente Estático ($\mu_s$):** Mediante un plano inclinado con un ángulo crítico ($\theta_c$):
  $$\mu_s = \frac{f_{s,\text{máx}}}{N} = \frac{mg \sin \theta_c}{mg \cos \theta_c} = \tan \theta_c$$

### 3.3. Fricción en Fluidos (Resistencia Viscosa)
Cuando un cuerpo se desplaza en un fluido, experimenta una fuerza de arrastre que aumenta con la velocidad.
* **Ecuación a Bajas Velocidades:**
  $$\mathbf{F}_{\text{fluido}} = -K \eta \mathbf{v}$$
  *(donde $\eta$ es el coeficiente de viscosidad y $K$ el coeficiente de arrastre).*
* **Ley de Stokes (Esfera de radio $R$):**
  $$\mathbf{F}_{\text{viscosa}} = -6\pi \eta R \mathbf{v}$$
* **Velocidad Terminal ($v_T$):** Cuando la fuerza viscosa iguala a la fuerza aplicada, la aceleración se anula, alcanzando una velocidad constante:
  $$v_T = \frac{F}{K \eta}$$



## 📋 4. Compendio de Fórmulas Fundamentales

| Categoría | Concepto / Configuración | Expresión Matemática |
| :--- | :--- | :--- |
| **Cinemática** | Velocidad Instantánea | $v = \frac{dx}{dt}$ |
| | Aceleración Instantánea | $a = \frac{dv}{dt} = \frac{d^2x}{dt^2}$ |
| | Posición por Integración | $x = x_0 + \int_{t_0}^{t} v \, dt$ |
| | MRUA (Relación Independiente del Tiempo) | $v^2 = v_0^2 + 2a(x - x_0)$ |
| | Caída Libre (Altura Máxima) | $y_{\text{máx}} = \frac{v_0^2}{2g}$ |
| **Dinámica** | Segunda Ley de Newton | $\mathbf{F} = \frac{d\mathbf{p}}{dt} = m\mathbf{a}$ |
| | Aceleración en Máquina de Atwood | $a = \left(\frac{m - m'}{m + m'}\right)g$ |
| | Condición de Equilibrio | $\sum \mathbf{F} = 0$ |
| | Ley de Senos en Equilibrio Coplanar | $\frac{F_1}{\sin \alpha} = \frac{F_2}{\sin \beta} = \frac{F_3}{\sin \gamma}$ |
| **Fricción** | Rozamiento Estático Límite | $f_{s,\text{máx}} = \mu_s N$ |
| | Rozamiento Cinético | $f_k = \mu_k N$ |
| | Ángulo Crítico en Plano Inclinado | $\mu_s = \tan \theta_c$ |
| | Ley de Stokes (Esfera de radio $R$) | $F_{\text{viscosa}} = 6\pi \eta R v$ |
| | Velocidad Terminal en Fluido | $v_T = \frac{F}{K \eta}$ |
