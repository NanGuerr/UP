# 🏗️ Estática del Cuerpo Extenso: Principios y Aplicaciones

Este documento sintetiza los fundamentos de la estática del cuerpo extenso, diferenciándolos de la estática del punto material. El análisis se centra en la transición conceptual donde el tamaño y los puntos de aplicación de las fuerzas adquieren una relevancia crítica. Los pilares de esta disciplina son la hipótesis del cuerpo rígido, el concepto de momento de una fuerza y las condiciones duales de equilibrio.

Para que un cuerpo extenso alcance el equilibrio, no basta con que la resultante de las fuerzas sea nula (evitando la traslación), sino que también debe anularse la suma algebraica de los momentos de dichas fuerzas (evitando la rotación). El documento detalla las metodologías de cálculo, convenciones de signos y presenta una serie de casos prácticos —desde sistemas simples de palancas hasta estructuras articuladas y escaleras— que ilustran la aplicación de estos teoremas en situaciones físicas concretas.



## 📌 1. Fundamentos del Cuerpo Extenso

La transición del estudio del punto material al cuerpo extenso introduce la variable del espacio físico y la distribución de fuerzas.

* 📏 **Definición de Cuerpo Extenso:** Se define como aquel objeto donde las fuerzas aplicadas no concurren en un único punto, sino que poseen distintos puntos de aplicación.
* 🌀 **Dinámica del Movimiento:** Cualquier movimiento de un cuerpo extenso se analiza como la superposición de dos componentes:
  * ➡️ **Traslación:** Movimiento lineal del cuerpo.
  * 🔄 **Rotación:** Giro del cuerpo respecto a un eje, efecto que es inadvertido en el modelo de objeto puntual.
* 🪵 **Hipótesis del Cuerpo Rígido:** Se asume que el cuerpo no experimenta deformaciones bajo la acción de fuerzas externas. Esto implica que la distancia relativa entre dos puntos cualesquiera permanece constante.
  * 💡 *Consecuencia:* En un cuerpo rígido, las fuerzas pueden trasladarse a lo largo de su recta de acción sin modificar los efectos producidos.



## ⚙️ 2. El Momento de una Fuerza

El momento de una fuerza es la magnitud física que cuantifica la capacidad de una fuerza para producir una rotación respecto a un punto determinado (centro de momentos).

### 📐 Definición Matemática y Unidades
El momento ($M$) respecto a un punto $O$ es el producto vectorial entre la fuerza ($ ec{F}$) y el vector posición ($ ec{d}$) desde el centro de momentos al punto de aplicación. Para fines prácticos en el plano, se calcula su módulo mediante la fórmula:

$$|M| = |F| \cdot |d| \cdot \sin(\alpha)$$

Donde $\alpha$ es el ángulo entre la fuerza y la distancia (entre $0^\circ$ y $180^\circ$).

### 📊 Sistema de Medida

| Sistema de Medida | Unidad de Momento |
| :--- | :--- |
| **Sistema Internacional (SI)** | Newton por metro ($	ext{N}\cdot\text{m}$) |
| **Sistema Técnico** | Kilogramo fuerza por metro ($	ext{kgf}\cdot\text{m}$) |

### ➕ Convención de Signos y Teorema de Varignon
Para la suma algebraica de momentos en el plano, se establece la siguiente convención:

* 🕒 **Sentido Horario:** Momento negativo ($-$).
* 🕘 **Sentido Antihorario:** Momento positivo ($+$).

El **Teorema de Varignon** establece que el momento de la resultante de varias fuerzas aplicadas a un cuerpo rígido es igual a la suma vectorial (o algebraica en el plano) de los momentos de cada una de las fuerzas intervinientes.



## ⚖️ 3. Condiciones de Equilibrio Estático

Para que un cuerpo extenso permanezca en reposo total, debe satisfacer simultáneamente dos condiciones:

1. 🛑 **Equilibrio de Traslación:** La resultante de todas las fuerzas aplicadas sobre el cuerpo debe ser nula ($\sum  ec{F} = 0$).
2. 🛑 **Equilibrio de Rotación:** La suma algebraica de todos los momentos de todas las fuerzas aplicadas, respecto a cualquier punto, debe ser cero ($\sum M = 0$).



## 🔍 4. Análisis de Casos y Aplicaciones Prácticas

A continuación, se describen escenarios que ejemplifican la aplicación de las leyes de la estática en cuerpos con dimensiones y pesos específicos.

### 🏋️ Sistemas de Palancas y Barras
* **Equilibrio en Balancines:** Se analiza la distancia necesaria para equilibrar pesos desiguales (ej. un peso de $600\text{ N}$ frente a uno de $100\text{ N}$ en una barra de $6\text{ metros}$) cuando el soporte se halla en el punto medio.
* **Distribución de Cargas en Barras Rígidas:** Problemas como el de un aguatero que transporta baldes de diferente volumen ($10\text{ L}$ y $8\text{ L}$) en una barra de $1,2\text{ m}$, donde se debe determinar el punto de apoyo en la espalda para mantener la horizontalidad y la fuerza total soportada.

### 🏗️ Estructuras y Vínculos
* **Barras Homogéneas con Cables:** Determinación de reacciones en apoyos y tensiones en cables (vínculos) para barras donde el peso se concentra en el punto medio y soportan cargas adicionales en sus extremos.
* **Sistemas con Pivotes y Armaduras:** Análisis de fuerzas en sistemas en equilibrio que incluyen armaduras con peso propio, objetos colgantes y cables en ángulos específicos (ej. ángulos de $37^\circ$ y $53^\circ$), calculando componentes horizontales y verticales en los puntos de articulación.

### 🪜 Casos Especiales de Apoyo y Empotramiento
* **Escaleras:** Estudio de fuerzas en los extremos de una escalera (peso $15\text{ kgf}$, longitud $1,80\text{ m}$) apoyada en un piso fijo y una pared lisa (apoyo móvil), con una carga adicional (persona de $80\text{ kgf}$) situada a $2/3$ de su longitud.
* **Objetos Empotrados:** Modelado de objetos en equilibrio con peso uniformemente distribuido, como un teléfono en su cargador inclinado ($20^\circ$ respecto a la vertical), calculando el momento y la fuerza en el vínculo de empotramiento bajo la premisa de concentrar el peso en el punto medio del objeto.



## 🔗 5. Recursos Complementarios

El estudio teórico y la resolución de los problemas planteados pueden profundizarse mediante materiales audiovisuales externos que abordan específicamente el equilibrio estático del cuerpo extenso.
