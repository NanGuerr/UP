## 🧮 Guía Completa: Ecuaciones Diferenciales de Primer Orden de Variables Separables

Las ecuaciones diferenciales ordinarias (EDO) de primer orden de variables separables representan una de las clases más importantes y accesibles dentro del análisis matemático, permitiendo modelar sistemas físicos básicos y fenómenos complejos.

### 📐 Definición y Forma Estándar

Una ecuación diferencial ordinaria de primer orden se dice que es de **variables separables** si se puede expresar de la forma:

$$\frac{dy}{dx} = g(x) \cdot h(y)$$

O expresada de forma equivalente mediante diferenciales:

$$M(x, y) \, dx + N(x, y) \, dy = 0$$

Siempre que los términos puedan reescribirse de tal manera que las variables queden completamente desacopladas en cada miembro de la igualdad.

---

### 📝 Metodología Paso a Paso para la Resolución

El procedimiento estándar para encontrar la solución general comprende tres etapas fundamentales:

1. **Separación de Variables:**
Se agrupan todas las expresiones que contienen a la variable dependiente $y$ con el diferencial $dy$ en un miembro, y todas las expresiones que contienen a la variable independiente $x$ con el diferencial $dx$ en el otro miembro:

$$\frac{1}{h(y)} \, dy = g(x) \, dx$$


2. **Integración de Ambos Miembros:**
Se aplica el operador de integración a ambos lados de la ecuación:

$$\int \frac{1}{h(y)} \, dy = \int g(x) \, dx$$



Al resolver las integrales indefinidas resultantes, se añade una constante de integración $C$ para reflejar la familia de curvas que satisfacen la ecuación.
3. **Despeje y Simplificación de la Solución:**
Se despeja la variable $y$ siempre que sea posible para obtener una solución explícita, o se conserva la forma implícita $G(y) = F(x) + C$.

---

### 💡 Ejemplo Práctico de Aplicación

Tomando como referencia el ejercicio de análisis algebraico:


$$x \cdot y^2 dx + (y + x^2 y) dy = 0$$

* **Paso 1 (Factorización y Separación):**
Se factoriza $y$ en el segundo término obteniendo $x \cdot y^2 dx + y(1 + x^2) dy = 0$, para luego reordenar y dividir, separando las variables de la forma $\frac{1}{y} dy = -\frac{x}{1 + x^2} dx$.
* **Paso 2 (Integración):**
Se integran ambos miembros: $\int \frac{1}{y} dy = -\int \frac{x}{1 + x^2} dx$, lo que da como resultado $\ln\vert{}y\vert{} = -\frac{1}{2} \ln(1 + x^2) + C$.
* **Paso 3 (Despeje final):**
Aplicando propiedades logarítmicas y exponenciales, se determina la solución explícita en su forma simplificada $y = \frac{K}{\sqrt{1 + x^2}}$.

---

[Ejemplo de examen de ecuaciones diferenciales separables](https://www.youtube.com/watch?v=neA46uHip4s)

Este video muestra la resolución detallada paso a paso de un ejercicio de examen sobre ecuaciones diferenciales de variables separables con condiciones iniciales.
