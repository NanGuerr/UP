# 🌍 Apunte Académico: Caída Libre y Tiro Vertical

Este documento presenta la teoría fundamental, las ecuaciones horarias y un ejercicio práctico resuelto paso a paso sobre **Caída Libre y Tiro Vertical**, basado en el análisis del Movimiento Rectilíneo Uniformemente Variado (MRUV) en el plano vertical.



## 🏗️ 1. Introducción y Marco Teórico

Tanto la **caída libre** como el **tiro vertical** se estudian bajo las leyes del **Movimiento Rectilíneo Uniformemente Variado (MRUV)**, adaptadas al plano vertical ($y$ o eje de alturas $h$). La aceleración interviniente es la **aceleración de la gravedad ($g$)**, cuyo valor estándar es:

$$g = 9.8\text{ m/s}^2$$

### 📐 Ecuaciones Generales del MRUV Vertical
* **Ecuación horaria de la posición (altura):**
  $$\Delta h = v_i \cdot \Delta t + \frac{1}{2} g \cdot (\Delta t)^2$$

* **Ecuación horaria de la velocidad:**
  $$v_f = v_i + g \cdot \Delta t$$



## 🍏 2. Caída Libre

En la **caída libre**, un cuerpo se deja caer desde el reposo absoluto.

* **Velocidad inicial:** $v_i = 0\text{ m/s}$.
* **Característica:** La velocidad final ($v_f$) aumenta a medida que transcurre el tiempo y depende directamente de la altura de caída ($h$).
* **Aceleración:** Como el objeto desciende a favor de la gravedad, se toma positiva: $a = g = +9.8\text{ m/s}^2$.



## 🚀 3. Tiro Vertical

En el **tiro vertical**, un objeto es lanzado verticalmente hacia arriba con una velocidad inicial distinta de cero ($v_i \neq 0$).

* **Velocidad inicial:** $v_i \neq 0\text{ m/s}$.
* **Efecto de la gravedad:** La gravedad actúa en contra del movimiento durante el ascenso, por lo que se considera negativa ($g = -9.8\text{ m/s}^2$).
* **Altura Máxima ($h_{\max}$):** En el punto más alto de la trayectoria, el objeto se detiene instantáneamente, por lo que su velocidad es nula ($v_{h_{\max}} = 0\text{ m/s}$).
* **Tiempos notables:**
  * **Tiempo de subida ($t_s$):** El tiempo que tarda en alcanzar la altura máxima.
    $$t_s = \frac{v_i}{g}$$
  * **Tiempo total de vuelo ($t_r$):** El tiempo total que el objeto permanece en el aire (ida y vuelta al mismo nivel).
    $$t_r = 2 \cdot \frac{v_i}{g}$$
* **Regreso al piso:** Cuando el cuerpo desciende, la aceleración vuelve a ser positiva y al impactar contra el suelo, la velocidad final tiene el mismo valor numérico que la velocidad de lanzamiento pero con signo contrario (por conservación de la energía y simetría), indicando que el objeto va hacia abajo ($v_{\text{piso}} = -v_i$).



## 📝 4. Ejercicio Práctico Resuelto

### Enunciado:
Un cuerpo se lanza verticalmente hacia arriba con una velocidad inicial de $v_i = 50\text{ m/s}$ desde el nivel del piso. 

Se pide calcular:
1. ¿Cuánto tarda en alcanzar la altura máxima?
2. ¿Cuál es el valor de dicha altura máxima ($h_{\max}$)?
3. ¿Cuánto tarda en regresar y llegar al piso?
4. ¿Con qué velocidad llega al piso?



### 🔍 Resolución Paso a Paso

#### 1. Tiempo en alcanzar la altura máxima ($t_s$)
Aplicamos la fórmula del tiempo de subida considerando $g = 9.8\text{ m/s}^2$:
$$t_s = \frac{v_i}{g} = \frac{50\text{ m/s}}{9.8\text{ m/s}^2} \approx 5.1\text{ s}$$

#### 2. Cálculo de la altura máxima ($h_{\max}$)
Sustituimos el tiempo de subida en la ecuación horaria de posición, tomando $g = -9.8\text{ m/s}^2$ por ir en contra del movimiento de ascenso:
$$h_{\max} = v_i \cdot t_s + \frac{1}{2} g \cdot t_s^2$$
$$h_{\max} = (50\text{ m/s}) \cdot (5.1\text{ s}) + \frac{1}{2} (-9.8\text{ m/s}^2) \cdot (5.1\text{ s})^2$$
$$h_{\max} = 255\text{ m} - 127.5\text{ m} = 127.5\text{ m}$$

#### 3. Tiempo total de vuelo hasta llegar al piso ($t_r$)
Por la simetría del movimiento parabólico/vertical, el tiempo total de vuelo es exactamente el doble del tiempo de subida:
$$t_r = 2 \cdot t_s = 2 \cdot 5.1\text{ s} = 10.2\text{ s}$$

#### 4. Velocidad de impacto contra el piso ($v_{\text{piso}}$)
Debido a la simetría del tiro vertical, al regresar al mismo nivel de lanzamiento, la magnitud de la velocidad es idéntica a la inicial pero con sentido opuesto (descendente):
$$v_{\text{piso}} = -50\text{ m/s}$$
