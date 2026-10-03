# 📘 Paso a Paso: Actividad de Combinaciones entre Vectores

> *Basado estrictamente en los conceptos, teoremas y ejemplos del apunte teórico de la Universidad de Palermo.*

---

## 🎯 **Pregunta 1**
**Determinar si los vectores $(1,1)$, $(2,2)$ y $(2,1)$ generan el espacio vectorial de $\mathbb{R}^{2}$.**

### 📝 **Paso a paso resolutivo:**

* **1. Comprender la definición de conjunto generador 🌐:**
  Según la **Definición 2** del apunte, un conjunto de vectores $v_1, v_2, \dots, v_n$ genera un espacio vectorial $V$ si **todo vector** en $V$ se puede escribir como una combinación lineal de ellos. Es decir, dado un vector arbitrario $v = (x, y) \in \mathbb{R}^2$, deben existir escalares $a_1, a_2, a_3$ tales que:   
  $$a_1(1, 1) + a_2(2, 2) + a_3(2, 1) = (x, y)$$

* **2. Plantear el sistema de ecuaciones lineales 🧮:**
  Al operar las componentes, obtenemos el siguiente sistema matricial o de ecuaciones:
  $$\begin{cases} a_1 + 2a_2 + 2a_3 = x \\ a_1 + 2a_2 + a_3 = y \end{cases}$$
  Este sistema se puede expresar en su forma de matriz aumentada:
  $$\left(\begin{array}{ccc|c} 1 & 2 & 2 & x \\ 1 & 2 & 1 & y \end{array}\right)$$

* **3. Aplicar el criterio dimensional (Teorema 8.4) 📐:**
  * El espacio vectorial es $\mathbb{R}^2$, lo que significa que su dimensión es $m = 2$.   
  * El número de vectores del conjunto es $n = 3$ (tenemos los vectores $(1,1)$, $(2,2)$ y $(2,1)$).
  * Por el **Teorema 8.4**, un conjunto de $n$ vectores en $\mathbb{R}^m$ es siempre linealmente dependiente si $n > m$. Al haber 3 vectores en $\mathbb{R}^2$ ($3 > 2$), estos vectores son linealmente dependientes.   
  * Reduciendo por renglones la matriz aumentada:
    $$\left(\begin{array}{ccc|c} 1 & 2 & 2 & x \\ 1 & 2 & 1 & y \end{array}\right) \xrightarrow{R_2 \to R_2 - R_1} \left(\begin{array}{ccc|c} 1 & 2 & 2 & x \\ 0 & 0 & -1 & y - x \end{array}\right)$$

* **4. Conclusión ✅:**
  El sistema anterior siempre tiene solución para cualquier $(x, y) \in \mathbb{R}^2$ (por ejemplo, despejando $a_3 = x - y$ y dejando a $a_1$ y $a_2$ en función de parámetros libres, ya que hay infinitas soluciones debido a que una columna no tiene pivote). Por lo tanto, **sí generan** el espacio vectorial $\mathbb{R}^2$ (por el Teorema 8.2, añadir vectores a un conjunto generador mantiene la propiedad).

---

## 🎯 **Pregunta 2**
**¿Para qué valor(es) de $\alpha$ serán linealmente dependientes los vectores $v_1 = (2, -3, 1)$, $v_2 = (-4, 6, -2)$ y $v_3 = (1, \alpha, 4)$?**

### 📝 **Paso a paso resolutivo:**

* **1. Plantear la condición de dependencia lineal 🔗:**
  De acuerdo con la **Definición 4**, los vectores son linealmente dependientes si existen escalares $c_1, c_2, c_3$ no todos cero tales que la combinación lineal igualada al vector cero se cumple:   
  $$c_1(2, -3, 1) + c_2(-4, 6, -2) + c_3(1, \alpha, 4) = (0, 0, 0)$$

* **2. Analizar la relación entre los primeros vectores (Teorema 8.3) 🔍:**
  Observamos los vectores $v_1 = (2, -3, 1)$ y $v_2 = (-4, 6, -2)$. Si multiplicamos $v_1$ por $-2$:
  $$-2(2, -3, 1) = (-4, 6, -2) = v_2$$
  Esto significa que $v_2 = -2v_1$, por lo que $v_1$ y $v_2$ ya son linealmente dependientes por sí solos (uno es múltiplo escalar del otro, **Teorema 8.3**).   

* **3. Aplicar la propiedad del conjunto generador / dependencia 📊:**
  * En el apunte (Observación 2 y Teorema explicativo de $\mathbb{R}^3$), tres vectores en $\mathbb{R}^3$ son linealmente dependientes si y solo si su determinante es igual a cero (o si son coplanares).   
  * Alternativamente, por el **Teorema 8.3**, si un subconjunto de vectores dentro de un grupo es linealmente dependiente ($v_1$ y $v_2$), todo el conjunto resultante es automáticamente linealmente dependiente para cualquier valor del escalar restante, ya que podemos asignar un coeficiente cero al tercer vector ($c_3 = 0$) y utilizar una combinación no trivial entre los primeros dos.

* **4. Conclusión ✅:**
  Los vectores son linealmente dependientes **para cualquier valor de $\alpha$** (es decir, $\alpha \in \mathbb{R}$), debido a que los dos primeros vectores son múltiplos entre sí ($v_2 = -2v_1$).

---

## 🎯 **Pregunta 3**
**Indicar si la siguiente afirmación es verdadera o falsa, y justificar la respuesta:**
*Si $v_1, v_2, v_3$ son linealmente independientes, entonces $v_1, v_2, v_3, v_4$ son linealmente dependientes.*

### 📝 **Paso a paso resolutivo:**

* **1. Revisar los teoremas relevantes del apunte 📚:**
  * **Corolario 8.5:** Un conjunto de vectores linealmente independientes en $\mathbb{R}^n$ contiene como máximo $n$ vectores. Es decir, en un espacio de dimensión $n$, no puede haber más de $n$ vectores linealmente independientes.   
  * Si estuviéramos trabajando exactamente en $\mathbb{R}^3$ (donde el espacio tiene dimensión 3), un conjunto máximo de vectores linealmente independientes es 3. Si agregamos un cuarto vector $v_4$, por el **Teorema 8.4** ($n > m$, donde $4 > 3$), el conjunto de 4 vectores en $\mathbb{R}^3$ se vuelve obligatoriamente linealmente dependiente.   

* **2. Evaluar el contexto general 🌍:**
  Si el espacio vectorial fuera de dimensión infinita, podríamos tener conjuntos independientes infinitos. Sin embargo, en el contexto estándar de $\mathbb{R}^n$ de los teoremas principales del documento (como $\mathbb{R}^3$), añadir un vector adicional a un conjunto que ya alcanza la dimensión máxima independiente satura el espacio, forzando la dependencia lineal.

* **3. Conclusión ✅:**
  * **Respuesta:** **Verdadero** (asumiendo el contexto estándar de $\mathbb{R}^3$ o espacios de dimensión finita donde el número de vectores independientes está acotado por la dimensión del espacio).   
  * **Justificación:** Por el **Teorema 8.4** y el **Corolario 8.5**, un espacio de dimensión $n$ (como $\mathbb{R}^3$) no puede albergar más de $n$ vectores linealmente independientes; al añadir un vector adicional ($v_4$), el conjunto excede la dimensión máxima y se vuelve linealmente dependiente.