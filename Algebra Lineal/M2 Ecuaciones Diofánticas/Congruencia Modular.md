# 📝 Transcripción y Resolución de Congruencia Modular

## 📄 Transcripción de la Imagen

* $39 \pmod{11}$
* $39^{5543} \equiv x \pmod{11}$

### 1️⃣ Encontrar la $N$ ($39^N \equiv 1 \pmod{11}$)
* $39^1 \equiv 6 \pmod{11}$
* $39^2 \equiv 6^2 \equiv 36 \equiv 3 \pmod{11}$
* $39^3 \equiv 39^2 \cdot 39^1 \equiv 3 \cdot 6 \equiv 18 \equiv 7 \pmod{11}$
* $39^4 \equiv 39^3 \cdot 39^1 \equiv 7 \cdot 6 \equiv 42 \equiv 9 \pmod{11}$
* $39^5 \equiv 39^4 \cdot 39 \equiv 9 \cdot 6 \equiv 54 \equiv 10 \pmod{11}$
* $39^6 \equiv 39^5 \cdot 39 \equiv 10 \cdot 6 \equiv 60 \equiv 5 \pmod{11}$
* $39^7 \equiv 39^6 \cdot 39 \equiv 5 \cdot 6 \equiv 30 \equiv 8 \pmod{11}$
* $39^8 \equiv 39^7 \cdot 39 \equiv 8 \cdot 6 \equiv 48 \equiv 4 \pmod{11}$
* $39^9 \equiv 39^8 \cdot 39 \equiv 4 \cdot 6 \equiv 24 \equiv 2 \pmod{11}$
* $39^{10} \equiv 39^9 \cdot 39 \equiv 2 \cdot 6 \equiv 12 \equiv 1 \pmod{11}$

### 2️⃣ División del Exponente
* $5543 = c \cdot 10 + r$
* $= 554 \cdot 10 + 3$

---

## ⚙️ Paso a Paso del Método Resolutivo

El procedimiento resuelve una congruencia exponencial de la forma $a^b \pmod{m}$, específicamente $39^{5543} \equiv x \pmod{11}$, utilizando las propiedades de la aritmética modular y el orden de un elemento (o el Pequeño Teorema de Fermat).

### 🔍 Paso 1: Simplificar la base módulo el divisor
Primero, se reduce la base $39$ módulo $11$ para trabajar con números más pequeños. Dividiendo $39$ entre $11$, se obtiene que $39 \equiv 6 \pmod{11}$. Por tanto, la expresión original equivale a calcular $6^{5543} \pmod{11}$.

### 🔢 Paso 2: Encontrar el orden multiplicativo ($N$)
Se busca el menor entero positivo $N$ tal que $39^N \equiv 1 \pmod{11}$ (o equivalentemente $6^N \equiv 1 \pmod{11}$).

Para hallarlo, se calculan potencias sucesivas módulo $11$:

* $39^1 \equiv 6 \pmod{11}$
* $39^2 \equiv 3 \pmod{11}$
* $39^3 \equiv 7 \pmod{11}$
* $39^4 \equiv 9 \pmod{11}$
* $39^5 \equiv 10 \pmod{11}$
* $39^6 \equiv 5 \pmod{11}$
* $39^7 \equiv 8 \pmod{11}$
* $39^8 \equiv 4 \pmod{11}$
* $39^9 \equiv 2 \pmod{11}$
* $39^{10} \equiv 1 \pmod{11}$

Se observa que el ciclo se repite cada $N = 10$ pasos, ya que $39^{10} \equiv 1 \pmod{11}$. 
> 💡 *(Nota: Esto también se deduce por el Pequeño Teorema de Fermat, donde para un número primo p=11 y el máximo común divisor entre 39 y 11 es 1*.


### ➗ Paso 3: Dividir el exponente entre el período ($N$)
Como las potencias se repiten en ciclos de $10$, se divide el exponente grande ($5543$) entre el período ($10$) para encontrar cuántos ciclos completos hay y qué residuo queda:

$$5543 = 554 \cdot 10 + 3$$

El cociente es $554$ y el residuo es $r = 3$.

### 🎯 Paso 4: Calcular el resultado final usando las propiedades de potencias
Aplicando las leyes de los exponentes modulares:

$$39^{5543} \equiv 39^{554 \cdot 10 + 3} \equiv (39^{10})^{554} \cdot 39^3 \pmod{11}$$

Sustituyendo $39^{10} \equiv 1$:

$$\equiv (1)^{554} \cdot 39^3 \equiv 1 \cdot 39^3 \equiv 39^3 \pmod{11}$$

Utilizando el valor calculado previamente en la lista para la potencia $3$ ($39^3 \equiv 7 \pmod{11}$), se concluye que el valor de $x$ es **$7$**.
