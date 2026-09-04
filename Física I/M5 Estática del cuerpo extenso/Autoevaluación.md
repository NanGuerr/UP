# 🛠️ Estática del Cuerpo Extenso - Resolución

En este documento se presentan las soluciones detalladas a los problemas de **Estática del Cuerpo Extenso**, aplicando rigurosamente las condiciones de equilibrio y la convención de signos.



## 📐 Problema 1: Barra Homogénea con Tensión Inclinada y Peso

Para resolver el problema planteado siguiendo la metodología de estática del cuerpo extenso:

### 1. 📋 Planteo y Datos del Problema

* **📏 Barra homogénea:**
  * Peso de la barra: $P_{\text{barra}} = 80\text{ N}$
  * Longitud total de la barra: $L = 14\text{ m}$
  * Por ser homogénea, su centro de gravedad ($CG$) se ubica exactamente en el punto medio, a $7\text{ m}$ de cada extremo.

* **📍 Puntos y Distancias:**
  * Punto de apoyo fijo / centro de momentos: $A$
  * Distancia del punto $A$ al extremo $B$: $AB = 9\text{ m}$
  * Distancia del extremo $C$ al punto $A$:
    $$CA = L - AB = 14\text{ m} - 9\text{ m} = 5\text{ m}$$
  * Ubicación del centro de gravedad ($CG$) respecto a $A$: El $CG$ está a $7\text{ m}$ desde el extremo $C$. Como $CA = 5\text{ m}$, el $CG$ se encuentra a $2\text{ m}$ a la derecha del apoyo $A$ (hacia el extremo $B$).

* **💪 Fuerzas aplicadas:**
  * Fuerza en el extremo $B$: $|\vec{P}| = 40\text{ N}$ (vertical hacia abajo)
  * Tensión en el extremo $C$: $|\vec{T}| = 100\text{ N}$ (inclinada a $37^\circ$ respecto a la horizontal, con sentido hacia abajo e izquierda)



### 2. 🔄 Convención de Signos para Momentos de Fuerza

Según las reglas estipuladas para el cuerpo rígido:
* 🔴 **Giro en sentido horario:** momento con signo negativo ($-$)
* 🟢 **Giro en sentido antihorario:** momento con signo positivo ($+$)



### 3. 🧮 Cálculo de los Momentos respecto al Punto $A$

#### a) Momento producido por la tensión $\vec{T}$ ($M_{\vec{T}}^A$)
La componente vertical de la tensión actúa hacia abajo a la izquierda del punto $A$ (en $C$), intentando hacer girar la barra en sentido antihorario (signo positivo):

$$M_{\vec{T}}^A = +|\vec{T}| \cdot \sin(37^\circ) \cdot CA$$

$$M_{\vec{T}}^A = +100\text{ N} \cdot \sin(37^\circ) \cdot 5\text{ m}$$

Tomando $\sin(37^\circ) \approx 0.601815$:

$$M_{\vec{T}}^A \approx +300.91\text{ N}\cdot\text{m}$$

#### b) Momento producido por el peso de la barra ($M_{\vec{P}_{\text{barra}}}^A$)
El peso propio de la barra se aplica en el $CG$ ($2\text{ m}$ a la derecha de $A$) apuntando hacia abajo, lo que genera una rotación en sentido horario (signo negativo):

$$M_{\vec{P}_{\text{barra}}}^A = -|\vec{P}_{\text{barra}}| \cdot d_{CG-A}$$

$$M_{\vec{P}_{\text{barra}}}^A = -80\text{ N} \cdot 2\text{ m} = -160\text{ N}\cdot\text{m}$$

#### c) Momento producido por la fuerza $\vec{P}$ ($M_{\vec{P}}^A$)
La fuerza $ ec{P}$ en el extremo $B$ ($9\text{ m}$ a la derecha de $A$) actúa hacia abajo, generando también un giro en sentido horario (signo negativo):

$$M_{\vec{P}}^A = -|\vec{P}| \cdot AB$$

$$M_{\vec{P}}^A = -40\text{ N} \cdot 9\text{ m} = -360\text{ N}\cdot\text{m}$$



### 4. 🎯 Momento Resultante respecto a $A$ (Teorema de Varignon)

Sumando algebraicamente los momentos:

$$M_R^A = M_{\vec{T}}^A + M_{\vec{P}_{\text{barra}}}^A + M_{\vec{P}}^A$$

$$M_R^A = +300.91\text{ N}\cdot\text{m} - 160\text{ N}\cdot\text{m} - 360\text{ N}\cdot\text{m}$$

$$M_R^A = 300.91\text{ N}\cdot\text{m} - 520\text{ N}\cdot\text{m} = -219.09\text{ N}\cdot\text{m} \approx -219\text{ N}\cdot\text{m}$$

#### ✅ Conclusión del Problema 1
El valor obtenido del momento resultante respecto de $A$ es **$-219\text{ N}\cdot\text{m}$**.

* **Opción correcta:** **B. -219 Nm**



## ⚖️ Problema 2: Equilibrio en el Sube y Baja (Palanca de Primer Género)

### 1. 📋 Datos del Problema

* **📏 Sube y baja:**
  * Longitud total: $L = 3\text{ m}$
  * Peso del sube y baja: $P_{\text{barra}} = 10\text{ kgf}$ (aplicado en el centro de gravedad, a $1.5\text{ m}$ del soporte)
* **📍 Ubicación del soporte ($A$):** Exactamente en la mitad, a $1.5\text{ m}$ de cada extremo.
* **👥 Personas:**
  * Peso de Pablo: $P_{\text{Pablo}} = 40\text{ kgf}$, sentado en un extremo (a $1.5\text{ m}$ del soporte).
  * Peso de Pepe: $P_{\text{Pepe}} = 50\text{ kgf}$, ubicado a una distancia $x$ del soporte en el lado opuesto.



### 2. 🔄 Condición de Equilibrio de Momentos ($\sum M_F^A = 0$)

Tomando como centro de momentos el punto de apoyo $A$:
* El momento generado por el peso propio del sube y baja es nulo ($M_{P_{\text{barra}}}^A = 0$) porque su centro de gravedad coincide con el soporte $A$.
* Pablo ejerce una fuerza de $40\text{ kgf}$ a un brazo de palanca de $1.5\text{ m}$.
* Pepe ejerce una fuerza de $50\text{ kgf}$ a una distancia $x$ del soporte para contrarrestar el giro.

Planteamos la suma algebraica de momentos respecto de $A$:

$$P_{\text{Pablo}} \cdot d_{\text{Pablo}} = P_{\text{Pepe}} \cdot x$$

$$40\text{ kgf} \cdot 1.5\text{ m} = 50\text{ kgf} \cdot x$$

$$60\text{ kgf}\cdot\text{m} = 50\text{ kgf} \cdot x$$

Despejando la distancia $x$:

$$x = \frac{60\text{ kgf}\cdot\text{m}}{50\text{ kgf}} = 1.2\text{ m}$$



### 3. ⬆️ Condición de Equilibrio de Fuerzas Verticales ($\sum F_y = 0$)

Para hallar la fuerza de reacción que soporta el apoyo ($F_v$), sumamos todas las fuerzas verticales que actúan hacia abajo:

$$F_v = P_{\text{barra}} + P_{\text{Pablo}} + P_{\text{Pepe}}$$

$$F_v = 10\text{ kgf} + 40\text{ kgf} + 50\text{ kgf} = 100\text{ kgf}$$

#### ✅ Conclusión del Problema 2
* **Distancia a la que debe estar sentado Pepe:** $x = 1.2\text{ m}$
* **Fuerza que soporta el soporte:** $F_v = 100\text{ kgf}$
* **Opción correcta:** **Opción C: $x = 1.2\text{ m}$ y $F_v = 100\text{ kgf}$**



## 🏗️ Problema 3: Viga Apoyada con Bloque y Peso Propio

### 1. 📋 Planteo y Datos del Problema

* **📏 Viga homogénea:**
  * Peso de la viga: $P_{\text{viga}} = 20\text{ kgf}$
  * Longitud total de la viga: $L = AD + DB + BC = 2\text{ m} + 4\text{ m} + 2\text{ m} = 8\text{ m}$
  * Por ser homogénea, su peso se aplica en su centro de gravedad ($CG$), exactamente en el punto medio ($4\text{ m}$ desde el extremo $A$).
* **📦 Bloque sobre la viga:**
  * Peso del bloque: $P_{\text{bloque}} = 5\text{ kgf}$
  * Ubicación del bloque: punto $D$, situado a $2\text{ m}$ del apoyo $A$.
* **📍 Apoyos y distancias:**
  * Apoyo $A$: a $0\text{ m}$ del extremo izquierdo ($x_A = 0\text{ m}$)
  * Apoyo $B$: a $x_B = AD + DB = 2\text{ m} + 4\text{ m} = 6\text{ m}$ desde el extremo $A$
  * Distancia entre apoyos: $AB = 6\text{ m}$



### 2. 🔄 Sumatoria de Momentos respecto al Punto $A$ ($\sum M_F^A = 0$)

Tomando el punto $A$ como centro de momentos y aplicando la convención de signos (sentido horario $-$ y sentido antihorario $+$):

1. **Momento del bloque ($P_{\text{bloque}}$):**
   * Distancia a $A$: $AD = 2\text{ m}$
   * Produce giro en sentido horario:
     $$M_{\text{bloque}}^A = -P_{\text{bloque}} \cdot AD = -5\text{ kgf} \cdot 2\text{ m} = -10\text{ kgf}\cdot\text{m}$$

2. **Momento del peso propio de la viga ($P_{\text{viga}}$):**
   * El centro de gravedad está a $4\text{ m}$ de $A$.
   * Produce giro en sentido horario:
     $$M_{\text{viga}}^A = -P_{\text{viga}} \cdot 4\text{ m} = -20\text{ kgf} \cdot 4\text{ m} = -80\text{ kgf}\cdot\text{m}$$

3. **Momento de la reacción en el apoyo $B$ ($F_{vB}$):**
   * Distancia a $A$: $AB = 6\text{ m}$
   * La reacción empuja hacia arriba, produciendo giro en sentido antihorario:
     $$M_{F_{vB}}^A = +F_{vB} \cdot AB = +F_{vB} \cdot 6\text{ m}$$

Planteamos el equilibrio de momentos:

$$\sum M_F^A = -10\text{ kgf}\cdot\text{m} - 80\text{ kgf}\cdot\text{m} + F_{vB} \cdot 6\text{ m} = 0$$

$$-90\text{ kgf}\cdot\text{m} + F_{vB} \cdot 6\text{ m} = 0$$

$$F_{vB} \cdot 6\text{ m} = 90\text{ kgf}\cdot\text{m}$$

$$F_{vB} = \frac{90\text{ kgf}\cdot\text{m}}{6\text{ m}} = 15\text{ kgf}$$



### 3. ⬆️ Sumatoria de Fuerzas Verticales ($\sum F_y = 0$)

Para mantener el equilibrio de traslación en el eje vertical:

$$\sum F_y = F_{vA} + F_{vB} - P_{\text{bloque}} - P_{\text{viga}} = 0$$

$$F_{vA} + 15\text{ kgf} - 5\text{ kgf} - 20\text{ kgf} = 0$$

$$F_{vA} + 15\text{ kgf} - 25\text{ kgf} = 0$$

$$F_{vA} = 10\text{ kgf}$$

#### ✅ Conclusión del Problema 3
* **Reacciones de vínculo:** $F_{vA} = 10\text{ kgf}$ y $F_{vB} = 15\text{ kgf}$
* **Opción seleccionada:** **Opción B: $F_{vA} = 10\text{ kgf}$ y $F_{vB} = 15\text{ kgf}$**
