# 📘 Resumen: Ecuaciones Diferenciales Homogéneas

Resumen estructurado con los conceptos clave a dominar, apuntes teóricos y videos de Khan Academy.

---

## 1. ¿Qué es una Función Homogénea? 🧐

Para saber si una ecuación diferencial es homogénea, primero debes evaluar si sus funciones componentes lo son.

* **Definición:** Una función $z=f(x,y)$ es homogénea de grado $n$ si y solo si se verifica que $f(tx, ty) = t^n \cdot f(x,y)$ para todo $t$ real.
* **Ejemplo de Zill:** La función $f(x,y) = x^3 + y^3$ es una función homogénea de grado 3.

---

## 2. Ecuaciones Diferenciales Homogéneas 📐

Una ecuación diferencial de primer orden es homogénea si cumple con alguna de estas condiciones:

* **Forma Diferencial:** Tiene la forma $M(x,y)dx + N(x,y)dy = 0$, donde $M(x,y)$ y $N(x,y)$ son funciones homogéneas exactamente del **mismo grado**.
* **Forma de Razón:** La función principal se puede expresar dependiendo únicamente de la razón $\frac{y}{x}$ o $\frac{x}{y}$, tomando la forma $\frac{dy}{dx} = F\left(\frac{y}{x}\right)$.

---

## 3. El Método de Resolución: Sustitución 🔄

El objetivo principal es transformar la ecuación original en una nueva que se pueda resolver por **variables separables**.

* **Sustitución Clásica:** Se utiliza $y = u \cdot x$.
* **Diferenciales:** Al aplicar el cambio, debes reemplazar $dy$ usando la regla de la cadena: $dy = u \, dx + x \, du$.
* **Aclaración de Zill:** Aunque cualquier sustitución es válida, es conveniente usar $x = vy$ (con $dx = v \, dy + y \, dv$) si la función $M(x,y)$ es más sencilla que $N(x,y)$.

---

## 4. Aportes de los Videos Sugeridos 🎥

### 🎬 Video 1: Teoría y Ejemplo Básico
* Enfatiza que, tras el cambio de variables, la ecuación resultante se resuelve por variables separables.
* Aborda el ejemplo $\frac{dy}{dx} = \frac{x+y}{x}$.
* Muestra cómo dividir la fracción entre $x$ para evidenciar el término $\frac{y}{x}$ y aplicar $y = bx$.
* **URL:** [http://www.youtube.com/watch?v=yJ-R7xObFV4](http://www.youtube.com/watch?v=yJ-R7xObFV4)

### 🎬 Video 2: Ejercicio Elaborado
* Resuelve $\frac{dy}{dx} = \frac{x^2+3y^2}{2xy}$.
* Utiliza un **"uno tramposo"** (multiplicando por $\frac{1}{x^2}$) para visualizar la sustitución $v = \frac{y}{x}$.
* Tras integrar y agrupar logaritmos, llega a la solución implícita: $x^2 + y^2 - Cx^3 = 0$.
* **URL:** [http://www.youtube.com/watch?v=ld8aUGc7moo](http://www.youtube.com/watch?v=ld8aUGc7moo)

---

## 💡 Nota de Estudio

Tanto los apuntes como los videos coinciden en que el verdadero reto no es la sustitución en sí, sino ser **metódico con el álgebra** al agrupar términos y aplicar correctamente los métodos de integración (como fracciones simples) al final del proceso.

---

**¿Te gustaría que resolvamos juntos, paso a paso, el primer ejercicio de tu guía $((x^2-y^2)dx + 3xy \, dy = 0)$ para poner en práctica esta teoría?** 🚀

---
*Recuerda que para desbloquear la funcionalidad completa de todas las aplicaciones, debes habilitar la actividad en las aplicaciones de Gemini.*

---
