# 📝 Actividad Evaluativa: Ecuaciones Diofánticas 🧮


## ❓ Pregunta 1: Solución Particular de Ecuación Diofántica

Encontrar una solución particular de la siguiente ecuación diofántica:
$$3x + 6y = 22$$

### 💡 Respuesta / Procedimiento:
* $a = 3$, $b = 6$, $n = 22$
* $\gcd(3, 6) = 3$
* Como $3 \nmid 22$ (22 no es divisible por 3):
* **Resultado:** No tiene solución entera. ❌



## ❓ Pregunta 2: Solución General de Ecuación Diofántica

Encontrar la solución general de la siguiente ecuación diofántica:
$$39x + 24y = 6$$

### 💡 Respuesta / Procedimiento:
* $a = 39$, $b = 24$, $c = 6$
* $\gcd(39, 24) = 3$
* Como $3 \mid 6$ (6 es múltiplo de 3), la ecuación **tiene solución entera**. ✅
* **Solución General:**
  $$\begin{cases} x = -6 + \left(\frac{24}{3}\right)t = -6 + 8t \\ y = 10 - \left(\frac{39}{3}\right)t = 10 - 13t \end{cases}, \quad t \in \mathbb{Z}$$



## ❓ Pregunta 3: Ecuación de Congruencia

Encontrar la solución general de la siguiente ecuación de congruencia:
$$5x \equiv 6 \pmod{7}$$

### 💡 Respuesta / Procedimiento:
* **Algoritmo de Euclides para MCD:**
  $$7 = 1 \cdot 5 + 2$$
  $$5 = 2 \cdot 2 + 1$$
  $$2 = 2 \cdot 1 + 0 \implies \gcd(5, 7) = 1$$
* **Cálculo del Inverso:**
  $$2 = 7 - 1 \cdot 5$$
  $$1 = 5 - 2 \cdot (7 - 1 \cdot 5) = 3 \cdot 5 - 2 \cdot 7$$
  Por lo tanto, $3 \cdot 5 \equiv 1 \pmod{7}$ (el inverso de 5 mod 7 es 3).
* **Multiplicando por el inverso:**
  $$x \equiv 6 \cdot 3 = 18 \equiv 4 \pmod{7}$$
* **Solución General:**
  $$x = 4 + 7k, \quad k \in \mathbb{Z}$$ ✅



## ❓ Pregunta 4: Cálculo de Resto con Congruencia

Calcular el resto de la división entre $41^{2477}$ y $14$:

* **Opciones:**
  * 0 ❌
  * 1 ❌
  * 7 ❌
  * **13** ✅ *(Correcta)*

### 💡 Respuesta Correcta: **13** 🎉
