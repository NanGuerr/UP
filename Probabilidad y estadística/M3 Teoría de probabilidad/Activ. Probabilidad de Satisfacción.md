# 📊 Probabilidad: Satisfacción y Recomendación del Servicio 

Una empresa proveedora de servicios de Internet y telefonía móvil realiza una encuesta a sus usuarios para conocer su nivel de satisfacción con la calidad del servicio de conexión 5G, y si recomendarían el servicio a otros. 

## Los resultados muestran que: 

El 25% de los usuarios no está satisfecho con el servicio 5G. 
De los no satisfechos, el 60% no lo recomendaría. 
Además, el 15% de los usuarios satisfechos tampoco lo recomendaría. 
Llamamos R: recomendar y S: usuario satisfecho. 

Para responder a todas las consignas, primero definimos los eventos y organizamos la información proporcionada:

* 🟢 **$S$**: El usuario está satisfecho ➔ (**$S^c$**: no está satisfecho) 
* 👍 **$R$**: El usuario recomienda el servicio ➔ (**$R^c$**: no lo recomienda) 

---

## 📌 Datos Iniciales

* 🔴 $P(S^c) = 0.25 \implies$  $P(S) = 0.75$
* 👎 $P(R^c \mid S^c) = 0.60 \implies$  $P(R \mid S^c) = 0.40$
* 👎 $P(R^c \mid S) = 0.15 \implies$  $P(R \mid S) = 0.85$

---

## 🧮 Cálculos Principales

### 1️⃣ Probabilidades Conjuntas 
* 🟢 $P(S \cap R) = P(S) \cdot P(R \mid S) = 0.75 \cdot 0.85 = \mathbf{0.6375}$
* 🟢 $P(S \cap R^c) = P(S) \cdot P(R^c \mid S) = 0.75 \cdot 0.15 = \mathbf{0.1125}$
* 🔴 $P(S^c \cap R) = P(S^c) \cdot P(R \mid S^c) = 0.25 \cdot 0.40 = \mathbf{0.1000}$
* 🔴 $P(S^c \cap R^c) = P(S^c) \cdot P(R^c \mid S^c) = 0.25 \cdot 0.60 = \mathbf{0.1500}$

### 2️⃣ Probabilidad Total de Recomendar $P(R)$ 
* 👍 $P(R) = P(S \cap R) + P(S^c \cap R) = 0.6375 + 0.1000 = \mathbf{0.7375}$

### 3️⃣ Probabilidad Condicional $P(S \mid R)$ 
* 🎯 $P(S \mid R) = \frac{P(S \cap R)}{P(R)} = \frac{0.6375}{0.7375} \approx \mathbf{0.8644}$

---

## ❓ Pregunta 2

De los que recomiendan el servicio, la probabilidad de que estén satisfechos es una probabilidad condicional: **$P(S \mid R)$**.

Opciones correspondientes para la notación:

1. 1️⃣ $P(R \mid S)$
2. 2️⃣ $P(R \cap S)$
3. 3️⃣ $P(S \mid R)$
4. 4️⃣ $P(S \cap R)$

✅ La probabilidad pedida se simboliza: **3** = **0.8644**

---

## ❓ Pregunta 3

Buscamos la probabilidad de que un usuario no esté satisfecho y tampoco recomiende, es decir, **$P(S^c \cap R^c)$**.

* 📊 **Porcentaje:** **15%** (obtenido de $P(S^c \cap R^c) = 0.15$).

Dadas las opciones habituales para esta probabilidad ($P(S^c \cap R^c)$ o $P(\text{no } S \text{ y no } R)$):

* ✅ La probabilidad pedida se simboliza: **4** (correspondiente a la probabilidad conjunta de ambos eventos negativos, $P(S^c \cap R^c)$).

---

## ❓ Pregunta 4

Buscamos la probabilidad de que un usuario recomiende dado que está satisfecho, lo cual corresponde a **$P(R \mid S)$**.

* 📝 **Notación:** Opción **1** ($P(R \mid S)$)
* 🔢 **Valor:** **0.85** (o **0.8500**)

✅ La probabilidad pedida se simboliza: **1** = **0.85**

---

## ❓ Pregunta 5

Para verificar si los sucesos son independientes, se debe cumplir **$P(R \mid S) = P(R)$**.

* 🟢 $P(R \mid S) = 0.85$
* 📣 $P(R) = 0.7375$

⚖️ Como **$0.85 \neq 0.7375$**, la ocurrencia de estar satisfecho altera la probabilidad de recomendar.

❌ Los sucesos “satisfecho” y “recomienda” son independientes: **Falso**

## 🗓️ Tabla de Contingencia de Probabilidades

| Satisfacción \ Recomendación | 👍 Recomienda ($R$) | 👎 No Recomienda ($R^c$) | 📊 Total Marginal |
| :--- | :---: | :---: | :---: |
| 🟢 **Satisfecho ($S$)** | $P(S \cap R) = \mathbf{0.6375}$ | $P(S \cap R^c) = \mathbf{0.1125}$ | $P(S) = \mathbf{0.7500}$ |
| 🔴 **No Satisfecho ($S^c$)** | $P(S^c \cap R) = \mathbf{0.1000}$ | $P(S^c \cap R^c) = \mathbf{0.1500}$ | $P(S^c) = \mathbf{0.2500}$ |
| 📈 **Total Marginal** | $P(R) = \mathbf{0.7375}$ | $P(R^c) = \mathbf{0.2625}$ | $\mathbf{1.0000}$ |

---

## 📈 Tabla de Contingencia Expresada en Porcentajes (%)

| Satisfacción \ Recomendación | 👍 Recomienda ($R$) | 👎 No Recomienda ($R^c$) | 📊 Total |
| :--- | :---: | :---: | :---: |
| 🟢 **Satisfecho ($S$)** | **63.75%** | **11.25%** | **75.00%** |
| 🔴 **No Satisfecho ($S^c$)** | **10.00%** | **15.00%** | **25.00%** |
| 📈 **Total** | **73.75%** | **26.25%** | **100.00%** |
