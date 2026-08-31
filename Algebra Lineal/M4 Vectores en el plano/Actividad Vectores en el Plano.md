# 📐 Actividad: Vectores en el Plano 

A continuación se presenta la resolución detallada y paso a paso de los ejercicios planteados en la **Actividad: Vectores en el plano**, aplicando rigurosamente los conceptos y fórmulas del apunte teórico correspondientes a geometría analítica y álgebra vectorial.



## 📌 Pregunta 1: Razones Trigonométricas Directoras

> **📝 Consigna:** Encontrar el seno y el coseno directores del vector $v = (3,4)$.

### 🔍 Paso 1: Cálculo de la magnitud (módulo) del vector
De acuerdo con la **Definición 5 (Ecuación 4.2)** del apunte, la magnitud de un vector $v = (a, b)$ se calcula como:

$$|v| = \sqrt{a^2 + b^2}$$

Sustituyendo los valores de $v = (3,4)$:

$$|v| = \sqrt{3^2 + 4^2} = \sqrt{9 + 16} = \sqrt{25} = 5$$



### 📐 Paso 2: Determinación del seno y coseno directores
Según la **Definición 7 (Ecuación 4.6)** del apunte, al expresar un vector a partir de su dirección $\theta$, sus componentes rectangulares satisfacen:

$$a = |v| \cos\theta \quad \text{y} \quad b = |v| \sin\theta$$

Despejando las razones trigonométricas directoras obtenemos:

* 🔹 **Coseno director:**  
  $$\cos\theta = \frac{a}{|v|} = \frac{3}{5}$$

* 🔹 **Seno director:**  
  $$\sin\theta = \frac{b}{|v|} = \frac{4}{5}$$



## 📌 Pregunta 2: Condición de Paralelismo

> **📝 Consigna:** Sean $u = (1,1)$ y $v = (1,b)$. Determinar el valor de $b$ de manera tal que $u$ y $v$ sean vectores paralelos.

### 🔗 Paso 1: Aplicación del Teorema de Paralelismo
Según el **Teorema 4.4 (Ecuación 4.11)** del apunte, dos vectores $u$ y $v$ son paralelos si y solo si uno es múltiplo escalar del otro, es decir, si existe una constante $\alpha \in \mathbb{R}$ tal que:

$$v = \alpha u$$



### ⚙️ Paso 2: Planteamiento del sistema de ecuaciones
Sustituyendo las componentes de los vectores dados:

$$(1, b) = \alpha (1, 1) \implies (1, b) = (\alpha, \alpha)$$

Igualando componente a componente obtenemos el siguiente sistema:

1. 📍 **Primera componente (eje x):** $1 = \alpha \implies \alpha = 1$
2. 📍 **Segunda componente (eje y):** $b = \alpha$



### 💡 Paso 3: Resolución del valor de $b$
Sustituyendo el valor encontrado $\alpha = 1$ en la segunda ecuación:

$$b = 1$$

✅ **Conclusión:** El vector $v$ es paralelo a $u$ cuando $b = 1$, dando como resultado $v = (1,1)$.



## 📌 Pregunta 3: Proyección Ortogonal entre Vectores

> **📝 Consigna:** Calcular las proyecciones $\text{proy}_v u$ y $\text{proy}_u v$ para los vectores $u = (3,0)$ y $v = (1,1)$.



### 🎯 Parte A: Proyección de $u$ sobre $v$ ($\text{proy}_v u$)

#### 🔹 Paso A.1: Aplicación de la fórmula de proyección
De acuerdo con la **Definición 13 (Ecuación 4.12)** del apunte, la fórmula para proyectar $u$ sobre $v$ es:

$$\text{proy}_v u = \left( \frac{u \cdot v}{|v|^2} \right) v$$

#### 🔹 Paso A.2: Cálculo del producto escalar ($u \cdot v$)
Siguiendo la **Definición 8 (Ecuación 4.7)**:

$$u \cdot v = (3)(1) + (0)(1) = 3 + 0 = 3$$

#### 🔹 Paso A.3: Cálculo del cuadrado de la magnitud ($|v|^2$)
$$|v|^2 = 1^2 + 1^2 = 2$$

#### 🔹 Paso A.4: Construcción del vector proyección
$$\text{proy}_v u = \frac{3}{2} (1, 1) = \left( \frac{3}{2}, \frac{3}{2} \right)$$



### 🎯 Parte B: Proyección de $v$ sobre $u$ ($\text{proy}_u v$)

#### 🔹 Paso B.1: Aplicación de la fórmula de proyección
Intercambiando los roles de los vectores en la **Definición 13**:

$$\text{proy}_u v = \left( \frac{v \cdot u}{|u|^2} \right) u$$

#### 🔹 Paso B.2: Uso de propiedades y cálculo de $|u|^2$
Por la **Proposición 1** (propiedad conmutativa del producto escalar):

$$v \cdot u = u \cdot v = 3$$

Calculamos el cuadrado del módulo del vector $u$:

$$|u|^2 = 3^2 + 0^2 = 9$$

#### 🔹 Paso B.3: Construcción del vector proyección
$$\text{proy}_u v = \frac{3}{9} (3, 0) = \frac{1}{3} (3, 0) = (1, 0)$$



## 🏁 Resumen de Resultados Finales ✨

| Ejercicio | Incógnita / Operación | Resultado Final |
| :--- | :--- | :--- |
| **Pregunta 1** | Coseno director ($\cos\theta$) | $\frac{3}{5}$ |
| **Pregunta 1** | Seno director ($\sin\theta$) | $\frac{4}{5}$ |
| **Pregunta 2** | Valor de $b$ (paralelismo) | $b = 1$ |
| **Pregunta 3 (A)** | Proyección de $u$ sobre $v$ ($\text{proy}_v u$) | $\left( \frac{3}{2}, \frac{3}{2} \right)$ |
| **Pregunta 3 (B)** | Proyección de $v$ sobre $u$ ($\text{proy}_u v$) | $(1, 0)$ |
