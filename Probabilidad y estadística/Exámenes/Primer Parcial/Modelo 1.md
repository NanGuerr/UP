# Resolución de Examen
Este documento detalla la transcripción completa de las imágenes del examen parcial, organizando los enunciados, las tablas de contingencia y los procedimientos matemáticos con su respectivo análisis y notación compatible con Markdown y GitHub.



## 🥔 Problema 1: Producción de Papas Congeladas y Variables Aleatorias

### 📝 Enunciado General

En la producción de papas bastón congeladas McCain se requieren tubérculos ovalados de por lo menos $50\text{ mm}$ de largo. Habitualmente se compra a dos variedades diferentes de papa:

* **Variedad A:** $68\%$ ($0,68$) de la producción. De estas, el $88\%$ ($0,88$) son aptas para papas bastón y el resto ($12\%$) se aprovecha para croquetas.
* **Variedad B:** El resto de la producción, es decir, el $32\%$ ($0,32$). De estas, el $92\%$ ($0,92$) son aptas para papas bastón y el resto ($8\%$ o $0,08$) para croquetas.



### 📊 Tabla de Probabilidades Totales y Condicionales

| Variedad | Apto (Bastón) | No Apto (Croquetas) | Total |
| --- | --- | --- | --- |
| **Variedad A** | $0,68 \times 0,88 = 0,5984$ | $0,68 \times 0,12 = 0,0816$ | $0,68$ |
| **Variedad B** | $0,32 \times 0,92 = 0,2944$ | $0,32 \times 0,08 = 0,0256$ | $0,32$ |
| **Total** | $0,5984 + 0,2944 = \mathbf{0,8928}$ | $0,0816 + 0,0256 = 0,1072$ | $\mathbf{1,00}$ |



### 🔍 Incisos y Procedimientos

#### 📌 a) ¿Qué porcentaje de tubérculos se aprovecha en la elaboración de papas bastón?

* **Procedimiento:** Corresponde a la probabilidad total de tubérculos aptos obtenida de la tabla de contingencia.
* **Cálculo:**

$$P(\text{Apto}) = 0,5984 + 0,2944 = 0,8928$$


* **Respuesta:** Se aprovecha el **$89,28\%$** de los tubérculos.

#### 📌 b) En la elaboración de papas bastón, ¿qué porcentaje de tubérculos son de la variedad A?

* **Procedimiento:** Se calcula una probabilidad condicional utilizando el teorema de Bayes o la definición de probabilidad condicional.
* **Cálculo:**

$$P(\text{Variedad A} \mid \text{Apto}) = \frac{P(\text{Variedad A} \cap \text{Apto})}{P(\text{Apto})} = \frac{0,5984}{0,8928} \approx 0,67025$$


* **Respuesta:** El **$67,03\%$** de los tubérculos aptos para papas bastón provienen de la variedad A.

#### 📌 c) En una muestra de 12 papas de la variedad B, ¿cuál es la probabilidad de que a lo sumo 3 se reserven para la elaboración de croquetas?

* **Procedimiento:** Se modela mediante una **Distribución Binomial** donde el éxito es ser "no apto / croqueta" para la variedad B ($p = 0,08$), con $n = 12$ ensayos.
* **Cálculo:**

$$\text{Binomial}(n = 12, p = 0,08)$$



Se busca calcular la probabilidad acumulada:

$$P(X \le 3) \approx 0,988$$


* **Respuesta:** La probabilidad es de **$98,8\%$**.

#### 📌 d) En un lote de 5000 papas, ¿cuántas se espera que tengan el tamaño requerido para papas bastón?

* **Procedimiento:** Se aplica la esperanza matemática o valor esperado multiplicando el total del lote por la probabilidad de aptitud.
* **Cálculo:**

$$E(X) = 5000 \times 0,8928 = 4464$$


* **Respuesta:** Se espera que **$4464$** papas del lote tengan el tamaño requerido.

#### 📌 e) Evaluación de una tercera variedad C (Distribución Normal)

Se evalúa una variedad C con longitud distribuida normalmente:


$$\text{Media } (\mu) = 55,4\text{ mm}, \quad \text{Desvío } (\sigma) = 2,9\text{ mm}$$


Requisito mínimo de longitud: mayor a $50\text{ mm}$.

* **e.1) ¿Qué porcentaje de tubérculos se aprovecharía?**
* Se calcula $P(X > 50)$ estandarizando con la variable $Z$:

$$Z = \frac{50 - 55,4}{2,9} = \frac{-5,4}{2,9} \approx -1,86$$


* El área acumulada para $Z > -1,86$ es aproximadamente **$96,86\%$**.
* **Respuesta:** Se aprovecharía el **$96,86\%$** de los tubérculos de la variedad C.


* **e.2) De los tubérculos aptos para papas bastón, ¿qué porcentaje mide más que el promedio?**
* **Análisis:** En una distribución normal simétrica, el $50\%$ de los datos se encuentra por encima de la media. Como todos los tubérculos aptos cumplen con estar por encima de $50\text{ mm}$ (que está a la izquierda de la media $55,4$), la mitad exacta de la distribución total representa el $50\%$. Ajustando al subconjunto de aptos ($96,86\%$), se calcula la proporción relativa:

$$\frac{50\%}{96,86\%} \approx 51,62\%$$




* **e.3) ¿Cuánto mide de largo el 15% de tubérculos más pequeños?**
* **Procedimiento:** Se busca el percentil 15 ($P_{15}$) utilizando la inversa de la distribución normal estandarizada para un área acumulada de $0,15$ ($Z \approx -1,04$).
* **Cálculo:**

$$X = \mu + (Z \times \sigma) = 55,4 + (-1,04 \times 2,9) = 55,4 - 3,016 = 52,384\text{ mm}$$


* **Respuesta:** El $15\%$ de los tubérculos más pequeños mide como máximo **$52,38\text{ mm}$** de largo.





## 💻 Problema 2: Regresión Lineal y Análisis de Temperatura en CPUs

### 📝 Enunciado General

Se realizó un ensayo con dos modelos de CPU de distinta antigüedad (Antiguo y Nuevo) registrando la temperatura máxima alcanzada (en °C) durante un uso normal.



### 🔍 Incisos y Procedimientos

#### 📌 a) Identificación del Estudio

* **Variable Dependiente ($Y$):** Temperatura máxima alcanzada (en °C).
* **Variable Independiente ($X$):** Modelo de CPU (antiguo / nuevo).
* **Unidad de Análisis:** Un equipo o hardware (modelo de CPU).
* **Tipo de Estudio:** Experimental y transversal.

#### 📌 b) Informe Descriptivo y Comparativo de los Modelos

* **Tendencia de Temperatura:** El modelo **antiguo** tiende a levantar más temperatura, registrando un promedio superior ($\approx 53,62^\circ\text{C}$) frente al modelo nuevo ($\approx 47,55^\circ\text{C}$).
* **Estabilidad:** El modelo nuevo presenta una temperatura más estable (concentrada en un rango menor, por ejemplo entre $42^\circ\text{C}$ y $56^\circ\text{C}$), mientras que el modelo antiguo muestra una dispersión mayor (con temperaturas que oscilan ampliamente entre $45^\circ\text{C}$ y $69^\circ\text{C}$).
* **Cuartil 3 ($Q_3$):**
* Para el modelo antiguo, el $75\%$ de las observaciones se encuentran por debajo o alcanzan un valor máximo de $58^\circ\text{C}$.
* Para el modelo nuevo, los valores se distribuyen con un umbral superior delimitado en $51^\circ\text{C}$.
