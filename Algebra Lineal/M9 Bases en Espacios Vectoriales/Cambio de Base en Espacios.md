# 📘 Bases, Dimensión y Cambio de Base en Espacios Vectoriales

El presente documento ofrece una síntesis exhaustiva sobre las bases, la dimensión y la teoría del cambio de base en espacios vectoriales finitos.

**Puntos Clave:**
- 📐 **Definición de Base**: Un conjunto finito de vectores $S = \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ constituye una base de un espacio vectorial $V$ si es linealmente independiente y genera a $V$.
- 🔒 **Unicidad de Representación**: Todo vector $\mathbf{v} \in V$ se puede expresar como una combinación lineal única de los vectores de una base dada.
- 📏 **Invariancia de la Dimensión**: Todas las bases de un mismo espacio vectorial de dimensión finita $V$ poseen de forma estricta la misma cantidad de vectores. Este número define la dimensión ($\dim V$).
- 🧮 **Dimensión de Espacios Estándar**: La dimensión del espacio euclidiano $\mathbb{R}^n$ es $n$, y la del espacio de matrices $M_{mn}$ es $mn$. Para el espacio trivial $\{\mathbf{0}\}$, la dimensión es $0$.
- 🔄 **Cambio de Base y Matriz de Transición**: La conversión de coordenadas de un vector entre dos bases distintas $B_1$ y $B_2$ se realiza mediante la matriz de transición $A$, tal que $(\mathbf{x})_{B_2} = A(\mathbf{x})_{B_1}$.
- ↩️ **Inversión de Matriz de Transición**: La matriz de transición de $B_2$ a $B_1$ es la inversa de la matriz de transición de $B_1$ a $B_2$ ($A^{-1}$). Cuando $B_1$ es la base canónica, la matriz de transición hacia $B_2$ se calcula directamente mediante $C^{-1}$, donde $C$ contiene los vectores de $B_2$ dispuestos en columnas.

---

## 1. 📐 Concepto de Base y Unicidad de Representación

### 1.1 Definición de Base
Un conjunto finito de vectores $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ es una base para un espacio vectorial $V$ si se cumplen las siguientes dos condiciones:
1. $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ es linealmente independiente.
2. $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ genera a $V$.

### 1.2 Base Canónica
- **En $\mathbb{R}^n$**: Todo conjunto de $n$ vectores linealmente independientes en $\mathbb{R}^n$ genera a $\mathbb{R}^n$ y, por lo tanto, es una base. La base canónica en $\mathbb{R}^n$ está compuesta por las columnas de la matriz identidad (cuyo determinante es $1$):
  $$\mathbf{e}_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \\ \vdots \\ 0 \end{pmatrix}, \quad \mathbf{e}_2 = \begin{pmatrix} 0 \\ 1 \\ 0 \\ \vdots \\ 0 \end{pmatrix}, \quad \mathbf{e}_3 = \begin{pmatrix} 0 \\ 0 \\ 1 \\ \vdots \\ 0 \end{pmatrix}, \quad \dots, \quad \mathbf{e}_n = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \vdots \\ 1 \end{pmatrix}$$

- **En $M_{2\times 2}$**: La base canónica está formada por cuatro matrices linealmente independientes que generan $M_{2\times 2}$:
  $$\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \quad \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \quad \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}, \quad \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}$$

### 1.3 Teorema de Unicidad de Representación (Teorema 9.1)
Si $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ es una base para $V$ y $\mathbf{v} \in V$, existe un conjunto único de escalares $c_1, c_2, \dots, c_n$ tales que:
$$\mathbf{v} = c_1\mathbf{v}_1 + c_2\mathbf{v}_2 + \dots + c_n\mathbf{v}_n$$

- **Demostración de Unicidad**: Puesto que los vectores generan $V$, existe al menos un conjunto de escalares. Si existiera otro conjunto $d_1, d_2, \dots, d_n$, podríamos escribir:
  $$\mathbf{v} = c_1\mathbf{v}_1 + c_2\mathbf{v}_2 + \dots + c_n\mathbf{v}_n = d_1\mathbf{v}_1 + d_2\mathbf{v}_2 + \dots + d_n\mathbf{v}_n$$
  Restando ambas expresiones:
  $$(c_1 - d_1)\mathbf{v}_1 + (c_2 - d_2)\mathbf{v}_2 + \dots + (c_n - d_n)\mathbf{v}_n = \mathbf{0}$$
  Al ser $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ linealmente independientes, esta igualdad se cumple si y solo si:
  $$c_1 - d_1 = 0, \quad c_2 - d_2 = 0, \quad \dots, \quad c_n - d_n = 0$$
  De donde $c_1 = d_1, c_2 = d_2, \dots, c_n = d_n$. El conjunto de escalares es único.

---

## 2. 📏 Dimensión de un Espacio Vectorial

### 2.1 Teorema del Número de Vectores en una Base (Teorema 9.2)
Si $S_1 = \{\mathbf{u}_1, \mathbf{u}_2, \dots, \mathbf{u}_m\}$ y $S_2 = \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n\}$ son dos bases para un espacio vectorial $V$, entonces $m = n$. Es decir, cualesquiera dos bases en un espacio vectorial $V$ tienen el mismo número de vectores.

- **Esquema de la Demostración**: Para probar que $m \le n$, se asume por absurdo que $m > n$. Dado que $S_2$ es base, cada vector $\mathbf{u}_i \in S_1$ se expresa como combinación lineal de $S_2$:
  $$\mathbf{u}_j = a_{1j}\mathbf{v}_1 + a_{2j}\mathbf{v}_2 + \dots + a_{nj}\mathbf{v}_n \quad (\text{para } j = 1, \dots, m)$$
  Para analizar la independencia de $S_1$, se plantea la ecuación $c_1\mathbf{u}_1 + c_2\mathbf{u}_2 + \dots + c_m\mathbf{u}_m = \mathbf{0}$. Sustituyendo las expresiones anteriores y agrupando respecto a $\mathbf{v}_i$, se obtiene un sistema homogéneo de $n$ ecuaciones con $m$ incógnitas ($c_1, \dots, c_m$). Dado que $m > n$, el sistema tiene infinitas soluciones no nulas, lo que implica que $S_1$ es linealmente dependiente. Esto contradice la hipótesis de que $S_1$ es una base, concluyendo que $m \le n$. Intercambiando los roles de $S_1$ y $S_2$ se llega a $n \le m$, demostrando que $m = n$.

### 2.2 Definición de Dimensión
Si un espacio vectorial $V$ tiene una base con un número finito de elementos, la dimensión de $V$ (denotada por $\dim V$) es el número de vectores en cualquiera de sus bases, y $V$ se denomina espacio vectorial de dimensión finita. En caso contrario, es de dimensión infinita.
- Si $V = \{\mathbf{0}\}$, se define $\dim V = 0$.

| Espacio Vectorial | Base Típica / Descripción | Dimensión ($\dim V$) |
| :--- | :--- | :--- |
| $\mathbb{R}^n$ | Base canónica $\{\mathbf{e}_1, \dots, \mathbf{e}_n\}$ | $n$ |
| $M_{mn}$ (Matrices $m \times n$) | Matrices $A_{ij}$ con $1$ en la posición $ij$ y $0$ en las demás | $mn$ |
| Espacio nulo $\{\mathbf{0}\}$ | Contiene únicamente el vector cero | $0$ |

### 2.3 Teoremas Complementarios de Dimensión
- **Teorema 9.3**: Si $\dim V = n$, cualquier conjunto de $m$ vectores linealmente independientes en $V$ cumple que $m \le n$.
- **Teorema 9.4**: Sea $H$ un subespacio de un espacio vectorial de dimensión finita $V$. Entonces $H$ tiene dimensión finita y $\dim H \le \dim V$.
- **Teorema 9.5**: Cualquier conjunto de $n$ vectores linealmente independientes en un espacio vectorial $V$ de dimensión $n$ constituye una base para $V$.

### 2.4 Subespacios: Espacio de Solución y Espacio Nulo
Sea $A$ una matriz de $m \times n$. El conjunto solución del sistema homogéneo $A\mathbf{x} = \mathbf{0}$, definido por $S = \{\mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{0}\}$, es un subespacio de $\mathbb{R}^n$ denominado espacio de solución o espacio nulo de la matriz $A$, cumpliéndose que $\dim S \le n$.

- **Ejemplo Práctico de Cálculo de Base y Dimensión para un Espacio Nulo**: Dado el sistema homogéneo:
  $$\begin{aligned} x + 2y - z &= 0 \\ 2x - y + 3z &= 0 \end{aligned}$$
  Matriz del sistema $A = \begin{pmatrix} 1 & 2 & -1 \\ 2 & -1 & 3 \end{pmatrix}$. Al reducir la matriz por filas:
  $$\begin{pmatrix} 1 & 2 & -1 & | & 0 \\ 2 & -1 & 3 & | & 0 \end{pmatrix} \rightarrow \begin{pmatrix} 1 & 2 & -1 & | & 0 \\ 0 & -5 & 5 & | & 0 \end{pmatrix} \rightarrow \begin{pmatrix} 1 & 2 & -1 & | & 0 \\ 0 & 1 & -1 & | & 0 \end{pmatrix} \rightarrow \begin{pmatrix} 1 & 0 & 1 & | & 0 \\ 0 & 1 & -1 & | & 0 \end{pmatrix}$$
  El sistema equivalente se reescribe como:
  $$\begin{aligned} x - z &= 0 \\ y - z &= 0 \end{aligned}$$
  Tomando a $z$ como variable libre ($z = t$), se obtiene $y = t$ y $x = -t$. Todas las soluciones son de la forma $(-t, t, t) = t(-1, 1, 1)$.
  - **Base para $S$**: $\{(-1, 1, 1)\}$.
  - **Dimensión**: $\dim S = 1$ (geoméricamente representa la recta $x = -t, y = t, z = t$).

---

## 3. 🔀 Cambio de Base

### 3.1 Representación de Coordenadas
Sea $B_1 = \{\mathbf{u}_1, \mathbf{u}_2, \dots, \mathbf{u}_n\}$ una base para un espacio vectorial $V$ de dimensión $n$. Todo vector $\mathbf{x} \in V$ se puede escribir como:
$$\mathbf{x} = b_1\mathbf{u}_1 + b_2\mathbf{u}_2 + \dots + b_n\mathbf{u}_n = \sum_{i=1}^n b_i\mathbf{u}_i$$
La representación en columna de $\mathbf{x}$ en términos de la base $B_1$ se denota por:
$$(\mathbf{x})_{B_1} = \begin{pmatrix} b_1 \\ b_2 \\ \vdots \\ b_n \end{pmatrix}$$

**Propiedades algebraicas de las coordenadas**:
1. $(\mathbf{w}_1 + \mathbf{w}_2)_{B_1} = (\mathbf{w}_1)_{B_1} + (\mathbf{w}_2)_{B_1}$
2. $\alpha(\mathbf{w})_{B_1} = (\alpha\mathbf{w})_{B_1}$

### 3.2 Definición de Matriz de Transición (Definición 3 y Teorema 9.6)
Sean $B_1 = \{\mathbf{u}_1, \dots, \mathbf{u}_n\}$ y $B_2 = \{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ dos bases para $V$. Como $B_2$ es una base, cada vector $\mathbf{u}_j \in B_1$ se expresa en términos de $B_2$:
$$\mathbf{u}_j = a_{1j}\mathbf{v}_1 + a_{2j}\mathbf{v}_2 + \dots + a_{nj}\mathbf{v}_n \implies (\mathbf{u}_j)_{B_2} = \begin{pmatrix} a_{1j} \\ a_{2j} \\ \vdots \\ a_{nj} \end{pmatrix}$$

La matriz de transición $A$ de $n \times n$ de la base $B_1$ a la base $B_2$ es aquella cuyas columnas son las representaciones de los vectores de $B_1$ respecto a $B_2$:
$$A = \begin{pmatrix} \uparrow & \uparrow & & \uparrow \\ (\mathbf{u}_1)_{B_2} & (\mathbf{u}_2)_{B_2} & \dots & (\mathbf{u}_n)_{B_2} \\ \downarrow & \downarrow & & \downarrow \end{pmatrix}$$

Para todo vector $\mathbf{x} \in V$, la relación de cambio de coordenadas se define por:
$$(\mathbf{x})_{B_2} = A(\mathbf{x})_{B_1}$$

### 3.3 Teoremas y Procedimientos de Inversión (Teorema 9.7 y Observaciones)
- **Teorema 9.7**: Si $A$ es la matriz de transición de $B_1$ a $B_2$, entonces $A^{-1}$ es la matriz de transición de $B_2$ a $B_1$.
- **Procedimiento desde la Base Canónica**: Para hallar la matriz de transición desde la base canónica $B_1 = \{\mathbf{e}_1, \dots, \mathbf{e}_n\}$ hacia cualquier otra base $B_2 = \{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ en $\mathbb{R}^n$:
  1. Construir la matriz $C$ cuyas columnas son los vectores de la base $B_2$ (esta matriz $C$ representa la transición de $B_2$ a $B_1$).
  2. Calcular $C^{-1}$. Esta matriz $C^{-1}$ es la matriz de transición buscada de $B_1$ a $B_2$.

---

## 4. 📝 Casos Prácticos Ilustrativos de Cambio de Base

### Ejemplo 4.1: Cambio de la Base Canónica a una Base Dada en $\mathbb{R}^3$ (Ejemplo 9.6)
Sea $B_1 = \{\mathbf{i}, \mathbf{j}, \mathbf{k}\}$ la base canónica de $\mathbb{R}^3$ y sea:
$$B_2 = \left\{ \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix}, \begin{pmatrix} 3 \\ -1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ -2 \end{pmatrix} \right\}$$
1. **Verificación de Base y Construcción de $C$**: 
   $$C = \begin{pmatrix} 1 & 3 & 0 \\ 0 & -1 & 1 \\ 2 & 0 & -2 \end{pmatrix}$$
   El determinante $|C| = 8 \neq 0$, confirmando que $B_2$ es una base.
2. **Cálculo de la Matriz de Transición $A = C^{-1}$**: 
   $$A = C^{-1} = \frac{1}{8} \begin{pmatrix} 2 & 6 & 3 \\ 2 & -2 & -1 \\ 2 & 6 & -1 \end{pmatrix}$$
3. **Aplicación a un Vector**: Si $(\mathbf{x})_{B_1} = (1, -2, 4)$, sus coordenadas en $B_2$ son:
   $$(\mathbf{x})_{B_2} = \frac{1}{8} \begin{pmatrix} 2 & 6 & 3 \\ 2 & -2 & -1 \\ 2 & 6 & -1 \end{pmatrix} \begin{pmatrix} 1 \\ -2 \\ 4 \end{pmatrix} = \frac{1}{8} \begin{pmatrix} 2 \\ 2 \\ -14 \end{pmatrix}$$

### Ejemplo 4.2: Transición Entre Dos Bases No Canónicas en $\mathbb{R}^2$ (Ejemplo 9.7)
Dadas las bases en $\mathbb{R}^2$:
$$B_1 = \left\{ \begin{pmatrix} 3 \\ 1 \end{pmatrix}, \begin{pmatrix} 2 \\ -1 \end{pmatrix} \right\} \quad \text{y} \quad B_2 = \left\{ \begin{pmatrix} 2 \\ 4 \end{pmatrix}, \begin{pmatrix} -5 \\ 3 \end{pmatrix} \right\}$$

Para expresar los vectores de $B_1$ en combinación lineal de $B_2$:
$$\begin{pmatrix} 3 \\ 1 \end{pmatrix} = a_{11}\begin{pmatrix} 2 \\ 4 \end{pmatrix} + a_{21}\begin{pmatrix} -5 \\ 3 \end{pmatrix} \quad \text{y} \quad \begin{pmatrix} 2 \\ -1 \end{pmatrix} = a_{12}\begin{pmatrix} 2 \\ 4 \end{pmatrix} + a_{22}\begin{pmatrix} -5 \\ 3 \end{pmatrix}$$

Sistemas lineales resultantes y sus soluciones:
- **Sistema 1**: 
  $$\begin{cases} 2a_{11} - 5a_{21} = 3 \\ 4a_{11} + 3a_{21} = 1 \end{cases} \implies a_{11} = \frac{7}{13}, \quad a_{21} = -\frac{5}{13}$$
- **Sistema 2**: 
  $$\begin{cases} 2a_{12} - 5a_{22} = 2 \\ 4a_{12} + 3a_{22} = -1 \end{cases} \implies a_{12} = \frac{1}{26}, \quad a_{22} = -\frac{5}{13}$$

Matriz de transición $A$ de $B_1$ a $B_2$:
$$A = \frac{1}{26} \begin{pmatrix} 14 & 1 \\ -10 & -10 \end{pmatrix}$$

Para un vector expresado como $(\mathbf{x})_{B_1} = (b_1, b_2)$, sus coordenadas en $B_2$ corresponden a:
$$(\mathbf{x})_{B_2} = \frac{1}{26} \begin{pmatrix} 14 & 1 \\ -10 & -10 \end{pmatrix} \begin{pmatrix} b_1 \\ b_2 \end{pmatrix} = \begin{pmatrix} \frac{1}{26}(14b_1 + b_2) \\ -\frac{10}{26}(b_1 + b_2) \end{pmatrix}$$
