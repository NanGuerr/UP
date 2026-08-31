# 📐 Fundamentos Algebraicos y Geométricos

Este documento sintetiza los principios fundamentales de los vectores en el plano ($\mathbb{R}^2$), abordando su naturaleza tanto algebraica como geométrica. Se define al vector como un par ordenado de números reales o como un conjunto de segmentos de recta dirigidos equivalentes, caracterizados por una magnitud y una dirección. El análisis incluye las operaciones básicas de suma y multiplicación por un escalar, la importancia de los vectores unitarios y la base canónica $(\mathbf{i}, \mathbf{j})$, y las aplicaciones críticas del producto escalar, tales como el cálculo de ángulos entre vectores, la determinación de ortogonalidad y el cálculo de proyecciones.



## 1. 📌 Definición y Representación de Vectores

### 1.1. 🔢 Perspectiva Algebraica

Un vector en el plano $\mathbb{R}^2$ se define formalmente como un conjunto ordenado de dos números reales, expresado como $(x_1, x_2)$.

* **Componentes:** $x_1$ representa la primera componente y $x_2$ la segunda componente.
* **Equivalencia con el plano:** Dado que cualquier punto en el plano se escribe como $(x, y)$, los términos "el plano" y $\mathbb{R}^2$ son frecuentemente intercambiables.
* **Vector Cero:** Es el vector $(0, 0)$, denotado como $\mathbf{0}$. Posee magnitud cero y, dado que sus puntos inicial y terminal coinciden, carece de dirección.

### 1.2. 📏 Perspectiva Geométrica

Físicamente, un vector es una entidad con longitud (magnitud) y dirección.

* **Segmento de recta dirigido:** Denotado como $\vec{PQ}$, representa el trayecto del punto inicial $P$ al punto terminal $Q$. Es importante notar que $\vec{PQ} \neq \vec{QP}$ debido a que tienen direcciones opuestas.
* **Equivalencia:** Dos segmentos son equivalentes si poseen la misma magnitud y dirección, independientemente de su ubicación en el plano.
* **Vector Geométrico:** Es el conjunto de todos los segmentos de recta dirigidos equivalentes. Cualquier segmento de este conjunto es una representación del vector.
* **Representación Estándar:** Un vector se puede trasladar paralelamente para que su punto inicial coincida con el origen $(0, 0)$. Si el punto terminal es $(a, b)$, el vector se puede escribir simplemente como $(a, b)$.



## 2. 📐 Propiedades Métricas: Magnitud y Dirección

Las propiedades más relevantes de un vector $\mathbf{v} = (a, b)$ se calculan mediante las siguientes fórmulas:

| Propiedad 🏷️ | Definición / Fórmula 🧮 | Observaciones 📝 |
| :--- | :--- | :--- |
| **Magnitud (Longitud)** | $\|\mathbf{v}\| = \sqrt{a^2 + b^2}$ | Corresponde a la distancia euclidiana desde el origen al punto $(a, b)$. |
| **Dirección** | Ángulo $\theta$ medido en radianes. | Por convención: $0 \le \theta < 2\pi$. |
| **Cálculo de Ángulo** | Si $a \neq 0$, se utiliza $\tan \theta = \frac{b}{a}$ | Se mide respecto al eje $x$ positivo. |



## 3. 🔄 Operaciones Vectoriales y Propiedades

### 3.1. ✖️ Multiplicación por un Escalar

Multiplicar un vector $\mathbf{v}$ por un escalar $\alpha$ escala su longitud por $|\alpha|$.

* **Efecto en la dirección:**
  * Si $\alpha > 0$: El vector $\alpha \mathbf{v}$ mantiene la misma dirección que $\mathbf{v}$.
  * Si $\alpha < 0$: El vector $\alpha \mathbf{v}$ tiene dirección opuesta a $\mathbf{v}$.
* **Propiedad de magnitud:** $|\alpha \mathbf{v}| = |\alpha| \cdot \|\mathbf{v}\|$.

### 3.2. ➕ Suma de Vectores

La suma de $\mathbf{u} = (a_1, b_1)$ y $\mathbf{v} = (a_2, b_2)$ es $\mathbf{u} + \mathbf{v} = (a_1 + a_2, b_1 + b_2)$.

* **Regla del Paralelogramo:** El vector suma es la diagonal del paralelogramo formado por $\mathbf{u}$ y $\mathbf{v}$ con un vértice en el origen.
* **Desigualdad del Triángulo:** \|\mathbf{u} + \mathbf{v}\| \le \|\mathbf{u}\| + \|\mathbf{v}\|. Esta propiedad indica que la magnitud de la suma es siempre menor o igual a la suma de las magnitudes individuales.

### 3.3. 📜 Teoremas y Propiedades Algebraicas

Sean $\mathbf{v}, \mathbf{u}, \mathbf{w} \in \mathbb{R}^2$ y $\alpha, \beta$ escalares:

* **Identidad:** $\mathbf{v} + \mathbf{0} = \mathbf{v}$ y $1\mathbf{v} = \mathbf{v}$.
* **Elemento Nulo:** $0 \cdot \mathbf{v} = \mathbf{0}$.
* **Conmutatividad:** $\mathbf{v} + \mathbf{u} = \mathbf{u} + \mathbf{v}$.
* **Asociatividad:** $(\mathbf{v} + \mathbf{u}) + \mathbf{w} = \mathbf{v} + (\mathbf{u} + \mathbf{w})$.
* **Distributividad:** $\alpha(\mathbf{v} + \mathbf{u}) = \alpha \mathbf{v} + \alpha \mathbf{u}$ y $(\alpha + \beta)\mathbf{v} = \alpha \mathbf{v} + \beta \mathbf{v}$.



## 4. 🎯 Base Canónica y Vectores Unitarios

### 4.1. 📍 Los Vectores i y j

En $\mathbb{R}^2$, existen dos vectores especiales que forman una base:

* $\mathbf{i} = (1, 0)$ (componente horizontal).
* $\mathbf{j} = (0, 1)$ (componente vertical).
* **Propiedades de la base:** Son linealmente independientes (ninguno es múltiplo del otro) y cualquier vector $\mathbf{v} = (a, b)$ puede expresarse como $\mathbf{v} = a\mathbf{i} + b\mathbf{j}$.

### 4.2. 📏 Vectores Unitarios

Un vector unitario es aquel cuya magnitud es exactamente $1$.

* **Representación mediante ángulo:** Cualquier vector unitario $\mathbf{u}$ con dirección $\theta$ puede escribirse como:
  $$\mathbf{u} = (\cos \theta)\mathbf{i} + (\sin \theta)\mathbf{j}$$
* **Normalización:** Para cualquier vector $\mathbf{v} \neq \mathbf{0}$, el vector $\frac{\mathbf{v}}{\|\mathbf{v}\|}$ es un vector unitario en la dirección de $\mathbf{v}$.



## 5. 🔵 Producto Escalar (Producto Punto)

El producto escalar es una función que toma dos vectores y devuelve un número real ($\mathbb{R}^2 \times \mathbb{R}^2 \to \mathbb{R}$). Para $\mathbf{a} = (a_1, a_2)$ y $\mathbf{b} = (b_1, b_2)$, se define como:
$$\mathbf{a} \cdot \mathbf{b} = a_1b_1 + a_2b_2$$

### 5.1. ⚙️ Propiedades del Producto Escalar

1. **Conmutatividad:** $\mathbf{v} \cdot \mathbf{u} = \mathbf{u} \cdot \mathbf{v}$.
2. **Distributividad:** $\mathbf{v} \cdot (\mathbf{u} + \mathbf{w}) = \mathbf{v} \cdot \mathbf{u} + \mathbf{v} \cdot \mathbf{w}$.
3. **Escalamiento:** $(\alpha \mathbf{v}) \cdot \mathbf{u} = \alpha(\mathbf{v} \cdot \mathbf{u})$.
4. **Positividad:** $\mathbf{v} \cdot \mathbf{v} > 0$ para todo $\mathbf{v} \neq \mathbf{0}$.
5. **Relación con la magnitud:** $\|\mathbf{v}\|^2 = \mathbf{v} \cdot \mathbf{v}$.

### 5.2. 📐 Interpretación Geométrica y Ángulos

El producto escalar permite determinar el ángulo $\phi$ entre dos vectores no nulos:
$$\cos \phi = \frac{\mathbf{u} \cdot \mathbf{v}}{\|\mathbf{u}\| \|\mathbf{v}\|}$$
De esto se deriva que:
$$\mathbf{u} \cdot \mathbf{v} = \|\mathbf{u}\| \|\mathbf{v}\| \cos \phi$$

* **Vectores Paralelos:** El ángulo entre ellos es $0$ o $\pi$. Se cumple si $\mathbf{v} = \alpha \mathbf{u}$.
* **Vectores Ortogonales (Perpendiculares):** El ángulo entre ellos es $\pi/2$. Se cumple si y sólo si $\mathbf{u} \cdot \mathbf{v} = 0$.



## 6. 🔦 Proyecciones

La proyección de un vector $\mathbf{u}$ sobre un vector $\mathbf{v}$ ($\mathbf{v} \neq \mathbf{0}$) es un vector que representa la "sombra" de $\mathbf{u}$ en la dirección de $\mathbf{v}$.

* **Vector Proyección:**
  $$\text{proy}_{\mathbf{v}} \mathbf{u} = \frac{\mathbf{u} \cdot \mathbf{v}}{\|\mathbf{v}\|^2} \mathbf{v}$$
* **Componente Escalar:** La magnitud de esta proyección en la dirección de $\mathbf{v}$ es $\frac{\mathbf{u} \cdot \mathbf{v}}{\|\mathbf{v}\|}$.
* **Ortogonalidad:** Si $\mathbf{u}$ y $\mathbf{v}$ son ortogonales, la proyección es el vector cero.
* **Construcción de Ortogonalidad:** Para cualquier vector $\mathbf{u}$ y $\mathbf{v} \neq \mathbf{0}$, el vector $\mathbf{w} = \mathbf{u} - \text{proy}_{\mathbf{v}} \mathbf{u}$ es siempre ortogonal a $\mathbf{v}$.



## 📚 Fuente Bibliográfica

Grossman, S. y Flores Godoy, J. J. (2019). *Álgebra Lineal*. (8ª ed.). McGraw-Hill Interamericana. Capítulos 3.1 y 3.2.
