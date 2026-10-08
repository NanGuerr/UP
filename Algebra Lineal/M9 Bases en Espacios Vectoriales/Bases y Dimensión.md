# 📑 Bases y Dimensión en Espacios Vectoriales

## 📊 Resumen Ejecutivo
Este documento proporciona una síntesis estructurada del estudio teórico de las bases, la dimensión y la transformación de coordenadas (cambio de base) en el contexto del álgebra lineal. Los ejes fundamentales abordados incluyen la caracterización formal de una base, la demostración de la unicidad de las representaciones vectoriales, la invarianza del número de elementos en las bases de un mismo espacio (dimensión) y los procedimientos algebraicos precisos para transicionar entre diferentes sistemas de coordenadas mediante matrices de transición.

Entre los hallazgos y teoremas centrales analizados destacan:
- **Unicidad de la representación**: Cada vector en un espacio vectorial se expresa de manera única como una combinación lineal de los vectores de una base dada.
- **Invarianza de la dimensión**: Cualesquiera dos bases de un mismo espacio vectorial de dimensión finita poseen exactamente el mismo número de vectores.
- **Relación subespacio-espacio**: Todo subespacio $H$ de un espacio vectorial finito $V$ satisface $\dim H \le \dim V$.
- **Mecanismo de cambio de base**: La transformación del vector de coordenadas de una base $B_1$ a una base $B_2$ se rige por una matriz de transición $A$, tal que $(\mathbf{x})_{B_2} = A(\mathbf{x})_{B_1}$. Asimismo, si $A$ transforma coordenadas de $B_1$ a $B_2$, la matriz inversa $A^{-1}$ realiza la transformación opuesta de $B_2$ a $B_1$. 🔄

---

## 1. 📐 Bases en Espacios Vectoriales

### 1.1. Definición Formal de Base
Un conjunto finito de vectores $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ se define formalmente como una base para un espacio vectorial $V$ si satisface obligatoriamente dos condiciones:
1. **Independencia Lineal**: El conjunto $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ es linealmente independiente.
2. **Generación del Espacio**: El conjunto $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ genera a $V$ (es decir, $\text{gen}\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\} = V$).

### 1.2. Bases Canónicas
- **En $\mathbb{R}^n$**: Todo conjunto de $n$ vectores linealmente independientes en $\mathbb{R}^n$ constituye una base. La base canónica se compone de los vectores columna de la matriz identidad de orden $n$:
  $$\mathbf{e}_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \\ \vdots \\ 0 \end{pmatrix}, \quad \mathbf{e}_2 = \begin{pmatrix} 0 \\ 1 \\ 0 \\ \vdots \\ 0 \end{pmatrix}, \quad \dots, \quad \mathbf{e}_n = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \vdots \\ 1 \end{pmatrix}$$

- **En el espacio de matrices $M_{2 \times 2}$**: La base canónica se integra por las cuatro matrices linealmente independientes:
  $$\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \quad \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \quad \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}, \quad \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}$$

### 1.3. Unicidad de la Representación Vectorial
**Teorema 9.1**: Si $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ es una base para $V$ y $\mathbf{v} \in V$, entonces existe un único conjunto de escalares $c_1, c_2, \dots, c_n$ tales que:
$$\mathbf{v} = c_1\mathbf{v}_1 + c_2\mathbf{v}_2 + \dots + c_n\mathbf{v}_n$$

- **Demostración**: Dado que el conjunto genera a $V$, existe al menos una combinación de escalares. Si existiera un segundo conjunto de escalares $d_1, d_2, \dots, d_n$ tal que $\mathbf{v} = d_1\mathbf{v}_1 + d_2\mathbf{v}_2 + \dots + d_n\mathbf{v}_n$, la resta de ambas igualdades resulta en:
  $$(c_1 - d_1)\mathbf{v}_1 + (c_2 - d_2)\mathbf{v}_2 + \dots + (c_n - d_n)\mathbf{v}_n = \mathbf{0}$$
  Debido a la independencia lineal de los vectores $\mathbf{v}_i$, se debe cumplir necesariamente que $(c_i - d_i) = 0$ para todo $i$, lo que demuestra que $c_i = d_i$ y confirma la unicidad.

---

## 2. 📏 Dimensión de Espacios Vectoriales

### 2.1. Igualdad Cardinal en Bases (Teorema 9.2)
**Teorema 9.2**: Si $S_1 = \{\mathbf{u}_1, \mathbf{u}_2, \dots, \mathbf{u}_m\}$ y $S_2 = \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ son dos bases de un mismo espacio vectorial $V$, entonces $m = n$. Es decir, cualesquiera dos bases en un espacio vectorial $V$ tienen exactamente el mismo número de vectores.

- **Esquema de Demostración**:
  1. Se asume de forma hipotética que $m > n$.
  2. Puesto que $S_2$ es base, cada elemento de $S_1$ se expresa como combinación lineal de $S_2$: $\mathbf{u}_j = \sum_{i=1}^n a_{ji}\mathbf{v}_i$, para $j=1,\dots,m$.
  3. Para verificar si $S_1$ es independiente, se plantea la ecuación $\sum_{j=1}^m c_j \mathbf{u}_j = \mathbf{0}$, sustituyendo las expresiones anteriores.
  4. Esto conduce a un sistema homogéneo de $n$ ecuaciones lineales con $m$ incógnitas ($c_1, c_2, \dots, c_m$).
  5. Como $m > n$, el sistema posee infinitas soluciones no triviales, implicando que $S_1$ sería linealmente dependiente, lo cual contradice la hipótesis de que $S_1$ es una base.
  6. Por ende, $m \le n$. Intercambiando el rol de $S_1$ y $S_2$ se obtiene $n \le m$, concluyendo de manera unívoca que $m = n$.

### 2.2. Definición de Dimensión
**Definición 2 (Dimensión)**:
- Si un espacio vectorial $V$ posee una base finita de $n$ elementos, la dimensión de $V$ (denotada $\dim V$) es igual a $n$, y $V$ se clasifica como espacio de dimensión finita.
- Si $V = \{\mathbf{0}\}$, la dimensión de $V$ se define como $0$.
- De lo contrario, $V$ se denomina espacio de dimensión infinita.

| Espacio Vectorial | Dimensión |
| :--- | :--- |
| Espacio nulo $\{\mathbf{0}\}$ | $\dim V = 0$ |
| Espacio euclidiano $\mathbb{R}^n$ | $\dim \mathbb{R}^n = n$ |
| Espacio de matrices $M_{m \times n}$ | $\dim M_{mn} = mn$ |

### 2.3. Teoremas Cardinales de la Dimensión
- **Teorema 9.3**: Si $\dim V = n$, cualquier conjunto de $m$ vectores linealmente independientes en $V$ cumple que $m \le n$.
- **Teorema 9.4**: Si $H$ es un subespacio de un espacio vectorial de dimensión finita $V$, entonces $H$ es de dimensión finita y cumple: $\dim H \le \dim V$.
- **Teorema 9.5**: Cualquier conjunto de $n$ vectores linealmente independientes en un espacio vectorial $V$ con $\dim V = n$ constituye automáticamente una base para $V$.

---

## 3. 🔍 Subespacios, Espacios de Solución y Espacio Nulo

### 3.1. Espacio de Solución (Espacio Nulo)
Para una matriz $A$ de dimensión $m \times n$, el conjunto $S = \{\mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{0}\}$ satisface las propiedades de clausura bajo la suma y la multiplicación por un escalar:
- $A(\mathbf{x}_1 + \mathbf{x}_2) = A\mathbf{x}_1 + A\mathbf{x}_2 = \mathbf{0} + \mathbf{0} = \mathbf{0}$
- $A(\alpha\mathbf{x}_1) = \alpha(A\mathbf{x}_1) = \alpha\mathbf{0} = \mathbf{0}$

Por lo tanto, $S$ es un subespacio de $\mathbb{R}^n$ denominado espacio de solución del sistema homogéneo $A\mathbf{x} = \mathbf{0}$, o espacio nulo de la matriz $A$, cumpliendo $\dim S \le n$.

### 3.2. Ejemplo de Cálculo de Base y Dimensión (Ejemplo 9.5)
Dado el sistema homogéneo:
$$\begin{aligned} x + 2y - z &= 0 \\ 2x - y + 3z &= 0 \end{aligned}$$

La matriz de coeficientes $A = \begin{pmatrix} 1 & 2 & -1 \\ 2 & -1 & 3 \end{pmatrix}$ se reduce por filas a:
$$\begin{pmatrix} 1 & 0 & 1 & | & 0 \\ 0 & 1 & -1 & | & 0 \end{pmatrix}$$

El sistema resultante es:
$$\begin{aligned} x + z &= 0 \\ y - z &= 0 \end{aligned}$$

Asignando la variable libre $z = t$, se obtienen las soluciones $x = -t$, $y = t$, $z = t$.
- **Forma general del vector**: $(-t, t, t) = t(-1, 1, 1)$.
- **Base del espacio nulo**: $\{(-1, 1, 1)\}$.
- **Dimensión**: $\dim S = 1$ (representa geométricamente una recta en $\mathbb{R}^3$).

---

## 4. 🔀 Cambio de Base y Matriz de Transición

### 4.1. Representación Vectorial en Diferentes Bases
Sea $V$ un espacio vectorial real de dimensión $n$ con dos bases $B_1 = \{\mathbf{u}_1, \mathbf{u}_2, \dots, \mathbf{u}_n\}$ y $B_2 = \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$. Para todo vector $\mathbf{x} \in V$:
- En la base $B_1$: $\mathbf{x} = \sum_{i=1}^n b_i \mathbf{u}_i \implies (\mathbf{x})_{B_1} = \begin{pmatrix} b_1 \\ b_2 \\ \vdots \\ b_n \end{pmatrix}$
- En la base $B_2$: $\mathbf{x} = \sum_{i=1}^n c_i \mathbf{v}_i \implies (\mathbf{x})_{B_2} = \begin{pmatrix} c_1 \\ c_2 \\ \vdots \\ c_n \end{pmatrix}$

Las operaciones vectoriales mantienen su estructura algebraica lineal: 
$$(\mathbf{w}_1 + \mathbf{w}_2)_{B_1} = (\mathbf{w}_1)_{B_1} + (\mathbf{w}_2)_{B_1}, \quad (\alpha\mathbf{w})_{B_1} = \alpha(\mathbf{w})_{B_1}$$

### 4.2. Matriz de Transición
**Definición 3**: Expresando cada vector de la base $B_1$ como combinación lineal de los vectores de la base $B_2$:
$$\mathbf{u}_j = a_{1j}\mathbf{v}_1 + a_{2j}\mathbf{v}_2 + \dots + a_{nj}\mathbf{v}_n \implies (\mathbf{u}_j)_{B_2} = \begin{pmatrix} a_{1j} \\ a_{2j} \\ \vdots \\ a_{nj} \end{pmatrix}$$

La matriz de transición $A$ de la base $B_1$ a la base $B_2$ es la matriz de $n \times n$ cuyas columnas son las representaciones de los vectores de $B_1$ en términos de la base $B_2$:
$$A = \begin{pmatrix} (\mathbf{u}_1)_{B_2} & (\mathbf{u}_2)_{B_2} & \dots & (\mathbf{u}_n)_{B_2} \end{pmatrix} = \begin{pmatrix} a_{11} & a_{12} & \dots & a_{1n} \\ a_{21} & a_{22} & \dots & a_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a_{n1} & a_{n2} & \dots & a_{nn} \end{pmatrix}$$

- **Teorema 9.6**: Para todo vector $\mathbf{x} \in V$, la transformación de coordenadas está determinada por: $(\mathbf{x})_{B_2} = A(\mathbf{x})_{B_1}$.
- **Teorema 9.7**: Si $A$ es la matriz de transición de $B_1$ a $B_2$, entonces la matriz inversa $A^{-1}$ es la matriz de transición de $B_2$ a $B_1$.

### 4.3. Procedimientos Prácticos de Cambio de Base
**Transición desde la Base Canónica $B_1$ a cualquier Base $B_2$ en $\mathbb{R}^n$**:
1. Construir la matriz $C$ cuyas columnas sean los vectores que componen la base $B_2$. La matriz $C$ representa la transición de $B_2$ a la base canónica $B_1$.
2. Calcular la matriz inversa $C^{-1}$. Esta matriz representa la transición buscada de la base canónica $B_1$ a la base $B_2$.

**Ejemplo 9.6 ($\mathbb{R}^3$)**:
Dada la base canónica $B_1 = \{\mathbf{i}, \mathbf{j}, \mathbf{k}\}$ y la base $B_2 = \left\{ \begin{pmatrix}1\\0\\2\end{pmatrix}, \begin{pmatrix}3\\-1\\0\end{pmatrix}, \begin{pmatrix}0\\1\\-2\end{pmatrix} \right\}$:
1. Verificación de base: $\det \begin{pmatrix} 1 & 3 & 0 \\ 0 & -1 & 1 \\ 2 & 0 & -2 \end{pmatrix} = 8 \neq 0$ (es base).
2. Matriz $C = \begin{pmatrix} 1 & 3 & 0 \\ 0 & -1 & 1 \\ 2 & 0 & -2 \end{pmatrix}$.
3. Matriz de transición $A = C^{-1} = \frac{1}{8}\begin{pmatrix} 2 & 6 & 3 \\ 2 & -2 & -1 \\ 2 & 6 & -1 \end{pmatrix}$.
4. Si $(\mathbf{x})_{B_1} = (1, -2, 4)$, las coordenadas en $B_2$ son: 
   $$(\mathbf{x})_{B_2} = \frac{1}{8}\begin{pmatrix} 2 & 6 & 3 \\ 2 & -2 & -1 \\ 2 & 6 & -1 \end{pmatrix} \begin{pmatrix} 1 \\ -2 \\ 4 \end{pmatrix} = \frac{1}{8}\begin{pmatrix} 2 \\ 2 \\ -14 \end{pmatrix}$$

**Transición entre Bases No Canónicas (Ejemplo 9.7 en $\mathbb{R}^2$)**:
Sean $B_1 = \left\{ \begin{pmatrix}3\\1\end{pmatrix}, \begin{pmatrix}2\\-1\end{pmatrix} \right\}$ y $B_2 = \left\{ \begin{pmatrix}2\\4\end{pmatrix}, \begin{pmatrix}-5\\3\end{pmatrix} \right\}$:
1. Expresar vectores de $B_1$ como combinación lineal de $B_2$: 
   $$\begin{pmatrix}3\\1\end{pmatrix} = a_{11}\begin{pmatrix}2\\4\end{pmatrix} + a_{21}\begin{pmatrix}-5\\3\end{pmatrix}, \quad \begin{pmatrix}2\\-1\end{pmatrix} = a_{12}\begin{pmatrix}2\\4\end{pmatrix} + a_{22}\begin{pmatrix}-5\\3\end{pmatrix}$$
2. Sistemas resultantes: 
   $$\begin{aligned} 2a_{11} - 5a_{21} &= 3 \\ 4a_{11} + 3a_{21} &= 1 \end{aligned} \quad \text{y} \quad \begin{aligned} 2a_{12} - 5a_{22} &= 2 \\ 4a_{12} + 3a_{22} &= -1 \end{aligned}$$
3. Soluciones: $a_{11} = \frac{7}{13}, \quad a_{21} = -\frac{5}{13}, \quad a_{12} = \frac{1}{26}, \quad a_{22} = -\frac{5}{13}$.
4. Matriz de transición $A$: 
   $$A = \frac{1}{26}\begin{pmatrix} 14 & 1 \\ -10 & -10 \end{pmatrix}$$
5. Transformación para un vector genérico $(\mathbf{x})_{B_1} = (b_1, b_2)$: 
   $$(\mathbf{x})_{B_2} = \frac{1}{26}\begin{pmatrix} 14 & 1 \\ -10 & -10 \end{pmatrix}\begin{pmatrix} b_1 \\ b_2 \end{pmatrix} = \begin{pmatrix} \frac{1}{26}(14b_1 + b_2) \\ -\frac{10}{26}(b_1 + b_2) \end{pmatrix}$$
