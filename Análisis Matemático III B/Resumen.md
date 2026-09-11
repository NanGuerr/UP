# 📚 Guía Completa de Series de Fourier y Series de Potencias

## 🔄 1. ¿Qué es una Serie Alternada?

Una serie alternada es aquella cuyos términos van cambiando de signo alternativamente (positivo, negativo, positivo, negativo...). Su forma general es:

$$ egin{equation*}
\sum_{n=1}^{\infty} (-1)^{n-1} a_n = a_1 - a_2 + a_3 - a_4 + \dots
\end{equation*}$$

o bien comenzando con signo negativo:

$$ egin{equation*}
\sum_{n=1}^{\infty} (-1)^{n} a_n = -a_1 + a_2 - a_3 + a_4 - \dots
\end{equation*}$$

Donde se asume que $a_n > 0$ (es decir, $a_n$ representa el valor absoluto de los términos).

---

## ✅ 2. El Criterio de Leibniz (Condiciones Suficientes)

El criterio establece que si una serie alternada cumple con tres condiciones específicas, entonces la serie es convergente.

Completando la sentencia clave:

> Si $a_n > 0$, $a_n$ es decreciente ($a_{n+1} \le a_n$) y $\lim_{n	o\infty} a_n = 0$, entonces la serie alternada $\sum (-1)^n a_n$ converge.

Desglosemos cada una de las tres condiciones:
* **Términos positivos:** Los valores absolutos de los términos, $a_n$, deben ser positivos para todo $n$ (o al menos a partir de un índice determinado).
* **Decreciente:** Cada término debe ser menor o igual que el anterior ($a_{n+1} \le a_n$). Esto asegura que los saltos en la suma parcial sean cada vez más pequeños.
* **Límite a cero:** El límite de la sucesión sin considerar el signo alternante debe ser cero: $\lim_{n	o\infty} a_n = 0$. (Nota: esto es el término enésimo, que es obligatorio para la convergencia de cualquier tipo de serie).

---

## ❓ 3. ¿Es una Condición Necesaria y Suficiente?

Para responder con precisión matemática:
* **Son condiciones SUFICIENTES:** Significa que si se cumplen las tres, tenemos la garantía absoluta de que la serie converge. No necesitamos buscar más pruebas.
* **NO son condiciones NECESARIAS:** Esto significa que puede haber series alternadas que converjan aunque no cumplan estrictamente con el criterio de Leibniz (por ejemplo, si no son estrictamente decrecientes desde el primer término, o si fallan en alguna formalidad menor pero aun así convergen).

Sin embargo, la condición $\lim_{n	o\infty} a_n = 0$ sí es una condición necesaria para la convergencia de cualquier serie (si el límite no es cero, la serie diverge automáticamente por el criterio de la divergencia).

---

## 📏 4. Propiedad Adicional: Estimación del Error

Una de las grandes ventajas del Criterio de Leibniz es que nos permite estimar qué tan lejos está una suma parcial ($S_n$) de la suma real de la serie ($S$).

El error cometido al aproximar la suma de la serie por su suma parcial $S_n$ es en valor absoluto menor o igual que el primer término que se omite, es decir:

$$ egin{equation*}
|S - S_n| \le a_{n+1}
\end{equation*}$$

Esto significa que la suma real se encuentra siempre entre dos sumas parciales consecutivas.

---

## 📻 5. Radio de Convergencia ($R$) de una Serie de Potencias

Para determinar el Radio de Convergencia ($R$) de una serie de potencias, tienes a tu disposición dos herramientas principales derivadas de los criterios de d'Alembert (Cociente) y Cauchy (Raíz). Aunque ambos métodos buscan el mismo objetivo, elegir el correcto te ahorrará muchos dolores de cabeza algebraicos.

### A. Criterio del Cociente (o de la Razón) ➗

$$ egin{equation*}
R = \lim_{n	o\infty} \left| rac{a_n}{a_{n+1}} 
ight|
\end{equation*}$$

**¿Cuándo debes usarlo?**
Debes inclinarte por el criterio del cociente cuando el término general de la serie contiene elementos que se simplifican fácilmente al dividir expresiones consecutivas ($n$ y $n+1$).
* **Factoriales ($n!$):** Es el rey indiscutible aquí. Expresiones como $rac{(n+1)!}{n!} = n+1$ hacen que el cociente sea muy limpio.
* **Potencias puras combinadas con factoriales o polinomios:** Términos como $3^n$, $n^2$, o combinaciones del estilo $rac{n!}{2^n}$.

*Ejemplo típico donde conviene:*
$$ egin{equation*}
\sum rac{n!}{2^n} x^n
\end{equation*}$$
Al aplicar el cociente, el factorial y la potencia de $2$ se reducen algebraicamente de forma muy rápida.

---

### B. Criterio de la Raíz 🌱

$$ egin{equation*}
R = rac{1}{\lim_{n	o\infty} \sqrt[n]{|a_n|}}
\end{equation*}$$

**¿Cuándo debes usarlo?**
Debes usar el criterio de la raíz principalmente cuando el coeficiente $a_n$ (o una parte importante de él) está elevado a la potencia $n$ en su totalidad.
* **Expresiones con potencias $n$-ésimas globales:** Términos de la forma $(3n+2)^n$, $\left(rac{n}{n+1}
ight)^{n^2}$, o simplemente expresiones envueltas en un paréntesis a la $n$, como $\left(rac{x}{5}
ight)^n$.

**¿Por qué?** Porque aplicar la raíz enésima $\sqrt[n]{|a_n|}$ cancela directamente el exponente $n$, transformando un límite complejo en uno de cálculo básico.

*Ejemplo típico donde conviene:*
$$ egin{equation*}
\sum \left(rac{2n+1}{3n-1}
ight)^n x^n
\end{equation*}$$
Al aplicar la raíz enésima, el exponente $n$ desaparece de inmediato, dejándote con un límite sencillo de resolver ($\lim rac{2n+1}{3n-1}$).

---

## 📊 6. Tabla Resumen de Decisión Rápida

| Si ves en el coeficiente... | Usa el criterio de... | Fórmula clave a recordar |
| :--- | :--- | :--- |
| **Factoriales ($n!$)** o productos crecientes | Cociente | $R = \lim \left| rac{a_n}{a_{n+1}} 
ight|$ |
| **Todo el término elevado a la $n$** $
ightarrow (f(n))^n$ | Raíz | $R = rac{1}{\lim \sqrt[n]{|a_n|}}$ |
| **Polinomios solos** (ej. $n^2 + 1$) | Cualquiera de los dos (el cociente suele ser más cómodo) | $R = \lim \left| rac{a_n}{a_{n+1}} 
ight|$ |

---

## 🧮 7. Funciones Pares, Impares y el Caso General

Las reglas de simetría de las funciones simplifican enormemente el cálculo de los coeficientes de una serie de Fourier:

* **Función Par ($f(-x) = f(x)$):** Es simétrica respecto al eje $y$ (como una parábola o $\cos(x)$). Al multiplicar una función par por un seno (que es impar), el resultado es impar, y la integral en un intervalo simétrico da cero. Por eso, **los coeficientes $b_n$ se anulan ($b_n = 0$)**. Solo te queda la componente de cosenos (más el término independiente $a_0$).
* **Función Impar ($f(-x) = -f(x)$):** Es simétrica respecto al origen (como una línea recta que pasa por el origen o $\sin(x)$). Al multiplicar una función impar por un coseno (que es par), el resultado es impar, y su integral en un intervalo simétrico da cero. Por eso, **los coeficientes $a_0$ y $a_n$ se anulan ($a_0 = 0$, $a_n = 0$)**. Solo te queda la componente de senos.
* **Funciones "ni pares ni impares" (Términos mixtos):** Si una función no cumple ninguna de las dos simetrías anteriores, significa que contiene tanto términos pares como impares. En este caso, no puedes eliminar ningún coeficiente: **debes calcular $a_0$, todos los $a_n$ (cosenos) y todos los $b_n$ (senos)**.

> **¿Por qué en una actividad te pidieron ambos (seno y coseno)?** 
> Simplemente porque la función de ese ejercicio no era ni par ni impar (o no presentaba una simetría centrada en el origen), por lo que obligatoriamente requería desarrollar la serie completa utilizando tanto los coeficientes de coseno ($a_n$) como los de seno ($b_n$).

---

## 🔢 8. ¿Qué pasa con la famosa "fórmula de $k$"?

En muchos ejercicios (especialmente cuando trabajas con funciones impares o desarrollos en medios rangos / half-range expansions), al resolver la integral de $b_n$, te queda un resultado que depende de si $n$ es par o impar (por ejemplo, expresiones con $(-1)^n$ o $(-1)^{k}$).

A veces, para simplificar o expresar solo los términos que no se anulan, los libros o profesores utilizan una variable auxiliar como $k$ para denotar únicamente los índices impares (por ejemplo, haciendo $n = 2k - 1$).

* **Cómo se usaría:** Si al integrar te queda un factor que se hace cero cuando $n$ es par y sobrevive solo cuando $n$ es impar, redefines el índice de la sumatoria usando $k = 1, 2, 3, \dots$ para representar solo los armónicos impares ($1, 3, 5, 7\dots$), sustituyendo $n$ por $(2k - 1)$ en la fórmula del coeficiente y del argumento del seno.

---

## 📐 9. ¿Por qué $a_0$ no lleva seno ni coseno?

Esta es una excelente pregunta conceptual. La serie general de Fourier se escribe así:

$$ egin{equation*}
f(x) = rac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cos\left(rac{n\pi x}{L}
ight) + b_n \sin\left(rac{n\pi x}{L}
ight) 
ight)
\end{equation*}$$

* **El origen de $a_0$:** Si miras de dónde sale la fórmula general del coeficiente $a_n$, verás que se obtiene multiplicando la función por $\cos\left(rac{n\pi x}{L}
ight)$ e integrando.
* **¿Qué pasa cuando $n = 0$?** Si sustituyes $n = 0$ en el término del coseno, te queda $\cos(0)$, que vale $1$.
* Al valer $1$, el término trigonométrico desaparece de esa parte de la fórmula, dejando únicamente el promedio de la función sobre el período. Por eso, $a_0$ es simplemente la integral de la función dividida por la longitud del intervalo (con su respectiva constante de escala), representando el valor medio (o componente de corriente continua) de la señal, sin ninguna oscilación de seno o coseno asociada.

---

## 📈 Ejemplo Práctico de Función Impar y Uso de la Variable Auxiliar $2k - 1$

Un ejemplo clásico y perfecto para ver esto en acción es el desarrollo en serie de Fourier de una onda cuadrada (o función signo) en el intervalo $(-\pi, \pi)$.

Como se trata de una función impar, los coeficientes $a_0$ y $a_n$ se anulan por completo, y solo debemos calcular los coeficientes $b_n$ de los senos.

### Paso 1: Definir la función
Imagina la función periódica de período $T = 2\pi$ definida en un período como:

$$ egin{equation*}
f(x) =  egin{cases} -1 & 	ext{si } -\pi < x < 0 \ 1 & 	ext{si } 0 < x < \pi \end{cases}
\end{equation*}$$

Esta función es claramente impar porque cumple que $f(-x) = -f(x)$ (es simétrica respecto al origen).

### Paso 2: Calcular los coeficientes $b_n$
La fórmula para los coeficientes de una función impar en un intervalo simétrico es:

$$ egin{equation*}
b_n = rac{2}{\pi} \int_{0}^{\pi} f(x) \sin(nx) \, dx
\end{equation*}$$

Como en el intervalo $(0, \pi)$ la función vale $1$, sustituimos:

$$ egin{equation*}
b_n = rac{2}{\pi} \int_{0}^{\pi} 1 \cdot \sin(nx) \, dx
\end{equation*}$$

Resolvemos la integral:

$$ egin{equation*}
b_n = rac{2}{\pi} \left[ -rac{\cos(nx)}{n} 
ight]_0^\pi = rac{2}{n\pi} \left( -\cos(n\pi) + \cos(0) 
ight)
\end{equation*}$$

Sabiendo que $\cos(0) = 1$ y que $\cos(n\pi) = (-1)^n$, la expresión queda:

$$ egin{equation*}
b_n = rac{2}{n\pi} \left(1 - (-1)^n
ight)
\end{equation*}$$

### Paso 3: Analizar qué pasa cuando $n$ es par o impar
Aquí es donde evaluamos el comportamiento de $(-1)^n$:
* Si $n$ es par ($n = 2, 4, 6, \dots$): $(-1)^n = 1$, por lo tanto $1 - 1 = 0 \implies \mathbf{b_n = 0}$. (¡Todos los términos pares desaparecen!).
* Si $n$ es impar ($n = 1, 3, 5, \dots$): $(-1)^n = -1$, por lo tanto $1 - (-1) = 2$. El coeficiente se convierte en:

$$ egin{equation*}
b_n = rac{2}{n\pi} (2) = rac{4}{n\pi}
\end{equation*}$$

### Paso 4: Usar la variable auxiliar $n = 2k - 1$
Como los únicos términos que aportan valor a la serie son los índices impares, no queremos escribir una sumatoria infinita cargada de ceros para los valores pares.

Para solucionar esto y barrer únicamente los armónicos impares ($1, 3, 5, 7, \dots$), definimos un nuevo índice auxiliar $k$ (donde $k = 1, 2, 3, \dots$) y hacemos el cambio de variable:

$$ egin{equation*}
n = 2k - 1
\end{equation*}$$

Sustituimos este cambio en nuestra fórmula del coeficiente $b_n$ y en el argumento del seno:
* El coeficiente: $b_{2k-1} = rac{4}{(2k-1)\pi}$
* El argumento del seno: $\sin(nx) = \sin\left((2k-1)x
ight)$

### Paso 5: Escribir la Serie de Fourier final
En lugar de usar la sumatoria tradicional con $n$, expresamos la serie utilizando la variable auxiliar $k$:

$$ egin{equation*}
f(x) = \sum_{k=1}^{\infty} b_{2k-1} \sin\left((2k-1)x
ight)
\end{equation*}$$

Sustituyendo el coeficiente obtenido:

$$ egin{equation*}
f(x) = rac{4}{\pi} \sum_{k=1}^{\infty} rac{\sin\left((2k-1)x
ight)}{2k-1}
\end{equation*}$$

Si expandes los primeros valores de $k$ ($k=1, 2, 3$), verás cómo queda la famosa serie de la onda cuadrada utilizando solo senos impares:

$$ egin{equation*}
f(x) = rac{4}{\pi} \left( \sin(x) + rac{\sin(3x)}{3} + rac{\sin(5x)}{5} + rac{\sin(7x)}{7} + \dots 
ight)
\end{equation*}$$

---

## 🔍 10. Escalamiento de Potencias (Sustitución de Variables)

Cuando te enfrentas a una serie de potencias que no tiene la forma tradicional $\sum a_n x^n$, sino una potencia compuesta de la forma:

$$ egin{equation*}
\sum_{n=0}^{\infty} a_n x^{kn}
\end{equation*}$$

(donde $k$ es un número entero positivo, por ejemplo, $x^2$, $x^3$, $x^4$, etc.), no necesitas aplicar desde cero los criterios del cociente o de la raíz a toda la expresión compleja. Puedes usar una técnica de escalamiento o cambio de variable.

* **El cambio de variable:** Haces una sustitución simple llamando a una nueva variable $y = x^k$.
* **La serie transformada:** La expresión se convierte en una serie de potencias estándar en función de $y$:

$$ egin{equation*}
\sum_{n=0}^{\infty} a_n y^n
\end{equation*}$$

* **El Radio de Convergencia:** Calculas el radio de convergencia de esta nueva serie respecto a $y$ (lo llamaremos $R_y$) utilizando los criterios habituales (como D'Alembert o Cauchy-Hadamard) aplicados sobre los coeficientes $a_n$.
* **La relación con $x$:** La serie transformada en $y$ converge si se cumple que $|y| < R_y$. Sustituyendo de regreso $y = x^k$, tenemos:

$$ egin{equation*}
|x^k| < R_y \implies |x|^k < R_y \implies |x| < \sqrt[k]{R_y} = R_y^{1/k}
\end{equation*}$$

> 💡 **Una aclaración matemática importante:** Fíjate que el radio de convergencia respecto a $x$ (que llamaríamos $R_x$) no se multiplica por $k$, sino que se le aplica la raíz $k$-ésima ($R_x = \sqrt[k]{R_y}$), ya que matemáticamente proviene de despejar el exponente de $|x|^k < R_y$. (Si en lugar de una potencia tuvieras un cambio lineal del tipo $y = x/k$, el radio sí se multiplicaría, pero al tratarse de una potencia $x^k$, el dominio se contrae mediante la raíz).

* **Ejemplo rápido:** Si tienes la serie $\sum_{n=1}^{\infty} rac{x^{2n}}{n}$, haces el cambio $y = x^2$. La serie queda como $\sum rac{y^n}{n}$. Aplicando el criterio del cociente para $y$, obtienes que su radio de convergencia es $R_y = 1$. Por lo tanto, el radio para $x$ será $R_x = \sqrt{1} = 1$, lo que significa que la serie original converge para $|x| < 1$.

---

## 🏁 11. Análisis de Bordes (Extremos del Intervalo)

Una vez que calculas el radio de convergencia $R$ (lo que te da un intervalo abierto inicial del tipo $(-R, R)$), los criterios de convergencia tradicionales (como el cociente o la raíz) fallan exactamente en los extremos, es decir, cuando $|x| = R$ (porque el límite suele dar exactamente $1$).

* **¿Por qué se deben usar?** Porque los criterios generales no pueden decidir la convergencia en la frontera, por lo que es obligatorio hacer un análisis de bordes de forma individual.
* **¿Cómo se realiza el cálculo?**
  1. Sustituyes el valor del borde derecho $x = R$ directamente en la serie de potencias original. Esto la convierte automáticamente en una serie numérica pura (sin letras $x$).
  2. Evalúas la convergencia de esa serie numérica utilizando los criterios de series numéricas (como el Criterio de Leibniz para series alternadas, comparación, integral, etc.).
  3. Repites el proceso sustituyendo el borde izquierdo $x = -R$ y evalúas la nueva serie numérica resultante.
* **Los posibles dominios resultantes:** Dependiendo de si la serie converge ($\le$ o $\ge$) o diverge ($<$ o $>$) en cada uno de los dos extremos, el dominio (o intervalo) de convergencia total adoptará obligatoriamente una de estas cuatro formas:
  * $(-R, R)$ (Diverge en ambos bordes).
  * $[-R, R)$ (Converge solo en el borde izquierdo $x = -R$).
  * $(-R, R]$ (Converge solo en el borde derecho $x = R$).
  * $[-R, R]$ (Converge en ambos bordes).

---

## 📑 12. Ejemplo Completo de Análisis de Bordes

Tomemos la clásica serie logarítmica:

$$ egin{equation*}
\sum_{n=1}^{\infty} rac{x^n}{n}
\end{equation*}$$

1. **Hallar el radio de convergencia:** Aplicando el criterio del cociente, encuentras que el radio es $R = 1$, lo que nos deja inicialmente con el intervalo abierto $(-1, 1)$.
2. **Análisis del borde derecho ($x = 1$):** Sustituimos $x = 1$ en la serie:

$$ egin{equation*}
\sum_{n=1}^{\infty} rac{1^n}{n} = \sum_{n=1}^{\infty} rac{1}{n}
\end{equation*}$$

Esta es la famosa serie armónica, la cual sabemos que diverge. Por lo tanto, el extremo $x = 1$ no se incluye (lleva paréntesis).

3. **Análisis del borde izquierdo ($x = -1$):** Sustituimos $x = -1$ en la serie:

$$ egin{equation*}
\sum_{n=1}^{\infty} rac{(-1)^n}{n} = -1 + rac{1}{2} - rac{1}{3} + rac{1}{4} - \dots
\end{equation*}$$

Esta es la serie armónica alternada. Por el Criterio de Leibniz (sus términos decrecen en valor absoluto hacia 0 y los signos alternan), la serie converge. Por lo tanto, el extremo $x = -1$ sí se incluye (lleva corchete).

4. **Dominio de convergencia final:** Combinando el intervalo abierto con el análisis de ambos bordes, el dominio de convergencia definitivo es:

$$ egin{equation*}
\mathbf{[-1, 1)}
\end{equation*}$$

---

## 🛠️ 13. Diferenciación e Integración de Series de Potencias

La diferenciación y la integración de series de potencias se pueden usar tanto por separado como juntas en un mismo ejercicio, dependiendo de lo que te pida el problema.

Su utilidad principal es la siguiente: **nos permiten encontrar la serie de potencias de funciones complejas** (como logaritmos, arcotangentes o funciones racionales complicadas) o **calcular la suma de series numéricas** partiendo de una serie muy sencilla que todos conocemos: **la serie geométrica**.

### El "Punto de Partida": La Serie Geométrica
Casi siempre que uses derivación e integración en series, arrancarás de esta fórmula básica que es válida para $|x| < 1$:

$$ egin{equation*}
rac{1}{1-x} = \sum_{n=0}^{\infty} x^n = 1 + x + x^2 + x^3 + x^4 + \dots
\end{equation*}$$

A partir de esta base, las reglas de derivación e integración término a término nos dicen que **dentro del intervalo de convergencia podemos derivar o integrar una serie como si fuera un polinomio común y corriente**, sin alterar su radio de convergencia $R$.

### 1. ¿Cuándo se usa la INTEGRACIÓN?
Se usa cuando tienes una función cuya **derivada** se parece a una fracción simple o a una serie geométrica conocida, y tú quieres hallar la serie de la función original integrándola.
* *Ejemplo clásico:* Encontrar la serie de $f(x) = \ln(1+x)$ o $f(x) =  rctan(x)$.
* Si sabes que $rac{1}{1+x} = \sum_{n=0}^{\infty} (-1)^n x^n$, puedes **integrar ambos lados** respecto a $x$ para obtener la serie del logaritmo.

### 2. ¿Cuándo se usa la DIFERENCIACIÓN?
Se usa cuando en el término general de la serie te aparece **una letra $n$ multiplicando** (por ejemplo, $\sum n x^n$ o $\sum rac{n}{2^n}$), lo cual es incómodo. Al derivar una serie, el exponente baja y se convierte en ese coeficiente $n$.

---

## 📝 Ejemplo Práctico Completo: Donde la Diferenciación es la Clave

Imaginemos un ejercicio típico de parcial: **Calcular la suma de la serie numérica:**

$$ egin{equation*}
S = \sum_{n=1}^{\infty} rac{n}{2^n}
\end{equation*}$$

A simple vista, sumar esto parece imposible. Pero mira cómo la teoría de series de potencias y la derivación lo resuelven paso a paso:

* **Paso 1: Plantear la función generadora**
Imagina una serie de potencias general donde aparezca una $x^n$ en lugar de $(1/2)^n$:

$$ egin{equation*}
f(x) = \sum_{n=1}^{\infty} n x^n
\end{equation*}$$

Nuestro objetivo es hallar a qué función equivale esto y luego evaluar $x = rac{1}{2}$.

* **Paso 2: Relacionarla con la serie geométrica**
Sabemos que la serie geométrica es:

$$ egin{equation*}
\sum_{n=0}^{\infty} x^n = rac{1}{1-x} \quad (	ext{para } |x| < 1)
\end{equation*}$$

Pero nuestra serie empieza en $n=1$ y tiene una $n$ multiplicando: $\sum_{n=1}^{\infty} n x^n$. ¿Cómo logramos que aparezca esa $n$? **¡Derivando!**

* **Paso 3: Derivar término a término**
Derivamos ambos lados de la serie geométrica respecto a $x$:
1. Derivamos el lado derecho (la función):

$$ egin{equation*}
rac{d}{dx}\left( rac{1}{1-x} 
ight) = rac{1}{(1-x)^2}
\end{equation*}$$

2. Derivamos el lado izquierdo (la serie):

$$ egin{equation*}
rac{d}{dx}\left( \sum_{n=0}^{\infty} x^n 
ight) = \sum_{n=1}^{\infty} n x^{n-1}
\end{equation*}$$

*(Nota: el término $n=0$ era una constante $1$, su derivada es 0, por eso la sumatoria ahora empieza en $n=1$)*.

Igualando ambos resultados, nos queda:

$$ egin{equation*}
\sum_{n=1}^{\infty} n x^{n-1} = rac{1}{(1-x)^2}
\end{equation*}$$

* **Paso 4: Ajustar el exponente (un pequeño truco algebraico)**
Nuestra serie original tiene $x^n$, pero aquí tenemos $x^{n-1}$. Para arreglarlo, **multiplicamos toda la ecuación por $x$**:

$$ egin{equation*}
x \cdot \sum_{n=1}^{\infty} n x^{n-1} = x \cdot rac{1}{(1-x)^2} \implies \sum_{n=1}^{\infty} n x^n = rac{x}{(1-x)^2}
\end{equation*}$$

¡Listo! Acabamos de demostrar que la serie de potencias $\sum n x^n$ es exactamente igual a la función $rac{x}{(1-x)^2}$.

* **Paso 5: Evaluar para hallar el valor numérico pedido**
El ejercicio original nos pedía calcular la suma cuando $x = rac{1}{2}$ (porque teníamos $rac{n}{2^n} = n \left(rac{1}{2}
ight)^n$). Sustituimos $x = rac{1}{2}$ en nuestra función resultante:

$$ egin{equation*}
S = \sum_{n=1}^{\infty} n \left(rac{1}{2}
ight)^n = rac{rac{1}{2}}{\left(1 - rac{1}{2}
ight)^2}
\end{equation*}$$

Resolvemos la aritmética:

$$ egin{equation*}
S = rac{rac{1}{2}}{\left(rac{1}{2}
ight)^2} = rac{rac{1}{2}}{rac{1}{4}} = rac{1}{2} \cdot 4 = 2
\end{equation*}$$

**Resultado final:** La suma de esa serie infinita es **$2$**.

---

### ¿Y se pueden usar integración y derivación juntas?
Sí. Por ejemplo, hay ejercicios donde te dan una función, tienes que **integrarla** para volverla más sencilla (como convertir una división fea en un logaritmo), aplicarle operaciones, y al final **derivar** para regresar al formato original que te pedían.

En resumen:
* Usas **Integración** cuando quieres *subir* potencias o eliminar denominadores molestos para llegar a funciones conocidas como $\ln$ o $ rctan$.
* Usas **Diferenciación** cuando quieres *bajar* potencias o hacer aparecer coeficientes $n$ que multiplican a la variable.
