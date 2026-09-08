# 📋 Transcripción y Resolución: Recuperatorio 1er Parcial de Probabilidad y Estadística (Junio/2018)

Este documento presenta la transcripción detallada y la resolución paso a paso de los problemas del examen recuperatorio, organizando los procedimientos analíticos, fórmulas matemáticas compatibles con GitHub y emojis descriptivos.



## 📞 Problema 1: Campaña Promocional de TV por Cable e Internet

### 📝 Enunciado

Una empresa prestadora de servicio de TV por cable e internet planea iniciar una campaña promocionando nuevos servicios contactando a clientes actuales y no clientes en una proporción de $30/70$ ($30\%$ clientes actuales, $70\%$ no clientes). Se estima que el $35\%$ de los clientes actuales y el $6\%$ de los no clientes aceptarán la promoción de cable.



### 🧮 Resolución y Procedimientos

#### 📌 a) ¿Qué porcentaje de individuos contactados aceptará la promoción del cable?

* **Concepto:** Se aplica el teorema de la probabilidad total ponderando los porcentajes de contacto y aceptación de cada segmento.


* **Cálculo:**

$$P(\text{Acepta}) = P(\text{Cliente}) \cdot P(\text{Acepta} \mid \text{Cliente}) + P(\text{No Cliente}) \cdot P(\text{Acepta} \mid \text{No Cliente})$$


$$P(\text{Acepta}) = (0,30 \cdot 0,35) + (0,70 \cdot 0,06) = 0,105 + 0,042 = 0,147$$



* **Respuesta:** El **$14,7\%$** de los individuos contactados aceptará la promoción del cable.



#### 📌 b) En el grupo de individuos que no aceptan la promoción, ¿es más probable que haya clientes actuales o no clientes?

* **Concepto:** Se evalúan las probabilidades condicionales para los no aceptantes utilizando el teorema de Bayes.


* **Cálculo:**
* No aceptan y son clientes: $0,30 \cdot (1 - 0,35) = 0,30 \cdot 0,65 = 0,195$.


* No aceptan y son no clientes: $0,70 \cdot (1 - 0,06) = 0,70 \cdot 0,94 = 0,658$.


* Total de no aceptantes: $0,195 + 0,658 = 0,853$.


* Probabilidad de ser cliente dado que no aceptó: $\frac{0,195}{0,853} \approx 0,2286$ ($22,86\%$).


* Probabilidad de ser no cliente dado que no aceptó: $\frac{0,658}{0,853} \approx 0,7714$ ($77,14\%$).




* **Respuesta:** Es mucho más probable que haya **no clientes** en el grupo que no acepta la promoción.



#### 📌 c) Promoción de Internet para no clientes que no aceptaron cable

Se contacta a los no clientes que rechazaron la oferta de cable para ofrecerles internet, estimando un índice de aceptación del $14\%$ ($p = 0,14$) en una muestra de $n = 250$ individuos.

* **c.1) Si contactan a 250 individuos, ¿cuál es la probabilidad de que acepten como máximo 30?**
* **Modelo:** Distribución Binomial $B(n = 250, p = 0,14)$ aproximada a la normal por la magnitud de $n$.


* **Parámetros:** Media $\mu = n \cdot p = 250 \cdot 0,14 = 35$, Desvío $\sigma = \sqrt{n \cdot p \cdot (1-p)} = \sqrt{250 \cdot 0,14 \cdot 0,86} \approx 5,49$.


* **Cálculo con corrección por continuidad:** $P(X \le 30.5)$.



$$Z = \frac{30,5 - 35}{5,49} \approx -0,82$$



$$P(Z \le -0,82) \approx 0,2061$$



* **Respuesta:** La probabilidad es del **$20,61\%$**.




* **c.2) ¿Y por lo menos 40 acepten?**
* **Cálculo:** $P(X \ge 40)$ utilizando la corrección por continuidad ($X \ge 39.5$).



$$Z = \frac{39,5 - 35}{5,49} \approx 0,82$$



$$P(Z \ge 0,82) \approx 0,2061$$



* **Respuesta:** La probabilidad es del **$20,61\%$**.




* **c.3) ¿Cuál es el número esperado y el desvío de contactados que aceptan la promoción?**
* **Esperanza matemática:** $\mu = n \cdot p = 250 \cdot 0,14 = \mathbf{35}$.


* **Desvío estándar:** $\sigma = \sqrt{250 \cdot 0,14 \cdot 0,86} \approx \mathbf{5,49}$.







## 📱 Problema 2: Distribución Normal en Tablets de 10 Pulgadas

### 📝 Enunciado

Las tablets de 10 pulgadas tienen un peso variable normalmente distribuido con media $\mu = 512\text{ g}$ y desvío $\sigma = 8\text{ g}$.



### 🧮 Resolución y Procedimientos

#### 📌 a) ¿Qué porcentaje de tablets superan los 500 g?

* **Cálculo:** Se estandariza el valor de $500\text{ g}$.



$$Z = \frac{500 - 512}{8} = \frac{-12}{8} = -1,5$$



$$P(X > 500) = P(Z > -1,5) = 1 - P(Z < -1,5) = 1 - 0,0668 = 0,9332$$



* **Respuesta:** El **$93,32\%$** de las tablets superan los $500\text{ g}$.



#### 📌 b) ¿Cuánto pesa el 20% de tablets más livianas?

* **Concepto:** Se busca el percentil 20 ($P_{20}$) utilizando la inversa de la distribución normal estandarizada ($Z \approx -0,84$).


* **Cálculo:**

$$X = \mu + (Z \cdot \sigma) = 512 + (-0,84 \cdot 8) = 512 - 6,72 = 505,28\text{ g}$$



* **Respuesta:** El $20\%$ de las tablets más livianas pesa como máximo **$505,28\text{ g}$**.



#### 📌 c) Muestra de 7 tablets: probabilidad de que al menos 4 pesen menos de 500 g

* **Probabilidad individual:** $P(X < 500) = P(Z < -1,5) = 0,0668$ ($p = 0,0668$).


* **Modelo Binomial:** $B(n = 7, p = 0,0668)$.


* **Cálculo:** Se calcula $P(Y \ge 4) = P(Y=4) + P(Y=5) + P(Y=6) + P(Y=7)$.
Debido a la baja probabilidad de éxito individual, este valor es extremadamente pequeño ($< 0,001$).





## 📊 Problema 3: Análisis de Tiempos en el Sistema Administrativo de Ventas

### 📝 Enunciado

Se registró la duración en días hábiles de las etapas A y B en una muestra de 10 órdenes de compra mayoristas.

| Orden de Compra | Etapa A | Etapa B |
| --- | --- | --- |
| **1** | 1 | 8 |
| **2** | 2 | 12 |
| **3** | 3 | 13 |
| **4** | 4 | 10 |
| **5** | 5 | 12 |
| **6** | 6 | 11 |
| **7** | 7 | 12 |
| **8** | 6 | 10 |
| **9** | 10 | 11 |
| **10** | 9 | 9 |



### 🧮 Resolución y Procedimientos

#### 📌 a) Análisis estadístico e identificación de la etapa que amerita revisión

* **Etapa A:** Presenta un promedio de $\mu_A = 5,5\text{ días}$ con una distribución uniforme y simétrica de 1 a 10 días.


* **Etapa B:** Presenta un promedio superior de $\mu_B = 10,8\text{ días}$ con menor dispersión y acumulación de tiempos elevados.


* **Justificación:** La **Etapa B** amerita una revisión prioritaria ya que duplica el tiempo medio de demora operativa en comparación con la Etapa A, constituyendo un cuello de botella para la gestión comercial.



#### 📌 b) ¿En cuál de las etapas la distribución de los datos es más asimétrica? ¿Es bueno o malo para la gestión?

* **Análisis:** La Etapa A muestra una distribución perfectamente uniforme y simétrica. En cambio, la Etapa B concentra sus valores hacia el rango superior ($10$ a $13$ días), mostrando mayor asimetría o sesgo negativo.


* **Evaluación:** Es **malo para la gestión**, ya que indica demoras recurrentes y falta de fluidez operativa en la preparación de pedidos y facturación.



#### 📌 c) Interprete el percentil 70 de la etapa B

* **Cálculo:** Ordenando los valores de la Etapa B de menor a mayor ($8, 9, 10, 10, 11, 11, 12, 12, 12, 13$), la posición del percentil 70 ($P_{70}$) corresponde al octavo valor de la serie ordenada.


* **Valor:** $P_{70} = 12\text{ días}$.


* **Interpretación:** El $70\%$ de las órdenes de compra demoran **12 días hábiles o menos** en completarse dentro de la Etapa B.
