# 📝 Resolución de Ecuación Diferencial de Variables Separables

Resumen del procedimiento paso a paso para hallar la solución general de la ecuación diferencial propuesta, aplicando técnicas de factorización, integración por sustitución y propiedades logarítmicas. 🧠

---

## 📑 Consigna
Hallar la solución general de la siguiente ecuación:
$$x y^2 \, dx + (y + x^2 y) \, dy = 0$$

---

## 🛠️ Paso 1: Factorización y separación de variables
El objetivo es llevar la ecuación a la forma $g(x) \, dx = h(y) \, dy$.

1.  **Factor común:** Observamos el segundo término $(y + x^2 y) \, dy$ y extraemos factor común $y$: 📂
    $$x y^2 \, dx + y(1 + x^2) \, dy = 0$$

2.  **Trasposición:** Restamos en ambos lados para separar los términos: ⚖️
    $$y(1 + x^2) \, dy = -x y^2 \, dx$$

3.  **Aislamiento:** Trasponemos los términos para que cada diferencial esté con su variable correspondiente (dividimos por $y^2$ y por $(1 + x^2)$): 🔄
    $$\frac{y}{y^2} \, dy = -\frac{x}{1 + x^2} \, dx$$

4.  **Simplificación:** Simplificamos la expresión de la izquierda: ✨
    $$\frac{1}{y} \, dy = -\frac{x}{1 + x^2} \, dx$$

---

## 🧪 Paso 2: Integración de ambos miembros
Aplicamos la integral en ambos lados de la igualdad: 🔍

$$\int \frac{1}{y} \, dy = - \int \frac{x}{1 + x^2} \, dx$$

### 🔹 Resolución de la integral izquierda
Esta es una integral inmediata:
$$\int \frac{1}{y} \, dy = \ln|y|$$

### 🔸 Resolución de la integral derecha
Para la integral $\int \frac{x}{1 + x^2} \, dx$, utilizaremos el método de sustitución.

> **📌 POR TABLA:**
> Siendo la forma $\int \frac{x}{a^2 + x^2} dx = \frac{1}{2} \ln(a^2 + x^2) + C$

**Desarrollo por sustitución:** 📝
* Sea $u = 1 + x^2 \Rightarrow du = 2x \, dx \Rightarrow \frac{du}{2} = x \, dx$
* Sustituyendo: $\frac{1}{2} \int \frac{du}{u} = \frac{1}{2} \ln|1 + x^2|$

---

## 🏁 Paso 3: Obtención de la solución general
Unimos ambos resultados e incluimos la constante arbitraria $C$: 🧩

$$\ln|y| = -\frac{1}{2} \ln(1 + x^2) + C$$

### 🧬 Simplificación (Propiedades de logaritmos)
Para presentar la solución de forma explícita, realizamos lo siguiente:

1.  **Propiedad del exponente:** Pasamos el coeficiente como exponente $n \cdot \ln(a) = \ln(a^n)$:
    $$\ln|y| = \ln(1 + x^2)^{-1/2} + C$$

2.  **Función exponencial:** Aplicamos la base $e$ en ambos lados: 📈
    $$|y| = e^{\ln(1 + x^2)^{-1/2} + C}$$
    $$|y| = e^{\ln(1 + x^2)^{-1/2}} \cdot e^C$$

3.  **Definición de constante:** Definimos una nueva constante $K = e^C$: 🔑
    $$y = K \cdot (1 + x^2)^{-1/2}$$

---

## ✅ Solución General Final
Transformando el exponente negativo en fracción y raíz cuadrada: 🏆

$$y = \frac{K}{\sqrt{1 + x^2}}$$

*(Donde $K$ es una constante real).*

---

## 🔍 Análisis Profundo del Desarrollo

### 1. Detalle de la sustitución
La integral $\int \frac{x}{1 + x^2} \, dx$ se resuelve notando que el numerador es casi la derivada del denominador ($2x$). Al ajustar con $1/2$, logramos la forma logarítmica. 📐

### 2. Transformación de la Solución
* **Cancelación:** En el lado izquierdo, $e^{\ln|y|} = |y|$ porque son funciones inversas. 🔄
* **Exponente negativo:** $(1 + x^2)^{-1/2}$ equivale a $\frac{1}{\sqrt{1+x^2}}$.
* **Interpretación geométrica:** Este resultado representa una familia de curvas con forma de "campana" suavizada. 🔔
