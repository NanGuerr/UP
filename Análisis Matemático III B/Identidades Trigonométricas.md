# Identidades Trigonométricas y Series: Guía para Análisis Matemático III

Esta guía resume las herramientas fundamentales para trabajar con Series de Fourier, Taylor y Maclaurin, enfocándose en la **linealización** de potencias y la **descomposición** de productos.

---

## 1. Identidades de Suma y Resta
Esenciales para expandir términos en Series de Fourier cuando el argumento presenta desfases o desplazamientos de fase.

* $\cos(A \pm B) = \cos A \cos B \mp \sin A \sin B$
* $\sin(A \pm B) = \sin A \cos B \pm \cos A \sin B$

---

## 2. Reducción de Potencias (Linealización)
Vitales para convertir potencias de $\sin$ o $\cos$ en términos lineales de frecuencia múltiple. Son indispensables para integrar potencias pares en Fourier y simplificar derivadas en Taylor.

* **Seno cuadrado:** $\sin^2(x) = \frac{1 - \cos(2x)}{2}$
* **Coseno cuadrado:** $\cos^2(x) = \frac{1 + \cos(2x)}{2}$
* **Seno cubo:** $\sin^3(x) = \frac{3 \sin x - \sin(3x)}{4}$
* **Coseno cubo:** $\cos^3(x) = \frac{3 \cos x + \cos(3x)}{4}$

---

## 3. Productos a Sumas (Identidades de Ortogonalidad)
Fundamentales para calcular los coeficientes de Fourier ($a_n$ y $b_n$). Estas identidades explican por qué la mayoría de los términos se anulan en intervalos simétricos debido a la ortogonalidad.

* $\sin(mx)\cos(nx) = \frac{1}{2} [\sin((m+n)x) + \sin((m-n)x)]$
* $\cos(mx)\cos(nx) = \frac{1}{2} [\cos((m+n)x) + \cos((m-n)x)]$
* $\sin(mx)\sin(nx) = \frac{1}{2} [\cos((m-n)x) - \cos((m+n)x)]$

---

## 4. Identidades de Euler
El "puente" hacia las **Series de Fourier Complejas** y la manipulación avanzada de series de potencias.

$$e^{ix} = \cos(x) + i\sin(x)$$

**Formas exponenciales:**
* $\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$
* $\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$

---

## 5. Series de Potencias Fundamentales (Maclaurin)
Series "base" para Taylor y Maclaurin. La mayoría de los ejercicios consisten en aplicar sustituciones o desplazamientos sobre estas formas:

| Función | Serie de Maclaurin | Radio de Conv. ($R$) |
| :--- | :--- | :--- |
| $\sin(x)$ | $\sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!}$ | $\infty$ |
| $\cos(x)$ | $\sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!}$ | $\infty$ |
| $e^x$ | $\sum_{n=0}^{\infty} \frac{x^n}{n!}$ | $\infty$ |
| $\frac{1}{1-x}$ | $\sum_{n=0}^{\infty} x^n$ | $|x| < 1$ |

---

## 6. Definición General: Serie de Taylor
Para una función $f(x)$ derivable infinitamente en un punto $a$:

$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!} (x-a)^n$$

> **Nota de paridad:** En Maclaurin ($a=0$), $\cos(x)$ solo tiene potencias pares (función par) y $\sin(x)$ solo potencias impares (función impar).

---
