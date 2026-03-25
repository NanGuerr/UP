# 📝 Resolución Diferenciación e Integración de Series

Este documento presenta la justificación técnica de los ejercicios de autoevaluación sobre el cálculo de integrales y derivadas mediante series de potencias.

---

### 📥 Integración de Funciones mediante Series

Para resolver integrales de funciones que no poseen una primitiva elemental, se transforman en series de potencias y se integran término a término.

* **Logaritmo Natural ($\int \frac{\ln(1+x)}{x} dx$):** 📖
    * Se obtiene primero la serie del numerador mediante la integración de la serie geométrica.
    * Posteriormente, se divide por $x$ y se integra la serie de potencias resultante.
    * **Nota:** Es **falso** que este proceso se realice mediante derivación.
* **Arcotangente ($\int \frac{\arctan(x)}{x} dx$):** 📐
    * Se halla la serie de $\arctan(x)$ derivando la función y aplicando la serie geométrica.
    * Luego se divide por $x$ y se integra término a término.
* **Funciones Trigonométricas y Exponenciales:** 🎡
    * **$\int \frac{\cos(x^2)}{x} dx$:** Se desarrolla la serie de $\cos(x)$, se sustituye el argumento por $x^2$, se divide por $x$ y se integra.
    * **$\int e^{x^2} dx$:** Se sustituye el exponente en el desarrollo de Maclaurin de $e^x$ y se aplica la integración de la serie.
    * **$\int \frac{\sin(x)}{\sqrt{x}} dx$:** Se divide la serie de $\sin(x)$ por $x^{1/2}$ y se integran los términos resultantes.

---

### 💡 Casos donde NO es necesaria la Serie

* **$\int xe^{-x^2} dx$:** 🚫
    * No es estrictamente necesario usar series de potencias.
    * Esta integral tiene una primitiva elemental y se resuelve mediante **sustitución simple** ($u = -x^2$).
    * La primitiva resultante es $-\frac{1}{2}e^{-x^2}$.

---

### 🔄 Derivación de Series de Potencias

Al derivar una serie, el radio de convergencia se mantiene inalterado.

* **Serie Geométrica ($\sum_{n=0}^{\infty} x^n$):** 📏
    * **Segunda derivada:** Es $\sum_{n=2}^{\infty} n(n-1)x^{n-2}$.
    * **Radio de convergencia:** Es **1**, igual al de la serie original.
* **Serie Exponencial ($\sum_{n=0}^{\infty} \frac{x^n}{n!}$):** 🚀
    * **Segunda derivada:** Al ser la serie de $e^x$, su derivada es igual a sí misma: $\sum_{n=0}^{\infty} \frac{x^n}{n!}$.
    * **Radio de convergencia:** Es **infinito** ($+\infty$) para todos los reales.

---

### 📐 El Caso de $f(x) = \arctan(x)$

* **Primera Derivada:** Corresponde a $\frac{1}{1+x^2}$. 🖋️
* **Desarrollo de Maclaurin:** Se obtiene sustituyendo la variable por $-x^2$ en la serie geométrica, resultando en $\sum_{n=0}^{\infty} (-1)^n x^{2n}$. 📍
