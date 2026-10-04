# 📚 Transaltorios de Física: Ley de Hooke y Dinámica 🛠️

Este documento recopila la transcripción detallada, el análisis conceptual y el paso a paso de los procedimientos matemáticos y físicos correspondientes a los temas de la **Ley de Hooke**, el funcionamiento del **dinamómetro** y las **leyes de movimiento con fricción**.

---

## 1. 📏 Introducción a la Ley de Hooke y el Dinamómetro 🧲

### 🧭 ¿Qué es un Dinamómetro?
El dinamómetro es un instrumento fundamental utilizado en física para medir fuerzas. Sus características principales son:
* 🛠️ **Instrumento de medición:** Utilizado específicamente para medir magnitudes de fuerza.
* 🌀 **Principio de funcionamiento:** Basa su funcionamiento en la propiedad elástica de un resorte.
* ⚖️ **Calibración:** Debe ser calibrado de acuerdo con los principios establecidos por la Ley de Hooke.

### 📐 Ley de Hooke
La Ley de Hooke establece que la fuerza que comprime o estira un resorte es directamente proporcional al cambio en su longitud. La ecuación fundamental se expresa como:

$$F = k \cdot \Delta x$$

Donde:
* $F$: Fuerza aplicada al resorte en unidades de $\text{N}$ (Newtons).
* $k$: Constante de restitución o elasticidad del resorte en unidades de $\text{N/m}$.
* $\Delta x$: Cambio en la longitud del resorte (deformación o alargamiento) en unidades de $\text{m}$ (metros).

A partir de esta ecuación, se puede despejar el cambio en la longitud del resorte:

$$\Delta x = \frac{F}{k}$$

### ⚖️ Propiedades de Proporcionalidad
* Si la fuerza aplicada aumenta $n$ veces, la deformación del resorte aumenta exactamente $n$ veces.
* Si aplicamos el doble de fuerza, obtendremos el doble de deformación.
* Si la fuerza se reduce $3$ veces, la deformación sufrida por el resorte será $3$ veces menor.

---

## 2. 📝 Resolución de Ejercicios Prácticos: Ley de Hooke 🔢

### 🎯 Ejercicio 1: Cálculo de la Fuerza
**Enunciado:** ¿Cuál es la fuerza que estira $30 \text{ [cm]}$ a un resorte si su constante de restitución es de $740 \text{ [N/m]}$?

#### 📊 Datos Iniciales:
* $\Delta x = 30 \text{ cm}$
* $k = 740 \text{ \text{N/m}}$
* $F = ?$

#### 🔄 Conversión de Unidades:
Para operar consistentemente en el sistema internacional, convertimos los centímetros a metros utilizando la equivalencia $1 \text{ m} = 100 \text{ cm}$:

$$\Delta x = \frac{30 \text{ cm}}{100} = 0.3 \text{ m}$$

#### 🧮 Fórmula a Utilizar:
$$F = k \cdot \Delta x$$

#### ⚙️️ Sustitución y Procedimiento:
$$F = \left(740 \text{ \frac{N}{m}}\right) \cdot \left(0.3 \text{ m}\right)$$

$$F = 222 \text{ N}$$

---

### 🎯 Ejercicio 2: Cálculo del Alargamiento con Masa Colgada
**Enunciado:** Si el resorte de un dinamómetro tiene una constante de $24 \text{ [N/m]}$, ¿cuál es su alargamiento si se coloca una masa de $300 \text{ [g]}$?

#### 📊 Datos Iniciales:
* $k = 24 \text{ \text{N/m}}$
* $m = 300 \text{ g}$
* $\Delta x = ?$

#### 🔄 Conversión de Unidades:
Convertimos la masa de gramos a kilogramos usando la relación $1 \text{ kg} = 1000 \text{ g}$:

$$m = \frac{300 \text{ g}}{1000} = 0.3 \text{ kg}$$

#### ⚖️ Cálculo del Peso (Fuerza):
Primero calculamos la fuerza peso $W$ ejercida por la masa mediante la segunda ley de Newton, considerando la gravedad estándar $g = 10 \text{ m/s}^2$ (o aproximación empleada en el ejercicio):

$$W = m \cdot g$$
$$W = \left(0.3 \text{ kg}\right) \cdot \left(10 \text{ \frac{m}{s^2}}\right) = 3 \text{ N}$$
Por lo tanto, la fuerza aplicada es $F = 3 \text{ N}$.

#### 🧮 Fórmula y Sustitución para el Alargamiento:
Empleamos la fórmula despejada de la Ley de Hooke:

$$\Delta x = \frac{F}{k}$$

$$\Delta x = \frac{3 \text{ N}}{24 \text{ \frac{N}{m}}}$$

$$\Delta x = 0.125 \text{ m}$$

---

## 3. 📦 Dinámica: Leyes de Newton y Fuerza de Fricción ⚙️

Consideremos un bloque de masa $m = 30 \text{ kg}$ situado sobre una superficie horizontal. Los coeficientes de fricción son:
* $\mu_{\text{estático}} = 0.6$
* $\mu_{\text{dinámico}} = 0.34$

Las fuerzas que actúan sobre el cuerpo en el diagrama de cuerpo libre son:
* $N$: Fuerza normal hacia arriba.
* $P = m \cdot g$: Peso hacia abajo.
* $F$: Fuerza aplicada horizontalmente hacia la derecha.
* $F_R$: Fuerza de fricción opuesta al movimiento hacia la izquierda.

La ecuación general de movimiento es:
$$\sum F = m \cdot a$$

### 🔍 Cálculo de la Fuerza de Fricción Estática Máxima:
Sabemos que $N = P = m \cdot g$. Por lo tanto:

$$F_{R \text{ estático}} = \mu_e \cdot N = \mu_e \cdot m \cdot g$$

Sustituyendo los valores (con $g = 9.8 \text{ m/s}^2$):

$$F_{R \text{ estático}} = 0.6 \cdot 30 \text{ kg} \cdot 9.8 \text{ \frac{m}{s^2}} = 176.4 \text{ N}$$

---

### 🔤 Inciso a): ¿Qué pasa si $F = 150 \text{ N}$?
* Como $F = 150 \text{ N}$ es menor que la fuerza de fricción estática máxima ($176.4 \text{ N}$), es decir:
  $$150 \text{ N} < 176.4 \text{ N}$$
* El bloque **no se va a mover**.
* Por lo tanto, la aceleración del sistema es nula:
  $$a = 0 \text{ \frac{m}{s^2}}$$

---

### 🔤 Inciso b): ¿Qué pasa si $F = 180 \text{ N}$?
* Como $F = 180 \text{ N}$ es mayor que la fuerza de fricción estática máxima ($176.4 \text{ N}$), es decir:
  $$180 \text{ N} > 176.4 \text{ N}$$
* El bloque **se mueve**, por lo que debemos calcular la fuerza de fricción dinámica:

$$F_{R \text{ dinámico}} = \mu_d \cdot m \cdot g$$

$$F_{R \text{ dinámico}} = 0.34 \cdot 30 \text{ kg} \cdot 9.8 \text{ \frac{m}{s^2}} = 99.96 \text{ N}$$

Aplicando la segunda ley de Newton en el eje horizontal:

$$\sum F_x = m \cdot a$$

$$F - F_{R \text{ dinámico}} = m \cdot a$$

$$180 \text{ N} - 99.96 \text{ N} = \left(30 \text{ kg}\right) \cdot a$$

$$80.04 \text{ N} = 30 \cdot a$$

Despejando la aceleración $a$:

$$a = \frac{80.04 \text{ N}}{30 \text{ kg}} = 2.668 \text{ \frac{m}{s^2}}$$
