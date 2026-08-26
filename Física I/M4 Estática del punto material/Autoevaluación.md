# Resolución Paso a Paso: Estática del Punto Material

Este documento presenta la resolución detallada y paso a paso de los ejercicios correspondientes a las actividades de **Estática del Punto Material**, siguiendo la metodología expuesta en los materiales de referencia (método de las proyecciones y condiciones de equilibrio para un sistema de fuerzas concurrentes).

---

## Actividad 1: El Sistema de Cables y la Caja sobre el Camión

### Enunciado
Los hombres de la figura desean levantar la caja que se halla sobre el camión. Calcular las tensiones de los cables ($T_B$ y $T_C$) sabiendo que la caja pesa $300\text{ kgf}$, y que los ángulos que forman los cables con la horizontal son de $50^\circ$ (cable izquierdo en el punto B) y $30^\circ$ (cable derecho en el punto C).

### Análisis Físico y Modelo
1. **Condición de Equilibrio:** El punto de unión de los cables (punto $A$) se encuentra en reposo (equilibrio estático), por lo que la resultante de todas las fuerzas concurrentes que actúan sobre él debe ser nula:
   $$\sum \vec{F} = \vec{0}$$

2. **Fuerzas intervinientes:**
   * $\vec{T_B}$: Tensión del cable izquierdo, formando un ángulo $\theta_B = 50^\circ$ con el semieje $x$ negativo.
   * $\vec{T_C}$: Tensión del cable derecho, formando un ángulo $\theta_C = 30^\circ$ con el semieje $x$ positivo.
   * $\vec{P}$: Peso de la caja, dirigido verticalmente hacia abajo, con valor $P = 300\text{ kgf}$.

---

### Resolución Analítica (Método de Proyecciones)

#### Paso 1: Determinación de ángulos con el semieje $x$ positivo
* Cable $B$: $\theta_1 = 180^\circ - 50^\circ = 130^\circ$
* Cable $C$: $\theta_2 = 30^\circ$
* Peso $\vec{P}$: $\theta_3 = 270^\circ$ (magnitud $300\text{ kgf}$)

#### Paso 2: Planteo de las ecuaciones de equilibrio
Descomponiendo las fuerzas en los ejes $x$ e $y$:

1. **Eje $x$ ($\sum F_x = 0$):**
   $$-|\vec{T_B}| \cdot \cos(50^\circ) + |\vec{T_C}| \cdot \cos(30^\circ) = 0 \quad \text{--- (Ecuación 1)}$$

2. **Eje $y$ ($\sum F_y = 0$):**
   $$|\vec{T_B}| \cdot \sin(50^\circ) + |\vec{T_C}| \cdot \sin(30^\circ) - P = 0 \quad \text{--- (Ecuación 2)}$$
   
   Sustituyendo $P = 300\text{ kgf}$:
   $$|\vec{T_B}| \cdot \sin(50^\circ) + |\vec{T_C}| \cdot \sin(30^\circ) = 300$$

#### Paso 3: Resolución del sistema de ecuaciones
De la Ecuación (1), despejamos el módulo de $\vec{T_B}$:
$$|\vec{T_B}| = |\vec{T_C}| \cdot \frac{\cos(30^\circ)}{\cos(50^\circ)}$$

Sustituyendo este resultado en la Ecuación (2):
$$\left( |\vec{T_C}| \cdot \frac{\cos(30^\circ)}{\cos(50^\circ)} \right) \cdot \sin(50^\circ) + |\vec{T_C}| \cdot \sin(30^\circ) = 300$$

Operando con los valores trigonométricos:
* $\cos(30^\circ) \approx 0.8660$
* $\cos(50^\circ) \approx 0.6428$
* $\sin(50^\circ) \approx 0.7660$
* $\sin(30^\circ) = 0.5$

Sustituyendo los valores numéricos:
$$|\vec{T_C}| \cdot \left( \frac{0.8660}{0.6428} \right) \cdot 0.7660 + 0.5 \cdot |\vec{T_C}| = 300$$
$$|\vec{T_C}| \cdot (1.3472 \cdot 0.7660) + 0.5 \cdot |\vec{T_C}| = 300$$
$$|\vec{T_C}| \cdot 1.0319 + 0.5 \cdot |\vec{T_C}| = 300$$
$$1.5319 \cdot |\vec{T_C}| = 300$$
$$|\vec{T_C}| = \frac{300}{1.5319} \approx 195.81\text{ kgf}$$

Ahora, calculamos $|\vec{T_B}|$ utilizando la relación obtenida previamente:
$$|\vec{T_B}| = 195.81 \cdot \frac{0.8660}{0.6428} \approx 195.81 \cdot 1.3472 \approx 263.82\text{ kgf}$$

### Resultado Correcto Actividad 1
$$|\vec{T_C}| = 195.81\text{ kgf}, \quad |\vec{T_B}| = 263.81\text{ kgf}$$  
*(Corresponde a la segunda opción de la autoevaluación)*

---

## Actividad 2: Sistema de Fuerzas Concurrentes y Condición de Equilibrio

### Enunciado
Para el sistema de fuerzas de la figura, decidir si es posible encontrar un valor de $\vec{F_2}$ para que el sistema se halle en equilibrio.
* **Datos:**
  * $|\vec{F_1}| = 50\text{ kgf}$ (con un ángulo de $53^\circ$ respecto al semieje $x$ positivo en el 1er cuadrante).
  * $|\vec{F_3}| = 42.55\text{ kgf}$ (con un ángulo de $45^\circ$ respecto al semieje $y$ negativo hacia el 4to cuadrante).
  * $\vec{F_2}$ actúa horizontalmente hacia la izquierda ($180^\circ$).

### Análisis Físico
Para que un sistema de fuerzas concurrentes se encuentre en equilibrio estático, deben cumplirse simultáneamente dos condiciones independientes:
1. $\sum F_x = 0$
2. $\sum F_y = 0$

Analicemos primero el equilibrio en el eje vertical ($y$):
$$\sum F_y = |\vec{F_1}| \cdot \sin(53^\circ) - |\vec{F_3}| \cdot \cos(45^\circ) = 0$$

Sustituyendo los valores numéricos:
* $|\vec{F_1}| \cdot \sin(53^\circ) = 50 \cdot 0.8000 = 40.00\text{ kgf}$
* $|\vec{F_3}| \cdot \cos(45^\circ) = 42.55 \cdot 0.7071 \approx 30.01\text{ kgf}$

Al sumar las fuerzas verticales:
$$\sum F_y = 40.00 - 30.01 = 9.99\text{ kgf} \neq 0$$

### Conclusión Física
Dado que la sumatoria de fuerzas en el eje vertical ($\sum F_y$) **no es cero** ($9.99\text{ kgf} \neq 0$), el sistema **no puede estar en equilibrio** bajo ninguna circunstancia, ya que la fuerza $\vec{F_2}$ (al ser estrictamente horizontal) no tiene componentes verticales para contrarrestar este desequilibrio en el eje $y$.

### Resultado Correcto Actividad 2
* **No es posible.**  
*(Corresponde a la primera opción de la autoevaluación)* [cite: 2]
