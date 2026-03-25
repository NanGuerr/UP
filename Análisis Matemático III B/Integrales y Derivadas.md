# 📔 Formulario Integrales y Derivadas

Este documento contiene las herramientas de cálculo esenciales para resolver problemas de Series de Fourier, Transformadas de Laplace y Análisis Complejo. 🧠

---

## 1. 📂 Integrales de la Tabla 📄

Estas integrales son el "pan de cada día" al calcular coeficientes de Fourier y resolver ecuaciones diferenciales. 🛠️

### 🔵 Funciones Trigonométricas (con $x$ y $x^2$)
* **Coseno simple:** $\int \cos(ax)dx = \frac{\sin(ax)}{a} + C$ 🌊
* **Coseno con $x$:** $\int x \cdot \cos(ax)dx = \frac{\cos(ax)}{a^2} + \frac{x \cdot \sin(ax)}{a} + C$ 📐
* **Coseno con $x^2$:** $\int x^2 \cdot \cos(ax)dx = \frac{2x}{a^2} \cdot \cos(ax) + \left(\frac{x^2}{a} - \frac{2}{a^3}\right) \cdot \sin(ax) + C$ 🔄
* **Seno simple:** $\int \sin(ax)dx = -\frac{\cos(ax)}{a} + C$ 📉
* **Seno con $x$:** $\int x \cdot \sin(ax)dx = \frac{\sin(ax)}{a^2} - \frac{x \cdot \cos(ax)}{a} + C$ 📏
* **Seno con $x^2$:** $\int x^2 \cdot \sin(ax)dx = \frac{2x}{a^2} \cdot \sin(ax) + \left(\frac{2}{a^3} - \frac{x^2}{a}\right) \cdot \cos(ax) + C$ 🔄

### 🔴 Funciones Exponenciales
* **Exponencial simple:** $\int e^{ax}dx = \frac{e^{ax}}{a} + C$ ⚡
* **Exponencial con $x$:** $\int x \cdot e^{ax}dx = \frac{e^{ax}}{a} \cdot \left(x - \frac{1}{a}\right) + C$ 📈
* **Exponencial con $x^2$:** $\int x^2 \cdot e^{ax}dx = \frac{e^{ax}}{a} \cdot \left(x^2 - \frac{2x}{a} + \frac{2}{a^2}\right) + C$ 🔝

### 🟣 Combinadas (Exponencial + Trigonométrica)
* **Euler-Cos:** $\int e^{ax} \cdot \cos(bx)dx = \frac{e^{ax}}{a^2+b^2} (a \cdot \cos(bx) + b \cdot \sin(bx)) + C$ 🌀
* **Euler-Sen:** $\int e^{ax} \cdot \sin(bx)dx = \frac{e^{ax}}{a^2+b^2} (a \cdot \sin(bx) - b \cdot \cos(bx)) + C$ 🌀

---

## 2. 📝 Derivadas Frecuentes en Análisis III ⚡

Indispensables para Taylor, Maclaurin y verificar soluciones de EDOs.

| Función $f(x)$ | Derivada $f'(x)$ | Concepto 💡 |
| :--- | :--- | :--- |
| $\ln(u)$ | $\frac{u'}{u}$ | Logaritmo Natural 🪵 |
| $\arctan(u)$ | $\frac{u'}{1+u^2}$ | Arco Tangente 📐 |
| $a^x$ | $a^x \ln(a)$ | Exponencial base $a$ 🔋 |
| $\sinh(x)$ | $\cosh(x)$ | Seno Hiperbólico 🎢 |
| $\cosh(x)$ | $\sinh(x)$ | Coseno Hiperbólico 🎢 |

---

## 3. 🧩 Integrales Adicionales de "Supervivencia" 🆘

Estas no estaban en tu tabla, pero aparecen constantemente en **Análisis IIIB** (especialmente en Transformadas de Laplace y Residuos).

* **Fracciones simples:** $\int \frac{1}{x^2 + a^2} dx = \frac{1}{a} \arctan\left(\frac{x}{a}\right) + C$ 🧩
* **Por partes (General):** $\int u \, dv = uv - \int v \, du$ ✂️
* **Gaussiana (Útil en Probabilidad/Fourier):** $\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}$ 🔔
* **Potencia de $x$ inversa:** $\int \frac{1}{x} dx = \ln|x| + C$ 🪵

---

## 4. 🧪 Identidades de Operadores (Opcional) 🏗️

Si estás viendo **Análisis Complejo** o **Campos**:
* **Derivada de $e^{iz}$:** $\frac{d}{dz}(e^{iz}) = i e^{iz}$ 👻
* **Relación de Euler:** $e^{ix} = \cos(x) + i\sin(x)$ 🌉

---
_Compilado para Ingeniería en Telecomunicaciones_ 📡🎓
