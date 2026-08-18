# Resumen Analítico: Series y Criterios de Convergencia

A continuación, se presenta una tabla detallada con los conceptos fundamentales sobre series, los criterios para evaluar sus bordes de convergencia y la explicación de ciertas estructuras algebraicas que aparecen en su desarrollo.

| Concepto / Tema | Descripción / Definición Matemática | Condiciones de Convergencia / Notas |
| :--- | :--- | :--- |
| **Serie de Taylor** | Representación de una función $f(x)$ mediante una suma infinita de términos calculados a partir de sus derivadas evaluadas en un punto específico $a$. <br> Fórmula: $\sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!} (x - a)^n$ | Converge exactamente a la función $f(x)$ si el límite del término complementario (error) $R_n(x)$ es igual a $0$ cuando $n \to \infty$. |
| **Serie de Maclaurin** | Es el caso particular de la serie de Taylor en el cual el centro de la serie es $a = 0$. <br> Fórmula: $\sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n$ | La serie de Taylor de $f(x)$ centrada en $a$ es equivalente a la serie de Maclaurin de la función $f(x + a)$. |
| **Serie Geométrica** | Es una serie de potencias de la forma $\sum_{n=0}^{\infty} x^n$. La expresión de su suma finita es $\frac{1}{1-x}$. | Converge puntualmente y de forma absoluta en el intervalo $(-1, 1)$, es decir, cuando $\|x\| < 1$. No converge en los bordes. |
| **Serie p** | Serie de la forma $\sum_{n=1}^{\infty} \frac{1}{n^p}$. Se utiliza frecuentemente en el criterio de comparación para analizar la convergencia en los bordes de los intervalos. | Converge si el exponente $p > 1$. Diverge si $p \le 1$. |
| **Criterio de D'Alembert (Cociente)** | Evalúa el límite del valor absoluto del cociente entre términos consecutivos de la serie: $\lim_{n \to \infty} \left| \frac{u_{n+1}}{u_n} \right|$. | Converge si el límite es $< 1$. Si el límite es exactamente $1$, el criterio no es concluyente y se deben analizar los bordes por otros métodos. |
| **Criterio de Leibniz** | Se utiliza para analizar series alternadas (cuyos términos cambian de signo secuencialmente, típicamente por un factor $(-1)^n$). | Converge si los términos decrecen monótonamente en valor absoluto hacia cero ($|u_{n+1}| \le |u_n|$ y $\lim_{n \to \infty} u_n = 0$). |
| **Aparición de $(-1)^n 2^n$** | Esta expresión surge al sustituir una variable por un término negativo compuesto en una serie. Por ejemplo, al buscar la serie de Maclaurin de $e^{-2x}$, se reemplaza $x$ por $-2x$. Por propiedades de potencias, $(-2x)^n = (-2)^n x^n = (-1)^n 2^n x^n$. | El factor $(-1)^n$ convierte a la serie en una **serie alternada**, lo que permite utilizar el Criterio de Leibniz al evaluar los bordes, mientras que el $2^n$ modifica la magnitud y el radio de convergencia de la serie. |



* **Taylor y Maclaurin:** La serie de Taylor permite expresar una función en base a sus derivadas en un punto $a$. La serie de Maclaurin es exactamente lo mismo pero centrada en $a=0$.
* **Serie Geométrica:** Su forma es $\sum x^n$, con una suma que converge a $\frac{1}{1-x}$ estrictamente en el intervalo $(-1, 1)$, o sea $\vert{}x\vert{} < 1$.
* **Serie p:** Tiene la forma $\sum \frac{1}{n^p}$. Converge si $p > 1$, y se utiliza frecuentemente para comparar series en el análisis de bordes (como en el ejemplo de $x=1$ que resulta en divergencia al asemejarse a $p=1$).
* **Criterio de D'Alembert:** Evalúa $\lim \vert{}\frac{u_{n+1}}{u_n}\vert{}$. Indica convergencia si el resultado es menor a 1 y no concluye nada si es igual a 1.
* **Criterio de Leibniz:** Aplica a series alternadas, estableciendo que convergen si sus términos decrecen monótonamente hacia cero en valor absoluto.
* **Sobre el factor $(-1)^n 2^n$:** Tal como se muestra en la sustitución para $e^{-2x}$, este factor aparece al evaluar potencias de bases negativas como $(-2x)^n$. El factor $(-1)^n$ indica matemáticamente que los signos se alternarán entre positivo y negativo, permitiendo que en determinados bordes se pueda invocar el criterio de Leibniz.
