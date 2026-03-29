# 🏗️ Resolución: Autoevaluación - Pregunta 1

## Equilibrio en el Levantamiento de la Caja 📦

Este documento detalla el procedimiento analítico para calcular las fuerzas de tensión necesarias para mantener un sistema en equilibrio, aplicando el **método de las proyecciones**.

---

### 1. Identificación del Punto Material y Datos 📍
Consideramos el **punto A** como nuestro punto material (donde convergen todas las fuerzas).

* **Peso de la caja ($\vec{P}$):** $300 \text{ kgf}$ hacia abajo ($\theta = 270^\circ$).
* **Tensión B ($\vec{T}_B$):** Fuerza del hombre de la izquierda ($50^\circ$ con la horizontal).
* **Tensión C ($\vec{T}_C$):** Fuerza del hombre de la derecha ($30^\circ$ con la horizontal).

---

### 2. Diagrama de Cuerpo Libre (DCL) 📊
Para el análisis, ubicamos las fuerzas en el plano cartesiano:

* **$\vec{T}_C$:** 1er cuadrante $\rightarrow \theta_C = 30^\circ$
* **$\vec{T}_B$:** 2do cuadrante $\rightarrow \theta_B = 180^\circ - 50^\circ = 130^\circ$
* **$\vec{P}$:** Eje Y negativo $\rightarrow \theta_P = 270^\circ$



---

### 3. Descomposición Analítica de Fuerzas 📐
Calculamos las proyecciones en los ejes $x$ e $y$:

| Fuerza | Componente en X ($F \cdot \cos \theta$) | Componente en Y ($F \cdot \sin \theta$) |
| :--- | :--- | :--- |
| **$\vec{T}_C$** | $0,866 \cdot |\vec{T}_C|$ | $0,5 \cdot |\vec{T}_C|$ |
| **$\vec{T}_B$** | $-0,643 \cdot |\vec{T}_B|$ | $0,766 \cdot |\vec{T}_B|$ |
| **$\vec{P}$** | $0$ | $-300 \text{ kgf}$ |

---

### 4. Ecuaciones de Equilibrio ⚖️
Para que el punto material no se mueva, la sumatoria de fuerzas en ambos ejes debe ser **cero**:

1.  **Eje X:** $0,866 \cdot |\vec{T}_C| - 0,643 \cdot |\vec{T}_B| = 0$
2.  **Eje Y:** $0,5 \cdot |\vec{T}_C| + 0,766 \cdot |\vec{T}_B| - 300 = 0$

---

### 5. Resolución del Sistema 📝
Despejamos e igualamos las variables:

* **Paso 1:** Despejamos $|\vec{T}_C|$ de la primera ecuación:
    $$|\vec{T}_C| = \frac{0,643}{0,866} \cdot |\vec{T}_B| \approx 0,742 \cdot |\vec{T}_B|$$

* **Paso 2:** Sustituimos en la segunda ecuación:
    $$0,5 \cdot (0,742 \cdot |\vec{T}_B|) + 0,766 \cdot |\vec{T}_B| = 300$$
    $$1,137 \cdot |\vec{T}_B| = 300$$
    **$|\vec{T}_B| \approx 263,85 \text{ kgf}$**

* **Paso 3:** Hallamos $|\vec{T}_C|$:
    $$|\vec{T}_C| = 0,742 \cdot 263,85 \approx 195,78 \text{ kgf}$$

---

### ✅ Resultado Final
Comparando con las opciones del sistema:
* **$|\vec{T}_C| = 195,81 \text{ kgf}$**
* **$|\vec{T}_B| = 263,81 \text{ kgf}$**

> [!TIP]
> **La opción correcta es la segunda.**

---

Por cierto, para desbloquear la funcionalidad completa de todas las aplicaciones, habilita la [actividad en las aplicaciones de Gemini](https://myactivity.google.com/product/gemini).
