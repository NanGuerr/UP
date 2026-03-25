# 📚 Resumen: Diferenciación e Integración de Series de Potencias

Este documento consolida las demostraciones matemáticas y las justificaciones técnicas de la guía de ejercicios y la autoevaluación.

---

### 🛠️ 1. Demostraciones mediante Derivación
Se utilizan series conocidas para obtener nuevas expresiones derivando término a término.

* **La Serie de $\frac{2}{(1-x)^3}$:** 📏
    * Se parte de la serie geométrica $\sum x^n = \frac{1}{1-x}$.
    * Al derivar dos veces, se obtiene $\sum_{n=2}^{\infty} n(n-1)x^{n-2} = \frac{2}{(1-x)^3}$.
    * **Propiedad clave:** El radio de convergencia **no cambia** al derivar, manteniéndose en $R=1$.
* **Derivadas Trigonométricas:** 🌊
    * **Seno:** Al derivar la serie de Maclaurin de $\sin(x)$, se obtiene exactamente la serie de $\cos(x)$.
    * **Coseno:** Al derivar la serie de $\cos(x)$ y realizar un cambio de índice, se demuestra que su derivada es $-\sin(x)$.

---

### 📥 2. Integración y Cálculo de Primitivas
Uso de series para resolver integrales que no tienen primitivas elementales o para hallar nuevos desarrollos.

* **Desarrollo de $\arctan(x)$:** 📐
    * Se obtiene integrando la serie de su derivada $f'(x) = \frac{1}{1+x^2}$.
    * El resultado es $\sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1}$ con un radio de convergencia de $1$.
* **Integrales Complejas:** 🧪
    * **$\int e^{x^2} dx$:** Se sustituye $x$ por $x^2$ en la serie exponencial y se integra término a término.
    * **$\int \frac{\sin(x^2)}{x} dx$:** Se desarrolla $\sin(x^2)$, se divide por $x$ y se integra, resultando en una sumatoria de potencias de $x$.
    * **$\int \frac{\sin(x)}{\sqrt{x}} dx$:** Se divide la serie del seno por $x^{1/2}$ y se procede a la integración.

---

### 🧠 3. Conceptos Clave de la Autoevaluación
Justificaciones sobre cuándo y cómo aplicar estos métodos.

* **¿Integrar o Derivar?** 🔍
    * Para funciones como $\frac{\ln(1+x)}{x}$ o $\frac{\arctan(x)}{x}$, el paso final correcto es la **integración** de la serie, nunca la derivación.
* **El Método de Sustitución Directa:** 🚫
    * Para la integral $\int xe^{-x^2} dx$, **no es necesario** usar series.
    * Se resuelve de forma más sencilla mediante sustitución simple ($u = -x^2$), obteniendo $-\frac{1}{2}e^{-x^2}$.
* **Segundas Derivadas Famosas:** 🔄
    * La segunda derivada de la serie de $e^x$ ($\sum \frac{x^n}{n!}$) es **ella misma**, manteniendo su radio de convergencia infinito.
    * La segunda derivada de la serie geométrica tiene un radio de convergencia de $1$.

---

### 📊 Resumen de Radios de Convergencia ($R$)

| Operación / Función | Resultado de la Serie | Radio ($R$) |
| :--- | :--- | :--- |
| **Segunda derivada de geométrica** | $\sum n(n-1)x^{n-2}$ | $1$ |
| **Desarrollo de $\arctan(x)$** | $\sum \frac{(-1)^n x^{2n+1}}{2n+1}$ | $1$ |
| **Serie de $e^{x}$ (y sus derivadas)** | $\sum \frac{x^n}{n!}$ | $\infty$ |
| **Derivada de $\arctan(x)$** | $\sum (-1)^n x^{2n}$ | $1$ |
