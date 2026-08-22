# 🎲 Propiedades, Condicionales y Diagramas de Árbol 

Esta guía integra y amplía los conceptos fundamentales presentados en el material de estudio, abarcando desde las propiedades axiomáticas de la probabilidad hasta el uso de diagramas de árbol y el Teorema de la Probabilidad Total.



## 🛠️ 1. Propiedades Fundamentales de la Probabilidad

Son las reglas axiomáticas básicas para operar con probabilidades en cualquier espacio muestral:

### 1️⃣ Evento Complementario
La probabilidad de que **no ocurra** un evento $A$ (denotado como $\bar{A}$ o $A^c$) es igual a 1 menos la probabilidad de que sí ocurra:
$$P(\bar{A}) = 1 - P(A)$$
* 💡 **Ejemplo:** Si el $80\%$ de los alumnos aprueba un examen ($P(A) = 0.80$), la probabilidad de reprobar es $P(\bar{A}) = 1 - 0.80 = 0.20$ ($20\%$).

### 2️⃣ Evento Imposible
La probabilidad de un conjunto vacío o suceso imposible ($\emptyset$) es siempre cero:
$$P(\emptyset) = 0$$
* 💡 **Ejemplo:** Obtener el número 7 al lanzar un dado común de 6 caras.

### 3️⃣ Regla de la Suma (Unión de Eventos)
Para calcular la probabilidad de que ocurra el evento $A$, el evento $B$, o ambos a la vez:
$$P(A \cup B) = P(A) + P(B) - P(A \cap B)$$
*(Se resta la intersección $P(A \cap B)$ para evitar duplicar el conteo de los casos compartidos).*



## 🔄 2. Probabilidad Condicional y Regla del Producto

La probabilidad condicional mide la frecuencia con la que ocurre un suceso $B$ dado que un suceso previo $A$ ya ha ocurrido ($P(A) \neq 0$).

### 📐 Fórmula Condicional:
$$P(B \mid A) = \frac{P(A \cap B)}{P(A)}$$

### 🔑 Expresiones en Lenguaje Natural:
* *"Probabilidad de B condicionada a A..."*
* *"Probabilidad de B dado A..."*
* *"Probabilidad de B, sabiendo que ocurrió A..."*
* *"De las veces que ocurre A, la probabilidad de que ocurra B..."*

### ✖️ Regla del Producto (Probabilidad Conjunta)
Despejando la intersección de la fórmula condicional, obtenemos la regla del producto para saber la probabilidad de que ocurran ambos eventos:
$$P(A \cap B) = P(B \mid A) \cdot P(A)$$



## ⚡ 3. Sucesos Independientes

Dos sucesos $A$ y $B$ son **independientes** si la ocurrencia de uno no modifica en absoluto la probabilidad de ocurrencia del otro.

### 📐 Condiciones Equivalentes (Si se cumple una, se cumplen todas):
1. $P(A \mid B) = P(A)$ *(Saber que ocurrió B no altera la probabilidad de A)*.
2. $P(B \mid A) = P(B)$ *(Saber que ocurrió A no altera la probabilidad de B)*.
3. $P(A \cap B) = P(A) \cdot P(B)$ *(Regla del producto simplificada para eventos independientes)*.



## 🧩 4. Teorema de Probabilidad Total

Cuando el espacio muestral está dividido en una partición de sucesos $B_1, B_2, \dots, B_n$ que son **mutuamente excluyentes** ($B_i \cap B_j = \emptyset$) y **exhaustivos** ($B_1 \cup B_2 \cup \dots \cup B_n = U$), la probabilidad de un evento $A$ cualquiera se calcula sumando sus intersecciones con cada parte:

$$P(A) = P(A \cap B_1) + P(A \cap B_2) + \dots + P(A \cap B_n) = \sum_{i=1}^{n} P(A \cap B_i)$$

Aplicando la regla del producto, la fórmula toma su forma clásica:
$$P(A) = \sum_{i=1}^{n} P(A \mid B_i) \cdot P(B_i)$$



## 🌳 5. Diagramas de Árbol de Decisión

Los diagramas de árbol permiten visualizar escenarios probabilísticos compuestos paso a paso:

* **Primeras ramas (Primera Generación):** Representan los eventos iniciales o condicionantes (ej. producto *Novedoso* vs. *No Novedoso*).
* **Segundas ramas (Segunda Generación):** Representan las probabilidades condicionales asociadas al resultado del primer paso ej. $P(E \mid N)$ .
* **Extremos de las ramas:** Al multiplicar las probabilidades a lo largo de un camino continuo, se obtiene la **probabilidad conjunta (intersección)**.

### 🧮 Ejemplo Analizado de la Imagen:
Dados los datos del árbol:
* $P(N) = 0.7$ y $P(\bar{N}) = 0.3$
* $P(E \mid \bar{N}) = 0.18$ y $P(\bar{E} \mid \bar{N}) = 0.82$

1. **Cálculo de intersección en la rama de no novedad:**
   $$P(\bar{N} \cap E) = P(\bar{N}) \cdot P(E \mid \bar{N}) = 0.3 \times 0.18 = 0.054$$

2. **Cálculo de la probabilidad posterior $P(\bar{N} \mid E)$:**
   Dado que $P(E) = 0.236$ (obtenido mediante probabilidad total):
   $$P(\bar{N} \mid E) = \frac{P(\bar{N} \cap E)}{P(E)} = \frac{0.054}{0.236} \approx 0.2288 \quad (22.88\%)$$
