# 📊 Resumen Álgebra Lineal 

Este documento sintetiza los fundamentos teóricos y las directrices metodológicas del curso de Álgebra Lineal, bajo la tutoría del profesor Filippo Visco-Comandini. La materia se presenta no solo como una disciplina abstracta, sino como una herramienta fundamental ligada al crecimiento de la computación a gran escala (Big Data) 📈, la economía 💰 y el funcionamiento de algoritmos de búsqueda como PageRank de Google 🔍.

Los pilares del aprendizaje se centran en la teoría de números (divisibilidad, algoritmos de cálculo de Máximo Común Divisor) y el álgebra matricial (determinantes, matrices transpuestas e inversas). Se destaca una metodología de enseñanza autónoma a través de la plataforma Blackboard 💻, con requisitos técnicos estrictos para la entrega de actividades —como el uso de formato PDF 📄 y digitalización legible— para garantizar una retroalimentación efectiva. El éxito en la cursada depende de la aprobación de dos exámenes parciales 📝 (con un mínimo del 60%) y la resolución constante de actividades prácticas que bonifican la calificación final ⭐.

---

## 1. 🌐 Relevancia y Aplicaciones del Álgebra Lineal

La importancia de esta disciplina ha crecido en proporción directa al poder de las computadoras. Se identifica como la base científica de:

*   💻 **Ciencia de Datos y Computación:** Crucial para el procesamiento paralelo y el manejo de Big Data.
*   📈 **Economía:** Permite cuantificar magnitudes como precios, salarios e inflación mediante números reales y resolver problemas complejos a través de ecuaciones lineales y matrices.
*   🔍 **Motores de Búsqueda:** El algoritmo PageRank de Google utiliza estos principios. El nombre "Google" proviene de googol ($10^{100}$), reflejando el objetivo de organizar vastas cantidades de información.

---

## 2. 🔢 Fundamentos de la Teoría de Números

### 2.1. 📊 Conjuntos Numéricos

El estudio parte de la clasificación de los números según sus propiedades:

| Conjunto | Definición | Propiedades Clave |
| :--- | :--- | :--- |
| **Naturales ($\mathbb{N}$)** | $\{0, 1, 2, 3, \dots\}$ | Cerrado bajo la suma; el 0 es el elemento neutro. |
| **Enteros ($\mathbb{Z}$)** | $\{\dots, -2, -1, 0, 1, 2, \dots\}$ | Incluye negativos; cerrado bajo suma y sustracción. |
| **Racionales ($\mathbb{Q}$)** | Fracciones $b/a$ ($a \neq 0$) | Incluye a los enteros y naturales ($\mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q}$). |

### 2.2. ➗ Divisibilidad y Algoritmo de Euclides

Se define que $a$ divide a $b$ ($a|b$) si existe un entero $c$ tal que $b = a \cdot c$.

El **Algoritmo de Euclides** es la herramienta principal para hallar el Máximo Común Divisor (MCD). Se basa en la iteración de la división entera: $b = q \cdot a + r$, donde el MCD es el último resto no nulo.

*   prime **Números Primos:** Enteros con exactamente 4 divisores.
*   book **Teorema Fundamental de la Aritmética:** Todo entero positivo mayor a 1 es primo o un producto único de primos.

### 2.3. ⚡ Criterios de Divisibilidad Rápidos

| Divisor | Criterio |
| :---: | :--- |
| **2** | Termina en 0 o cifra par. |
| **3** | La suma de sus cifras es múltiplo de 3. |
| **5** | Termina en 0 o 5. |
| **7** | Resta entre el número sin la unidad y el doble de la unidad es 0 o múltiplo de 7. |
| **11** | Diferencia entre suma de cifras en lugares pares e impares es 0, 11 o múltiplo de 11. |

---

## 3. 🧮 Matrices y Sistemas de Ecuaciones

### 3.1. 📐 Definiciones Matriciales

*   grid **Matriz:** Arreglo rectangular de $m \times n$ (filas por columnas).
*   🔄 **Transpuesta ($A^T$):** Matriz obtenida al intercambiar filas por columnas.
*   🔑 **Inversa ($A^{-1}$):** Solo para matrices cuadradas donde $A \cdot A^{-1} = \text{Id}$ (identidad). Si existe, el sistema $Ax = b$ tiene solución única $x = A^{-1}b$.

### 3.2. 🔣 Determinantes

Para una matriz de $2 \times 2$, el determinante es $a_{11}a_{22} - a_{21}a_{12}$. Para matrices de $3 \times 3$, se utiliza la expansión por cofactores (Laplace), alternando signos ($+ - +$) a lo largo de una fila para reducirla a determinantes menores de $2 \times 2$.

### 3.3. 📉 Sistemas de Ecuaciones Lineales

El análisis de sistemas permite identificar:

*   ♾️ **Sistemas Compatibles Indeterminados (SCI):** Aquellos con infinitas soluciones. Según las fuentes, esto ocurre cuando las ecuaciones no presentan contradicciones pero se reducen a una sola relación de dependencia entre variables (ej. $y - z = -2$).

---

## 4. 📅 Metodología de Trabajo y Evaluación

El curso se estructura en 16 semanas que cubren desde conjuntos numéricos hasta transformaciones lineales.

### 4.1. 📝 Evaluación y Calificación

*   ✅ **Parciales:** Dos exámenes obligatorios. Se aprueban resolviendo el 60% de los ejercicios.
*   🎁 **Bonificación:** Por cada actividad entregada (sea "buena o mala"), el estudiante gana un 1% adicional para el parcial (hasta un máximo del 6% en el primer parcial).
*   🔄 **Recuperatorio:** Solo se puede recuperar uno de los dos parciales.

### 4.2. 🛠️ Requisitos de Entrega (Protocolo Técnico)

La plataforma Blackboard exige estándares específicos para la corrección manual del docente:

*   📄 **Formato PDF:** Obligatorio para que el docente pueda realizar anotaciones. Se recomiendan aplicaciones como CamScanner u Office Lens.
*   👁️ **Legibilidad:** Las fotos deben ser sin sombras y con alto contraste. No es obligatorio que sean prolijas, pero sí legibles.
*   📁 **Ubicación:** Las fotos del desarrollo deben subirse como "Contenido Adicional" y no como respuesta directa a la pregunta de texto.
*   📞 **Soporte:** Ante problemas técnicos con la carga, contactar a `ayudablackboard@palermo.edu`.

### 4.3. 🗓️ Hoja de Ruta Semanal (Hitos Principales)

*   📌 **Semana 1-2:** Números enteros y Ecuaciones Diofánticas.
*   📌 **Semana 3:** Inducción Matemática.
*   📌 **Semana 4-5:** Vectores en el plano y espacio.
*   🎯 **Semana 7:** Primer Examen Parcial.
*   🎯 **Semana 15:** Segundo Examen Parcial.
