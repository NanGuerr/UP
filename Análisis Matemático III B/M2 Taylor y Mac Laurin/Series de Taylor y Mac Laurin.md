# 📝 Resolución: Actividad de Series de Taylor y Maclaurin
Este documento detalla el desarrollo de funciones mediante series de potencias y sus respectivos intervalos de convergencia.



### 1. Desarrollos a partir de la función Exponencial ($e^x$) 📈
**Base:** $e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!}$ para todo $x \in \mathbb{R}$.

* **a. $e^{-2x}$** * **Sustitución:** $x \to (-2x)$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-2)^n x^n}{n!}$
    * **Intervalo:** $(-\infty, \infty)$
* **b. $e^{x^2}$**
    * **Sustitución:** $x \to x^2$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{x^{2n}}{n!}$
    * **Intervalo:** $(-\infty, \infty)$



### 2. Desarrollos a partir del Coseno ($\cos x$) 🎢
**Base:** $\cos(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!}x^{2n}$ para todo $x \in \mathbb{R}$.

* **a. $\cos(5x)$**
    * **Sustitución:** $x \to 5x$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n 5^{2n}}{(2n)!}x^{2n}$
    * **Intervalo:** $(-\infty, \infty)$
* **b. $\cos(-x^2)$**
    * **Propiedad:** Al ser par, $\cos(-x^2) = \cos(x^2)$.
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!}x^{4n}$
    * **Intervalo:** $(-\infty, \infty)$



### 3. Desarrollos a partir del Seno ($\sin x$) 🌊
**Base:** $\sin(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!}x^{2n+1}$ para todo $x \in \mathbb{R}$.

* **a. $\sin(3x)$**
    * **Sustitución:** $x \to 3x$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n 3^{2n+1}}{(2n+1)!}x^{2n+1}$
    * **Intervalo:** $(-\infty, \infty)$
* **b. $\sin(x^2)$**
    * **Sustitución:** $x \to x^2$
    * **Serie:** $\sum_{n=0}^{\infty} \frac{(-1)^n}{(2n+1)!}x^{4n+2}$
    * **Intervalo:** $(-\infty, \infty)$



### 4. Desarrollos a partir de la Serie Geométrica ♾️
**Base:** $\frac{1}{1-u} = \sum_{n=0}^{\infty} u^n$ para $|u| < 1$.

* **a. $\frac{1}{1+2x}$**
    * **Sustitución:** $u = -2x$
    * **Serie:** $\sum_{n=0}^{\infty} (-1)^n 2^n x^n$
    * **Intervalo:** $|x| < 1/2 \implies (-1/2, 1/2)$
* **b. $\frac{1}{1-x^2}$**
    * **Sustitución:** $u = x^2$
    * **Serie:** $\sum_{n=0}^{\infty} x^{2n}$
    * **Intervalo:** $|x| < 1 \implies (-1, 1)$
* **c. $\frac{x+3}{1-x^2}$**
    * **Método:** $(x+3) \cdot \sum x^{2n}$
    * **Serie:** $\sum_{n=0}^{\infty} x^{2n+1} + \sum_{n=0}^{\infty} 3x^{2n}$
    * **Intervalo:** $(-1, 1)$



### 5. Series de Taylor centradas en $a$ 📍
Se utiliza la traslación de variable: $x = (x-a) + a$.

| Función | Centro ($a$) | Desarrollo Resultante | Intervalo |
| :--- | :--- | :--- | :--- |
| **$e^{3x}$** | $-1$ | $\sum_{n=0}^{\infty} \frac{e^{-3} 3^n}{n!} (x+1)^n$ | $(-\infty, \infty)$ |
| **$\cos(2x)$** | $\pi$ | $\sum_{n=0}^{\infty} \frac{(-1)^n 2^{2n}}{(2n)!} (x-\pi)^{2n}$ | $(-\infty, \infty)$ |
| **$\sin(5x)$** | $-\pi/2$ | $\sum_{n=0}^{\infty} \frac{(-1)^{n+1} 5^{2n}}{(2n)!} (x+\pi/2)^{2n}$ | $(-\infty, \infty)$ |
| **$\frac{1}{1+7x}$** | $21$ | $\sum_{n=0}^{\infty} \frac{(-1)^n 7^n}{148^{n+1}} (x-21)^n$ | $|x-21| < \frac{148}{7}$ |
| **$\frac{9-x}{1+7x}$** | $21$ | $(-12-(x-21)) \sum \frac{(-1)^n 7^n}{148^{n+1}} (x-21)^n$ | $|x-21| < \frac{148}{7}$ |



## 5 c) **$\sin(5x)$**  $-\pi/2$  

Para desarrollar la serie de Taylor de la función **\\(f(x) = \sin(5x)\\)** centrada en **\\(a = -\frac{\pi}{2}\\)**, seguimos exactamente la metodología y sugerencias del **Apunte Teórico** y la resolución detallada en la página 12 de tu **Actividad Grupal**:
$\sum_{n=0}^{\infty} \frac{(-1)^{n+1} 5^{2n}}{(2n)!} (x+\pi/2)^{2n}$  $(-\infty, \infty)$ 


Paso 1: Reescribir la variable $x$ respecto al centro $a$

Siguiendo la sugerencia del apunte, escribimos $x = (x-a) + a$. En este caso, dado que $a = -\frac{\pi}{2}$, tenemos:

$$
x = \left(x - \left(-\frac{\pi}{2}\right)\right) + \left(-\frac{\pi}{2}\right) = \left(x + \frac{\pi}{2}\right) - \frac{\pi}{2}
$$

Paso 2: Sustituir en el argumento de la función

Reemplazamos esta expresión en el argumento de nuestra función $f(x) = \sin(5x)$:

$$
5x = 5\left[\left(x + \frac{\pi}{2}\right) - \frac{\pi}{2}\right] = 5\left(x + \frac{\pi}{2}\right) - \frac{5\pi}{2}
$$

De este modo, reescribimos la función original como:

$$
f(x) = \sin\left(5\left(x + \frac{\pi}{2}\right) - \frac{5\pi}{2}\right)
$$

Paso 3: Aplicar identidades trigonométricas

Utilizamos la identidad del seno de una diferencia de ángulos:

$$
\sin(\theta - \phi) = \sin(\theta)\cos(\phi) - \cos(\theta)\sin(\phi)
$$

Asignando los términos correspondientes:
* $\theta = 5\left(x + \frac{\pi}{2}\right)$
* $\phi = \frac{5\pi}{2}$

Evaluamos los valores de las funciones trigonométricas constantes en el punto:
* $\cos\left(\frac{5\pi}{2}\right) = \cos\left(2\pi + \frac{\pi}{2}\right) = \cos\left(\frac{\pi}{2}\right) = 0$
* $\sin\left(\frac{5\pi}{2}\right) = \sin\left(2\pi + \frac{\pi}{2}\right) = \sin\left(\frac{\pi}{2}\right) = 1$

Sustituyendo estos valores en la identidad trigonométrica obtenemos:

$$
f(x) = \sin\left(5\left(x + \frac{\pi}{2}\right)\right) \cdot (0) - \cos\left(5\left(x + \frac{\pi}{2}\right)\right) \cdot (1)
$$

$$
f(x) = -\cos\left(5\left(x + \frac{\pi}{2}\right)\right)
$$

Paso 4: Utilizar el desarrollo de la serie de Maclaurin conocida

Sabemos por la teoría que el desarrollo de Maclaurin de la función coseno es:

$$
\cos(u) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} u^{2n}
$$

Hacemos la sustitución de nuestra variable compuesta $u = 5\left(x + \frac{\pi}{2}\right)$:

$$
\cos\left(5\left(x + \frac{\pi}{2}\right)\right) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} \left[5\left(x + \frac{\pi}{2}\right)\right]^{2n} = \sum_{n=0}^{\infty} \frac{(-1)^n 5^{2n}}{(2n)!} \left(x + \frac{\pi}{2}\right)^{2n}
$$

Paso 5: Ajuste de signo y expresión final

Como nuestra función simplificada es $f(x) = -\cos\left(5\left(x + \frac{\pi}{2}\right)\right)$, multiplicamos la serie obtenida por $-1$:

$$
f(x) = - \sum_{n=0}^{\infty} \frac{(-1)^n 5^{2n}}{(2n)!} \left(x + \frac{\pi}{2}\right)^{2n}
$$

Al introducir el signo negativo dentro de la sumatoria, la alternancia de signos cambia mediante la propiedad $(-1) \cdot (-1)^n = (-1)^{n+1}$:

$$
\sin(5x) = \sum_{n=0}^{\infty} \frac{(-1)^{n+1} 5^{2n}}{(2n)!} \left(x + \frac{\pi}{2}\right)^{2n}
$$

Análisis de Convergencia

* **Radio de convergencia ($R = \infty$):** Al aplicar el criterio del cociente (D'Alembert) sobre el término general $a_n$, se demuestra que el límite tiende a $0 < 1$ para cualquier valor real, por lo que el radio es infinito.
* **Intervalo de convergencia:** La serie converge de manera absoluta y uniforme en toda la recta real, es decir, en el intervalo $(-\infty, \infty)$.
### **Análisis de Convergencia**
*   **Radio de convergencia (\\(R = \infty\\)):** Al aplicar el criterio del cociente (D'Alembert) sobre el término general \\(a_n\\), se demuestra que el límite tiende a \\(0 < 1\\) para cualquier valor real, por lo que el radio es infinito.
*   **Intervalo de convergencia:** La serie converge de manera absoluta y uniforme en toda la recta real, es decir, en el intervalo **\\((-\infty, \infty)\\)**.



> ⚠️ **Nota:** Para la función $\frac{1}{1+7x}$, se factorizó el denominador como $148[1 - (-\frac{7}{148}(x-21))]$ para ajustar a la forma geométrica.
