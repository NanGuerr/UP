La diferencia fundamental radica en si los eventos ocurren **juntos** o **de manera alternativa**:

* **Unión ($\cup$ / "O"):** Ocurre cuando se da el evento $A$, el evento $B$, **o ambos a la vez**. Representa la suma de posibilidades.
* **Intersección ($\cap$ / "Y"):** Ocurre únicamente cuando los eventos $A$ y $B$ suceden **al mismo tiempo**.

---

### 📊 Cuadro comparativo

| Característica | Unión ($\cup$) | Intersección ($\cap$) |
| --- | --- | --- |
| **Palabra clave** | "O" (al menos uno sucede) | "Y" (ambos suceden simultáneamente) |
| **Símbolo** | $\cup$ (U para arriba) | $\cap$ (U invertida) |
| **Fórmula general** | $P(A \cup B) = P(A) + P(B) - P(A \cap B)$ | $P(A \cap B) = P(A) \cdot P(B \mid A)$ |
| **Fórmula eventos independientes / excluyentes** | Si son excluyentes: $P(A \cup B) = P(A) + P(B)$ | Si son independientes: $P(A \cap B) = P(A) \cdot P(B)$ |

---

### 🎲 Ejemplo práctico: Lanzar un dado de 6 caras

Definimos dos eventos:

* Evento $A$: Sacar un número par $\rightarrow \{2, 4, 6\}$
* Evento $B$: Sacar un número mayor a 4 $\rightarrow \{5, 6\}$

1. **Intersección ($A \cap B$):** Números que son pares **Y** mayores a 4.
* Resultado: $\{6\}$ (solo hay un número que cumple ambas).
* Probabilidad: $P(A \cap B) = \frac{1}{6}$


2. **Unión ($A \cup B$):** Números que son pares **O** mayores a 4.
* Resultado: $\{2, 4, 5, 6\}$ (todos los que cumplen al menos una condición).
* Probabilidad: $P(A \cup B) = \frac{4}{6} = \frac{2}{3}$
