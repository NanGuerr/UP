# Practica con editor de formúlas matemáticas ℹ️


### 1) Correcciones en la Tabla de Contingencia 📊

En tu enunciado inicial habías definido $P(A) = 0,30$ y $P(B) = 0,55$. Sin embargo, la plantilla del PDF invierte el orden de las variables en los encabezados respecto al estándar común: 🔄

* 📌 **Columnas:** $A$ y $\bar{A}$
* 📌 **Filas:** $B$ y $\bar{B}$

#### Tabla oficial resuelta: 🧮

| | $A$ | $\bar{A}$ | Total |
|---|---|---|---|
| **$B$** | $0,18$ | $0,37$ | **$0,55$** |
| **$\bar{B}$** | $0,12$ | $0,33$ | **$0,45$** |
| **Total** | **$0,30$** | **$0,70$** | **$1,00$** |

Las cuatro respuestas de las probabilidades resultantes coinciden plenamente con el PDF: ✅

* 🔹 $P(\bar{B}) = 0,45$
* 🔹 $P(A \cap \bar{B}) = 0,12$
* 🔹 $P(\bar{A} \cup B) = 0,88$
* 🔹 $P(\bar{A} \cap \bar{B}) = 0,33$



### 2) Correcciones en las Distribuciones Discretas 📈

#### a) Probabilidad Binomial 🎲

* ✍️ **Simbología pedida:** El PDF utiliza la notación específica del editor:
  $$P_{bi}(x \ge 13 / n=27; p=0,43)$$
  💡 (Observa que al pedir $x > 12$, equivale a expresar $x \ge 13$ en una variable discreta).

* 🎯 **Valor redondeado:** $0,362$ (o $0,3647$ si se toma sin redondear con más decimales).

#### b) Probabilidad de Poisson ⏱️

* 💡 **Interpretación del símbolo:** En el enunciado el texto decía "x 7". En la clave de respuestas se confirma que se trataba de una probabilidad acumulada menor o igual a 7 ($x \le 7$), no una probabilidad puntual.

* ✍️ **Simbología pedida:**
  $$P_{po}(x \le 7 / \lambda=5)$$

* 🧮 **Cálculo correcto:**
  $$P(X \le 7) = \sum_{x=0}^{7} \frac{e^{-5} \cdot 5^x}{x!} = \mathbf{0,8663}$$
