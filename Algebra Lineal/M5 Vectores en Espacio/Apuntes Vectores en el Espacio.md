# 🧭 Vectores en el Plano ($\mathbb{R}^2$) y en el Espacio ($\mathbb{R}^3$)

## 📌 Resumen Ejecutivo

Este documento sintetiza los principios fundamentales de la teoría de vectores aplicada tanto al plano bidimensional ($\mathbb{R}^2$) como al espacio tridimensional ($\mathbb{R}^3$). Los vectores se definen algebraicamente como pares o ternas ordenadas de números reales y geométricamente como segmentos de recta dirigidos.

Entre los puntos críticos identificados se encuentran:

* 📐 **Propiedades Fundamentales:** Todo vector se caracteriza por su módulo (magnitud), dirección y sentido.
* 🔗 **Bases Canónicas:** La representación de vectores mediante combinaciones lineales de los vectores unitarios base ($\mathbf{i}, \mathbf{j}, \mathbf{k}$) es esencial para el análisis en ambos espacios.
* ✖️ **Dualidad de Productos:** El producto escalar (producto punto) resulta en un escalar y es la herramienta principal para determinar la ortogonalidad, mientras que el producto cruz (exclusivo de $\mathbb{R}^3$) genera un nuevo vector ortogonal a los originales y permite calcular áreas de paralelogramos.
* 🌐 **Sistemas de Coordenadas:** En el espacio, la orientación (sistema derecho o izquierdo) se rige por la disposición de los ejes, siendo el sistema derecho el estándar convencional.

---

## 1️⃣ 🧮 Definición y Representación Algebraica

Los vectores se estructuran según el espacio dimensional en el que operan:

* **En el Plano ($\mathbb{R}^2$):** Se representan como un par ordenado $(a, b)$, donde $a$ y $b$ son las componentes o elementos del vector. El vector cero se denota como $\mathbf{0} = (0, 0)$.
* **En el Espacio ($\mathbb{R}^3$):** Se representan como una terna ordenada de números reales $(a, b, c)$. Se establece un origen denotado por $\mathbf{0}$ y tres ejes perpendiculares entre sí ($x, y, z$).
  * **Sistemas de Orientación:** El sistema se denomina "derecho" si, al posicionar la mano derecha con el índice hacia el eje $x$ positivo y el medio hacia el eje $y$ positivo, el pulgar señala el eje $z$ positivo. En el sistema "izquierdo", la disposición de los ejes varía.
  * **Planos Coordenados:** Los ejes determinan tres planos: $xy$ (horizontal), $xz$ e $yz$ (verticales).

---

## 2️⃣ 🔍 Propiedades Caracterización de Vectores

Todo vector posee tres propiedades distintivas:

### I. Módulo (Magnitud o Longitud)
Representa la longitud del segmento de recta dirigido.

* En $\mathbb{R}^2$, para $\mathbf{v} = (a, b)$, el módulo es:
  $$\|\mathbf{v}\| = \sqrt{a^2 + b^2}$$
* En $\mathbb{R}^3$, la distancia entre dos puntos $P(x_1, y_1, z_1)$ y $Q(x_2, y_2, z_2)$ se calcula como:
  $$d(P, Q) = \sqrt{(x_1 - x_2)^2 + (y_1 - y_2)^2 + (z_1 - z_2)^2}$$

### II. Dirección
* **En $\mathbb{R}^2$:** Es el ángulo $	heta$ que el vector forma con el eje $x$ positivo ($	an 	heta = rac{b}{a}$).
* **En $\mathbb{R}^3$:** Se define mediante los ángulos directores $( lpha,  eta, \gamma)$, que son los ángulos que el vector forma con los ejes positivos $x, y, z$ respectivamente. Si el vector es unitario, sus componentes corresponden a los cosenos directores: 
  $$\cos  lpha = x_0, \quad \cos  eta = y_0, \quad \cos \gamma = z_0$$

### III. Sentido
Indica la orientación del recorrido desde el punto inicial $P$ al punto terminal $Q$. Vectores con igual magnitud y dirección pueden tener sentidos opuestos (por ejemplo, $ ec{PQ}$ y $ ec{QP}$).

---

## 3️⃣ 🎯 Vectores Unitarios y Base Canónica

Un vector es unitario si su módulo es igual a $1$. Cualquier vector no nulo $\mathbf{v}$ puede convertirse en unitario mediante la operación:
$$\mathbf{u} = rac{\mathbf{v}}{\|\mathbf{v}\|}$$

### Bases Canónicas
Permiten expresar cualquier vector como una combinación lineal única:

| Espacio | Vectores Base | Representación Lineal |
| :--- | :--- | :--- |
| **$\mathbb{R}^2$** | $\mathbf{i} = (1, 0)$, $\mathbf{j} = (0, 1)$ | $\mathbf{v} = a\mathbf{i} + b\mathbf{j}$ |
| **$\mathbb{R}^3$** | $\mathbf{i} = (1, 0, 0)$, $\mathbf{j} = (0, 1, 0)$, $\mathbf{k} = (0, 0, 1)$ | $\mathbf{v} = a\mathbf{i} + b\mathbf{j} + c\mathbf{k}$ |

---

## 4️⃣ ⚙️ Operaciones Fundamentales: Producto Escalar y Producto Cruz

### 🔹 Producto Escalar (Producto Punto)
Se define como la suma de los productos de las componentes correspondientes de dos vectores.

* **Resultado:** Siempre es un número real (escalar).
* **Interpretación Geométrica:** 
  $$\mathbf{u} \cdot \mathbf{v} = \|\mathbf{u}\|\|\mathbf{v}\| \cos \phi$$
  *(donde $\phi$ es el ángulo entre los vectores).*
* **Ortogonalidad:** Dos vectores son ortogonales (perpendiculares) si y solo si su producto escalar es cero ($\mathbf{u} \cdot \mathbf{v} = 0$).
* **Paralelismo:** Dos vectores son paralelos si uno es múltiplo escalar del otro ($\mathbf{v} =  lpha \mathbf{u}$).

### 🔹 Producto Cruz (Producto Vectorial)
Esta operación es exclusiva del espacio $\mathbb{R}^3$.

* **Resultado:** Es un nuevo vector, denotado como $\mathbf{u} 	imes \mathbf{v}$.
* **Definición Algebraica:** Para $\mathbf{u} = (a_1, b_1, c_1)$ y $\mathbf{v} = (a_2, b_2, c_2)$:
  $$\mathbf{u} 	imes \mathbf{v} = (b_1c_2 - c_1b_2)\mathbf{i} - (c_1a_2 - a_1c_2)\mathbf{j} + (a_1b_2 - b_1a_2)\mathbf{k}$$
* **Propiedades Clave:**
  * **Ortogonalidad Simultánea:** El vector resultante $\mathbf{u} 	imes \mathbf{v}$ es perpendicular tanto a $\mathbf{u}$ como a $\mathbf{v}$.
  * **Anticonmutatividad:** $\mathbf{u} 	imes \mathbf{v} = -(\mathbf{v} 	imes \mathbf{u})$.
  * **Magnitud y Área:** 
    $$\|\mathbf{u} 	imes \mathbf{v}\| = \|\mathbf{u}\|\|\mathbf{v}\| \sin \phi$$
    equivalente al área del paralelogramo cuyos lados adyacentes son los vectores $\mathbf{u}$ y $\mathbf{v}$.
  * **Regla de la Mano Derecha:** Determina la dirección del vector resultante.
  * **Triple Producto Escalar:** Definido por $(\mathbf{u} 	imes \mathbf{v}) \cdot \mathbf{w} = \mathbf{u} \cdot (\mathbf{v} 	imes \mathbf{w})$.

---

## 📚 📖 Referencias Bibliográficas

1. Grossman, S. y Flores Godoy, J. J. (2019). *Álgebra Lineal*. (8ª ed.). McGraw-Hill Interamericana. (Capítulos 3.1 al 3.4).
2. Universidad de Palermo. *Apunte de Cátedra: Vectores en el plano y en el espacio*.
