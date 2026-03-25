# 📑 Resumen: Resolución de Ejercicios de Series de Potencias

Este documento presenta la resolución de ejercicios prácticos y una autoevaluación sobre el desarrollo, derivación e integración de series de potencias (Taylor y Maclaurin).

---

### 1. Demostraciones mediante Derivación ✍️

* **Segunda derivada de la serie geométrica:** Se demuestra que la serie $\sum_{n=2}^{\infty} n(n-1)x^{n-2}$ converge a $\frac{2}{(1-x)^{3}}$. 
    * **Procedimiento:** Se deriva dos veces término a término la serie $\sum x^n = \frac{1}{1-x}$.
    * **Convergencia:** El radio de convergencia se mantiene en **1** y el dominio es el intervalo **(-1, 1)**.
* **Derivadas de funciones trigonométricas:** * Se prueba que $(\sin x)' = \cos x$ derivando la serie de Maclaurin del seno.
    * Se demuestra que $(\cos x)' = -\sin x$ aplicando derivación y un cambio de índice ($k = n-1$) a la serie del coseno.

---

### 2. Desarrollo e Integración de Funciones 🧮

* **Arcotangente ($\arctan x$):** 📐
    * Se obtiene integrando la serie de su derivada $f'(x) = \frac{1}{1+x^2}$, la cual surge de sustituir $y = -x^2$ en una serie geométrica.
    * **Resultado:** $\arctan(x) = \sum_{n=0}^{\infty} \frac{(-1)^{n}x^{2n+1}}{2n+1}$ con radio de convergencia **1**.
* **Cálculo de integrales no elementales:** ♾️
    * **$\int e^{x^2} dx$:** Se sustituye $x$ por $x^2$ en la serie de $e^x$ y se integra término a término.
    * **$\int \frac{\sin(x^2)}{x} dx$:** Se desarrolla $\sin(x^2)$, se divide cada término por $x$ y luego se integra.

---

### 3. Autoevaluación: Conceptos Clave 🧠

El documento aclara puntos fundamentales sobre el uso de series en el cálculo:

* **Uso de integración vs. derivación:** Para calcular integrales como $\int \frac{\ln(1+x)}{x} dx$ o $\int \frac{\arctan x}{x} dx$, el paso final es siempre la **integración** de la serie resultante, no su derivación.
* **¿Cuándo usar series?** 💡 No siempre son necesarias. Por ejemplo, $\int xe^{-x^2} dx$ se resuelve más fácil por **sustitución simple** ($u = -x^2$), ya que posee una primitiva elemental.
* **Propiedades de las series:**
    * **Exponencial:** La segunda derivada de la serie de $e^x$ es la misma serie, y su radio de convergencia es **infinito** ($\mathbb{R}$).
    * **Radio de convergencia:** La derivación de una serie de potencias **no altera** su radio de convergencia original.

---

### 4. Tabla de Resultados Rápidos 📊

| Función / Operación | Serie Resultante | Radio de Convergencia |
| :--- | :--- | :--- |
| $\frac{2}{(1-x)^3}$ | $\sum_{n=2}^{\infty} n(n-1)x^{n-2}$ | $R = 1$ |
| $\arctan(x)$ | $\sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1}$ | $R = 1$ |
| $f'(x)$ de $\arctan(x)$ | $\sum_{n=0}^{\infty} (-1)^n x^{2n}$ | $R = 1$ |
| $e^x$ (y sus derivadas) | $\sum_{n=0}^{\infty} \frac{x^n}{n!}$ | $R = \infty$ 

---
