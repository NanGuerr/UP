# Desarrollo de la serie geométrica como punto de partida.

Sabemos que la expresión de la suma de una serie geométrica es:


$$\frac{1}{1-x} = \sum_{n=0}^{\infty} x^n$$


Esta igualdad tiene un intervalo de convergencia de $(-1, 1)$, es decir, es válida siempre que $\vert{}x\vert{} < 1$. A partir de aquí, podemos calcular las series de Mac Laurin solicitadas haciendo sustituciones.

---

### Ejercicio 4a) $\frac{1}{1+2x}$

**Paso 1: Reescribir la función**
Para poder utilizar la fórmula de la serie geométrica, necesitamos que el denominador tenga la forma $(1 - \text{algo})$. Podemos reescribir nuestra función de la siguiente manera:


$$\frac{1}{1+2x} = \frac{1}{1-(-2x)}$$

**Paso 2: Sustituir en la serie geométrica**
Ahora, reemplazamos la variable original de la serie por el término $-2x$:


$$\frac{1}{1-(-2x)} = \sum_{n=0}^{\infty} (-2x)^n$$

**Paso 3: Realizar las operaciones en las potencias**
Aplicamos la propiedad distributiva de la potencia sobre el producto. Como nos indica el enunciado, separamos el signo negativo:


$$(-2x)^n = (-2)^n x^n = (-1)^n 2^n x^n$$


Sustituyendo esto en la sumatoria, la serie de Mac Laurin queda:


$$f(x) = \sum_{n=0}^{\infty} (-1)^n 2^n x^n$$

**Paso 4: Indicar el intervalo de validez**
Por hipótesis del desarrollo de la serie geométrica, lo que está elevado a la $n$ en valor absoluto debe ser menor a 1.

* Planteamos la inecuación: $\vert{}-2x\vert{} < 1$
* Por propiedades del módulo, sabemos que $\vert{}-2x\vert{} = \vert{}-2\vert{} \cdot \vert{}x\vert{} = 2\vert{}x\vert{}$.
* Entonces, $2\vert{}x\vert{} < 1 \implies \vert{}x\vert{} < \frac{1}{2}$.

**Resultado de 4a:**
El radio de convergencia es $\frac{1}{2}$ y el intervalo donde este desarrollo es válido es $(-\frac{1}{2}, \frac{1}{2})$.

---

### Ejercicio 4b) $\frac{1}{1-x^2}$

**Paso 1: Identificar la sustitución**
Nuestra función $\frac{1}{1-x^2}$ ya tiene un signo negativo en el denominador, por lo que se ajusta perfectamente a la estructura de la serie geométrica original $\frac{1}{1-y}$. En este caso, tomaremos $y = x^2$.

**Paso 2: Sustituir en la serie geométrica**
Reemplazamos $x^2$ directamente dentro del término general de la serie:


$$\frac{1}{1-x^2} = \sum_{n=0}^{\infty} (x^2)^n$$

**Paso 3: Realizar las operaciones en las potencias**
Aplicamos la propiedad de "potencia de una potencia", multiplicando los exponentes:


$$f(x) = \sum_{n=0}^{\infty} x^{2n}$$

**Paso 4: Indicar el intervalo de validez**
Nuevamente, basándonos en la condición de la serie geométrica, el valor absoluto del término sustituido debe ser estrictamente menor a 1:

* Planteamos la inecuación: $\vert{}x^2\vert{} < 1$
* Como $x^2$ es siempre positivo o cero, esto equivale a decir $x^2 < 1$.
* Al aplicar raíz cuadrada en ambos lados, obtenemos $\vert{}x\vert{} < 1$.

**Resultado de 4b:**
El desarrollo obtenido es válido en el intervalo $(-1, 1)$.
