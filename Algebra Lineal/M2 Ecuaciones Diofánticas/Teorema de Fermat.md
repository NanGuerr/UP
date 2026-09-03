# 📝 Ejercicio Resuelto: Aritmética Modular y Pequeño Teorema de Fermat

---

## 📌 Enunciado del Problema

```math
39^{5543} \pmod{11}

```



## 🚀 Resolución Paso a Paso

### 1️⃣ Paso 1: Simplificar la base módulo 11 🔍

Primero, encontramos el residuo de dividir la base ($39$) entre el módulo ($11$):

```math
39 \div 11 = 3 \quad \text{con residuo } 6

```

Esto significa que:

```math
39 \equiv 6 \pmod{11}

```

Sustituyendo esto en la expresión original, obtenemos:

```math
39^{5543} \equiv 6^{5543} \pmod{11}

```



### 2️⃣ Paso 2: Aplicar el Pequeño Teorema de Fermat ⚡

El teorema establece que si $p$ es un número primo y $a$ no es divisible por $p$, se cumple que:

```math
a^{p-1} \equiv 1 \pmod p

```

Para nuestro caso particular:

* **$p = 11$** (número primo)
* **$a = 6$** (no es divisible entre 11)

Por lo tanto:

```math
6^{11-1} = 6^{10} \equiv 1 \pmod{11}

```

Esto indica que las potencias de $6$ módulo $11$ se repiten en ciclos de $10$.



### 3️⃣ Paso 3: Reducir el exponente ✏️

Dividimos el exponente grande ($5543$) entre la longitud del ciclo ($10$):

```math
5543 \div 10 = 554 \quad \text{con residuo } 3

```

Esto nos permite reescribir la potencia utilizando las leyes de los exponentes:

```math
6^{5543} = \left(6^{10}\right)^{554} \cdot 6^3 \pmod{11}

```


### 4️⃣ Paso 4: Calcular el resultado final 🎯

Dado que $6^{10} \equiv 1 \pmod{11}$, sustituimos este valor en la expresión:

```math
\left(6^{10}\right)^{554} \cdot 6^3 \equiv (1)^{554} \cdot 6^3 \equiv 1 \cdot 6^3 \pmod{11}

```

Ahora calculamos $6^3$:

```math
6^3 = 216

```

Finalmente, encontramos el residuo de dividir $216$ entre $11$:

```math
216 \div 11 = 19 \quad \text{con residuo } 7

```

*(Comprobación: $19 \cdot 11 = 209$, y $216 - 209 = 7$)*

```math
216 \equiv 7 \pmod{11}

```



## 🎉 Resultado Final

```math
39^{5543} \equiv 7 \pmod{11}

```

💡 **Por lo tanto, $x = 7$.**

```
