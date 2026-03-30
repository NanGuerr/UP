# 📝 Guía de Ejercicios: Ecuaciones Diferenciales Ordinarias

Este documento contiene una recopilación de ejercicios sobre **Ecuaciones de Variables Separables** y sus respectivas soluciones detalladas.

---

## 📑 Parte 1: Resolución de Ecuaciones Diferenciales
**Consigna:** Resolver las siguientes ecuaciones diferenciales.

| Ejercicio | Ecuación Diferencial | Solución General |
| :--- | :--- | :--- |
| **a)** 🟢 | $y^{\prime}=\frac{2x}{y}$ | $|y|=\sqrt{2x^{2}+C}$ |
| **b)** 🔵 | $\frac{dy}{dx}=1+y$ | $y=C\cdot e^{x}-1$ |
| **c)** 🟡 | $x\cdot ydx+e^{-x^{2}}(y^{2}-1)dy=0$ | $\frac{y^{2}}{2}-ln|y|=-\frac{1}{2}e^{x^{2}}+C$  |
| **d)** 🟠 | $y^{\prime}=\frac{b^{2}x}{a^{2}y}$ | $\frac{a^{2}y^{2}}{2}=\frac{b^{2}x^{2}}{2}+C$ |
| **e)** 🔴 | $x^{3}\frac{dy}{dx}+y^{2}=0$ | $y=\frac{2x^{2}}{1+2Cx^{2}}$ |
| **f)** 🟣 | $\frac{dy}{dx}=\frac{senx}{cosy}$ | $sen~y=-cosx+C$ |
| **g)** ⚫ | $\frac{dy}{dx}=\frac{y}{2x}$ | $y=C\cdot x^{\frac{1}{2}}$ |
| **h)** ⚪ | $\frac{dy}{dx}=e^{-y}\cdot cos~x$ | $y=ln(sen~x+C)$ |
| **i)** 🟤 | $x\cdot ydx+y^{2}\frac{dy}{dx}=6x$ | $-y^{2}-6y-36ln$| $y-6=x^{2}+C$ |
| **j)** 🟩 | $x\cdot ydx-(x+2)dy=0$ | $y=\frac{c\cdot e^{x}}{(x+2)^{2}}$ |
| **k)** 🟦 | $(xy+x)dx=(x^{2}y^{2}+x^{2}+y^{2}+1)dy$ | $\frac{y^{2}}{2}-y+2ln$|y+1|=\frac{1}{2}ln(x^{2}+1)+C$ |
| **l)** 🟨 | $y\cdot lnx\cdot lnydx+dy=0$ | $y=e^{cx^{x}\cdot e^{-x}}$ |
| **m)** 🟧 | $3e^{x}\cdot tgydx+(2-e^{x})\cdot sec^{2}ydy=0$ | $y=C\cdot(e^{x}-2)^{3}$ |

---

## 🎯 Parte 2: Problemas de Aplicación y Valores Iniciales

### 📍 2. Condición Inicial
**Problema:** Hallar la solución particular de la ecuación $(1+e^{x})\cdot y\cdot y^{\prime}=e^{x}$ que satisface la condición inicial $y(0)=1$.
* **Solución:** $\frac{y^{2}}{2}=ln(1+e^{x})+\frac{1}{2}-ln~2$ 

### 📈 3. Curva y Pendiente Específica
**Problema:** Hallar la ecuación de la curva que pasa por el punto (1; 3) y cuya tangente en el punto (x; y) tiene pendiente igual a $3\frac{y}{x^{2}}$.
* **Solución:** $y=3\cdot e^{3(1-\frac{1}{x})}$

### 🔄 4. Resolución Directa
**Problema:** Resolver la ecuación $(1+y^{2})dx=x~dy$.
* **Solución:** $y=tg(ln|x|+C)$ 

### 🧬 5. Solución General con Exponenciales
**Problema:** Hallar la solución general de la ecuación $e^{-y}(1+y^{\prime})=1$.
* **Solución:** $y=-ln(1-K\cdot e^{x})$ 

### 📉 6. Pendiente Aumentada
**Problema:** Hallar una curva que pase por el punto (0; -2) de modo que la pendiente de la recta tangente sea igual a la ordenada del punto aumentada en 3 unidades.
* **Solución:** $y=e^{x}-3$ 

### 📐 7. Demostración de la Parábola
**Problema:** Demostrar que la curva para la cual la pendiente es proporcional a la abscisa del punto de contacto es una parábola.
* **Solución:** $y=\frac{k\cdot x^{2}}{2}+C$ 

### ⛓️ 8. Pendiente Proporcional al Origen
**Problema:** Hallar la curva para la cual la pendiente es $n$ veces la pendiente de la recta que une ese punto con el origen de coordenadas.
* **Solución:** $y=K\cdot x^{n}$

---
