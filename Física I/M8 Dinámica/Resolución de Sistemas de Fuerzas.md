# ⚙️ Guía de Estudio: Dinámica y Resolución de Sistemas de Fuerzas

## 1. 🚀 Introducción a la Dinámica
La **Dinámica** es la rama de la física que se encarga de estudiar las **causas del movimiento** de los cuerpos. Su estudio fundamental se basa en las leyes planteadas por **Newton**, cuya expresión principal relaciona la fuerza, la masa y la aceleración:

$$F = m \cdot a$$

Unidad de fuerza en el Sistema Internacional (Newton):
$$1\,\text{N} = 1\,\text{kg} \cdot \text{m} \cdot \text{s}^{-2}$$

Cada fuerza se representa mediante un **vector**, el cual posee tres características esenciales:
* **Valor** (módulo o magnitud)
* **Dirección** (línea de acción)
* **Sentido** (hacia dónde apunta el vector)

---

## 2. ↗️ Suma y Resta de Vectores (Fuerzas)

Dependiendo de la orientación de las fuerzas que actúan sobre un cuerpo, la fuerza resultante ($F_R$) se calcula de distintas maneras:

* **Misma dirección y mismo sentido:**
  $$F_R = F_1 + F_2$$

* **Misma dirección y distinto sentido:**
  $$F_R = F_1 - F_2$$

---

## 3. 📐 Descomposición de Fuerzas en un Plano
Cuando una fuerza se encuentra inclinada formando un ángulo $\alpha$ respecto al eje horizontal, es necesario descomponerla en sus componentes rectangulares ($F_x$ y $F_y$)[cite: 1, 2]:

* **Componente en el eje X:**
  $$F_x = F \cdot \cos\alpha$$

* **Componente en el eje Y:**
  $$F_y = F \cdot \text{sen}\,\alpha$$

---

## 4. 🧮 Composición de Fuerzas (Teorema de Pitágoras)
Si se conocen las componentes totales horizontal ($F_x$) y vertical ($F_y$) de un sistema, la fuerza resultante total ($F_{RT}$) se determina aplicando el **Teorema de Pitágoras**[cite: 1]:

$$F_{RT} = \sqrt{F_x^2 + F_y^2}$$

La dirección o ángulo de la fuerza resultante ($\beta$) se calcula mediante la función trigonométrica inversa de la tangente[cite: 1]:

$$\beta = \arctan\left(\frac{F_y}{F_x}\right)$$

---

## 5. 📊 Resolución de un Ejercicio Práctico Completo

### Datos Iniciales del Sistema:
* $F_1 = 100\,\text{N}$ con un ángulo $\alpha = 37^\circ$
* $F_2 = 50\,\text{N}$
* $F_3 = 185\,\text{N}$
* $F_4 = 140\,\text{N}$

### Paso A: Descomposición de $F_1$
$$F_{1x} = F_1 \cdot \cos 37^\circ = 100\,\text{N} \cdot \cos 37^\circ = 80\,\text{N}$$
$$F_{1y} = F_1 \cdot \text{sen}\,37^\circ = 100\,\text{N} \cdot \text{sen}\,37^\circ = 60\,\text{N}$$

### Paso B: Cálculo de la Componente Horizontal Total ($F_x$)
$$F_x = F_{1x} - F_2 = 80\,\text{N} - 50\,\text{N} = 30\,\text{N}$$

### Paso C: Cálculo de la Componente Vertical Total ($F_y$)
$$F_y = \left(F_{1y} + F_4\right) - F_3 = \left(60\,\text{N} + 140\,\text{N}\right) - 185\,\text{N} = 15\,\text{N}$$

### Paso D: Cálculo de la Fuerza Resultante Total ($F_{RT}$)
$$F_{RT} = \sqrt{F_x^2 + F_y^2} = \sqrt{\left(30\,\text{N}\right)^2 + \left(15\,\text{N}\right)^2} = 33.54\,\text{N}$$

### Paso E: Cálculo del Ángulo de la Resultante ($\beta$)
$$\beta = \arctan\left(\frac{F_y}{F_x}\right) = \arctan\left(\frac{15\,\text{N}}{30\,\text{N}}\right) = 27^\circ$$

---

## 6. 🚀 Cálculo de la Aceleración del Cuerpo (Segunda Ley de Newton)
Asumiendo que el cuerpo sobre el cual actúan estas fuerzas tiene una masa $m = 10\,\text{kg}$:

A partir de la fórmula fundamental de la dinámica $F = m \cdot a$, despejamos la aceleración ($a$):

$$a = \frac{F}{m} = \frac{33.54\,\text{N}}{10\,\text{kg}} = 3.35\,\text{m}\cdot\text{s}^{-2}$$
