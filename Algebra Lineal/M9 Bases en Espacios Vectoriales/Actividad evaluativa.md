# 📝 Actividad: Resolución de Bases de los Espacios Vectoriales

## 📚 Marco Teórico de Referencia
De acuerdo con el apunte de la materia:
1. **Base de un Espacio Vectorial**: Un conjunto de vectores $B = \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ es una base para un espacio vectorial $V$ si:
   - Es linealmente independiente.
   - Genera a $V$.
2. **Espacio de Soluciones (Espacio Nulo)**: Dado un sistema de ecuaciones lineales homogéneo $A\mathbf{x} = \mathbf{0}$, el conjunto $S = \{\mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{0}\}$ es un subespacio de $\mathbb{R}^n$ denominado espacio de soluciones o espacio nulo de $A$. ⚖️
3. **Dimensión**: La dimensión de $S$ ($\dim S$) es el número de vectores que componen cualquiera de sus bases. Si $S = \{\mathbf{0}\}$, entonces $\dim S = 0$ y su base es el conjunto vacío $\emptyset$. 📏

---

## 🔍 Resolución Paso a Paso de las Preguntas

### Pregunta 1 (3 Puntos)
Encontrar una base para el espacio de las soluciones del sistema homogéneo dado por las siguientes ecuaciones:
$$\begin{cases} 2x + y = 0 \\ x - 3y = 0 \end{cases}$$

#### Paso 1: Planteo en forma matricial ($A\mathbf{x} = \mathbf{0}$)
Expresamos el sistema homogéneo en términos de su matriz de coeficientes $A$ y el vector de incógnitas $\mathbf{x}$:
$$A = \begin{pmatrix} 2 & 1 \\ 1 & -3 \end{pmatrix}, \quad \mathbf{x} = \begin{pmatrix} x \\ y \end{pmatrix}, \quad \mathbf{0} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$$
$$(A \mid \mathbf{0}) = \begin{pmatrix} 2 & 1 & \mid & 0 \\ 1 & -3 & \mid & 0 \end{pmatrix}$$

#### Paso 2: Análisis de la matriz de coeficientes / Reducción por filas
Intercambiamos la Fila 1 y la Fila 2 ($R_1 \leftrightarrow R_2$) para obtener un pivote unitario:
$$\begin{pmatrix} 1 & -3 & \mid & 0 \\ 2 & 1 & \mid & 0 \end{pmatrix}$$

Aplicamos la operación elemental $R_2 \leftarrow R_2 - 2R_1$:
$$\begin{pmatrix} 1 & -3 & \mid & 0 \\ 0 & 7 & \mid & 0 \end{pmatrix}$$

Dividimos la Fila 2 por 7 ($R_2 \leftarrow \frac{1}{7}R_2$):
$$\begin{pmatrix} 1 & -3 & \mid & 0 \\ 0 & 1 & \mid & 0 \end{pmatrix}$$

Sumamos 3 veces la Fila 2 a la Fila 1 ($R_1 \leftarrow R_1 + 3R_2$):
$$\begin{pmatrix} 1 & 0 & \mid & 0 \\ 0 & 1 & \mid & 0 \end{pmatrix}$$

#### Paso 3: Determinación de las soluciones y la base
El sistema reducido en forma escalonada reducida por filas (RREF) equivale a:
$$\begin{cases} x = 0 \\ y = 0 \end{cases}$$

- **Espacio de solución**: $S = \left\{\begin{pmatrix} 0 \\ 0 \end{pmatrix}\right\} = \{\mathbf{0}\}$.
- **Base**: Al ser un espacio compuesto únicamente por el vector nulo, la base es el conjunto vacío $B = \emptyset$ (o no posee vectores en su base).
- **Dimensión**: $\dim S = 0$.

---

### Pregunta 2 (3 Puntos)
Encontrar una base para el espacio de las soluciones del sistema homogéneo dado por las siguientes ecuaciones:
$$\begin{cases} 2x + 3y - 4z = 0 \\ x - y + z = 0 \\ 2x + 8y - 10z = 0 \end{cases}$$

#### Paso 1: Planteo en forma matricial ($A\mathbf{x} = \mathbf{0}$)
Construimos la matriz aumentada $(A \mid \mathbf{0})$:
$$(A \mid \mathbf{0}) = \begin{pmatrix} 2 & 3 & -4 & \mid & 0 \\ 1 & -1 & 1 & \mid & 0 \\ 2 & 8 & -10 & \mid & 0 \end{pmatrix}$$

#### Paso 2: Resolución paso a paso mediante eliminación de Gauss-Jordan
1. Intercambio de filas ($R_1 \leftrightarrow R_2$) para facilitar el pivote:
   $$\begin{pmatrix} 1 & -1 & 1 & \mid & 0 \\ 2 & 3 & -4 & \mid & 0 \\ 2 & 8 & -10 & \mid & 0 \end{pmatrix}$$
2. Eliminación de la primera columna debajo del pivote:
   - $R_2 \leftarrow R_2 - 2R_1 \implies (2 - 2(1), 3 - 2(-1), -4 - 2(1)) = (0, 5, -6)$
   - $R_3 \leftarrow R_3 - 2R_1 \implies (2 - 2(1), 8 - 2(-1), -10 - 2(1)) = (0, 10, -12)$
   $$\begin{pmatrix} 1 & -1 & 1 & \mid & 0 \\ 0 & 5 & -6 & \mid & 0 \\ 0 & 10 & -12 & \mid & 0 \end{pmatrix}$$
3. Eliminación en la tercera fila:
   - $R_3 \leftarrow R_3 - 2R_2 \implies (0 - 2(0), 10 - 2(5), -12 - 2(-6)) = (0, 0, 0)$
   $$\begin{pmatrix} 1 & -1 & 1 & \mid & 0 \\ 0 & 5 & -6 & \mid & 0 \\ 0 & 0 & 0 & \mid & 0 \end{pmatrix}$$
4. Obtención de la forma reducida (RREF):
   - $R_2 \leftarrow \frac{1}{5}R_2 \implies \begin{pmatrix} 0 & 1 & -\frac{6}{5} & \mid & 0 \end{pmatrix}$
   - $R_1 \leftarrow R_1 + R_2 \implies \begin{pmatrix} 1 & 0 & -\frac{1}{5} & \mid & 0 \end{pmatrix}$
   $$\begin{pmatrix} 1 & 0 & -\frac{1}{5} & \mid & 0 \\ 0 & 1 & -\frac{6}{5} & \mid & 0 \\ 0 & 0 & 0 & \mid & 0 \end{pmatrix}$$

#### Paso 3: Parametrización y determinación de la base
Reescribimos las ecuaciones reducidas:
$$\begin{cases} x - \frac{1}{5}z = 0 \implies x = \frac{1}{5}z \\ y - \frac{6}{5}z = 0 \implies y = \frac{6}{5}z \end{cases}$$

Dado que $z$ es una variable libre, le asignamos el parámetro $z = t$ ($t \in \mathbb{R}$):
$$\begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} \frac{1}{5}t \\ \frac{6}{5}t \\ t \end{pmatrix} = t \begin{pmatrix} \frac{1}{5} \\ \frac{6}{5} \\ 1 \end{pmatrix}$$

Para expresar la base con números enteros (multiplicando el vector por el escalar $5$):
$$\begin{pmatrix} x \\ y \\ z \end{pmatrix} = t' \begin{pmatrix} 1 \\ 6 \\ 5 \end{pmatrix}$$

- **Base del espacio de soluciones**: $B = \left\{ \begin{pmatrix} 1 \\ 6 \\ 5 \end{pmatrix} \right\}$ (o de forma equivalente, $B = \left\{ \begin{pmatrix} 1/5 \\ 6/5 \\ 1 \end{pmatrix} \right\}$).
- **Dimensión**: $\dim S = 1$.

---

### Pregunta 3 (4 Puntos)
Encontrar una base para el espacio de las soluciones del sistema homogéneo dado por las siguientes ecuaciones:
$$\begin{cases} x + 2y + 3z = 0 \\ 2x + 4y + 6z = 0 \\ 3x + 6y + 9z = 0 \end{cases}$$

#### Paso 1: Planteo en forma matricial ($A\mathbf{x} = \mathbf{0}$)
Construimos la matriz aumentada $(A \mid \mathbf{0})$:
$$(A \mid \mathbf{0}) = \begin{pmatrix} 1 & 2 & 3 & \mid & 0 \\ 2 & 4 & 6 & \mid & 0 \\ 3 & 6 & 9 & \mid & 0 \end{pmatrix}$$

#### Paso 2: Eliminación gaussiana paso a paso
1. Operaciones sobre las Filas 2 y 3:
   - $R_2 \leftarrow R_2 - 2R_1 \implies (2 - 2(1), 4 - 2(2), 6 - 2(3)) = (0, 0, 0)$
   - $R_3 \leftarrow R_3 - 3R_1 \implies (3 - 3(1), 6 - 3(2), 9 - 3(3)) = (0, 0, 0)$
2. Matriz escalonada reducida (RREF):
   $$\begin{pmatrix} 1 & 2 & 3 & \mid & 0 \\ 0 & 0 & 0 & \mid & 0 \\ 0 & 0 & 0 & \mid & 0 \end{pmatrix}$$

#### Paso 3: Parametrización y determinación de la base
El sistema se reduce a una única ecuación cartesiana:
$$x + 2y + 3z = 0 \implies x = -2y - 3z$$

En este caso existen dos grados de libertad (variables libres): $y$ y $z$. Asignamos los parámetros $y = s$ y $z = t$ ($s, t \in \mathbb{R}$):
$$\begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} -2s - 3t \\ s \\ t \end{pmatrix} = s \begin{pmatrix} -2 \\ 1 \\ 0 \end{pmatrix} + t \begin{pmatrix} -3 \\ 0 \\ 1 \end{pmatrix}$$

- **Base del espacio de soluciones**: $B = \left\{ \begin{pmatrix} -2 \\ 1 \\ 0 \end{pmatrix}, \begin{pmatrix} -3 \\ 0 \\ 1 \end{pmatrix} \right\}$.
- **Dimensión**: $\dim S = 2$.

---

## 🤖 Reflexión sobre el uso de Herramientas de IA Generativa (Consigna 3)

- **a. ¿Qué herramienta de IA utilizaste? ¿Por qué la elegiste?**
  - Se utilizó Gemini. Se eligió por su capacidad de razonamiento matemático avanzado, su precisión para realizar operaciones matriciales mediante reducción de Gauss-Jordan y la generación limpia de fórmulas en formato LaTeX. 🧠

- **b. ¿El resultado fue correcto? ¿Qué hiciste para verificarlo?**
  - Sí, los resultados fueron completamente correctos. Para verificarlos, se multiplicó la matriz original $A$ por los vectores de la base obtenida ($A\mathbf{v} = \mathbf{0}$) comprobando que el producto fuera exactamente el vector nulo, y se corroboró la independencia lineal de los vectores de cada base. ✅

- **c. ¿Hubo algún paso que la IA omitió o resolvió de forma poco clara?**
  - En el primer ejercicio, se indicó inicialmente que "no hay solución", lo cual requirió ajustar la interpretación matemática para aclarar que la solución es la solución trivial $(0,0)$, cuyo espacio solución tiene dimensión $0$ y su base es el conjunto vacío $\emptyset$. 🔍

- **d. ¿Cómo te ayudó (o no) usar la IA a entender mejor el procedimiento?**
  - Ayudó a agilizar las operaciones elementales de fila y a visualizar de forma directa la relación entre el número de variables libres de la matriz RREF y la dimensión del espacio nulo. 🚀
