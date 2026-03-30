# 📝 Resolución: Autoevaluación de Ecuaciones Diferenciales Homogéneas

A continuación, presento la resolución detallada de la autoevaluación, basada en los métodos de **sustitución** y **verificación de grado de homogeneidad** estudiados en el material de Zill y los apuntes de la cátedra. 📚

---

### 🔍 Pregunta 1: Análisis de $\frac{dy}{dx} = \frac{y(\ln y - \ln x - 1)}{x}$

Para determinar si es homogénea, analizamos la función $f(x,y) = \frac{y(\ln y - \ln x - 1)}{x}$.

* **Propiedad de logaritmos:** $\ln y - \ln x = \ln\left(\frac{y}{x}\right)$.
* **Reescritura:** $f(x,y) = \frac{y}{x} \left[\ln\left(\frac{y}{x}\right) - 1\right]$.
* **Verificación:** Como la función depende exclusivamente del cociente $\frac{y}{x}$, es una función homogénea de **grado 0**.

✅ **Respuestas correctas:**
1. Es homogénea porque la función se puede escribir como una función que depende del cociente $y/x$.
2. Es homogénea porque la función es una función homogénea de grado 0.

---

### 🧬 Pregunta 2: Solución de $\frac{dy}{dx} = \frac{x-y}{x+y}$

Este ejercicio utiliza el método de sustitución $y = ux$ (donde $dy = u\,dx + x\,du$):

1.  **Sustitución:** $u + x\frac{du}{dx} = \frac{x - ux}{x + ux} = \frac{1-u}{1+u}$.
2.  **Separación de variables:** $x\frac{du}{dx} = \frac{1-u}{1+u} - u = \frac{1-2u-u^2}{1+u}$.
3.  **Integración:** $\int \frac{1+u}{1-2u-u^2} du = \int \frac{1}{x} dx \implies -\frac{1}{2} \ln|1-2u-u^2| = \ln|x| + C$.
4.  **Retorno a variables originales ($u = y/x$):** $\frac{1}{\sqrt{1 - 2(y/x) - (y/x)^2}} = Ax$.
5.  **Simplificación:** $\sqrt{\frac{x^2}{x^2 - 2xy - y^2}} = Ax$.

🎯 **Respuesta correcta:**
$$\sqrt{\frac{x^{2}}{x^{2}-2xy-y^{2}}}=A \cdot x$$

---

### 🔄 Pregunta 3: Transformación de la ecuación

La teoría de Zill (pág. 70) y los apuntes confirman que el cambio de variable $y=ux$ (o $x=vy$) transforma una ecuación diferencial con funciones homogéneas del mismo grado en una de **variables separables**.

✅ **Respuesta correcta:**
**Verdadero**

---

### 📐 Pregunta 4: Análisis de $\frac{x^3 - y^3}{x}dx + 3xy \, dy = 0$

Analizamos los grados de $M(x,y)$ y $N(x,y)$:

* **$M(x,y) = \frac{x^3 - y^3}{x} = x^2 - \frac{y^3}{x}$:**
    $M(tx, ty) = (tx)^2 - \frac{(ty)^3}{tx} = t^2x^2 - t^2\frac{y^3}{x} = t^2 M(x,y)$. Es de **grado 2**.
* **$N(x,y) = 3xy$:**
    $N(tx, ty) = 3(tx)(ty) = t^2(3xy) = t^2 N(x,y)$. Es de **grado 2**.

Como ambas funciones son homogéneas del mismo grado, la ecuación es homogénea.

✅ **Respuesta correcta:**
Es homogénea porque las funciones $M(x,y)$ y $N(x,y)$ son homogéneas del mismo grado.

---

### 📏 Pregunta 5: Grado de la función $f(x,y) = \frac{\sqrt{x^2 + y^2}}{x}$

Evaluamos $f(tx, ty)$ para determinar el grado $n$:

$$f(tx, ty) = \frac{\sqrt{(tx)^2 + (ty)^2}}{tx} = \frac{\sqrt{t^2(x^2 + y^2)}}{tx} = \frac{t\sqrt{x^2 + y^2}}{tx} = \frac{\sqrt{x^2 + y^2}}{x}$$

**Resultado:** $f(tx, ty) = t^0 f(x,y)$.

🎯 **Respuesta correcta:**
Es una función homogénea de **grado 0**.

---
