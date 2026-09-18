# Guía Rápida de Series: Convergencia, Intervalos y Criterios

Esta guía resume los conceptos fundamentales para el análisis de convergencia de series de potencias y series numéricas.

## 1. Expresión del Resultado: Intervalos de Convergencia

Para una serie de potencias centrada en $a$, el resultado final del intervalo de convergencia se expresa usando paréntesis `()` para límites abiertos (excluidos) y corchetes `[]` para límites cerrados (incluidos).

| Combinación | Notación | Descripción |
| :--- | :--- | :--- |
| **Abierto** | $(a-R, a+R)$ | Converge solo en el interior; diverge en los bordes. |
| **Cerrado** | $[a-R, a+R]$ | Converge en el interior y en ambos bordes. |
| **Semi-abierto izq.**| $(a-R, a+R]$ | Converge en el borde derecho, diverge en el izquierdo. |
| **Semi-abierto der.**| $[a-R, a+R)$ | Converge en el borde izquierdo, diverge en el derecho. |



## 2. Herramientas de Análisis

### Criterios de Convergencia
*   **Criterio de d'Alembert (Cociente):** Útil para series con factoriales o potencias. Se calcula $L = \lim_{n \to \infty} |\frac{u_{n+1}}{u_n}|$.
    *   Si $L < 1$, converge absolutamente.
    *   Si $L > 1$, diverge.
    *   Si $L = 1$, el criterio no decide.
*   **Criterio de Leibniz (Series Alternadas):** Se aplica a series de la forma $\sum (-1)^n b_n$. Converge si $b_n$ es monótona decreciente y $\lim_{n \to \infty} b_n = 0$.
*   **Serie p:** $\sum \frac{1}{n^p}$.
    *   Converge si $p > 1$.
    *   Diverge si $p \le 1$.
*   **Comparación por cocientes:** Se usa para analizar el comportamiento asintótico. Si $\sum u_n \approx \sum v_n$ y $\sum v_n$ es una serie p, el comportamiento es análogo.

### ¿Qué es verificar hipótesis?
Antes de aplicar un criterio (como d'Alembert o Leibniz), se debe comprobar que la serie cumple las condiciones necesarias. Por ejemplo, en Leibniz, verificar que los términos son positivos, decrecientes y tienden a cero es la **verificación de hipótesis**. Saltarse esto puede llevar a conclusiones erróneas.

### Uso de L'Hôpital
Se justifica su uso cuando al aplicar un límite (por ejemplo, en un criterio de convergencia) se obtiene una indeterminación del tipo $\frac{0}{0}$ o $\frac{\infty}{\infty}$. Se deriva numerador y denominador por separado:
$$\lim_{x \to c} \frac{f(x)}{g(x)} = \lim_{x \to c} \frac{f'(x)}{g'(x)}$$



## 3. Series Especiales

| Tipo de Serie | Forma General | Radio de Convergencia ($R$) | Notas |
| :--- | :--- | :--- | :--- |
| **Geométrica** | $\sum x^n$ | $R=1$ | Converge en $(-1, 1)$. Suma: $\frac{1}{1-x}$. |
| **Serie p** | $\sum \frac{1}{n^p}$ | N/A | Converge para $p > 1$. |



## 4. Ejemplos de Análisis de Bordes

| Caso | Serie resultante | Análisis | Resultado |
| :--- | :--- | :--- | :--- |
| **Divergencia en borde** | $\sum \frac{1}{n^2+2}$ | Criterio comparación por cociente con $\frac{1}{n^2}$ (serie p con $p=2 > 1$ pero el original se comporta como $1/n^2$ que converge? *Revisar nota*). | Divergente |
| **Convergencia en borde** | $\sum (-1)^n b_n$ | Verificación de Leibniz ($b_n \searrow 0$). | Convergente |

## Resumen de los puntos clave incluidos:
Notación de intervalos: Uso de () y [] para definir convergencia según el comportamiento en los extremos.

* **Criterios:** Resumen de d'Alembert, Leibniz, serie p ($p>1$ para convergencia) y comparación.

* **Justificación:** Se explica la importancia de verificar las hipótesis antes de aplicar cualquier criterio y el uso de L'Hôpital para resolver indeterminaciones en límites.

* **Series Especiales:** Inclusión de series geométricas (convergencia en $(-1,1)$ ) y series p.
Para entender la diferencia entre **convergencia puntual** y **convergencia absoluta**, primero hay que notar que operan en contextos matemáticos distintos: la primera se aplica principalmente a **sucesiones o series de funciones**, mientras que la segunda se aplica a **series numéricas** (o series de funciones en un punto).

A continuación, se detalla en qué consiste cada una:



### 1. Convergencia Puntual

* **Contexto:** Se usa para evaluar **sucesiones de funciones** ($f_n(x)$).
* **Definición:** Una sucesión de funciones $(f_n)_{n=1}^\infty$ converge puntualmente a una función límite $f(x)$ en un conjunto si, para **cada punto fijo $x$** de manera individual, el límite de la sucesión numérica es el valor de la función en ese punto:

$$\lim_{n \to \infty} f_n(x) = f(x)$$


* **Características:**
* Depende de cada punto. El valor de $n$ necesario para que $f_n(x)$ se acerque a $f(x)$ puede cambiar drásticamente dependiendo del valor de $x$ que elijas.
* Es una forma de convergencia "débil" para funciones; no garantiza que propiedades como la continuidad o la integrabilidad se preserven en el límite.



### 2. Convergencia Absoluta

* **Contexto:** Se usa para evaluar **series** (sumas infinitas, ya sean de números $a_n$ o de funciones $\sum f_n(x)$).
* **Definición:** Una serie $\sum a_n$ converge absolutamente si la serie formada por los **valores absolutos** de sus términos converge:

$$\sum_{n=1}^{\infty} \vert{}a_n\vert{} < \infty$$


* **Características:**
* Es una propiedad mucho más fuerte que la simple convergencia. Si una serie converge absolutamente, **garantiza que también converge** de manera ordinaria (o condicional).
* Permite reorganizar los términos de la suma (propiedad conmutativa de la suma infinita) sin alterar el resultado final, algo que no siempre se puede hacer en series condicionalmente convergentes.



### 📊 Tabla Comparativa Resumida

| Característica | Convergencia Puntual | Convergencia Absoluta |
| --- | --- | --- |
| **¿A qué se aplica?** | Sucesiones o series de funciones ($f_n(x)$). | Series numéricas o de funciones ($\sum a_n$). |
| **Enfoque principal** | El comportamiento en **cada punto** del dominio por separado. | El comportamiento de la suma de los **valores absolutos** de los términos. |
| **Fortaleza** | Es un requisito básico (más débil que la convergencia uniforme). | Es un criterio fuerte que asegura estabilidad en el orden de los términos. |
