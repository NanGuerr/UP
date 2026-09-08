# 📊 1er Parcial de Probabilidad y Estadística


## 📌 PROBLEMA 1: Ensayo de Resistencia en Fundición Esferoidal (FE) ⚙️

### 📝 Enunciado

En la actualidad resulta de interés el desarrollo de material de fundición resistente, liviano y de bajo costo. El material de fundición esferoidal (FE) se caracteriza por una estructura de colada que contiene partículas de grafito en forma de pequeños nódulos esferoidales que le otorgan resistencia.

Se llevó a cabo un ensayo con el objetivo de explorar cómo varía la resistencia de piezas de FE (medida a través de la cantidad de nódulos/mm²) en función del espesor de la pieza. Para ello se fabricaron piezas de 2 y 4 mm de espesor y se obtuvieron los datos de la base de datos "PROBLEMA 1 - FUNDICION".



### 📊 Base de Datos: Resistencia de Piezas (nódulos/mm²)

| Muestra 🧪 | Espesor: 2 mm 📏 | Espesor: 4 mm 📏 |
| --- | --- | --- |
| **1** | 1713 | 1306 |
| **2** | 1685 | 1289 |
| **3** | 1690 | 1285 |
| **4** | 1694 | 1301 |
| **5** | 1705 | 1315 |
| **6** | 1711 | 1308 |
| **7** | 1664 | 1294 |
| **8** | 1680 | 1328 |
| **9** | 1663 | 1314 |



### 🔍 Resolución y Análisis Procedimental

#### **a) Clasificación de Variables y Estudio 🏷️**

* **Unidad de Análisis:** Una pieza de fundición esferoidal (FE).


* **Tipo de Estudio:** **Experimental / Transversal.**
* *Experimental:* Se manipularon intencionalmente los niveles de espesor (2 mm y 4 mm) para medir su impacto.


* *Transversal:* Las mediciones se realizaron en una única ocasión en el tiempo para cada unidad experimental.




* **Variable Independiente ($X$):** Espesor de la pieza de FE (Toma los valores explícitos: $2\text{ mm}$ y $4\text{ mm}$).


* *Clasificación:* Cuantitativa discreta / categórica por niveles del diseño.


* **Variable Dependiente ($Y$):** Resistencia de la pieza (medida a través de la cantidad de $\text{nódulos/mm}^2$).


* *Clasificación:* Cuantitativa continua (Escala de razón).





#### **b) Análisis Estadístico Descriptivo e Informe 📈**

##### **1. Cálculos de Medidas Resumen:**

* **Para Piezas de $2\text{ mm}$ ($n = 9$):**
* Media ($\bar{x}_{2mm}$):

$$\bar{x}_{2mm} = \frac{\sum x}{n} = \frac{15205}{9} \approx 1689.44 \text{ nódulos/mm}^2$$


* Desviación Estándar Muestral ($s_{2mm}$):

$$s_{2mm} \approx 18.50 \text{ nódulos/mm}^2$$


* Coeficiente de Variación ($CV_{2mm}$):

$$CV_{2mm} = \frac{s_{2mm}}{\bar{x}_{2mm}} \times 100 = \frac{18.50}{1689.44} \times 100 \approx 1.095\%$$




* **Para Piezas de $4\text{ mm}$ ($n = 9$):**
* Media ($\bar{x}_{4mm}$):

$$\bar{x}_{4mm} = \frac{\sum x}{n} = \frac{11740}{9} \approx 1304.44 \text{ nódulos/mm}^2$$


* Desviación Estándar Muestral ($s_{4mm}$):

$$s_{4mm} \approx 14.13 \text{ nódulos/mm}^2$$


* Coeficiente de Variación ($CV_{4mm}$):

$$CV_{4mm} = \frac{s_{4mm}}{\bar{x}_{4mm}} \times 100 = \frac{14.13}{1304.44} \times 100 \approx 1.083\%$$





##### **2. Informe Descriptivo e Interpretación:**

* **Mayor Resistencia:** Las piezas de **$2\text{ mm}$ de espesor** resultaron sensiblemente más resistentes, presentando un promedio superior de **$1689.44 \text{ nódulos/mm}^2$** en comparación con los $1304.44 \text{ nódulos/mm}^2$ de las piezas de $4\text{ mm}$.


* **Heterogeneidad de la Resistencia:** La resistencia es más heterogénea en las piezas de **$2\text{ mm}$**, ya que poseen tanto una mayor desviación estándar ($18.50$ vs. $14.13$) como un coeficiente de variación ligeramente superior ($1.095\%$ vs. $1.083\%$).


* **Percentil 90 ($P_{90}$) / Cantidad Mínima del 10% de Piezas Más Resistentes:**
Para el espesor de mayor resistencia ($2\text{ mm}$), el límite del $10\%$ de piezas con mayor resistencia corresponde al cuantil $90\%$ ($P_{90}$).
* *Valor muestral:* El valor que supera al $90\%$ de los datos registrados en el ensayo de $2\text{ mm}$ es **$1711 \text{ nódulos/mm}^2$** (y un máximo absoluto de $1713$).







#### **c) Modelo de Distribución de Poisson: Piezas de $6\text{ mm}$ 🧮**

Según el enunciado, la cantidad media de nódulos es de $1150 \text{ nódulos/mm}^2$.
Para una superficie de $A = 5\text{ mm}^2$, la media del proceso ($\lambda$) se escala proporcionalmente:

$$\lambda = 1150 \text{ nódulos/mm}^2 \times 5\text{ mm}^2 = 5750 \text{ nódulos}$$

Dado que $\lambda = 5750$ es un valor elevado, el conteo de eventos $X \sim \text{Poisson}(\lambda = 5750)$ se aproxima mediante una **Distribución Normal**:

* Media: $\mu = \lambda = 5750$
* Varianza: $\sigma^2 = \lambda = 5750 \implies \sigma = \sqrt{5750} \approx 75.8288$

##### **c.1) Probabilidad de que contenga más de 5700 nódulos ($P(X > 5700)$) 🎯**

Estandarizando a la variable normal $Z$ (sin o con corrección por continuidad):

$$Z = \frac{5700.5 - 5750}{75.8288} = \frac{-49.5}{75.8288} \approx -0.6528$$

$$P(X > 5700) = P(Z > -0.6528) = 1 - P(Z \le -0.6528) \approx 0.7430 \quad (74.30\%)$$

*(📌 En las anotaciones del parcial figura $0.7426$.)*

##### **c.2) Probabilidad de que contenga entre 5600 y 5700 nódulos ($P(5600 \le X \le 5700)$) 📊**

Calculamos las probabilidades acumuladas límites:

* Para $X = 5700$: $P(X \le 5700) \approx 0.2573$
* Para $X = 5600$: $P(X \le 5600) \approx 0.02396$

$$P(5600 \le X \le 5700) = P(X \le 5700) - P(X \le 5600) = 0.2573 - 0.02396 = 0.23334$$

**Respuesta:** La probabilidad es del **$23.33\%$** ($0.23334$).



## ✈️ PROBLEMA 2: Análisis del Comportamiento Turístico 🧳

### 📝 Enunciado

Con el objetivo de analizar el comportamiento del turismo en el 2015 en tres regiones de nuestro país (Norte, Centro, Sur) se reunió la siguiente información:

* **Región Norte ($N$):** Recibió el $32\%$ del turismo total. De ellos, el $26\%$ eran extranjeros ($E$).


* **Región Centro ($C$):** Recibió el $22\%$ del turismo total. De ellos, el $15\%$ eran extranjeros ($E$).


* **Región Sur ($S$):** Recibió el resto del turismo ($100\% - 32\% - 22\% = 46\%$). De ellos, el $55\%$ eran extranjeros ($E$).





### 📊 Tabla de Probabilidades Conjuntas y Condicionales

#### **Probabilidades Condicionales Por Origen:**

* $P(E \mid N) = 0.26 \implies P(L \mid N) = 0.74$

* $P(E \mid C) = 0.15 \implies P(L \mid C) = 0.85$

* $P(E \mid S) = 0.55 \implies P(L \mid S) = 0.45$


#### **Tabla de Distribución Conjunta de Probabilidad:**

| Región 🗺️ | Extranjeros ($E$) 🌍 | Locales ($L$) 🏠 | Total Región 📈 |
| --- | --- | --- | --- |
| **Norte ($N$)** | $0.32 \times 0.26 = 0.0832$ | $0.32 \times 0.74 = 0.2368$ | **0.32** |
| **Centro ($C$)** | $0.22 \times 0.15 = 0.0330$ | $0.22 \times 0.85 = 0.1870$ | **0.22** |
| **Sur ($S$)** | $0.46 \times 0.55 = 0.2530$ | $0.46 \times 0.45 = 0.2070$ | **0.46** |
| **Total Global** | **0.3692** | **0.6308** | **1.00** |



### 🔍 Resolución Paso a Paso

#### **a) ¿Qué porcentaje de turistas fueron extranjeros? 🌐**

Aplicando la **Ley de Probabilidad Total**:

$$P(E) = P(E \mid N) \cdot P(N) + P(E \mid C) \cdot P(C) + P(E \mid S) \cdot P(S)$$

$$P(E) = (0.26 \times 0.32) + (0.15 \times 0.22) + (0.55 \times 0.46)$$

$$P(E) = 0.0832 + 0.0330 + 0.2530 = 0.3692$$

**Respuesta:** El **$36.92\%$** de los turistas totales fueron extranjeros.



#### **b) Si arriba a nuestro país un turista extranjero, ¿cuál es la probabilidad de que visite la región sur? 🏔️**

Aplicando el **Teorema de Bayes**:

$$P(S \mid E) = \frac{P(E \cap S)}{P(E)} = \frac{P(E \mid S) \cdot P(S)}{P(E)}$$

$$P(S \mid E) = \frac{0.55 \times 0.46}{0.3692} = \frac{0.2530}{0.3692} \approx 0.685265$$

**Respuesta:** La probabilidad de que un turista extranjero visite la región sur es del **$68.53\%$** ($0.685265$).



#### **c) Distribución Normal: Días de Estadía en la Región Sur ⏱️**

**Parámetros:**

* Variable $Y =$ "Días de estadía"
* Media ($\mu$): $4.8 \text{ días}$

* Desviación Estándar ($\sigma$): $1.2 \text{ días}$

* Varianza ($\sigma^2$): $1.44$

* Modelo: $Y \sim \mathcal{N}(\mu = 4.8, \sigma^2 = 1.44)$


##### **c.1) ¿Cuál es la probabilidad de que la estadía de un turista sea menor a 3 días? 🗓️**

Buscamos $P(Y < 3)$:

Estandarizando a la variable $Z$:

$$Z = \frac{Y - \mu}{\sigma} = \frac{3 - 4.8}{1.2} = \frac{-1.8}{1.2} = -1.5$$

Consultando la distribución normal estándar:

$$P(Y < 3) = P(Z < -1.5) \approx 0.066807$$

*(📌 Según la captura de pantalla de InfoStat/Calculadora adjunta en el examen con varianza $1.4$, el software arroja un valor aproximado de $0.0641$. El cálculo manual analítico con la desviación estándar exacta de $1.2$ da $0.0668$).*

**Respuesta:** La probabilidad es del **$6.68\%$** ($0.066807$).

##### **c.2) ¿Cuánto dura el 10% de las estadías más prolongadas? ⏳**

Buscamos el valor crítico $y_{0.90}$ tal que la probabilidad a la derecha sea del $10\%$ ($P(Y > y_{0.90}) = 0.10$), lo que equivale a un acumulado a la izquierda del $90\%$ ($P(Y \le y_{0.90}) = 0.90$).

El valor $Z$ para un cuantil del $90\%$ es $Z_{0.90} \approx 1.28155$.

Despejando el valor de $y$:

$$y_{0.90} = \mu + Z_{0.90} \cdot \sigma = 4.8 + (1.28155 \times 1.2) = 4.8 + 1.53786 = 6.33786 \text{ días}$$

*(📌 En la captura de pantalla del software InfoStat adjunta en el parcial se observa $y = 6.3163$ usando varianza $1.4$).*

**Respuesta:** El $10\%$ de las estadías más prolongadas dura **más de $6.34$ días** (aproximadamente 6 días y 8 horas).
