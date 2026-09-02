# 📝 Transcripción y Solución Paso a Paso: Aritmética Modular

---

## 📌 Enunciado del Problema

```math
17^{245} 	ext{ dividimos por } 3
```

**¿Cuál es su resto?** 🤔

En notación de congruencia modular, el problema se plantea como:

```math
17^{245} \equiv x \pmod 3
```

---

## 🚀 Resolución Paso a Paso

### 1️⃣ Paso 1: Encontrar el exponente $N$ tal que $17^N \equiv 1 \pmod 3$ 🔍

Buscamos una potencia de $17$ que sea congruente a $1$ módulo $3$ para simplificar los cálculos:

* **Para $N = 1$:**
  ```math
  17^1 = 17 \equiv 2 \pmod 3
  ```
  *(ya que $17 = 3 \cdot 5 + 2$)*

* **Para $N = 2$:**
  ```math
  17^2 \equiv (2)^2 = 4 \equiv 1 \pmod 3
  ```
  *(ya que $4 = 3 \cdot 1 + 1$)*

✨ **Resultado del Paso 1:**  
```math
N = 2 \quad 	ext{tal que} \quad 17^2 \equiv 1 \pmod 3
```

---

### 2️⃣ Paso 2: Expresar el exponente $245$ en términos del periodo ($N=2$) ✏️

Dividimos el exponente $245$ entre $N = 2$:

```math
245 = c \cdot 2 + r
```
```math
245 = 122 \cdot 2 + 1
```

* **Cociente ($c$):** $122$
* **Resto ($r$):** $1$

---

### 3️⃣ Paso 3: Sustituir y calcular el resto final 🎯

Reescribimos la potencia utilizando las propiedades de las potencias y la congruencia modular:

```math
17^{245} \equiv 17^{(122 \cdot 2 + 1)} \pmod 3
```

Aplicando leyes de exponentes:

```math
17^{245} \equiv 17^{122 \cdot 2} \cdot 17^1 \pmod 3
```

```math
17^{245} \equiv \left(17^2
ight)^{122} \cdot 17^1 \pmod 3
```

Sustituyendo $17^2 \equiv 1 \pmod 3$ y $17^1 \equiv 2 \pmod 3$:

```math
17^{245} \equiv (1)^{122} \cdot 2 \pmod 3
```

```math
17^{245} \equiv 1 \cdot 2 \pmod 3
```

```math
17^{245} \equiv 2 \pmod 3
```

---

## 🎉 Respuesta Final

```math
x = 2
```

💡 **El resto de dividir $17^{245}$ entre $3$ es $2$.**
