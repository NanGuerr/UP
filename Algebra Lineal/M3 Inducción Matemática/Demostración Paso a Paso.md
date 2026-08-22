# 🧮 Demostración por Inducción Matemática Paso a Paso 📐

En la clase se demuestra la siguiente igualdad matemática para todos los números naturales $n$:

$$2 + 7 + 12 + \dots + (5n - 3) = \frac{n(5n - 1)}{2}$$



## 🔹 Paso Previo: Expresar en Notación de Sumatoria ($\Sigma$) 📝

Antes de comenzar con la inducción, se escribe la expresión original de una manera más compacta usando el símbolo de sumatoria. Para ello, se definen dos elementos indispensables:

* **El argumento de la sumatoria:** Se toma el término genérico de la serie, reemplazando la variable $n$ por un índice auxiliar ($j$). El argumento queda como $5j - 3$.
* **El intervalo de la sumatoria (límites):** El límite superior es $n$. Para el límite inferior, buscamos un valor entero de $j$ tal que nos dé el primer término de la serie ($2$). Si probamos con $j = 1$, obtenemos $5(1) - 3 = 2$. Por lo tanto, comienza en $j = 1$.

La expresión a demostrar queda planteada formalmente como:

$$\sum_{j=1}^{n} (5j - 3) = \frac{n(5n - 1)}{2}$$



## 🔹 Paso 1: Verificar la Base Inductiva ($n = 1$) 🏁

* **Qué se hace:** Se evalúa si la fórmula general propuesta es válida para el primer caso particular ($n = 1$).
* **Procedimiento:**
  * **Miembro Izquierdo:** Al considerar un solo término (el primero), el valor acumulado es simplemente $2$.
  * **Miembro Derecho:** Reemplazamos $n = 1$ en la fórmula:
    $$\frac{1 \cdot (5 \cdot 1 - 1)}{2} = \frac{1 \cdot 4}{2} = \mathbf{2}$$

**Conclusión:** Como ambos miembros dan el mismo resultado ($2 = 2$), la base inductiva queda verificada. ✅



## 🔹 Paso 2: Escribir la Hipótesis Inductiva ($n = k$) 💡

* **Qué se hace:** Suponemos provisionalmente que la propiedad planteada es verdadera para un número entero genérico $k$.
* **Procedimiento:** Sustituimos la variable $n$ por la letra $k$ en la expresión de sumatoria:

$$\sum_{j=1}^{k} (5j - 3) = \frac{k(5k - 1)}{2} \quad \text{(Hipótesis Inductiva)}$$



## 🔹 Paso 3: Plantear la Tesis Inductiva ($n = k + 1$) 🎯

* **Qué se hace:** Se escribe formalmente la meta matemática a la que debemos llegar en la demostración, reemplazando $n$ por el consecuente $k + 1$.
* **Procedimiento:** Reemplazamos $n$ por $k + 1$ en ambos extremos de la igualdad original:

$$\sum_{j=1}^{k+1} (5j - 3) = \frac{(k+1)[5(k+1) - 1]}{2}$$

Desarrollamos algebraicamente el miembro derecho para simplificar la expresión objetivo:

$$\frac{(k+1)(5k + 5 - 1)}{2} = \frac{(k+1)(5k + 4)}{2}$$

Multiplicamos los términos (propiedad distributiva):

$$\frac{5k^2 + 4k + 5k + 4}{2} = \mathbf{\frac{5k^2 + 9k + 4}{2}}$$

🎯 **Meta de la Tesis:** Debemos demostrar matemáticamente que la suma hasta el término $k+1$ es equivalente a $\frac{5k^2 + 9k + 4}{2}$.



## 🔹 Paso 4: Demostración ⚙️

* **Qué se hace:** Se comprueba que la tesis matemática del Paso 3 es correcta utilizando como herramienta obligatoria la Hipótesis Inductiva del Paso 2.
* **Procedimiento:**

1. **Descomposición:** Escribimos la sumatoria de la tesis hasta el término $k+1$ y separamos el último término evaluado ($j = k+1$) de la sumatoria previa que va de $1$ hasta $k$:
   $$\sum_{j=1}^{k+1} (5j - 3) = \left[\sum_{j=1}^{k} (5j - 3)\right] + [5(k+1) - 3]$$

2. **Sustitución de la Hipótesis:** El primer corchete es idéntico a la Hipótesis Inductiva (Paso 2), por lo que lo sustituimos directamente por su valor:
   $$= \frac{k(5k - 1)}{2} + [5(k+1) - 3]$$

3. **Simplificación algebraica:**
   * Resolvemos el último término independiente: $5k + 5 - 3 = 5k + 2$.
   * Reemplazamos y preparamos la suma:
     $$\frac{5k^2 - k}{2} + (5k + 2)$$
   * Sacamos factor común denominador $2$ para unificar la fracción:
     $$\frac{5k^2 - k + 2(5k + 2)}{2}$$
   * Distribuimos el producto en el numerador:
     $$\frac{5k^2 - k + 10k + 4}{2}$$
   * Agrupamos términos semejantes (operando $-k + 10k = 9k$):
     $$\mathbf{\frac{5k^2 + 9k + 4}{2}}$$

🎉 **Conclusión:** Al terminar de operar, vemos que este resultado es exactamente igual al término simplificado de la derecha que definimos en la tesis inductiva (Paso 3). Al haber coincidencia matemática total, el ejercicio queda completamente demostrado.
