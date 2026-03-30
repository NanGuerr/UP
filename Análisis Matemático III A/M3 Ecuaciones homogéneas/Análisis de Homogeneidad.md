# 📝 Resolución: Análisis de Homogeneidad en Ecuaciones Diferenciales

 Identificar los valores de $m$ y $n$ que hacen que la ecuación sea homogénea. 🧐

La ecuación diferencial proporcionada es:
$$(xy^3 \ln(y^n / x^{m-2})) dx + x^m y dy = 0$$

---

### 🔍 1. Análisis de las funciones $M$ y $N$

Para que la ecuación sea homogénea, las funciones $M(x,y)$ y $N(x,y)$ deben ser exactamente del **mismo grado**.

* **Función $N(x,y) = x^m y$:** 📐
    El grado de esta función es la suma de los exponentes de sus variables: $m + 1$.

* **Función $M(x,y) = xy^3 \ln(y^n / x^{m-2})$:** 📑
    Esta función es el producto de un término algebraico ($xy^3$) y un término logarítmico.
    * El grado de $xy^3$ es $1 + 3 = 4$.
    * Para que el logaritmo no afecte el grado de la función (es decir, para que sea de grado $0$), su argumento debe ser una función homogénea de grado $0$. Esto sucede cuando los exponentes del numerador y denominador son iguales: **$n = m - 2$**.

---

### ⚖️ 2. Igualación de grados

Si el logaritmo es de grado $0$, el grado total de $M(x,y)$ es simplemente el grado de $xy^3$, que es **4**. Para que la ecuación sea homogénea, el grado de $N$ debe ser igual al grado de $M$:

$$m + 1 = 4$$
$$m = 3$$

---

### 🔢 3. Determinación de $n$

Ahora sustituimos el valor de $m$ obtenido en la condición necesaria para el logaritmo ($n = m - 2$):

$$n = 3 - 2$$
$$n = 1$$

---

### 🎯 Conclusión

La ecuación es homogénea si y solo si **$m = 3$** y **$n = 1$**. Esto permite que tanto $M$ como $N$ sean funciones de grado $4$ y que el argumento del logaritmo sea el cociente $(y/x)$, que es característico de estas ecuaciones. ✅

**Respuesta correcta:**
**d) $m=3 \wedge n=1$**

---
