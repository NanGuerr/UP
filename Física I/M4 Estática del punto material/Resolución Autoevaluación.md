# 🏗️ Resolución de Autoevaluación: Estática y Equilibrio

Este documento detalla la resolución técnica de los problemas de equilibrio de fuerzas, aplicando el método de proyecciones y condiciones de equilibrio para un punto material.

---

## 📦 Pregunta 1: Equilibrio en el levantamiento de la caja

**Enunciado:** Los hombres de la figura desean levantar una caja que pesa $300 \text{ Kgf}$. Se debe calcular la fuerza mínima (tensión) que cada uno debe realizar en los puntos B y C. 👷‍♂️💪

### 1. Identificación del Punto Material y Datos 📍
Consideramos el punto **A** como nuestro punto material, ya que es el lugar donde concurren todas las fuerzas.

* **Peso de la caja ($\vec{P}$):** $300 \text{ Kgf}$ hacia abajo ($\theta_P = 270^\circ$). 垂直
* **Tensión $B$ ($\vec{T}_B$):** Ángulo de $50^\circ$ respecto a la horizontal (Izquierda).
* **Tensión $C$ ($\vec{T}_C$):** Ángulo de $30^\circ$ respecto a la horizontal (Derecha).

### 2. Diagrama de Cuerpo Libre (DCL) 📝

Representamos las fuerzas en un sistema de ejes cartesianos:
* $\vec{T}_B$ (2do cuadrante): $\theta_B = 180^\circ - 50^\circ = 130^\circ$.
* $\vec{T}_C$ (1er cuadrante): $\theta_C = 30^\circ$.
* $\vec{P}$ (Eje Y negativo): $270^\circ$.

### 3. Descomposición Analítica de Fuerzas 📐
Calculamos las componentes utilizando el método de las proyecciones:

**Para $\vec{T}_C$:**
* $T_{Cx} = |\vec{T}_C| \cdot \cos(30^\circ) = |\vec{T}_C| \cdot 0,866$
* $T_{Cy} = |\vec{T}_C| \cdot \sin(30^\circ) = |\vec{T}_C| \cdot 0,5$

**Para $\vec{T}_B$:**
* $T_{Bx} = |\vec{T}_B| \cdot \cos(130^\circ) = -|\vec{T}_B| \cdot 0,643$
* $T_{By} = |\vec{T}_B| \cdot \sin(130^\circ) = |\vec{T}_B| \cdot 0,766$

**Para el Peso $\vec{P}$:**
* $P_x = 0$
* $P_y = -300 \text{ Kgf}$

### 4. Ecuaciones de Equilibrio ⚖️
Para el equilibrio, $\sum \vec{F} = 0$:

* **Eje X:** $0,866 \cdot |\vec{T}_C| - 0,643 \cdot |\vec{T}_B| = 0$ (Ecuación 1)
* **Eje Y:** $0,5 \cdot |\vec{T}_C| + 0,766 \cdot |\vec{T}_B| - 300 = 0$ (Ecuación 2)

### 5. Resolución del Sistema 🚀
1.  **Despejamos $|\vec{T}_C|$ de la Ec. 1:**
    $$|\vec{T}_C| \approx 0,742 \cdot |\vec{T}_B|$$
2.  **Sustituimos en la Ec. 2:**
    $$0,5 \cdot (0,742 \cdot |\vec{T}_B|) + 0,766 \cdot |\vec{T}_B| = 300$$
    $$1,137 \cdot |\vec{T}_B| = 300 \Rightarrow |\vec{T}_B| \approx 263,85 \text{ Kgf}$$
3.  **Calculamos $|\vec{T}_C|$:**
    $$|\vec{T}_C| = 0,742 \cdot 263,85 \approx 195,78 \text{ Kgf}$$

**Resultado Final:**
* $|\vec{T}_C| = 195,81 \text{ Kgf}$
* $|\vec{T}_B| = 263,81 \text{ Kgf}$
* ✅ **La opción correcta es la segunda.**

---

## 🛑 Pregunta 2: Verificación de Equilibrio de Fuerzas

**Datos del sistema:**
* **Fuerza $F_1$:** $|F_1| = 50 \text{ Kgf}$ a $53^\circ$ (1er cuadrante). ↗️
* **Fuerza $F_3$:** $|F_3| = 42,55 \text{ Kgf}$ a $45^\circ$ del eje Y negativo ($\theta = 315^\circ$). ↘️
* **Fuerza $F_2$:** Horizontal hacia la izquierda ($\theta = 180^\circ$). ⬅️

### 1. Descomposición de Componentes 🔍
* **Componentes de $F_1$:**
    * $F_{1x} = 50 \cdot \cos(53^\circ) \approx 30,09 \text{ Kgf}$
    * $F_{1y} = 50 \cdot \sin(53^\circ) \approx 39,93 \text{ Kgf}$
* **Componentes de $F_3$:**
    * $F_{3x} = 42,55 \cdot \cos(315^\circ) \approx 30,09 \text{ Kgf}$
    * $F_{3y} = 42,55 \cdot \sin(315^\circ) \approx -30,09 \text{ Kgf}$

### 2. Análisis del Equilibrio en el Eje Y ↕️
Dado que $F_2$ es puramente horizontal ($F_{2y} = 0$), el equilibrio vertical depende solo de $F_1$ y $F_3$:

$$\sum F_y = F_{1y} + F_{3y}$$
$$\sum F_y = 39,93 \text{ Kgf} - 30,09 \text{ Kgf} = 9,84 \text{ Kgf}$$

### 3. Conclusión Final ❌
Como $\sum F_y \neq 0$, existe una fuerza resultante hacia arriba que **no puede ser compensada** por una fuerza horizontal como $F_2$.

**Respuesta:** **No es posible** alcanzar el equilibrio.
