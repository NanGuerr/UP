# 📐 ÁLGEBRA LINEAL: Resolución Paso a Paso

> **Actividad:** Espacios Vectoriales y Subespacios  

---

## 📚 Marco Teórico de Referencia

Para el desarrollo formal de los ejercicios, se aplican estrictamente las definiciones y teoremas fundamentales contenidos en la teoría de espacios vectoriales:

### 🌟 Definición 1: Espacio Vectorial Real
Un espacio vectorial real $V$ es un conjunto de objetos (vectores) junto con dos operaciones binarias (suma $s: V \times V \rightarrow V$ y multiplicación por un escalar $m: V \times \mathbb{R} \rightarrow V$) que satisfacen los siguientes **10 axiomas**:

1. **Cerradura bajo la suma:** $\forall x, y \in V \Rightarrow x + y \in V$
2. **Asociatividad de la suma:** $\forall x, y, z \in V \Rightarrow (x + y) + z = x + (y + z)$
3. **Vector cero (neutro aditivo):** $\exists \mathbf{0} \in V$ tal que $\forall x \in V \Rightarrow x + \mathbf{0} = x$
4. **Inverso aditivo:** $\forall x \in V, \exists -x \in V$ tal que $x + (-x) = \mathbf{0}$
5. **Conmutatividad de la suma:** $\forall x, y \in V \Rightarrow x + y = y + x$
6. **Cerradura bajo la multiplicación por escalar:** $\forall x \in V, \alpha \in \mathbb{R} \Rightarrow \alpha x \in V$
7. **Primera ley distributiva:** $\alpha(x + y) = \alpha x + \alpha y$
8. **Segunda ley distributiva:** $(\alpha + \beta)x = \alpha x + \beta x$
9. **Asociatividad escalar:** $\alpha(\beta x) = (\alpha\beta)x$
10. **Identidad escalar:** $1x = x$

### 🛠️ Teorema 7.2: Criterio para ser un Subespacio Vectorial
Un subconjunto no vacío $H$ de un espacio vectorial $V$ es un subespacio de $V$ si y solo si se cumplen las dos reglas de cerradura:
* **(i) Cerradura bajo la suma:** Si $x, y \in H \Rightarrow x + y \in H$
* **(ii) Cerradura bajo la multiplicación por escalar:** Si $x \in H$ y $\alpha \in \mathbb{R} \Rightarrow \alpha x \in H$

### ⚠️ Observación 3
Todo subespacio $H$ de $V$ debe contener obligatoriamente al vector cero ($\mathbf{0} \in H$). Si $\mathbf{0} \notin H$, entonces $H$ no es un subespacio de $V$.

---

## 📝 Resolución Paso a Paso de las Actividades

### ❌ Pregunta 1
**Consigna:** El siguiente conjunto no es un espacio vectorial. ¿Por qué? ¿Cuál axioma no verifica?  
$$V_{1} = \{(x, y) \in \mathbb{R}^2 : y \le 0\}$$  
con la suma de vectores y multiplicación por un escalar usuales.

#### 🔍 Desarrollo y Justificación Formal
Para demostrar que un conjunto no es un espacio vectorial, basta con exhibir al menos un axioma de la Definición 1 que no se cumpla:

1. **Fallo del Axioma 4 (Inverso Aditivo):**  
   Consideremos el vector $v = (1, -2) \in V_{1}$, ya que su segunda componente satisface $y = -2 \le 0$. Su inverso aditivo en $\mathbb{R}^2$ es $-v = (-1, 2)$. Sin embargo, para el vector $-v$, la segunda componente es $y = 2 > 0$, lo cual viola la condición del conjunto. Por lo tanto, $-v \notin V_{1}$.

2. **Fallo del Axioma 6 (Cerradura bajo la multiplicación por un escalar):**  
   Tomemos el vector $v = (1, -2) \in V_{1}$ y el escalar negativo $\alpha = -1 \in \mathbb{R}$. El producto por el escalar da:  
   $$\alpha v = -1 \cdot (1, -2) = (-1, 2)$$  
   Dado que $y = 2 > 0$, tenemos que $\alpha v \notin V_{1}$. El conjunto no es cerrado bajo el producto por escalares negativos.

> **💡 Conclusión:** El conjunto $V_1$ no es un espacio vectorial porque viola el **Axioma 4** (Inverso aditivo) y el **Axioma 6** (Cerradura bajo la multiplicación por escalar).

---

### ❌ Pregunta 2
**Consigna:** El siguiente conjunto no es un espacio vectorial. ¿Por qué? ¿Cuál axioma no verifica?  
$$V_{2} = \{(x, y) \in \mathbb{R}^2 : y > 0\}$$  
con la suma de vectores y multiplicación por un escalar usuales.

#### 🔍 Desarrollo y Justificación Formal
Analizamos las condiciones de los axiomas:

1. **Fallo del Axioma 3 (Inexistencia del Vector Cero / Elemento Neutro):**  
   El vector nulo usual de $\mathbb{R}^2$ es $\mathbf{0} = (0, 0)$. Para que $\mathbf{0} \in V_{2}$, su segunda componente debe cumplir $y > 0$. Sin embargo, en $(0, 0)$ se tiene $y = 0$, que no es estrictamente mayor que cero ($0 > 0$). Por lo tanto, $\mathbf{0} \notin V_{2}$.

2. **Fallo del Axioma 6 (Cerradura bajo la multiplicación por escalar):**  
   Sea $v = (2, 3) \in V_{2}$ (ya que $3 > 0$). Tomando el escalar $\alpha = 0 \in \mathbb{R}$, tenemos:  
   $$\alpha v = 0 \cdot (2, 3) = (0, 0) \notin V_{2}$$  
   Asimismo, para cualquier escalar negativo $\alpha = -1$, se tiene $\alpha v = (-2, -3) \notin V_{2}$ pues su segunda componente es $-3$, la cual no es mayor que cero.

> **💡 Conclusión:** $V_2$ no es un espacio vectorial porque viola el **Axioma 3** (Existencia del vector cero) y el **Axioma 6** (Cerradura bajo multiplicación por escalar).

---

### ❌ Pregunta 3
**Consigna:** El siguiente conjunto no es un espacio vectorial. ¿Por qué? ¿Cuál axioma no verifica?  
Los vectores en el plano que están en el primer cuadrante, es decir:  
$$V_{3} = \{(x, y) \in \mathbb{R}^2 : x \ge 0, y \ge 0\}$$

#### 🔍 Desarrollo y Justificación Formal
Evaluamos los axiomas estructurales:

1. **Fallo del Axioma 4 (Inverso Aditivo):**  
   Consideremos un vector no nulo del primer cuadrante, por ejemplo, $v = (3, 5) \in V_{3}$. Su inverso aditivo es $-v = (-3, -5)$. Las componentes de $-v$ son ambas negativas ($x = -3 < 0, y = -5 < 0$), lo que sitúa al vector en el tercer cuadrante. Por ende, $-v \notin V_{3}$.

2. **Fallo del Axioma 6 (Cerradura bajo multiplicación por un escalar):**  
   Tomando el vector $v = (3, 5) \in V_{3}$ y el escalar $\alpha = -2 \in \mathbb{R}$:  
   $$\alpha v = -2 \cdot (3, 5) = (-6, -10) \notin V_{3}$$

> **💡 Conclusión:** El conjunto de vectores del primer cuadrante ($V_3$) no constituye un espacio vectorial pues no verifica la existencia de inversos aditivos (**Axioma 4**) ni la cerradura bajo la multiplicación por escalares negativos (**Axioma 6**).

---

### ❌ Pregunta 4
**Consigna:** El siguiente conjunto no es un espacio vectorial. ¿Por qué? ¿Cuál axioma no verifica?  
$$V_{4} = \{(x, x, x + 1) \in \mathbb{R}^3 : x \in \mathbb{R}\}$$

#### 🔍 Desarrollo y Justificación Formal
Verificamos las propiedades fundamentales:

1. **Fallo del Axioma 3 (Inexistencia del Vector Cero / Neutro Aditivo):**  
   El vector nulo de $\mathbb{R}^3$ es $\mathbf{0} = (0, 0, 0)$. Para que un vector de $V_{4}$ sea igual a $(0, 0, 0)$, se debe cumplir simultáneamente:  
   $$x = 0 \quad \text{y} \quad x + 1 = 0 \implies x = -1$$  
   Esto genera una contradicción ($0 = -1$), lo cual es imposible. Por lo tanto, el vector nulo no pertenece al conjunto: $\mathbf{0} \notin V_{4}$.

2. **Fallo del Axioma 1 (Cerradura bajo la suma):**  
   Consideremos dos elementos genéricos de $V_{4}$:  
   $$u = (x_{1}, x_{1}, x_{1} + 1) \quad \text{y} \quad v = (x_{2}, x_{2}, x_{2} + 1)$$  
   Su suma es:  
   $$u + v = (x_{1} + x_{2}, x_{1} + x_{2}, x_{1} + x_{2} + 2)$$  
   Para que este resultado perteneciera a $V_{4}$, la tercera componente debería ser igual a la primera componente más 1, es decir, $(x_{1} + x_{2}) + 1$. Sin embargo, la tercera componente obtenida es $(x_{1} + x_{2}) + 2$, lo cual es distinto. Por lo tanto, $u + v \notin V_{4}$.

> **💡 Conclusión:** $V_{4}$ no es un espacio vectorial porque no contiene al vector cero (**Axioma 3**) y no cumple con la cerradura bajo la suma (**Axioma 1**).

---

### ❌ Pregunta 5
**Consigna:** Determinar si el subconjunto dado $H$ del espacio vectorial $V$ es un subespacio de $V$:  
$$V = \mathbb{R}^2, \quad H = \{(x, y) \in \mathbb{R}^2 : y \ge 0\}$$

#### 🔍 Desarrollo y Justificación Formal por Teorema 7.2
Para determinar si $H$ es un subespacio de $V = \mathbb{R}^2$, aplicamos el Teorema 7.2 (Criterio de Subespacio Vectorial).

* **Comprobación de la Condición (ii) Cerradura bajo la multiplicación por escalar:**  
  * Sea el vector $v = (2, 4) \in H$, dado que su segunda componente cumple $y = 4 \ge 0$.  
  * Tomamos el escalar real $\alpha = -1 \in \mathbb{R}$.  
  * Multiplicando el vector por el escalar:  
    $$\alpha v = -1 \cdot (2, 4) = (-2, -4)$$  
  * Evaluamos la condición de pertenencia para $(-2, -4)$: su segunda componente es $y = -4$, la cual no es mayor ni igual a cero ($-4 \ge 0$ es falso).  
  * Por lo tanto, $\alpha v \notin H$.

> **💡 Conclusión:** Al no cumplirse la regla de cerradura bajo la multiplicación por escalares negativos, $H$ **NO** es un subespacio vectorial de $V = \mathbb{R}^2$.

---

### ✅ Pregunta 6
**Consigna:** Determine si el subconjunto dado $H$ del espacio vectorial $V$ es un subespacio de $V$:  
$$V = \mathbb{R}^2, \quad H = \{(x, y) \in \mathbb{R}^2 : x = y\}$$

#### 🔍 Desarrollo y Justificación Formal por Teorema 7.2
Aplicamos el Teorema 7.2 para verificar si $H$ cumple las condiciones de cerradura y no vacuidad:

1. **$H$ es no vacío:**  
   El vector nulo $\mathbf{0} = (0, 0)$ cumple $x = y = 0$, luego $\mathbf{0} \in H$.

2. **Cerradura bajo la suma (Regla i):**  
   Sean $u = (x_{1}, y_{1}) \in H$ y $v = (x_{2}, y_{2}) \in H$.  
   Por pertenecer a $H$, se cumple que $x_{1} = y_{1}$ y $x_{2} = y_{2}$. Sumando ambos vectores:  
   $$u + v = (x_{1} + x_{2}, y_{1} + y_{2})$$  
   Dado que $x_{1} = y_{1}$ y $x_{2} = y_{2}$, resulta que:  
   $$x_{1} + x_{2} = y_{1} + y_{2}$$  
   Por lo tanto, la primera componente de $u + v$ es igual a su segunda componente, lo que garantiza que $(u + v) \in H$.

3. **Cerradura bajo la multiplicación por escalar (Regla ii):**  
   Sea $u = (x_{1}, y_{1}) \in H$ (donde $x_{1} = y_{1}$) y sea $\alpha \in \mathbb{R}$ un escalar cualquiera. El producto escalar es:  
   $$\alpha u = (\alpha x_{1}, \alpha y_{1})$$  
   Como $x_{1} = y_{1}$, al multiplicar por $\alpha$ se mantiene la igualdad:  
   $$\alpha x_{1} = \alpha y_{1}$$  
   Por lo tanto, $\alpha u \in H$.

> **💡 Conclusión:** Dado que $H$ es no vacío y satisface ambas reglas de cerradura del Teorema 7.2, $H$ **SÍ** es un subespacio vectorial de $V = \mathbb{R}^2$ (representa geométricamente la recta $y = x$ que pasa por el origen).
