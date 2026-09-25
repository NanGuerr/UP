# 📐 Fundamentos de Espacios Vectoriales y Subespacios

## 📋 Resumen Ejecutivo

Este documento sintetiza los principios fundamentales de los espacios vectoriales y sus subespacios, partiendo de la abstracción de propiedades observadas en $\mathbb{R}^2$ y $\mathbb{R}^3$. Un espacio vectorial real se define como un conjunto de objetos (vectores) que cumplen con diez axiomas específicos bajo las operaciones de suma y multiplicación por un escalar. El análisis destaca que la validez de un espacio vectorial depende estrictamente del cumplimiento de la totalidad de estos axiomas, siendo la cerradura (tanto en la suma como en el producto) un requisito crítico. Asimismo, se introduce el concepto de subespacio como un subconjunto que hereda las operaciones del espacio "padre", requiriendo únicamente la verificación de dos reglas de cerradura para su validación. Finalmente, el documento explora teoremas sobre la interacción de vectores nulos y la naturaleza de las intersecciones y uniones de subespacios.



## 1. 📌 Definición de Espacio Vectorial Real

Un espacio vectorial real $V$ es un conjunto de objetos denominados vectores, junto con dos operaciones binarias que deben satisfacer una serie de axiomas. Estas operaciones son:

* **Suma:** $s: V \times V \rightarrow V$
* **Multiplicación por un escalar:** $m: V \times \mathbb{R} \rightarrow V$

### Los Diez Axiomas Fundamentales

Para que un conjunto $V$ sea considerado un espacio vectorial, debe cumplir con las siguientes propiedades para todo $\mathbf{x}, \mathbf{y}, \mathbf{z} \in V$ y escalares $\alpha, \beta \in \mathbb{R}$:

| Categoría | Axioma | Descripción Matemática |
| :--- | :--- | :--- |
| **Cerradura** | 1. Cerradura bajo la suma | $\mathbf{x} + \mathbf{y} \in V$ |
| | 6. Cerradura bajo multiplicación | $\alpha\mathbf{x} \in V$ |
| **Suma** | 2. Ley asociativa | $(\mathbf{x} + \mathbf{y}) + \mathbf{z} = \mathbf{x} + (\mathbf{y} + \mathbf{z})$ |
| | 3. Vector cero | $\exists \mathbf{0} \in V$ tal que $\mathbf{x} + \mathbf{0} = \mathbf{x}$ |
| | 4. Inverso aditivo | $\exists -\mathbf{x} \in V$ tal que $\mathbf{x} + (-\mathbf{x}) = \mathbf{0}$ |
| | 5. Ley conmutativa | $\mathbf{x} + \mathbf{y} = \mathbf{y} + \mathbf{x}$ |
| **Escalares** | 7. Primera ley distributiva | $\alpha(\mathbf{x} + \mathbf{y}) = \alpha\mathbf{x} + \alpha\mathbf{y}$ |
| | 8. Segunda ley distributiva | $(\alpha + \beta)\mathbf{x} = \alpha\mathbf{x} + \beta\mathbf{x}$ |
| | 9. Ley asociativa (escalares) | $\alpha(\beta\mathbf{x}) = (\alpha\beta)\mathbf{x}$ |
| | 10. Identidad escalar | $1\mathbf{x} = \mathbf{x}$ |

> **Nota sobre la naturaleza de los escalares:** Aunque este análisis se centra en espacios vectoriales reales, el concepto puede generalizarse a espacios complejos utilizando números complejos como escalares sin dificultad técnica significativa.



## 2. 🔍 Propiedades Elementales y Teoremas

El análisis formal permite establecer hechos generales aplicables a cualquier espacio vectorial, independientemente de su naturaleza específica.

### Teorema: Propiedades del Cero y el Inverso

Sea $V$ un espacio vectorial:

1. **Multiplicación por cero en escalares:** $0\mathbf{x} = \mathbf{0}$ para todo $\mathbf{x} \in V$.
2. **Multiplicación de escalar por vector nulo:** $\alpha\mathbf{0} = \mathbf{0}$ para todo escalar $\alpha$.
3. **Producto nulo:** Si $\alpha\mathbf{x} = \mathbf{0}$, entonces necesariamente $\alpha = 0$, $\mathbf{x} = \mathbf{0}$, o ambos.
4. **Representación del inverso aditivo:** $(-1)\mathbf{x} = -\mathbf{x}$ para todo $\mathbf{x} \in V$.

### Observación Crítica sobre el Producto Nulo

A diferencia de la multiplicación escalar-vector, en otras estructuras matemáticas como el producto de matrices, $xy = 0$ no implica necesariamente que $x$ o $y$ sean cero. Se toma como contraejemplo el producto de dos matrices de $2 \times 2$ no nulas cuyo resultado es la matriz cero.



## 3. 📊 Análisis de Casos y Ejemplos

### Espacios Vectoriales Válidos

* **$\mathbb{R}^n$:** Conjunto de $n$-adas donde la suma y multiplicación se realizan componente a componente.
* **Espacio Vectorial Trivial:** El conjunto $V = \{\mathbf{0}\}$ que consiste únicamente en el vector cero. Cumple con todos los axiomas (ej. $\mathbf{0} + \mathbf{0} = \mathbf{0}$, $1 \cdot \mathbf{0} = \mathbf{0}$).
* **Rectas por el origen en $\mathbb{R}^2$:** El conjunto $V = \{(x, y) \in \mathbb{R}^2 : y = mx\}$. Se demuestra su validez verificando la cerradura bajo la suma y la existencia del inverso aditivo dentro de la misma recta.

### Contraejemplos

* **Conjunto $V = \{1\}$:** No es un espacio vectorial porque viola el axioma de cerradura bajo la suma ($1 + 1 = 2 \notin V$). La violación de un solo axioma es suficiente para invalidar el espacio.



## 4. 🧬 Subespacios Vectoriales

Un subespacio $H$ es un subconjunto no vacío de un espacio vectorial $V$ que, por sí mismo, constituye un espacio vectorial bajo las mismas operaciones de $V$.

### Criterio de Verificación

Para determinar si un subconjunto $H$ es un subespacio, solo es necesario comprobar dos condiciones:

1. **Cerradura bajo la suma:** Si $\mathbf{x}, \mathbf{y} \in H$, entonces $\mathbf{x} + \mathbf{y} \in H$.
2. **Cerradura bajo la multiplicación escalar:** Si $\mathbf{x} \in H$, entonces $\alpha\mathbf{x} \in H$ para cualquier escalar $\alpha$.

### El Rol del Vector Cero

Todo subespacio debe contener al vector cero ($\mathbf{0}$). Si un subconjunto no contiene al $\mathbf{0}$, puede descartarse inmediatamente como subespacio. El vector cero en $H$ es idéntico al vector cero del espacio padre $V$.



## 5. 🔗 Operaciones entre Subespacios

### Intersección de Subespacios

Si $H_1$ y $H_2$ are subespacios de $V$, entonces su intersección $H_1 \cap H_2$ es siempre un subespacio de $V$.

* **Evidencia:** Contiene al $\mathbf{0}$ (por lo que es no vacío) y hereda las propiedades de cerradura de ambos subespacios originales.
* **Ejemplo en $\mathbb{R}^3$:** La intersección de dos planos que pasan por el origen resulta en una recta que también pasa por el origen.

### Unión de Subespacios

A diferencia de la intersección, la unión de dos subespacios ($H_1 \cup H_2$) no es necesariamente un subespacio.

* **Contraejemplo:** En $\mathbb{R}^2$, la unión de las rectas $y = 2x$ y $y = 3x$ no es un subespacio porque la suma de un vector de la primera recta con uno de la segunda no pertenece a ninguna de las dos (falla la cerradura bajo la suma).
