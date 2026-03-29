# 📚 Guía de Estudio: Módulo 4 - Estática del Punto Material

## 1. Concepto de Fuerza y Carácter Vectorial 🏹
La estática estudia los cuerpos en equilibrio. Todo comienza con la **fuerza**, que se identifica por sus efectos: **deformación** o **cambio en el movimiento** (velocidad).

* **Naturaleza Vectorial:** Una fuerza no es solo un número. Para definirla necesitas:
    * 📍 **Punto de aplicación**
    * 📏 **Módulo** (valor numérico)
    * 🧭 **Dirección** (recta sobre la que actúa)
    * ➡️ **Sentido** (hacia dónde apunta)
* **Punto Material:** Es un modelo donde simplificamos el objeto a un punto sin dimensiones (extensión nula). Aquí, todas las fuerzas se aplican en el mismo lugar.

---

## 2. Sistemas de Fuerzas: Resultante y Equilibrante ⚖️
Cuando varias fuerzas actúan juntas, forman un **sistema**.

| Concepto | Definición | Relación Matemática |
| :--- | :--- | :--- |
| **Resultante ($\vec{R}$)** | Es la suma vectorial de todas las fuerzas aplicadas. | $\vec{R} = \sum \vec{F}_i$ |
| **Equilibrante ($\vec{E}$)** | Fuerza necesaria para que el sistema esté en reposo. | $\vec{E} = -\vec{R}$ |

> [!IMPORTANT]
> **Unidades comunes:** Newton (**N**) y Kilogramo-fuerza (**kgf**).
> Recuerda que para el equilibrio: $\vec{R} + \vec{E} = 0$.

---

## 3. Condiciones de Equilibrio 🛑
Un punto material está en equilibrio si, y solo si, la suma de todas las fuerzas que actúan sobre él es igual a cero:

$$\sum_{i=1}^{n} \vec{F}_i = 0$$

Para el análisis, asumimos que el objeto permanece inmóvil respecto a nuestro sistema de referencia.

---

## 4. Método de Proyecciones (Análisis Analítico) 📐
Para resolver problemas, descomponemos los vectores en un plano cartesiano ($x$, $y$).

### Descomposición de componentes:
* **Eje X:** $F_{ix} = |\vec{F}_i| \cdot \cos \theta$
* **Eje Y:** $F_{iy} = |\vec{F}_i| \cdot \operatorname{sen} \theta$

### Ecuaciones de Equilibrio:
Para que el sistema sea estático, la suma en cada eje debe ser nula por separado:
1.  $R_x = \sum F_{ix} = 0$
2.  $R_y = \sum F_{iy} = 0$

---

## 5. Fuerzas de Vínculo: Tensiones ⛓️
En muchos ejercicios, las fuerzas se transmiten a través de agentes mecánicos.

* **Tensión ($T$):** Es la fuerza de tracción que recorre un cable, soga o cuerda.
* **Dirección:** Siempre actúa en la misma línea que la cuerda.
* **Función:** Restringe el movimiento del cuerpo puntual.

---

## 📖 Nota sobre la Bibliografía (Tipler & Mosca)
⚠️ **¡Atención!** El fragmento de las páginas 341-349 trata sobre la *Conservación del Momento Angular*.
* **En este módulo:** Nos enfocamos en la **Estática**, donde lo vital es que la suma de fuerzas sea cero ($\sum \vec{F} = 0$).
* **Relación:** El principio de conservación indica que si el momento externo es cero, el momento angular es constante. Sin embargo, para el punto material, priorizamos el equilibrio de traslación.

---
