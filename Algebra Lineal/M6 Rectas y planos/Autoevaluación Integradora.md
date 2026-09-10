# 📝 Autoevaluación Integradora (Módulos 1 a 6) 🧮

**Esta evaluación contiene preguntas que pueden recibir crédito parcial o negativo.** ⚠️



## ❓ Pregunta 1: Ecuaciones Diofánticas 🔢
**Leer los siguientes enunciados y señalar cuál o cuáles son correctos:**
*   [ ] A. Una ecuación diofántica puede admitir una única solución diofántica.
*   [ ] B. Una ecuación diofántica admite siempre una solución diofántica.
*   [x] C. Una ecuación diofántica puede admitir infinitas soluciones diofánticas.
*   [x] D. Una ecuación diofántica puede no admitir ningunas soluciones.

**📖 Procedimiento Detallado y Análisis:**
Las ecuaciones diofánticas lineales tienen la forma $ax + by = c$, donde $a$, $b$ y $c$ son enteros. 
*   **Criterio de solubilidad:** Tienen solución si y solo si el máximo común divisor de $a$ y $b$, denotado como $d = \gcd(a, b)$, divide a $c$ (es decir, $d \mid c$). Si no lo divide, **no tiene solución** (Opción D es correcta, Opción B es falsa).
*   **Cantidad de soluciones:** Si existe una solución particular $(x_0, y_0)$, entonces existen **infinitas soluciones** dadas por las fórmulas $x = x_0 + \frac{b}{d}k$ y $y = y_0 - \frac{a}{d}k$ para cualquier entero $k$. Por lo tanto, nunca tienen una única solución (Opción A es falsa, Opción C es correcta).



## ❓ Pregunta 2: Ecuaciones de Congruencia 🕰️
**Encontrar la solución general de la siguiente ecuación de congruencia:**
$$7x \equiv 1 \pmod{26}$$

*   [ ] A. $x \equiv 15 \pmod{26}$
*   [ ] B. $x = 15$
*   [x] C. $x = 15 + 26t$ con $t$ entero
*   [ ] D. $x = 15 + 26t$ con $t$ real

**📖 Procedimiento Detallado y Análisis:**
Debemos encontrar el inverso multiplicativo de $7$ módulo $26$. Utilizamos el Algoritmo de Euclides Extendido:
1.  $26 = 7 \cdot 3 + 5$
2.  $7 = 5 \cdot 1 + 2$
3.  $5 = 2 \cdot 2 + 1$

Despejamos el resto $1$ (hacia atrás):
$$1 = 5 - 2 \cdot 2$$
$$1 = 5 - (7 - 5 \cdot 1) \cdot 2 = 5 \cdot 3 - 7 \cdot 2$$
$$1 = (26 - 7 \cdot 3) \cdot 3 - 7 \cdot 2 = 26 \cdot 3 - 7 \cdot 9 - 7 \cdot 2 = 26 \cdot 3 - 7 \cdot 11$$

Observamos que $-11 \cdot 7 \equiv 1 \pmod{26}$.
Para convertir el $-11$ a un número positivo congruente en módulo $26$, le sumamos $26$:
$$-11 + 26 = 15$$
Por lo tanto, el inverso multiplicativo es $15$. La ecuación queda:
$$x \equiv 15 \pmod{26}$$

La solución general se escribe matemáticamente como la clase de equivalencia, es decir, todos los números que difieren de $15$ por un múltiplo de $26$:
$$x = 15 + 26t, \quad t \in \mathbb{Z}$$
*(Nota: La opción A es una forma correcta de expresarlo, pero la opción C da la definición explícita completa de "solución general" con parámetro $t$ entero).*



## ❓ Pregunta 3: Sistemas Homogéneos 📐
**Un sistema homogéneo de ecuaciones lineales:**
*   [x] A. Tiene siempre una solución.
*   [ ] B. La solución puede no existir.
*   [x] C. Puede tener infinitas soluciones.
*   [x] D. Tiene siempre una solución trivial.

**📖 Procedimiento Detallado y Análisis:**
Un sistema de ecuaciones lineales es homogéneo cuando todos los términos independientes son cero (forma matricial $Ax = 0$).
*   Si reemplazamos todas las incógnitas por $0$, la igualdad siempre se cumple (ya que $A \cdot 0 = 0$). A esta se le llama **solución trivial**. (Por lo tanto, A y D son correctas, B es falsa).
*   Dependiendo del rango de la matriz de coeficientes, si hay variables libres (grados de libertad), el sistema es compatible indeterminado y admite **infinitas soluciones** adicionales a la trivial. (Por lo tanto, C es correcta).



## ❓ Pregunta 4: Rectas en $\mathbb{R}^3$ 📏
**Decidir si la recta**
$$L_1: \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} 3 \\ -1 \\ 2 \end{pmatrix} + t \begin{pmatrix} 3 \\ 6 \\ 2 \end{pmatrix}$$
**y la recta**
$$L_2: \begin{cases} x = 2 + 6t \\ y = -1 - 3t \\ z = 2 \end{cases}$$
**son:**
*   [x] A. Ortogonales.
*   [ ] B. Ninguna de las dos opciones.
*   [ ] C. Paralelas.

**📖 Procedimiento Detallado y Análisis:**
Para estudiar la posición relativa, extraemos los vectores directores de ambas rectas:
*   Vector director de $L_1$: $\vec{v}_1 = (3, 6, 2)$
*   Vector director de $L_2$ (los coeficientes asociados al parámetro $t$): $\vec{v}_2 = (6, -3, 0)$

Verificamos el producto escalar (o producto punto) entre ambos vectores:
$$\vec{v}_1 \cdot \vec{v}_2 = (3 \cdot 6) + (6 \cdot -3) + (2 \cdot 0)$$
$$\vec{v}_1 \cdot \vec{v}_2 = 18 - 18 + 0 = 0$$

Como el producto escalar es exactamente cero, los vectores directores forman un ángulo de $90^\circ$. Por lo tanto, las rectas son **ortogonales**.



## ❓ Pregunta 5: Magnitud de un Vector ➡️
**Calcular la magnitud del vector $v = (2,2)$**
*   [ ] A. $2.8$
*   [ ] B. $2.828427$
*   [x] C. $2\sqrt{2}$
*   [ ] D. $2$

**📖 Procedimiento Detallado y Análisis:**
La magnitud (o norma) de un vector $v = (x, y)$ se calcula utilizando el Teorema de Pitágoras:
$$\|v\| = \sqrt{x^2 + y^2}$$
Sustituyendo los valores:
$$\|v\| = \sqrt{2^2 + 2^2} = \sqrt{4 + 4} = \sqrt{8}$$
Simplificando el radical (factorizando):
$$\sqrt{8} = \sqrt{4 \cdot 2} = \sqrt{4} \cdot \sqrt{2} = 2\sqrt{2}$$
*(Las opciones A y B son solo aproximaciones decimales incompletas; C es el valor exacto formal).*



## ❓ Pregunta 6: Vectores Unitarios 🎯
**Encuentre un vector unitario y paralelo al vector $v = (3,4)$**
*   [ ] A. $\left( \frac{3}{\sqrt{5}}, \frac{4}{\sqrt{5}} \right)$
*   [x] B. $\left( \frac{3}{5}, \frac{4}{5} \right)$
*   [ ] C. $(1, 2)$
*   [ ] D. $\left( \frac{3\sqrt{5}}{5}, \frac{4\sqrt{5}}{5} \right)$

**📖 Procedimiento Detallado y Análisis:**
Para encontrar un vector unitario (de longitud $1$) $\hat{u}$ que sea paralelo a $v$, debemos dividir el vector original por su propia magnitud.
Primero calculamos la magnitud de $v$:
$$\|v\| = \sqrt{3^2 + 4^2} = \sqrt{9 + 16} = \sqrt{25} = 5$$

Ahora, multiplicamos cada componente del vector por el escalar $\frac{1}{5}$:
$$\hat{u} = \frac{v}{\|v\|} = \left( \frac{3}{5}, \frac{4}{5} \right)$$



## ❓ Pregunta 7: Distancia entre Puntos 📍
**Calcular la distancia entre el punto $P = (3, -4, 3)$ y $Q = (3, 2, 5)$**
*   [x] A. $\sqrt{40}$
*   [ ] B. $6.324$
*   [x] C. $2\sqrt{10}$
*   [ ] D. $6.325$
*(Nota: Tanto la opción A como la C son respuestas matemáticas exactas y equivalentes, marcamos ambas como formalmente correctas).*

**📖 Procedimiento Detallado y Análisis:**
La distancia euclidiana entre dos puntos $P(x_1, y_1, z_1)$ y $Q(x_2, y_2, z_2)$ en el espacio tridimensional se calcula con la fórmula:
$$d(P, Q) = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2 + (z_2 - z_1)^2}$$
Sustituimos los valores de los puntos:
$$d(P, Q) = \sqrt{(3 - 3)^2 + (2 - (-4))^2 + (5 - 3)^2}$$
$$d(P, Q) = \sqrt{0^2 + (2 + 4)^2 + 2^2}$$
$$d(P, Q) = \sqrt{0 + 6^2 + 4} = \sqrt{36 + 4} = \sqrt{40}$$

Al simplificar la raíz extrayendo factores:
$$\sqrt{40} = \sqrt{4 \cdot 10} = 2\sqrt{10}$$



## ❓ Pregunta 8: Inducción Matemática 🧗‍♂️
**La expresión $2n < n!$ verifica la base inductiva por $n=3$**
*   [ ] Verdadero
*   [x] Falso

**📖 Procedimiento Detallado y Análisis:**
Para verificar si un caso base se cumple, en este caso particular para $n = 3$, debemos sustituir $n$ por $3$ en ambos lados de la desigualdad.
*   **Lado izquierdo:** $2n = 2(3) = 6$
*   **Lado derecho:** $n! = 3! = 3 \times 2 \times 1 = 6$

Evaluamos la expresión original sustituida:
$$6 < 6$$
Esto es **Falso** (ambos números son idénticos, por lo que $6$ no es estrictamente menor a $6$). Por lo tanto, la proposición no verifica la base inductiva para $n=3$. (Para que fuera verdadera, la base inductiva inicial debería haber sido probada en $n=4$, donde $8 < 24$ se cumple).
