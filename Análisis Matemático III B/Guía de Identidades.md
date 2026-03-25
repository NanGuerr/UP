# Guía Completa de Identidades y Series: Análisis Matemático III

Esta guía resume las herramientas fundamentales para trabajar con Series de Fourier, Taylor y Maclaurin, enfocándose en la **linealización**, **descomposición** y **desplazamiento de centros**.

---

## 1. Identidades de Reducción de Potencia (Linealización)
Vitales para convertir potencias de $\sin$ o $\cos$ en términos lineales. Indispensables para integrar potencias pares en Fourier y simplificar derivadas en Taylor.

* **Seno cuadrado:** $\sin^2(x) = \frac{1 - \cos(2x)}{2}$
* **Coseno cuadrado:** $\cos^2(x) = \frac{1 + \cos(2x)}{2}$
* **Seno cubo:** $\sin^3(x) = \frac{3 \sin x - \sin(3x)}{4}$
* **Coseno cubo:** $\cos^3(x) = \frac{3 \cos x + \cos(3x)}{4}$

---

## 2. Identidades de Producto a Suma (Identidades de Ortogonalidad)
Fundamentales para calcular los coeficientes de Fourier ($a_n$ y $b_n$). Estas identidades explican la ortogonalidad en intervalos simétricos.

* $\sin(mx)\cos(nx) = \frac{1}{2} [\sin((m+n)x) + \sin((m-n)x)]$
* $\cos(mx)\cos(nx) = \frac{1}{2} [\cos((m+n)x) + \cos((m-n)x)]$
* $\sin(mx)\sin(nx) = \frac{1}{2} [\cos((m-n)x) - \cos((m+n)x)]$

---

## 3. Identidades de Euler y Formas Exponenciales
El puente hacia las **Series de Fourier Complejas** y la manipulación de series de potencias.

$$e^{ix} = \cos(x) + i\sin(x)$$

* $\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$
* $\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$

---

## 4. Identidades de Suma y Resta
Esenciales para expandir términos en Series de Fourier cuando el argumento presenta desfases o desplazamientos de fase.

* $\cos(A \pm B) = \cos A \cos B \mp \sin A \sin B$
* $\sin(A \pm B) = \sin A \cos B \pm \cos A \sin B$
  
---

## 5. Identidades de Suma y Resta (Desplazamiento de Centro)
Utilizadas para expandir funciones en **Series de Taylor centradas en $x = a$** mediante el truco $x = (x-a) + a$.

### Coseno de la suma/resta
* $\cos(x) = \cos((x-a) + a) = \cos(x-a)\cos(a) - \sin(x-a)\sin(a)$
* $\cos(x) = \cos((x-a) - a) = \cos(x-a)\cos(a) + \sin(x-a)\sin(a)$

### Seno de la suma/resta
* $\sin(x) = \sin((x-a) + a) = \sin(x-a)\cos(a) + \cos(x-a)\sin(a)$
* $\sin(x) = \sin((x-a) - a) = \sin(x-a)\cos(a) - \cos(x-a)\sin(a)$

### Tangente de la suma
* $\tan(A \pm B) = \frac{\tan A \pm \tan B}{1 \mp \tan A \tan B}$

---

## 6. Series de Potencias Fundamentales (Maclaurin)
Series de referencia centradas en $a=0$:

| Función | Serie de Maclaurin | Radio de Conv. |
| :--- | :--- | :--- |
| $\sin(x)$ | $\sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!}$ | $R = \infty$ |
| $\cos(x)$ | $\sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!}$ | $R = \infty$ |
| $e^x$ | $\sum_{n=0}^{\infty} \frac{x^n}{n!}$ | $R = \infty$ |
| $\frac{1}{1-x}$ | $\sum_{n=0}^{\infty} x^n$ | $|x| < 1$ |

> **Aplicación Práctica:** Para hallar Taylor de $\cos(x)$ en $a = \pi/4$, aplica la identidad de suma y luego sustituye $u = (x - \pi/4)$ en las series de Maclaurin de $\cos(u)$ y $\sin(u)$.

---
