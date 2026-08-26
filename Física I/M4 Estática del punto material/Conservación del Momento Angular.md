# 📊 Conservación del Momento Angular

Este documento sintetiza los principios fundamentales de la mecánica clásica aplicados tanto a sistemas en reposo como a sistemas en rotación, basándose en los conceptos de estática del punto material y la conservación del momento angular. Los puntos clave identificados son:

* ⚡ **Naturaleza de la Fuerza:** Se define la fuerza a través de sus efectos cinemáticos y de deformación, subrayando su carácter vectorial indispensable (módulo, dirección, sentido y punto de aplicación).
* ⚖️ **Equilibrio Estático:** Un cuerpo puntual se encuentra en equilibrio cuando la suma vectorial de todas las fuerzas concurrentes es nula ($\sum \vec{F}_i = 0$). Es vital distinguir el equilibrio del reposo absoluto, ya que el primero puede ocurrir en movimiento a velocidad constante.
* 📐 **Resolución Analítica:** Se establece el "Método de las Proyecciones" sobre ejes cartesianos ortogonales como la herramienta técnica para determinar la resultante ($\vec{R}$) y la equilibrante ($\vec{E}$) de un sistema.
* 🌀 **Conservación del Momento Angular:** En sistemas rotacionales, si el momento externo neto es cero, el momento angular ($\vec{L}$) permanece constante. Este principio es análogo a la conservación del momento lineal y rige el comportamiento de sistemas aislados, permitiendo predecir cambios en la velocidad angular ante variaciones en el momento de inercia.

---

## 1. 🏗️ Fundamentos de la Estática del Punto Material
La estática del punto material se centra en el estudio del equilibrio de objetos cuyas dimensiones pueden despreciarse en comparación con el medio que los rodea.

### 1.1. Definición y Carácter de la Fuerza
La fuerza se reconoce cotidianamente por sus efectos, como levantar un objeto, causar deformaciones o cambiar la velocidad de un cuerpo. Para su tratamiento físico, se define mediante una magnitud vectorial, lo que implica que sin un punto de aplicación, dirección y sentido, la fuerza queda indeterminada.

### 1.2. El Concepto de Punto Material
Se considera "punto material" a un cuerpo de extensión idealmente nula. Esta abstracción permite que todas las fuerzas aplicadas al objeto compartan el mismo punto de aplicación, simplificando el análisis a un sistema de fuerzas concurrentes.

### 1.3. Condición de Equilibrio
Un cuerpo puntual está en equilibrio si la suma vectorial de todas las fuerzas que actúan sobre él es nula:
$$\sum_{i=1}^{n} \vec{F}_i = 0$$

> ⚠️ **Diferencia Crítica:** El equilibrio no debe confundirse con el reposo. Un objeto puede estar en equilibrio mientras se mueve a velocidad constante respecto a un sistema de referencia inercial.

---

## 2. 🧮 Metodología de Análisis de Sistemas de Fuerzas
Para resolver sistemas donde actúan múltiples fuerzas concurrentes, se utilizan métodos analíticos basados en la descomposición vectorial.

### 2.1. Método de las Proyecciones
Consiste en proyectar cada fuerza sobre un par de ejes cartesianos ($x$ e $y$). Las componentes se calculan mediante funciones trigonométricas basadas en el ángulo ($\theta$) medido en sentido antihorario desde el semieje $x$ positivo:
* Componente $x$: $F_{ix} = F_i \cdot \cos(\theta_i)$
* Componente $y$: $F_{iy} = F_i \cdot \sin(\theta_i)$

### 2.2. Resultante y Equilibrante
* **Resultante ($\vec{R}$):** Es la sumatoria de fuerzas cuando esta es distinta de cero ($\vec{R} = \sum \vec{F}_i \neq 0$). Representa la fuerza única que podría reemplazar a todo el sistema.
* **Equilibrante ($\vec{E}$):** Es la fuerza necesaria para que el sistema alcance el equilibrio. Tiene el mismo módulo y dirección que la resultante, pero sentido opuesto ($\vec{E} = -\vec{R}$).

### 2.3. Unidades de Medida
El análisis técnico utiliza principalmente dos unidades de fuerza y su equivalencia:
* **Newton (N)**
* **Kilogramo fuerza (Kgf)**
* *Relación:* $1 \text{ Kgf} = 9,8 \text{ N}$

---

## 3. 🔗 Fuerzas de Vínculo y Tensiones
En la estática, las fuerzas suelen aplicarse a través de agentes mecánicos como sogas, cables o cuerdas.

* 🧶 **Naturaleza de la Tensión:** Estas fuerzas, designadas habitualmente con la letra $T$, transmiten tracción a lo largo de la recta del cable.
* ⛓️ **Cables Ideales:** Para facilitar el análisis, se asumen cables inextensibles y de masa despreciable.
* 🛑 **Restricción de Movimiento:** Estas fuerzas actúan como vínculos que restringen las posibilidades de movimiento del cuerpo puntual, manteniendo el estado de equilibrio.

---

## 4. 🔄 Dinámica Rotacional y Conservación del Momento Angular
Cuando el análisis se desplaza de la traslación a la rotación, el principio de conservación del momento angular se convierte en el eje central del estudio de sistemas aislados.

### 4.1. El Principio de Conservación
Si el momento externo resultante (torque) que actúa sobre un sistema es cero ($\vec{\tau}_{neto\_ext} = 0$), el momento angular total del sistema permanece constante:
$$\vec{L}_{sist} = \text{constante}$$
Este principio es una ley fundamental de la naturaleza que se cumple incluso en escalas microscópicas (física atómica y nuclear) donde la mecánica newtoniana tradicional puede fallar.

### 4.2. Relación con la Inercia y la Velocidad Angular
Para rotaciones respecto a un eje fijo, el momento angular se define como el producto del momento de inercia ($I$) por la velocidad angular ($\omega$):
$$L = I \cdot \omega$$
Si $I$ disminuye (por ejemplo, al acercar masas al centro de rotación), $\omega$ debe aumentar proporcionalmente para mantener $L$ constante.

### 4.3. Energía Cinética Rotacional
La energía cinética ($K$) de un sistema en rotación puede expresarse en función del momento angular:
$$K = \frac{L^2}{2I}$$
En procesos donde el momento de inercia cambia por fuerzas internas (como estudiantes moviéndose en un tiovivo), la energía cinética puede variar debido al consumo de energía interna, a pesar de que el momento angular se conserve.

---

## 5. 🎯 Casos de Estudio y Aplicaciones Prácticas
Las fuentes proporcionan ejemplos críticos que ilustran la aplicación de estos principios:

| Caso de Estudio | Dinámica Observada | Conclusión Técnica |
| :--- | :--- | :--- |
| 💿 **Choque de Discos** | Un disco girando cae sobre uno en reposo. | El momento angular se conserva, pero la energía mecánica disminuye por rozamiento (choque inelástico). |
| 🎠 **El Tiovivo** | Personas se mueven hacia el centro del disco. | El momento de inercia disminuye, provocando un aumento drástico de la velocidad angular y la aceleración centrípeta. |
| 🚲 **Muchacha con Rueda** | Inclinar el eje de una rueda giratoria sobre una plataforma. | Para mantener el momento angular inicial (cero), la plataforma debe girar en sentido opuesto al cambio de dirección del espín de la rueda. |
| 🎯 **Péndulo Balístico Rotacional** | Arcilla choca y se adhiere a una barra pivotante. | El momento lineal no se conserva (por la fuerza en el pivote), pero el momento angular respecto al pivote sí se conserva. |
| 🧵 **Partícula en una Mesa** | Se tira de una cuerda que pasa por un agujero. | La tensión no genera torque (es radial al agujero), por lo que el momento angular es constante mientras el radio disminuye y la velocidad aumenta. |

---

## 6. 📉 Conclusiones sobre la Ley de Newton para Rotación
El análisis culmina en la demostración de que el momento resultante aplicado a un sistema de partículas es igual a la derivada temporal del momento angular total:
$$\vec{\tau}_{neto\_ext} = \frac{d\vec{L}_{sist}}{dt}$$
Esta es la Segunda Ley de Newton para el movimiento de rotación, estableciendo que los momentos internos se anulan por pares, dejando únicamente a las fuerzas externas como responsables de la variación del momento angular del sistema.
