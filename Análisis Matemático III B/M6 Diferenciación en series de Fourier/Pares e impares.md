
## 1. Funciones pares, impares y el caso general

Las reglas de simetría de las funciones simplifican enormemente el cálculo de los coeficientes de una serie de Fourier:

* **Función Par ( $f(-x) = f(x)$ ):** Es simétrica respecto al eje $y$ (como una parábola o $ \cos(x)$ ). Al multiplicar una función par por un seno (que es impar), el resultado es impar, y la integral en un intervalo simétrico da **cero**. Por eso, **los coeficientes $b_n$ se anulan ($b_n = 0$)**. Solo te queda la componente de **cosenos** (más el término independiente $a_0$).
* **Función Impar ( $f(-x) = -f(x)$ ):** Es simétrica respecto al origen (como una línea recta que pasa por el origen o $\sin(x)$ ). Al multiplicar una función impar por un coseno (que es par), el resultado es impar, y su integral en un intervalo simétrico da **cero**. Por eso, **los coeficientes $a_0$ y $a_n$ se anulan ($a_0 = 0$, $a_n = 0$)**. Solo te queda la componente de **senos**.
* **Funciones "ni pares ni impares" (Términos mixtos):** Si una función no cumple ninguna de las dos simetrías anteriores, significa que **contiene tanto términos pares como impares**. En este caso, **no puedes eliminar ningún coeficiente**: debes calcular $a_0$, todos los $a_n$ (cosenos) y todos los $b_n$ (senos).

> **¿Por qué en una actividad te pidieron ambos (seno y coseno)?**
> Simplemente porque la función de ese ejercicio **no era ni par ni impar** (o no presentaba una simetría centrada en el origen), por lo que obligatoriamente requería desarrollar la serie completa utilizando tanto los coeficientes de coseno ($a_n$) como los de seno ($b_n$).



## 2. ¿Qué pasa con la famosa "fórmula de $k$"?

En muchos ejercicios (especialmente cuando trabajas con funciones impares o desarrollos en medios rangos / half-range expansions), al resolver la integral de $b_n$, te queda un resultado que depende de si $n$ es par o impar (por ejemplo, expresiones con $(-1)^n$ o $(-1)^{k}$).

A veces, para simplificar o expresar solo los términos que no se anulan, los libros o profesores utilizan una variable auxiliar como $k$ para denotar únicamente los índices impares (por ejemplo, haciendo $n = 2k - 1$).

* **Cómo se usaría:** Si al integrar te queda un factor que se hace cero cuando $n$ es par y sobrevive solo cuando $n$ es impar, redefines el índice de la sumatoria usando $k = 1, 2, 3, \dots$ para representar solo los armónicos impares ($1, 3, 5, 7\dots$), sustituyendo $n$ por $(2k - 1)$ en la fórmula del coeficiente y del argumento del seno.



## 3. ¿Por qué $a_0$ no lleva seno ni coseno?

Esta es una excelente pregunta conceptual. La serie general de Fourier se escribe así:

$$f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cos\left(\frac{n\pi x}{L}\right) + b_n \sin\left(\frac{n\pi x}{L}\right) \right)$$

* **El origen de $a_0$:** Si miras de dónde sale la fórmula general del coeficiente $a_n$, verás que se obtiene multiplicando la función por $\cos\left(\frac{n\pi x}{L}\right)$ e integrando.
* **¿Qué pasa cuando $n = 0$?** Si sustituyes $n = 0$ en el término del coseno, te queda $\cos(0)$, que vale **1**.
* Al valer 1, el término trigonométrico desaparece de esa parte de la fórmula, dejando únicamente el promedio de la función sobre el período. Por eso, $a_0$ es simplemente la integral de la función dividida por la longitud del intervalo (con su respectiva constante de escala), representando el **valor medio (o componente de corriente continua)** de la señal, sin ninguna oscilación de seno o coseno asociada.

Un ejemplo clásico y perfecto para ver esto en acción es el desarrollo en serie de Fourier de una **onda cuadrada** (o función signo) en el intervalo $(-\pi, \pi)$.

Como se trata de una función **impar**, los coeficientes $a_0$ y $a_n$ se anulan por completo, y solo debemos calcular los coeficientes $b_n$ de los senos.

## 4. Uso de 2k-1 ejemplo practico

### Paso 1: Definir la función

Imagina la función periódica de período $T = 2\pi$ definida en un período como:


$$f(x) = \begin{cases} -1 & \text{si } -\pi < x < 0 \\ 1 & \text{si } 0 < x < \pi \end{cases}$$


Esta función es claramente **impar** porque cumple que $f(-x) = -f(x)$ (es simétrica respecto al origen).



### Paso 2: Calcular los coeficientes $b_n$

La fórmula para los coeficientes de una función impar en un intervalo simétrico es:


$$b_n = \frac{2}{\pi} \int_{0}^{\pi} f(x) \sin(nx) \, dx$$

Como en el intervalo $(0, \pi)$ la función vale $1$, sustituimos:


$$b_n = \frac{2}{\pi} \int_{0}^{\pi} 1 \cdot \sin(nx) \, dx$$

Resolvemos la integral:


$$b_n = \frac{2}{\pi} \left[ -\frac{\cos(nx)}{n} \right]_0^\pi = \frac{2}{n\pi} \left( -\cos(n\pi) + \cos(0) \right)$$

Sabiendo que $\cos(0) = 1$ y que $\cos(n\pi) = (-1)^n$, la expresión queda:


$$b_n = \frac{2}{n\pi} (1 - (-1)^n)$$


### Paso 3: Analizar qué pasa cuando $n$ es par o impar

Aquí es donde evaluamos el comportamiento de $(-1)^n$:

* Si **$n$ es par** ($n = 2, 4, 6, \dots$): $(-1)^n = 1$, por lo tanto $1 - 1 = 0 \implies \mathbf{b_n = 0}$. (¡Todos los términos pares desaparecen!).
* Si **$n$ es impar** ($n = 1, 3, 5, \dots$): $(-1)^n = -1$, por lo tanto $1 - (-1) = 2$. El coeficiente se convierte en:

$$b_n = \frac{2}{n\pi} (2) = \frac{4}{n\pi}$$



### Paso 4: Usar la variable auxiliar $n = 2k - 1$

Como los únicos términos que aportan valor a la serie son los **índices impares**, no queremos escribir una sumatoria infinita cargada de ceros para los valores pares.

Para solucionar esto y barrer únicamente los armónicos impares ($1, 3, 5, 7, \dots$), definimos un nuevo índice auxiliar **$k$** (donde $k = 1, 2, 3, \dots$) y hacemos el cambio de variable:


$$n = 2k - 1$$

Sustituimos este cambio en nuestra fórmula del coeficiente $b_n$ y en el argumento del seno:

1. **El coeficiente:** $b_{2k-1} = \frac{4}{(2k-1)\pi}$
2. **El argumento del seno:** $\sin(nx) = \sin((2k-1)x)$


### Paso 5: Escribir la Serie de Fourier final

En lugar de usar la sumatoria tradicional con $n$, expresamos la serie utilizando la variable auxiliar $k$:

$$f(x) = \sum_{k=1}^{\infty} b_{2k-1} \sin((2k-1)x)$$

Sustituyendo el coeficiente obtenido:

$$f(x) = \frac{4}{\pi} \sum_{k=1}^{\infty} \frac{\sin((2k-1)x)}{2k-1}$$

Si expandes los primeros valores de $k$ ($k=1, 2, 3$), verás cómo queda la famosa serie de la onda cuadrada utilizando solo senos impares:

$$f(x) = \frac{4}{\pi} \left( \sin(x) + \frac{\sin(3x)}{3} + \frac{\sin(5x)}{5} + \frac{\sin(7x)}{7} + \dots \right)$$
