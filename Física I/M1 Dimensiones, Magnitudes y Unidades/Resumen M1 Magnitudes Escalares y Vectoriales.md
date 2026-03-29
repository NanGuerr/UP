# 📊 Resumen M1 Magnitudes Escalares y Vectoriales

Coceptos que debes dominar para el primer módulo de la cursada.

---

## 1. 📏 Definición de Magnitudes

Para entender el movimiento y las fuerzas, primero debemos saber cómo medirlas:

* **Magnitud Escalar:** Es aquella que queda completamente definida por un número real y su unidad de medida. 🌡️
    * *Ejemplos:* Masa, tiempo, temperatura y energía.
* **Magnitud Vectorial:** Requiere, además de un valor numérico (**módulo**) y una unidad, una **dirección** y un **sentido**. 🏹
    * *Ejemplos:* Desplazamiento, velocidad, aceleración y fuerza.



---

## 2. 📐 Representación y Álgebra de Vectores

Gráficamente, un vector se representa como una flecha (segmento de recta orientado).

### 🔹 Componentes y Módulo
Si tenemos un vector $\vec{A} = (A_x, A_y)$, podemos calcular sus propiedades fundamentales:

* **Módulo:** Representa la intensidad o "longitud" del vector.
    $$|\vec{A}| = \sqrt{A_x^2 + A_y^2}$$
* **Dirección:** Es el ángulo $\alpha$ que el vector forma con el semieje positivo de las $x$. Se calcula como:
    $$\alpha = \arctan\left(\left|\frac{A_y}{A_x}\right|\right)$$
    *(Nota: Es necesario ajustar el ángulo según el cuadrante donde se encuentre el vector).*

### ➕ Operaciones con Vectores

1.  **Suma de Vectores:**
    * **Gráficamente:** Se usa el método del paralelogramo o del polígono.
    * **Analíticamente:** Se suman sus componentes correspondientes:
        $$\vec{A} + \vec{B} = (A_x + B_x) \hat{i} + (A_y + B_y) \hat{j}$$



[Image of the parallelogram method for vector addition]


2.  **Producto Escalar ($\vec{A} \cdot \vec{B}$):** 🔢
    Da como resultado un **escalar**. Es esencial para calcular el **Trabajo (W)**.
    $$\vec{A} \cdot \vec{B} = |\vec{A}| |\vec{B}| \cos \theta$$

3.  **Producto Vectorial ($\vec{A} \times \vec{B}$):** 🌀
    Da como resultado un **vector** perpendicular al plano formado por los vectores originales. Su módulo es:
    $$|\vec{A} \times \vec{B}| = |\vec{A}| |\vec{B}| \sin \theta$$



---

## 3. 🔢 Fundamentos Matemáticos

Para modelar los fenómenos físicos, nos apoyamos en herramientas de cálculo:

* **Números Reales:** La base de cualquier magnitud. Incluyen **racionales** (fracciones) e **irracionales** (como $\pi$ o $\sqrt{7}$).
* **Ecuación de la Recta:** Vital para el Movimiento Rectilíneo Uniforme (MRU). La pendiente ($m$) representa la velocidad:
    $$m = \frac{y_2 - y_1}{x_2 - x_1}$$
* **Cálculo Diferencial:** La velocidad y la aceleración se definen mediante la **derivada**, que es la razón de cambio instantánea de una función. 📉

---

## 🛠️ Aplicación en Ingeniería

En la **Ingeniería en Telecomunicaciones**, estos modelos permiten predecir el comportamiento de sistemas mecánicos y técnicos. Recuerda que la **medición precisa** y la **teoría de errores** son requisitos transversales en cualquier experimento que realices. 🛰️🏗️

---
*Preparado para la cursada de Física I - Universidad de Palermo.*
