# 🚂 Apunte Académico: Movimiento Rectilíneo Uniforme (MRU)

Este documento detalla la teoría fundamental, las ecuaciones horarias y la resolución de ejercicios prácticos sobre el **Movimiento Rectilíneo Uniforme (MRU)**, estructurado con rigor matemático para su correcta visualización en GitHub y optimizado sin marcas de citas.



## 🎯 1. Introducción y Conceptos Básicos

El **Movimiento Rectilíneo Uniforme (MRU)** describe el desplazamiento de un cuerpo a lo largo de una trayectoria en línea recta, manteniendo una velocidad constante en el tiempo.

* **Trayectoria:** Rectilínea.
* **Velocidad ($v$):** Constante ($v = \text{cte}$).
* **Aceleración:** Nula ($a = 0$).
* **Aplicaciones típicas:** Movimiento de trenes, aviones o personas a velocidad constante.

A partir de la definición de velocidad media, el cociente entre el desplazamiento y el intervalo de tiempo se expresa como:

$$v = \frac{\Delta x}{\Delta t} = \frac{x_f - x_i}{t_f - t_i}$$



## ⏱️ 2. Ecuación Horaria de la Posición $x(t)$

Despejando la posición final ($x_f$) de la fórmula de velocidad, obtenemos la **ecuación horaria de la posición** en función del tiempo para el MRU:

$$x_f = x_i + v \cdot (t_f - t_i)$$

Si asumimos que el cronómetro se inicia en un tiempo inicial $t_i = 0\text{ s}$, la ecuación se simplifica habitualmente como:

$$x(t) = x_0 + v \cdot t$$



## 📝 3. Ejercicios Prácticos Resueltos

### 🟢 Ejercicio 1: Cálculo de velocidad y posición en función del tiempo
**Enunciado:** Una persona recorre una distancia de $100\text{ m}$ en un tiempo de $50\text{ s}$ a velocidad constante. Se pide calcular:
1. La velocidad de la persona.
2. La posición final transcurridos $38\text{ s}$.
3. La distancia recorrida en $8\text{ s}$.

#### **Resolución:**
1. **Cálculo de la velocidad ($v$):**
   $$v = \frac{\Delta x}{\Delta t} = \frac{100\text{ m}}{50\text{ s}} = 2\text{ m/s}$$

2. **Posición a los $38\text{ s}$ (asumiendo $x_i = 0$ y $t_i = 0$):**
   $$x_f = v \cdot t_f = 2\text{ m/s} \cdot 38\text{ s} = 76\text{ m}$$

3. **Distancia recorrida en $8\text{ s}$ ($\Delta x$):**
   $$\Delta x = v \cdot \Delta t = 2\text{ m/s} \cdot 8\text{ s} = 16\text{ m}$$



### 🟢 Ejercicio 2: Movimiento hacia la izquierda (sentido negativo)
**Enunciado:** Una persona se encuentra a una distancia de $100\text{ m}$ de un árbol (tomado como origen $x = 0$) y se desplaza hacia la izquierda con una velocidad de $v = 2\text{ m/s}$ (es decir, $v = -2\text{ m/s}$). 

#### **Resolución:**
* **Cálculo del desplazamiento:**
  $$\Delta x = x_f - x_i = 0\text{ m} - 100\text{ m} = -100\text{ m}$$
* El signo negativo indica netamente que el movimiento ocurre en sentido contrario al eje positivo de referencia (hacia la izquierda).



### 🟢 Ejercicio 3: Encuentro y Tiempos de Recorrido entre Dos Sujetos
**Enunciado:** Dos personas A y B se encuentran separadas en un sistema de referencia unidimensional. La persona A está en la posición $-40\text{ m}$ y se mueve hacia la derecha con una velocidad de $+2\text{ m/s}$. La persona B está en la posición $+40\text{ m}$ y se mueve hacia la izquierda con una velocidad de $-3\text{ m/s}$. Se desea calcular el tiempo que tarda cada uno en llegar al origen ($x = 0$).

#### **Resolución:**

1. **Tiempo para la persona A:**
   $$\Delta t_A = \frac{x_f - x_i}{v} = \frac{0 - (-40\text{ m})}{2\text{ m/s}} = \frac{40\text{ m}}{2\text{ m/s}} = 20\text{ s}$$

2. **Tiempo para la persona B:**
   $$\Delta t_B = \frac{x_f - x_i}{v} = \frac{0 - 40\text{ m}}{-3\text{ m/s}} = \frac{-40\text{ m}}{-3\text{ m/s}} \approx 13.33\text{ s}$$
