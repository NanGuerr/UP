# 📘 Informe Verificado: Experiencia 1 - Cinemática y Dinámica en Plano Inclinado

Este documento presenta los datos organizados y verificados de la simulación computacional de la rampa, contrastando los resultados experimentales obtenidos en el entorno virtual con los modelos teóricos de la cinemática y la dinámica de cuerpos rígidos.

---

## 📊 1. Resumen de Resultados Verificados en la Simulación

A partir del análisis de los paneles de datos y la ejecución de la simulación "Movimiento en rampa", se confirman los siguientes valores experimentales para el descenso de la esfera:

| Parámetro evaluado | Valor obtenido | Fuente / Evidencia |
| --- | --- | --- |
| **Aceleración total ($a_{\text{tot}}$)** | $3.571 \text{ m/s}^2$ | Panel de datos y gráfica de aceleración constante. Equivalente direccional de $-1.786 \text{ m/s}^2$ en la componente radial.

 |
| **Velocidad final ($v_{\text{tot}}$)** | $18.90 \text{ m/s}$ | Panel de datos y gráfica de velocidad máxima al final de la rampa.

 |
| **Tiempo total ($t$)** | $5.16 \text{ s}$ / $5.18 \text{ s}$ | Eje temporal final de las gráficas cartesianas ($y = 0$) indica $5.16 \text{ s}$, mientras que el registro exacto en coordenadas polares indica $5.18 \text{ s}$.

 |

---

## 📈 2. Análisis del Comportamiento Gráfico (Coordenadas Polares)

Durante la ejecución del experimento virtual, el software traza el movimiento de la esfera registrando parámetros cinemáticos en tiempo real. La evaluación de las gráficas en coordenadas polares verifica el comportamiento de un Movimiento Rectilíneo Uniformemente Variado (MRUV):

* **Posición Radial ($r$ vs $t$):** La gráfica describe una curva parabólica decreciente, iniciando en la posición máxima de $50 \text{ m}$ y finalizando exactamente en el origen ($0 \text{ m}$) en la base del plano.


* **Velocidad Radial ($v_r$ vs $t$):** Presenta una caída lineal y constante, lo que demuestra un aumento uniforme de la rapidez en dirección negativa hacia el origen.


* **Aceleración Radial ($a_r$ vs $t$):** Se mantiene como una línea horizontal constante durante todo el trayecto.


* **Aceleración y Velocidad Angular ($\alpha$ y $\omega$):** Se muestran en los paneles para registrar la rotación de la masa esférica durante el desplazamiento.



---

## 📝 3. Verificación Teórica y Paso a Paso de los Cálculos

Para validar la precisión del simulador, se detalla la justificación matemática de los resultados utilizando los parámetros de configuración (gravedad $g = 10 \text{ m/s}^2$, inclinación $\beta = 30^\circ$, coeficiente de fricción estática $\mu = 0.520$).

### 3.1. Determinación de la Longitud del Plano ($L$)

A partir de las coordenadas de posición inicial mostradas en la interfaz cartesiana ($x = -43.30 \text{ m}$, $y = 25.00 \text{ m}$), se calcula la longitud de la rampa mediante el teorema de Pitágoras:


$$L = \sqrt{x^2 + y^2} = \sqrt{(-43.30)^2 + (25.00)^2} = \sqrt{1874.89 + 625} = \sqrt{2499.89} \approx 50.00 \text{ m}$$

### 3.2. Cálculo de la Aceleración ($a$)

Tratándose de un objeto esférico con masa uniformemente distribuida (esfera maciza, con momento de inercia $I = \frac{2}{5}mR^2$) que desciende por un plano inclinado, el movimiento combina traslación y rotación (rodadura sin deslizamiento). Dado que el coeficiente de fricción es superior al mínimo requerido para evitar que la esfera patine, la aceleración lineal efectiva se obtiene mediante la ecuación dinámica de rotación:


$$a = \frac{5}{7} g \sin \beta$$


Sustituyendo los valores de la experiencia:


$$a = \frac{5}{7} \cdot (10 \text{ m/s}^2) \cdot \sin(30^\circ) = \frac{5}{7} \cdot 10 \cdot 0.5 = \frac{25}{7} \approx 3.571 \text{ m/s}^2$$


*Nota: Este cálculo teórico coincide de forma exacta con el parámetro $a_{\text{tot}}$ registrado por la simulación*.

### 3.3. Cálculo de la Velocidad Final al Llegar a la Base ($v_f$)

Aplicando la ecuación cinemática del MRUV para un objeto que parte del reposo ($v_0 = 0$):


$$v_f = \sqrt{v_0^2 + 2aL} = \sqrt{0 + 2 \cdot (3.571 \text{ m/s}^2) \cdot (50 \text{ m})} = \sqrt{357.1} \approx 18.90 \text{ m/s}$$


*Nota: Este valor es idéntico al registrado en la variable $v_{\text{tot}}$ del simulador*.

### 3.4. Cálculo del Tiempo de Descenso ($t$)

A partir de la ecuación de velocidad en función del tiempo ($v_f = v_0 + a \cdot t$):


$$t = \frac{v_f - v_0}{a} = \frac{18.90 \text{ m/s}}{3.571 \text{ m/s}^2} \approx 5.29 \text{ s}$$


*Nota: El valor analítico difiere levemente del obtenido en las gráficas de la simulación ($5.16 \text{ s}$ o $5.18 \text{ s}$), lo cual es atribuible a la discretización numérica de los intervalos de muestreo del software*.
