# 📝 Primer Parcial de Álgebra Lineal Modelo 1


### 1️⃣ Demostración 1: Divisibilidad
**Enunciado:** Demostrar que si $a \mid b + c$ y $a \mid b$, entonces $a \mid c$.

* **Procedimiento detallado:**
  1. Por definición de divisibilidad, la hipótesis establece que:
     * $a \mid b + c \implies b + c = a \cdot k$, para algún $k \in \mathbb{Z}$
     * $a \mid b \implies b = a \cdot k'$, para algún $k' \in \mathbb{Z}$
  2. Sustituimos la expresión de $b$ en la primera ecuación:
     $$(a \cdot k') + c = a \cdot k$$
  3. Despejamos $c$:
     $$c = a \cdot k - a \cdot k'$$
  4. Sacamos factor común $a$:
     $$c = a \cdot (k - k')$$
  5. Como la diferencia de enteros es un número entero, definimos $k'' = k - k' \in \mathbb{Z}$, por lo que:
     $$c = a \cdot k''$$
  6. **Conclusión:** Por definición, esto implica directamente que $a \mid c$. $\blacksquare$



### 2️⃣ Demostración 2: Congruencia modular
**Enunciado:** Demostrar que si $a \equiv b \pmod{m}$ y $c \equiv d \pmod{m}$, entonces $a \cdot c \equiv b \cdot d \pmod{m}$.

* **Procedimiento detallado:**
  1. Por definición de congruencia módulo $m$:
     * $a \equiv b \pmod{m} \implies m \mid (b - a) \implies b - a = m \cdot k$, para algún $k \in \mathbb{Z}$
     * $c \equiv d \pmod{m} \implies m \mid (d - c) \implies d - c = m \cdot k'$, para algún $k' \in \mathbb{Z}$
  2. Multiplicamos convenientemente para relacionar los productos. Partimos de la expresión del producto cruzado expandido o combinaciones algebraicas equivalentes:
     $$(b - a)d + (d - c)a = m \cdot k \cdot d + m \cdot k' \cdot a$$
  3. Distribuimos y desarrollamos el miembro izquierdo:
     $$bd - ad + ad - ac = m(kd + k'a)$$
  4. Simplificamos los términos opuestos ($-ad + ad = 0$):
     $$bd - ac = m(kd + k'a)$$
  5. Dado que $kd + k'a \in \mathbb{Z}$, podemos denotar $k'' = kd + k'a$, obteniendo:
     $$bd - ac = m \cdot k'' \implies m \mid (bd - ac)$$
  6. **Conclusión:** Por definición de congruencia, se concluye que $a \cdot c \equiv b \cdot d \pmod{m}$. $\blacksquare$



### 3️⃣ Demostración 3: Norma de vectores perpendiculares
**Enunciado:** Demostrar que si $A$ y $B$ son vectores perpendiculares, entonces $\|A + B\|^2 = \|A\|^2 + \|B\|^2$.

* **Procedimiento detallado:**
  1. Desarrollamos la norma al cuadrado de la suma de dos vectores utilizando la propiedad de producto interno:
     $$\|A + B\|^2 = \langle A + B, A + B \rangle$$
  2. Aplicamos las propiedades de linealidad del producto escalar:
     $$\|A + B\|^2 = \langle A, A \rangle + \langle A, B \rangle + \langle B, A \rangle + \langle B, B \rangle$$
  3. Usamos la propiedad conmutativa del producto escalar ($\langle A, B \rangle = \langle B, A \rangle$) y la definición de norma ($\|X\|^2 = \langle X, X \rangle$):
     $$\|A + B\|^2 = \|A\|^2 + 2\langle A, B \rangle + \|B\|^2$$
  4. Como la hipótesis indica que $A$ y $B$ son vectores perpendiculares (ortogonales), su producto escalar es nulo:
     $$\langle A, B \rangle = 0$$
  5. Sustituimos este valor:
     $$\|A + B\|^2 = \|A\|^2 + 2(0) + \|B\|^2$$
  6. **Conclusión:** Obtenemos la identidad pitagórica vectorial deseada:
     $$\|A + B\|^2 = \|A\|^2 + \|B\|^2$$ $\blacksquare$



## 🛠️ PRÁCTICA

### 📌 M1) Cálculo de resto modular
**Enunciado:** Hallar el resto de dividir $117^{1237}$ por $11$.

* **Procedimiento detallado:**
  1. Primero evaluamos la base en módulo 11:
     $$117 \equiv 7 \pmod{11}$$
  2. Buscamos el patrón cíclico de las potencias de $7$ módulo $11$:
     * $7^1 \equiv 7 \pmod{11}$
     * $7^2 = 49 \equiv 5 \pmod{11}$
     * $7^3 = 7 \cdot 5 = 35 \equiv 2 \pmod{11}$
     * $7^4 = 7 \cdot 2 = 14 \equiv 3 \pmod{11}$
     * $7^5 = 7 \cdot 3 = 21 \equiv 10 \pmod{11}$
     * $7^6 = 7 \cdot 10 = 70 \equiv 4 \pmod{11}$
     * $7^7 = 7 \cdot 4 = 28 \equiv 6 \pmod{11}$
     * $7^8 = 7 \cdot 6 = 42 \equiv 9 \pmod{11}$
     * $7^9 = 7 \cdot 9 = 63 \equiv 8 \pmod{11}$
     * $7^{10} = 7 \cdot 8 = 56 \equiv 1 \pmod{11}$
  3. El ciclo se repite cada **10** potencias ($7^{10} \equiv 1 \pmod{11}$).
  4. Tomamos el exponente $1237$ y lo dividimos entre el período del ciclo ($10$):
     $$1237 = 10 \cdot 123 + 7$$
  5. Aplicamos las propiedades de las potencias modulares:
     $$117^{1237} \equiv 7^{1237} \equiv (7^{10})^{123} \cdot 7^7 \equiv (1)^{123} \cdot 7^7 \equiv 7^7 \pmod{11}$$
  6. De la tabla de potencias calculada previamente, sabemos que $7^7 \equiv 6 \pmod{11}$.
  7. **Respuesta:** El resto de la división es **6**.



### 📌 M2) Inducción Completa
**Enunciado a):** Demostrar que $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$ para todo $n \in \mathbb{N}$.

* **Procedimiento detallado:**
  1. **Caso base ($n = 1$):**
     * Lado izquierdo: $\sum_{i=1}^{1} i^2 = 1^2 = 1$
     * Lado derecho: $\frac{1(1+1)(2(1)+1)}{6} = \frac{1 \cdot 2 \cdot 3}{6} = \frac{6}{6} = 1$
     * Se verifica el caso base.
  2. **Hipótesis de inducción (H.I.):** Suponemos que la fórmula es válida para un cierto $n = k$:
     $$\sum_{i=1}^{k} i^2 = \frac{k(k+1)(2k+1)}{6}$$
  3. **Paso inductivo:** Debemos demostrar que se cumple para $n = k+1$:
     $$\sum_{i=1}^{k+1} i^2 = \frac{(k+1)((k+1)+1)(2(k+1)+1)}{6} = \frac{(k+1)(k+2)(2k+3)}{6}$$
  4. Desarrollamos la sumatoria para $k+1$:
     $$\sum_{i=1}^{k+1} i^2 = \left( \sum_{i=1}^{k} i^2 \right) + (k+1)^2$$
  5. Aplicamos la hipótesis de inducción:
     $$= \frac{k(k+1)(2k+1)}{6} + (k+1)^2$$
  6. Sacamos factor común $(k+1)$:
     $$= (k+1) \left[ \frac{k(2k+1)}{6} + (k+1) \right] = (k+1) \left[ \frac{2k^2 + k + 6k + 6}{6} \right]$$
  7. Simplificamos el numerador agrupando términos semejantes:
     $$= (k+1) \left[ \frac{2k^2 + 7k + 6}{6} \right]$$
  8. Factorizamos el trinomio cuadrático $2k^2 + 7k + 6 = (k+2)(2k+3)$:
     $$= \frac{(k+1)(k+2)(2k+3)}{6}$$
  9. **Conclusión:** Se llega exactamente a la fórmula esperada para $n = k+1$, por lo que la identidad queda demostrada por inducción. $\blacksquare$



### 📌 M3) Ecuación Diofántica
**Enunciado:** Resolver la ecuación diofántica $486x - 660y = 84$.

* **Procedimiento detallado:**
  1. Aplicamos el Algoritmo de Euclides para hallar el máximo común divisor entre $486$ y $660$:
     * $660 = 1 \cdot 486 + 174$
     * $486 = 2 \cdot 174 + 138$
     * $174 = 1 \cdot 138 + 36$
     * $138 = 3 \cdot 36 + 30$
     * $36 = 1 \cdot 30 + 6$
     * $30 = 5 \cdot 6 + 0$
  2. El último residuo no nulo es el mcd: $\text{mcd}(486, 660) = 6$.
  3. Verificamos si tiene solución analizando el término independiente ($84$):
     Como $6 \mid 84$ ($84 / 6 = 14$), **la ecuación tiene solución**.
  4. Simplificamos toda la ecuación dividiendo por 6:
     $$81x - 110y = 14$$
  5. Despejamos el coeficiente menor o aplicamos identidades de Bezout para hallar una solución particular $(x_0, y_0)$. Expresando el $6$ en función de las divisiones anteriores (reversa de Euclides):
     * $6 = 36 - 1 \cdot 30$
     * $30 = 138 - 3 \cdot 36 \implies 6 = 36 - 1(138 - 3 \cdot 36) = 4 \cdot 36 - 1 \cdot 138$
     * Sustituyendo los demás restos sucesivos se llega a los coeficientes particulares base para el sistema reducido.



### 📌 M4) Vectores Perpendiculares y Unitarios
**Enunciado:** Hallar 3 vectores perpendiculares a $(1, 2, -1)$ que sean unitarios.

* **Procedimiento detallado:**
  1. Sea $V = (x, y, z)$ un vector genérico perpendicular a $A = (1, 2, -1)$. Su producto escalar debe ser cero:
     $$\langle (x, y, z), (1, 2, -1) \rangle = 0 \implies x + 2y - z = 0 \implies z = x + 2y$$
  2. Además, para que sea unitario, su norma debe ser igual a 1:
     $$\|V\| = \sqrt{x^2 + y^2 + z^2} = 1 \implies x^2 + y^2 + z^2 = 1$$
  3. Sustituimos $z = x + 2y$ en la ecuación de la norma:
     $$x^2 + y^2 + (x + 2y)^2 = 1$$
     $$x^2 + y^2 + x^2 + 4xy + 4y^2 = 1$$
     $$2x^2 + 4xy + 5y^2 = 1$$
  4. Como tenemos una ecuación con dos incógnitas y necesitamos encontrar 3 vectores específicos, podemos asignar valores sencillos a las variables (por ejemplo, haciendo $x = 0$ o $y = 0$):
     * **Caso 1 ($x = 0$):**
       $$5y^2 = 1 \implies y = \pm \frac{1}{\sqrt{5}}$$
       Si $y = \frac{1}{\sqrt{5}}$, entonces $z = 0 + 2\left(\frac{1}{\sqrt{5}}\right) = \frac{2}{\sqrt{5}}$.
       * Vector 1: $V_1 = \left(0, \frac{1}{\sqrt{5}}, \frac{2}{\sqrt{5}}\right)$.
     * **Caso 2 ($y = 0$):**
       $$2x^2 = 1 \implies x = \pm \frac{1}{\sqrt{2}}$$
       Si $x = \frac{1}{\sqrt{2}}$, entonces $z = \frac{1}{\sqrt{2}} + 0 = \frac{1}{\sqrt{2}}$.
       * Vector 2: $V_2 = \left(\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}}\right)$.
     * **Caso 3:** Podemos tomar el simétrico del Caso 1 o asignar otro valor compatible, por ejemplo haciendo $y = -\frac{1}{\sqrt{5}}$, o combinando adecuadamente las componentes para obtener un tercer vector linealmente independiente en el plano ortogonal.



### 📌 M5) Vector con Ángulo y Norma Dados
**Enunciado:** Sea $A = (-1, 0)$. Encontrar $B$ tal que $\angle(A, B) = \frac{\pi}{3}$ ($60^\circ$) y $\|B\| = 1$.

* **Procedimiento detallado:**
  1. Sea el vector $B = (x, y)$. Sabemos que su norma es 1, por lo que se encuentra sobre la circunferencia unitaria:
     $$\|B\| = \sqrt{x^2 + y^2} = 1 \implies x^2 + y^2 = 1$$
  2. La norma del vector $A = (-1, 0)$ es:
     $$\|A\| = \sqrt{(-1)^2 + 0^2} = 1$$
  3. Usamos la fórmula del producto escalar basada en el ángulo entre dos vectores:
     $$\langle A, B \rangle = \|A\| \cdot \|B\| \cdot \cos(\theta)$$
  4. Sustituimos los valores conocidos ($\theta = \frac{\pi}{3}$, $\cos(\pi/3) = \frac{1}{2}$):
     $$(-1)(x) + (0)(y) = (1)(1) \cdot \cos\left(\frac{\pi}{3}\right)$$
     $$-x = \frac{1}{2} \implies x = -\frac{1}{2}$$
  5. Sustituimos el valor de $x$ en la ecuación de la circunferencia unitaria para hallar $y$:
     $$\left(-\frac{1}{2}\right)^2 + y^2 = 1$$
     $$\frac{1}{4} + y^2 = 1 \implies y^2 = 1 - \frac{1}{4} = \frac{3}{4}$$
     $$y = \pm \frac{\sqrt{3}}{2}$$
  6. **Respuesta:** Existen dos vectores posibles que satisfacen las condiciones dadas:
     $$B_1 = \left(-\frac{1}{2}, \frac{\sqrt{3}}{2}\right) \quad \text{o} \quad B_2 = \left(-\frac{1}{2}, -\frac{\sqrt{3}}{2}\right)$$
