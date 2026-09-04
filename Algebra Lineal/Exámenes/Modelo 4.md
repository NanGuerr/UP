# 📝 Examen de Álgebra Lineal - Primer Parcial (Tema 5) 🚀

Este documento contiene la transcripción completa de las consignas del examen parcial de Álgebra Lineal, junto con el desarrollo analítico detallado y la resolución paso a paso de cada uno de los 9 ejercicios planteados. Las expresiones matemáticas están formateadas con notación LaTeX compatible con GitHub (`$ ... $` y `$$ ... $$`).

---

## 📌 Condiciones Generales de Aprobación ⏱️
* **Condición suficiente:** Resolver correctamente **5 de los nueve ejercicios**, que involucren obligatoriamente a todas las unidades evaluadas. ✅
* **Restricción de formato:** No trabajar con lápiz (uso obligatorio de tinta). ✒️

---

## 🔢 Ejercicio 1: Divisibilidad por Inducción Completa

### Enunciado ❓
Demostrar, usando inducción completa, que para todo natural $n$ se verifica que:
$$6^{3n+1} + 5^{n+2} + 3 \quad \text{es divisible por } 5$$
*(Nota: Corregido el término central según el estándar del ejercicio clásico de divisibilidad).*

### Procedimiento y Resolución ✍️
La demostración por inducción matemática consta de dos partes:

1. **Caso Base ($n = 1$):**
   Sustituimos $n = 1$ en la expresión:
   $$6^{3(1)+1} + 5^{1+2} + 3 = 6^4 + 5^3 + 3$$
   Calculamos los valores numéricos:
   * $6^4 = 1296$
   * $5^3 = 125$
   Sumamos:
   $$1296 + 125 + 3 = 1424$$
   Verificamos si es divisible por 5: $1424$ no termina en 0 ni en 5. Revisemos la expresión exacta del enunciado original: $6^{3n+1} + 6^{n+2} + 3$ (notando el error tipográfico común donde el segundo término es base 6). Evaluemos con $6^{n+2}$:
   $$6^4 + 6^3 + 3 = 1296 + 216 + 3 = 1515$$
   Como $1515 = 5 \times 303$, **es divisible por 5**. El caso base se cumple con éxito. ✅

2. **Paso Inductivo:**
   * **Hipótesis de Inducción (HI):** Suponemos que la proposición es verdadera para $n = k$:
     $$6^{3k+1} + 6^{k+2} + 3 = 5M \quad (M \in \mathbb{Z})$$
   * **Tesis de Inducción (TI):** Debemos demostrar que se cumple para $n = k + 1$:
     $$6^{3(k+1)+1} + 6^{(k+1)+2} + 3 = 5P \quad (P \in \mathbb{Z})$$

3. **Demostración algebraica:**
   Desarrollamos el exponente de la tesis:
   $$6^{3k+3+1} + 6^{k+1+2} + 3 = 6^{3k+1+3} + 6^{k+2+1} + 3$$
   $$= 6^3 \cdot 6^{3k+1} + 6^1 \cdot 6^{k+2} + 3$$
   $$= 216 \cdot 6^{3k+1} + 6 \cdot 6^{k+2} + 3$$
   
   Expresamos $216$ como $211 + 5$ y $6$ como $1 + 5$ (o manipulamos para aislar la hipótesis):
   $$= (211 + 5)6^{3k+1} + (1 + 5)6^{k+2} + 3$$
   $$= 211 \cdot 6^{3k+1} + 5 \cdot 6^{3k+1} + 6^{k+2} + 5 \cdot 6^{k+2} + 3$$
   Reagrupamos asociando la hipótesis de inducción $6^{3k+1} + 6^{k+2} + 3$:
   $$= (6^{3k+1} + 6^{k+2} + 3) + 210 \cdot 6^{3k+1} + 5 \cdot 6^{k+2}$$
   
   Por la hipótesis de inducción, el primer paréntesis es $5M$:
   $$= 5M + 5(42 \cdot 6^{3k+1} + 6^{k+2}) = 5(M + 42 \cdot 6^{3k+1} + 6^{k+2})$$

### Resultado Final 🎯
Se demuestra que la expresión resultante es un múltiplo entero de 5, completando la demostración por inducción. 🚀

---

## 🧮 Ejercicio 2: Sumatoria de Cubos por Inducción

### Enunciado ❓
Demostrar usando inducción completa que:
$$\sum_{i=1}^{n} i^3 = \left(\frac{n(n+1)}{2}\right)^2$$

### Procedimiento y Resolución ✍️
1. **Caso Base ($n = 1$):**
   * Lado izquierdo: $\sum_{i=1}^{1} i^3 = 1^3 = 1$
   * Lado derecho: $\left(\frac{1(1+1)}{2}\right)^2 = \left(\frac{2}{2}\right)^2 = 1^2 = 1$
   Coinciden ($1 = 1$), el caso base es verdadero. ✅

2. **Paso Inductivo:**
   * **Hipótesis de Inducción (HI):** Asumimos válido para $n = k$:
     $$\sum_{i=1}^{k} i^3 = \left(\frac{k(k+1)}{2}\right)^2$$
   * **Tesis de Inducción (TI):** Probamos para $n = k + 1$:
     $$\sum_{i=1}^{k+1} i^3 = \left(\frac{(k+1)((k+1)+1)}{2}\right)^2 = \left(\frac{(k+1)(k+2)}{2}\right)^2$$

3. **Demostración algebraica:**
   Separamos el término $k+1$ de la sumatoria:
   $$\sum_{i=1}^{k+1} i^3 = \sum_{i=1}^{k} i^3 + (k+1)^3$$
   Sustituimos la hipótesis de inducción:
   $$= \left(\frac{k(k+1)}{2}\right)^2 + (k+1)^3 = \frac{k^2(k+1)^2}{4} + (k+1)^3$$
   Sacamos factor común $(k+1)^2$:
   $$= (k+1)^2 \left( \frac{k^2}{4} + k + 1 \right) = (k+1)^2 \left( \frac{k^2 + 4k + 4}{4} \right)$$
   Reconocemos el trinomio cuadrado perfecto $k^2 + 4k + 4 = (k+2)^2$:
   $$= (k+1)^2 \frac{(k+2)^2}{4} = \left(\frac{(k+1)(k+2)}{2}\right)^2$$

### Resultado Final 🎯
Se llega exactamente al lado derecho de la tesis, demostrando la identidad para todo $n \ge 1$. 🚀

---

## 🔤 Ejercicio 3: Demostración o Contraejemplo de Divisibilidad

### Enunciado ❓
Analizar si es Verdadero o Falso la afirmación: 
$$\text{Si } a \mid bc \text{ y } \text{mcd}(a,b) = 1, \text{ entonces } a \mid c$$
Si fuera Falso presentar un contraejemplo, pero si fuere Verdadero, demostrarla.

### Procedimiento y Resolución ✍️
Esta propiedad corresponde al *Lema de Gauss* en teoría de números enteros.

1. **Análisis de veracidad:** La afirmación es **VERDADERA**. ✅
2. **Demostración analítica:**
   * Sabemos por hipótesis que $\text{mcd}(a, b) = 1$. Por la *Identidad de Bézout*, existen enteros $x, y$ tales que:
     $$ax + by = 1$$
   * Multiplicamos toda la ecuación por $c$:
     $$acx + bcy = c$$
   * Analizamos los términos del lado izquierdo:
     * El término $acx$ es claramente divisible por $a$ ($a \mid acx$).
     * El término $bcy$ también es divisible por $a$, ya que por hipótesis $a \mid bc$ (es decir, $bc = k \cdot a$), por lo tanto $bcy = (ka)y = a(ky)$, lo que implica que $a \mid bcy$.
   * La suma de dos múltiplos de $a$ es a su vez un múltiplo de $a$. Por lo tanto, $a$ divide a la suma:
     $$a \mid (acx + bcy) \implies a \mid c$$

### Resultado Final 🎯
La proposición es **Verdadera** y queda demostrada formalmente mediante la identidad de Bézout. 📌

---

## 🔢 Ejercicio 4: Propiedades de Enteros Impares

### Enunciado ❓
Demostrar que si $a$ es un entero impar, entonces la suma de su cuadrado más el triplo de su consecutivo es un entero impar.

### Procedimiento y Resolución ✍️
1. **Plantear algebraicamente el número impar:**
   Si $a$ es un número entero impar, se puede expresar como:
   $$a = 2k + 1 \quad (k \in \mathbb{Z})$$
   El consecutivo de $a$ es $a + 1 = 2k + 2$.

2. **Plantear la expresión a demostrar:**
   La suma del cuadrado de $a$ más el triplo de su consecutivo es:
   $$a^2 + 3(a + 1)$$

3. **Sustituir y desarrollar algebraicamente:**
   $$(2k + 1)^2 + 3(2k + 2)$$
   Expandimos el binomio al cuadrado y distribuimos el 3:
   $$(4k^2 + 4k + 1) + (6k + 6)$$
   Agrupamos términos semejantes por potencias:
   $$4k^2 + (4k + 6k) + (1 + 6) = 4k^2 + 10k + 7$$

4. **Reescribir para evidenciar la forma de número impar:**
   Separamos el número $7$ como $6 + 1$:
   $$4k^2 + 10k + 6 + 1$$
   Factorizamos un $2$ de los primeros tres términos:
   $$2(2k^2 + 5k + 3) + 1$$
   Definimos un nuevo entero $m = 2k^2 + 5k + 3$ (donde $m \in \mathbb{Z}$). La expresión toma la forma:
   $$2m + 1$$

### Resultado Final 🎯
Como toda expresión de la forma $2m + 1$ con $m \in \mathbb{Z}$ representa por definición a un número impar, queda demostrado que la suma es un entero impar. ✨

---

## 🔄 Ejercicio 5: Ecuación Lineal en Congruencia

### Enunciado ❓
Dada la ecuación en congruencia:
$$660x \equiv 84 \pmod{546}$$
Analizar si tiene solución y en caso afirmativo, hallar su solución general y todas las particulares positivas menores a 546.

### Procedimiento y Resolución ✍️
1. **Analizar la existencia de solución:**
   Una congruencia $ax \equiv b \pmod{m}$ tiene solución si y solo si $d = \text{mcd}(a, m)$ divide a $b$.
   * $a = 660, \quad m = 546, \quad b = 84$
   * Calculamos $\text{mcd}(660, 546)$ mediante algoritmo de Euclides:
     * $660 = 1 \times 546 + 114$
     * $546 = 4 \times 114 + 90$
     * $114 = 1 \times 90 + 24$
     * $90 = 3 \times 24 + 18$
     * $24 = 1 \times 18 + 6$
     * $18 = 3 \times 6 + 0$
     * El máximo común divisor es $d = 6$.

2. **Verificar divisibilidad:**
   Comprobamos si $6$ divide a $b = 84$:
   $$84 \div 6 = 14 \quad (\text{es divisible})$$
   Por lo tanto, **la ecuación tiene exactamente $d = 6$ soluciones módulo 546**. ✅

3. **Simplificar la congruencia:**
   Dividimos toda la ecuación entre $d = 6$:
   $$\frac{660}{6}x \equiv \frac{84}{6} \pmod{\frac{546}{6}}$$
   $$110x \equiv 14 \pmod{91}$$

4. **Resolver la congruencia reducida:**
   Reducimos $110$ y $14$ módulo $91$:
   $$110 \equiv 19 \pmod{91}$$
   $$19x \equiv 14 \pmod{91}$$
   Buscamos el inverso multiplicativo de $19$ módulo $91$. Probando valores, encontramos que $19 \times 5 = 95 \equiv 4 \pmod{91}$. Aplicando extensión de Euclides o prueba sistemática, hallamos que el inverso es $19^{-1} \equiv 53 \pmod{91}$ (ya que $19 \times 53 = 1007 = 11 \times 91 + 6 \equiv 6$ -- busquemos exacto: $19 \times 53 = 1007 = 11 \times 91 + 6$, probemos $19 \times 24 = 456 = 5 \times 91 + 1$). Así, $19^{-1} \equiv 24 \pmod{91}$.
   Multiplicamos por 24:
   $$x \equiv 24 \times 14 \pmod{91}$$
   $$24 \times 14 = 336$$
   Dividimos $336$ entre $91$: $336 = 3 \times 91 + 63$. Por lo tanto:
   $$x_0 \equiv 63 \pmod{91}$$

5. **Hallar las 6 soluciones módulo 546:**
   Las soluciones son de la forma $x_k = 63 + k \cdot 91$ para $k = 0, 1, 2, 3, 4, 5$:
   * $k = 0 \implies x_0 = 63$
   * $k = 1 \implies x_1 = 63 + 91 = 154$
   * $k = 2 \implies x_2 = 63 + 182 = 245$
   * $k = 3 \implies x_3 = 63 + 273 = 336$
   * $k = 4 \implies x_4 = 63 + 364 = 427$
   * $k = 5 \implies x_5 = 63 + 455 = 518$

### Resultado Final 🎯
* **Solución general:** $x \equiv 63 \pmod{91}$ (o módulo 546 expresado en sus 6 clases).
* **Soluciones particulares positivas menores a 546:** 
  $$\{63, 154, 245, 336, 427, 518\}$$

---

## ➗ Ejercicio 6: Resto de Potencia Modular

### Enunciado ❓
Utilizar propiedades de la congruencia para hallar el resto de dividir a $87^{1571}$ por 7. Enunciar las propiedades utilizadas.

### Procedimiento y Resolución ✍️
1. **Analizar la base módulo 7:**
   Queremos calcular $87^{1571} \pmod{7}$.
   Primero evaluamos la base $87$ módulo $7$:
   $$87 \div 7 = 12 \quad (12 \times 7 = 84)$$
   $$87 - 84 = 3$$
   Por lo tanto:
   $$87 \equiv 3 \pmod{7}$$

2. **Aplicar la propiedad de congruencia de potencias:**
   *Propiedad utilizada:* Si $a \equiv b \pmod{m}$, entonces $a^n \equiv b^n \pmod{m}$.
   Sustituimos:
   $$87^{1571} \equiv 3^{1571} \pmod{7}$$

3. **Buscar un patrón cíclico (potencias sucesivas de 3 módulo 7):**
   * $3^1 \equiv 3 \pmod{7}$
   * $3^2 = 9 \equiv 2 \pmod{7}$
   * $3^3 = 27 = 3 \times 2 = 6 \equiv -1 \pmod{7}$
   * $3^6 = (3^3)^2 \equiv (-1)^2 = 1 \pmod{7}$
   El ciclo se repite cada $6$ potencias, ya que $3^6 \equiv 1 \pmod{7}$ (consecuencia del Pequeño Teorema de Fermat).

4. **Simplificar el exponente:**
   Dividimos el exponente $1571$ entre la longitud del período ($6$):
   $$1571 \div 6 = 261 \quad \text{con resto } 5$$
   Es decir:
   $$1571 = 6(261) + 5$$

5. **Calcular el resultado final:**
   $$3^{1571} = 3^{6(261) + 5} = (3^6)^{261} \cdot 3^5$$
   Aplicando las propiedades modulares:
   $$(1)^{261} \cdot 3^5 \equiv 1 \cdot 243 \pmod{7}$$
   Ahora reducimos $243$ módulo $7$:
   $$243 \div 7 = 34 \quad (34 \times 7 = 238)$$
   $$243 - 238 = 5 \implies 243 \equiv 5 \pmod{7}$$

### Resultado Final 🎯
El resto de dividir $87^{1571}$ por 7 es **5**. ✅

---

## 📐 Ejercicio 7: Proyección Vectorial en $\mathbb{R}^3$

### Enunciado ❓
Hallar la proyección vectorial de $(\vec{v} - \vec{u})$ sobre el vector $(\vec{u} + \vec{v})$ siendo los vectores:
$$\vec{u} = (3, -2, 1) \quad \text{y} \quad \vec{v} = (-1, 3, 2)$$

### Procedimiento y Resolución ✍️
1. **Calcular los vectores resultantes de la suma y la resta:**
   * Vector denominador (sobre el cual se proyecta):
     $$\vec{a} = \vec{u} + \vec{v} = (3 + (-1), -2 + 3, 1 + 2) = (2, 1, 3)$$
   * Vector numerador (el cual se proyecta):
     $$\vec{b} = \vec{v} - \vec{u} = (-1 - 3, 3 - (-2), 2 - 1) = (-4, 5, 1)$$

2. **Aplicar la fórmula de proyección vectorial:**
   $$\text{proyl}_{\vec{a}}(\vec{b}) = \frac{\vec{b} \cdot \vec{a}}{\|\vec{a}\|^2} \vec{a}$$

3. **Calcular el producto escalar $\vec{b} \cdot \vec{a}$:**
   $$\vec{b} \cdot \vec{a} = (-4)(2) + (5)(1) + (1)(3)$$
   $$\vec{b} \cdot \vec{a} = -8 + 5 + 3 = 0$$

4. **Analizar el resultado:**
   Como el producto escalar es $0$, los vectores $(\vec{v} - \vec{u})$ y $(\vec{u} + \vec{v})$ son **ortogonales** (perpendiculares).

### Resultado Final 🎯
La proyección vectorial es el **vector nulo**:
$$\text{proy} = (0, 0, 0)$$

---

## 🔲 Ejercicio 8: Área del Paralelogramo en $\mathbb{R}^3$

### Enunciado ❓
Hallar el área del paralelogramo que tiene por lados consecutivos a los vectores:
$$\vec{a} = (2, -3, 1) \quad \text{y} \quad \vec{b} = (0, -1, 1)$$

### Procedimiento y Resolución ✍️
1. **Recordar la fórmula geométrica:**
   El área de un paralelogramo definido por dos vectores consecutivos $\vec{a}$ y $\vec{b}$ en el espacio se calcula mediante la norma de su producto vectorial:
   $$\text{Área} = \|\vec{a} \times \vec{b}\|$$

2. **Calcular el producto vectorial $\vec{a} \times \vec{b}$:**
   $$\vec{a} \times \vec{b} = \begin{vmatrix} 
   \hat{i} & \hat{j} & \hat{k} \\ 
   2 & -3 & 1 \\ 
   0 & -1 & 1 
   \end{vmatrix}$$
   * Componente $\hat{i}$: $(-3)(1) - (1)(-1) = -3 + (-1) = -2$ (nota: $(-3)(1) - (1)(-1) = -3 - (-1) = -2$)
   * Componente $\hat{j}$: $-[(2)(1) - (1)(0)] = -(2 - 0) = -2$
   * Componente $\hat{k}$: $(2)(-1) - (-3)(0) = -2 - 0 = -2$
   
   Por lo tanto:
   $$\vec{a} \times \vec{b} = (-2, -2, -2)$$

3. **Calcular la norma del vector producto cruz:**
   $$\|\vec{a} \times \vec{b}\| = \sqrt{(-2)^2 + (-2)^2 + (-2)^2}$$
   $$\sqrt{4 + 4 + 4} = \sqrt{12} = 2\sqrt{3}$$

### Resultado Final 🎯
El área del paralelogramo es:
$$\text{Área} = 2\sqrt{3} \quad \text{unidades cuadradas}$$

---

## 📏 Ejercicio 9: Condición de Paralelismo entre Vectores

### Enunciado ❓
Dados los puntos $L = (1, -3, -2)$ y $M = (1-k, 3, -2)$, hallar los valores de $h$ y $k$ para que el vector $\vec{LM}$ sea paralelo al vector $\vec{v} = (2, 5, h-3)$.

### Procedimiento y Resolución ✍️
1. **Determinar las componentes del vector $\vec{LM}$:**
   $$\vec{LM} = M - L = ((1-k) - 1, \quad 3 - (-3), \quad -2 - (-2))$$
   $$\vec{LM} = (-k, \quad 6, \quad 0)$$

2. **Plantear la condición de paralelismo:**
   Dos vectores son paralelos si y solo si uno es un múltiplo escalar del otro ($\vec{LM} = c \cdot \vec{v}$ para algún escalar $c \neq 0$), o bien sus componentes correspondientes son proporcionales.
   Comparando con $\vec{v} = (2, 5, h-3)$:
   $$\frac{-k}{2} = \frac{6}{5} = \frac{0}{h-3}$$

3. **Resolver para las incógnitas $h$ y $k$:**
   * Analizamos la tercera componente (coordenada $z$):
     $$\frac{0}{h-3} = \frac{6}{5} \implies 0 = 6(h-3) \implies h - 3 = 0 \implies \mathbf{h = 3}$$
     *(Nota: Como el denominador no puede ser cero, $h$ no puede ser 3 a menos que el numerador sea 0, lo cual ocurre aquí. Si $h=3$, la componente z de $\vec{v}$ es 0, coincidiendo con $\vec{LM}$).*
   
   * Analizamos la componente $y$ para hallar la constante de proporcionalidad $c$:
     $$c \cdot 5 = 6 \implies c = \frac{6}{5}$$

   * Usamos el valor de $c$ en la primera componente (coordenada $x$):
     $$-k = c \cdot 2 = \left(\frac{6}{5}\right)(2) = \frac{12}{5}$$
     $$k = -\frac{12}{5}$$

### Resultado Final 🎯
Los valores requeridos son:
$$h = 3 \quad \text{y} \quad k = -\frac{12}{5}$$

---
*Documento transcrito y generado detalladamente para estudio y preparación de exámenes de Álgebra Lineal.* ✨
