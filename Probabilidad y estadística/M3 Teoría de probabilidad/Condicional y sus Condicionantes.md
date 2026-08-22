# 🎯 Guía Probabilidad Condicional y sus Condicionantes

La imagen adjunta presenta un principio fundamental en la resolución de problemas estadísticos: **los datos de probabilidades condicionales tienen siempre un condicionante**, el cual reduce el espacio muestral y se reconoce mediante palabras clave del lenguaje natural.

---

## 💡 ¿Qué es la Probabilidad Condicional?

La **probabilidad condicional** es la probabilidad de que ocurra un evento **$A$**, sabiendo o dado que ya ha ocurrido previamente un evento **$B$**.

### 📐 Definición Matemática:
$$P(A \mid B) = \frac{P(A \cap B)}{P(B)} \quad \text{con } P(B) > 0$$

* **$P(A \mid B)$**: Probabilidad de $A$ **dado** $B$ *(lo que queremos calcular o conocer)*.
* **$P(A \cap B)$**: Probabilidad de que ocurran **ambos** eventos al mismo tiempo *(intersección)*.
* **$P(B)$**: Probabilidad del **condicionante** *(el nuevo espacio de referencia u origen)*.

---

## 🔑 Palabras Clave Identificadoras (Palabras del Condicionante)

Al traducir un problema expresado en texto a notación matemática, el mayor reto suele ser identificar cuál es el evento condicionado ($A$) y cuál es el condicionante ($B$). Las expresiones destacadas en la imagen son:

### 1️⃣ *"De los que"*
* 💬 **Ejemplo:** *"De los usuarios que están satisfecho con la app, el 80% la utiliza diariamente."*
* ✍️ **Interpretación:** $P(\text{Uso Diario} \mid \text{Satisfecho}) = 0.80$

### 2️⃣ *"Sabiendo que"*
* 💬 **Ejemplo:** *"Sabiendo que un cliente compró por Internet, ¿cuál es la probabilidad de que recomiende la marca?"*
* ✍️ **Interpretación:** $P(\text{Recomienda} \mid \text{Compró en Línea})$

### 3️⃣ *"Si"*
* 💬 **Ejemplo:** *"Si un alumno practica deportes, la probabilidad de que apruebe el examen es del 90%."*
* ✍️ **Interpretación:** $P(\text{Aprueba} \mid \text{Practica Deportes}) = 0.90$

### 4️⃣ *"Dado que"*
* 💬 **Ejemplo:** *"Dado que una transacción fue detectada fuera del país, calcular la probabilidad de que sea un fraude."*
* ✍️ **Interpretación:** $P(\text{Fraude} \mid \text{Transacción Exterior})$

---

## ⚖️ Diferencia entre Probabilidad Conjunta y Condicional

Es fundamental no confundir la **intersección** (probabilidad conjunta) con la **condicional**:

| Propiedad | Probabilidad Conjunta $P(A \cap B)$ | Probabilidad Condicional $P(A \mid B)$ |
| :--- | :--- | :--- |
| **Definición** | Ambos eventos ocurren juntos sobre el **total absoluto**. | Evento $A$ considerando **solo la muestra donde ocurre $B$**. |
| **Palabras Clave** | *"Y"*, *"a la vez"*, *"ambos"*, *"simultáneamente"*. | *"Dado que"*, *"de los que"*, *"sabiendo que"*, *"si"*. |
| **Espacio Muestral** | Todo el universo de datos ($100\%$ o $1.0$). | Reducido únicamente al subconjunto del evento $B$. |

---

## 🧮 Ejemplo Aplicado Paso a Paso

Supongamos la siguiente tabla de datos sobre **Uso de Redes Sociales** y **Compras Online**:

| Compras Online \ Redes Sociales | Redes > 3h ($A$) | Redes $\leq$ 3h ($A^c$) | Total |
| :--- | :---: | :---: | :---: |
| **Compra por Internet ($B$)** | $10\%$ | $10\%$ | **$20\%$** |
| **No compra por Internet ($B^c$)** | $70\%$ | $10\%$ | **$80\%$** |
| **Total** | **$80\%$** | **$20\%$** | **$100\%$** |

### ❓ Pregunta:
*"¿Cuál es la probabilidad de que un usuario use las redes más de 3 horas **dado que** compra casi todo por Internet?"*

1. **Identificar el condicionante ($B$):** *"Compra por Internet"* $\implies P(B) = 20\% = 0.20$
2. **Identificar la intersección ($A \cap B$):** Usa redes $>3\text{h}$ **Y** compra por Internet $\implies P(A \cap B) = 10\% = 0.10$
3. **Aplicar la fórmula condicional:**
   $$P(A \mid B) = \frac{P(A \cap B)}{P(B)} = \frac{0.10}{0.20} = 0.50 \quad (50\%)$$

---

## 📌 Regla de Oro para Resolver Ejercicios

> **"El evento que va DESPUÉS de palabras como *dado que*, *sabiendo que*, *si*, o *de los que*, SIEMPRE se ubica en el DENOMINADOR de la fórmula ($B$ en $P(A \mid B)$)."**
