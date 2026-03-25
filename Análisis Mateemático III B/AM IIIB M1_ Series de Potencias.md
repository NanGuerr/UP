# 📚 Análisis Matemático IIIb - Resumen Módulo 1 🎓

¡Excelente! Estás cursando una materia fundamental en la **Facultad de Ingeniería (UP)**. Aquí se conecta el cálculo avanzado con aplicaciones prácticas como la teoría de señales y la acústica. 🔊

---

## 1. El Corazón del Módulo 1: Series de Funciones 🌀

A diferencia de las series numéricas, aquí los sumandos son funciones $f_n(x)$. La serie se expresa como:

$$\sum_{n=1}^{\infty} f_n(x)$$

### 🔍 Conceptos Críticos de Convergencia

* **📍 Dominio de Convergencia ($D$):** Es el conjunto de valores de $x$ donde la serie resulta en un número real finito.
* **🎯 Convergencia Puntual:** Ocurre cuando, para cada $x$ fijo, la serie numérica converge.
* **📏 Convergencia Uniforme:** Un concepto más fuerte. Significa que las sumas parciales se aproximan a la función límite "al mismo tiempo" en todo el intervalo.
* **💎 Teorema de Weierstrass:** Si existe una serie numérica convergente $\sum a_n$ tal que $|f_n(x)| \leq a_n$, entonces la serie de funciones converge **absoluta y uniformemente**.

---

## 2. Series de Potencias: La "Receta" para el Éxito 📝

Son un caso especial donde $f_n(x) = a_n \cdot x^n$. El objetivo es hallar el **Radio de Convergencia ($R$)**.

### 🧮 Cómo calcular el Radio ($R$)
Se utiliza el límite del cociente (**D'Alembert**) o de la raíz (**Cauchy**):

$$R = \frac{1}{\lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right|} \quad \text{o} \quad R = \frac{1}{\lim_{n \to \infty} \sqrt[n]{|a_n|}}$$

### 🚧 El Análisis de los "Bordes"
El radio define el intervalo $(-R, R)$. Debes analizar los extremos ($x = R$ y $x = -R$) usando:

* **⚖️ Criterio de Leibniz:** Para series alternadas.
* **🔢 Series p:** Convergen si $p > 1$.
* **⚠️ Condición Necesaria:** Si el término general no tiende a cero, la serie **diverge**.

---

## 3. Aplicaciones y Curiosidades 🌍

* **📈 Representación de funciones:** $e^x$, $\sin(x)$ y $\cos(x)$ se pueden escribir como series infinitas.
* **🎸 Acústica y Música:** La "serie armónica" explica el timbre de los sonidos y las escalas pentatónicas (Blues/Música China).
* **🔢 Números Decimales:** La conversión de decimales periódicos a fracciones deriva de las **series geométricas**.

---

## 4. Tips para tu Cursada (Syllabus) 💡

* **⏰ No te cuelgues:** Se estiman **102 horas** de estudio independiente adicionales a las clases.
* **📊 La nota importa:** Los parciales representan el **60%** de la nota de cursada.
* **🎥 Examen Final:** Formato **bimodal**. Primero un examen filmado (asincrónico) y luego defensa oral.

---

> **¿Te gustaría que resolvamos juntos paso a paso la serie $\sum \frac{1}{n}x^n$ para practicar el análisis de los bordes?** ✍️
