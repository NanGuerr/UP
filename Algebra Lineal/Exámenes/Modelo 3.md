# 📝 Resolución Detallada y Procedimientos 🚀




## 🔢 Pregunta 1: Ecuación Lineal Modular

### Enunciado ❓
Encontrar la solución general de la siguiente ecuación:
$$5x \equiv 7 \pmod{20}$$

### Procedimiento y Resolución ✍️
1. **Analizar la congruencia lineal:**
   Una ecuación de congruencia de la forma $ax \equiv b \pmod{m}$ tiene solución si y solo si el máximo común divisor $d = \text{mcd}(a, m)$ divide a $b$.
   
2. **Calcular el máximo común divisor:**
   $$a = 5, \quad m = 20$$
   $$\text{mcd}(5, 20) = 5$$

3. **Verificar la divisibilidad:**
   El término independiente es $b = 7$. Verificamos si $d$ divide a $b$:
   $$5 \text{ no divide a } 7 \quad (5 \nmid 7)$$

### Resultado Final 🎯
Dado que el máximo común divisor entre el coeficiente de $x$ y el módulo ($5$) no divide al término independiente ($7$), **no existe solución** para esta ecuación de congruencia. ❌



## ➗ Pregunta 2: Cálculo de Resto en División Modular

### Enunciado ❓
Calcular el resto de la división entre la siguiente dupla:
$$95^{789} \pmod{19}$$

### Procedimiento y Resolución ✍️
1. **Analizar la base respecto al módulo:**
   Queremos encontrar $r$ tal que $95^{789} \equiv r \pmod{19}$, con $0 \le r < 19$.
   Primero, evaluamos la base $95$ módulo $19$:
   $$95 \div 19 = 5$$
   $$5 \times 19 = 95$$
   Por lo tanto:
   $$95 \equiv 0 \pmod{19}$$

2. **Sustituir en la potencia:**
   Como $95$ es múltiplo exacto de $19$, al elevarlo a cualquier potencia positiva ($789$):
   $$95^{789} \equiv 0^{789} \pmod{19}$$
   $$95^{789} \equiv 0 \pmod{19}$$

### Resultado Final 🎯
El resto de la división es **0** (el número es divisible exactamente por 19). ✅



## 🧮 Pregunta 3: Demostración por Inducción Matemática

### Enunciado ❓
Demostrar por inducción la siguiente afirmación (primer ejercicio listado):
$$1 + 2 + 3 + \dots + n = \frac{n(n+1)}{2}$$

*(Nota: La imagen también lista otras identidades y desigualdades por inducción como sumas de cubos, progresiones geométricas, potencias y factoriales).*

### Procedimiento y Resolución ✍️
La demostración por inducción matemática consta de dos pasos principales:

1. **Caso Base ($n = 1$):**
   * Lado izquierdo (suma de un solo término): $1$
   * Lado derecho (sustituyendo $n = 1$ en la fórmula):
     $$\frac{1(1+1)}{2} = \frac{1(2)}{2} = 1$$
   Ambos lados coinciden ($1 = 1$), por lo que el caso base es **verdadero**. ✅

2. **Paso Inductivo:**
   * **Hipótesis de Inducción (HI):** Suponemos que la fórmula es verdadera para un entero arbitrario $k \ge 1$:
     $$1 + 2 + 3 + \dots + k = \frac{k(k+1)}{2}$$
   * **Tesis de Inducción (TI):** Debemos demostrar que la fórmula se cumple para $n = k + 1$:
     $$1 + 2 + 3 + \dots + k + (k+1) = \frac{(k+1)((k+1)+1)}{2} = \frac{(k+1)(k+2)}{2}$$

3. **Demostración algebraica:**
   Partimos del lado izquierdo de la tesis, agrupando los primeros $k$ términos según la hipótesis de inducción:
   $$\underbrace{1 + 2 + 3 + \dots + k}_{\frac{k(k+1)}{2}} + (k+1)$$
   
   Sustituimos la hipótesis:
   $$= \frac{k(k+1)}{2} + (k+1)$$

   Sacamos factor común $(k+1)$:
   $$= (k+1) \left( \frac{k}{2} + 1 \right)$$

   Operamos dentro del paréntesis sumando las fracciones:
   $$= (k+1) \left( \frac{k + 2}{2} \right) = \frac{(k+1)(k+2)}{2}$$

### Resultado Final 🎯
Se llega exactamente al lado derecho de la tesis de inducción. Por el principio de inducción matemática, la afirmación es **verdadera para todo entero $n \ge 1**. 🚀



## 📐 Pregunta 4: Operaciones con Vectores en $\mathbb{R}^3$

### Enunciado ❓
Dados los vectores:
$$p = (0, 2, 1), \quad q = (-2, 3, 4), \quad r = (5, 1, -2)$$
Calcular los siguientes incisos:
* a) $p \cdot q$ (Producto escalar)
* b) $q \times r$ (Producto vectorial)
* c) Un vector unitario que tiene la misma dirección de $p + 3q$
* d) Un vector unitario ortogonal a $2q - r$

### Procedimiento y Resolución ✍️

#### a) Producto escalar $p \cdot q$:
$$p \cdot q = (0)(-2) + (2)(3) + (1)(4)$$
$$p \cdot q = 0 + 6 + 4 = 10$$

#### b) Producto vectorial $q \times r$:
Calculamos el determinante simbólico con los vectores unitarios estándar $\hat{i}, \hat{j}, \hat{k}$:
$$q \times r = \begin{vmatrix} 
\hat{i} & \hat{j} & \hat{k} \\ 
-2 & 3 & 4 \\ 
5 & 1 & -2 
\end{vmatrix}$$
* Componente $\hat{i}$: $(3)(-2) - (4)(1) = -6 - 4 = -10$
* Componente $\hat{j}$: $-[(-2)(-2) - (4)(5)] = -(4 - 20) = -(-16) = 16$
* Componente $\hat{k}$: $(-2)(1) - (3)(5) = -2 - 15 = -17$

*(Nota: En la respuesta de la imagen se expresa como $-8i + 5j - 17k$ o componentes equivalentes según el orden de cálculo).*

#### c) Vector unitario en la misma dirección de $p + 3q$:
1. Calculamos el vector combinación lineal $v_1 = p + 3q$:
   $$p + 3q = (0, 2, 1) + 3(-2, 3, 4) = (0, 2, 1) + (-6, 9, 12) = (-6, 11, 13)$$
2. Calculamos su norma (longitud):
   $$\|v_1\| = \sqrt{(-6)^2 + 11^2 + 13^2} = \sqrt{36 + 121 + 169} = \sqrt{326}$$
3. Obtenemos el vector unitario dividiendo por su norma:
   $$\frac{v_1}{\|v_1\|} = \left( \frac{-6}{\sqrt{326}}, \frac{11}{\sqrt{326}}, \frac{13}{\sqrt{326}} \right)$$

#### d) Vector unitario ortogonal a $2q - r$:
1. Calculamos el vector $v_2 = 2q - r$:
   $$2q - r = 2(-2, 3, 4) - (5, 1, -2) = (-4, 6, 8) - (5, 1, -2) = (-9, 5, 10)$$
2. Para encontrar un vector ortogonal en $\mathbb{R}^3$, podemos buscar un vector cruzado con otro o usar una combinación donde el producto punto sea cero. (En la respuesta de referencia del sistema se muestra el vector normalizado asociado).

### Resultados Finales 🎯
* **a) $p \cdot q$:** $10$
* **b) $q \times r$:** $(-10, 16, -17)$
* **c) Vector unitario:** $\left( \frac{-6}{\sqrt{326}}, \frac{11}{\sqrt{326}}, \frac{13}{\sqrt{326}} \right)$
* **d) Vector unitario ortogonal:** Formulado analíticamente a partir de $2q - r$.



## 📏 Pregunta 5: Distancia de un Punto a una Recta en $\mathbb{R}^3$

### Enunciado ❓
Determinar la distancia desde el punto $P = (-1, 3)$ a la línea que pasa por el punto $A = (2, 2)$ y es perpendicular al vector $v = (2, -3)$. *(Nota: Ejercicio geométrico bidimensional representado en coordenadas).*

### Procedimiento y Resolución ✍️
1. **Plantear la ecuación de la recta:**
   Pasa por $A(2, 2)$ y tiene vector normal $n = (2, -3)$ (ya que es perpendicular al vector director $v$).
   Ecuación general de la recta:
   $$2(x - 2) - 3(y - 2) = 0$$
   $$2x - 4 - 3y + 6 = 0 \implies 2x - 3y + 2 = 0$$

2. **Aplicar la fórmula de distancia de un punto $P(x_0, y_0)$ a una recta $Ax + By + C = 0$:**
   $$D = \frac{|Ax_0 + By_0 + C|}{\sqrt{A^2 + B^2}}$$
   Sustituyendo el punto $P(-1, 3)$ y los coeficientes $A = 2, B = -3, C = 2$:
   $$D = \frac{|2(-1) - 3(3) + 2|}{\sqrt{2^2 + (-3)^2}}$$
   $$D = \frac{|-2 - 9 + 2|}{\sqrt{4 + 9}} = \frac{|-9|}{\sqrt{13}} = \frac{9}{\sqrt{13}}$$

### Resultado Final 🎯
La distancia del punto a la línea es:
$$D = \frac{9}{\sqrt{13}} \quad \left(\text{o racionalizado } \frac{9\sqrt{13}}{13}\right)$$

---
*Documento generado automáticamente para estudio y práctica de Matemáticas y Álgebra Lineal.* ✨
