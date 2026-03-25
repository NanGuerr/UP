# 📊 Tabla de Desarrollos en Series de Taylor

Este resumen presenta el desarrollo de diversas funciones centradas en un punto específico ($a$), junto con su resultado en forma de sumatoria y su respectivo intervalo de convergencia.

---

### 🔍 Detalles del Desarrollo de Potencias

| Función | Centro ($a$) | Resultado del Desarrollo 🧮 | Intervalo de Convergencia 📍 |
| :--- | :---: | :--- | :--- |
| **Exponencial** $e^{3x}$ 📈 | $-1$ | $\sum_{n=0}^{\infty} \frac{e^{-3} 3^n}{n!} (x+1)^n$ | $(-\infty, \infty)$ |
| **Coseno** $\cos(2x)$ 🎢 | $\pi$ | $\sum_{n=0}^{\infty} \frac{(-1)^n 2^{2n}}{(2n)!} (x-\pi)^{2n}$ | $(-\infty, \infty)$ |
| **Seno** $\sin(5x)$ 🌊 | $-\pi/2$ | $\sum_{n=0}^{\infty} \frac{(-1)^{n+1} 5^{2n}}{(2n)!} (x+\pi/2)^{2n}$ | $(-\infty, \infty)$ |
| **Racional** $\frac{1}{1+7x}$ 🔢 | $21$ | $\sum_{n=0}^{\infty} \frac{(-1)^n 7^n}{148^{n+1}} (x-21)^n$ | $R = 148/7$ |
| **Compuesta** $\frac{9-x}{1+7x}$ ⚖️ | $21$ | $(-12-(x-21)) \cdot \text{Serie anterior}$ | $R = 148/7$ |

---

### 💡 Notas Adicionales
* **Funciones Trascendentes:** Las funciones $e^x$, $\sin(x)$ y $\cos(x)$ tienen un radio de convergencia infinito, lo que significa que el desarrollo es válido para cualquier número real.
* **Series Geométricas:** En las funciones racionales (fracciones), el intervalo está limitado por la distancia al punto donde el denominador se hace cero.
* **Propiedad:** En la función $\frac{9-x}{1+7x}$, el numerador se reescribió en términos de $(x-21)$ para facilitar el producto con la serie de potencias.
