# 📊 Transcripción y Resolución: 1er Parcial de Probabilidad y Estadística

Este documento presenta la transcripción detallada y la resolución paso a paso de los problemas del primer parcial de Probabilidad y Estadística, incluyendo los procedimientos analíticos para cada ejercicio.



## 💳 Problema 1: Modelo de Predicción de Riesgo Crediticio

### 📝 Enunciado
Un oficial de créditos desarrolló una función para predecir el riesgo crediticio de solicitantes de créditos hipotecarios. Se evaluaron créditos anteriores con la siguiente distribución:
* **Pago en término (riesgo nulo):** $73\%$ ($0,73$).
* **Mora pero renegoció y devolvió (riesgo medio):** $16\%$ ($0,16$).
* **Incobrable / Ejecución de hipoteca (riesgo alto):** El resto, $11\%$ ($0,11$).

La función clasificó correctamente al:
* $82\%$ ($0,82$) de los que pagaron en término.
* $70\%$ ($0,70$) de los que renegociaron.
* $94\%$ ($0,94$) de los incobrables.



### 🧮 Resolución y Procedimientos

#### a) Determine la capacidad de predicción de la función.
* **Concepto:** La capacidad de predicción global corresponde a la probabilidad total de clasificación correcta, calculada mediante el teorema de la probabilidad total sumando los aciertos de cada categoría.
* **Cálculo:**
  $$\text{Aciertos Totales} = (0,73 \times 0,82) + (0,16 \times 0,70) + (0,11 \times 0,94)$$
  $$\text{Aciertos Totales} = 0,5986 + 0,1120 + 0,1034 = 0,8140$$
* **Respuesta:** La capacidad de predicción general de la función es del **$81,40\%$**.

#### b) ¿Qué porcentaje de incobrables hay entre aquellos solicitantes que son incorrectamente clasificados?
* **Concepto:** Se aplica probabilidad condicional, evaluando la intersección de clasificaciones erróneas en la categoría de alto riesgo sobre el total de clasificaciones incorrectas.
* **Cálculo:**
  * Probabilidad de clasificación incorrecta para incobrables: $P(\text{Incorrecto} \mid \text{Incobrable}) = 1 - 0,94 = 0,06$.
  * Casos incorrectos de incobrables: $0,11 \times 0,06 = 0,0066$.
  * Total de clasificaciones incorrectas (tasa de error): $1 - 0,8140 = 0,1860$.
  * Probabilidad condicional: 
    $$P(\text{Incobrable} \mid \text{Incorrecto}) = \frac{0,0066}{0,1860} \approx 0,0355$$
* **Respuesta:** Representa aproximadamente el **$3,55\%$** de las malas clasificaciones.

#### c) Entre los próximos 20 solicitantes de créditos, ¿cuál es la probabilidad de que la función prediga correctamente el riesgo de al menos 15?
* **Concepto:** Se modela mediante una **Distribución Binomial** con parámetros $n = 20$ y probabilidad de éxito $p = 0,814$.
* **Cálculo:**
  Se busca calcular $P(X \ge 15) = 1 - P(X \le 14)$.
  Utilizando la fórmula de acumulación binomial:
  $$P(X \ge 15) = \sum_{k=15}^{20} \binom{20}{k} (0,814)^k (0,186)^{20-k} \approx 0,835$$
* **Respuesta:** La probabilidad es de aproximadamente el **$83,5\%$**.



## ☕ Problema 2: Análisis de Cafeína en Bebidas

### 📝 Enunciado
Se midió la cantidad de cafeína ($\text{en mg/L}$) en café de filtro colombiano y bebidas energizantes con los siguientes datos:
* **Café:** $351,7;\ 349,3;\ 350,4;\ 349,6;\ 343,8;\ 347,3;\ 354,5;\ 350,9$
* **Energizante:** $334,5;\ 331,6;\ 330,3;\ 336,0;\ 336,1;\ 332,3;\ 333,6;\ 335,0$



### 🧮 Resolución y Procedimientos

#### a) Identifique la unidad de análisis, tipo de estudio, variables y su clasificación.
* **Unidad de análisis:** Una muestra o determinación de bebida (café de filtro o energizante).
* **Tipo de estudio:** Experimental, transversal.
* **Variable dependiente ($Y$):** Concentración de cafeína ($\text{en mg/L}$), cuantitativa continua (escala de razón).
* **Variable independiente ($X$):** Tipo de bebida (Café vs. Energizante), cualitativa nominal.

#### b) Informe resumido con medidas descriptivas.
* **Café:** Media $\approx 349,63\text{ mg/L}$, Mediana $\approx 350,05\text{ mg/L}$, Desvío estándar $\approx 3,21\text{ mg/L}$.
* **Energizante:** Media $\approx 333,78\text{ mg/L}$, Mediana $\approx 334,05\text{ mg/L}$, Desvío estándar $\approx 2,13\text{ mg/L}$.
* **Conclusión comparativa:** El café de filtro colombiano presenta una concentración típica de cafeína significativamente mayor y con mayor dispersión que la bebida energizante.
* **Percentil 10 ($P_{10}$) en el café:** Para encontrar la cantidad mínima en el $10\%$ de las determinaciones más bajas de café, ordenando los datos de menor a mayor ($343,8; 347,3; 349,3; 349,6; 350,4; 350,9; 351,7; 354,5$), el valor correspondiente se sitúa en aproximadamente **$345,05\text{ mg/L}$**.



## 📰 Problema 3: Distribución de Poisson en Consultas de Transeúntes

### 📝 Enunciado
En un puesto de diarios, los peatones consultan sobre transporte o calles con una frecuencia media de **2 consultas cada 3,5 horas**, de lunes a viernes. El horario de apertura es de **7 a 14 hs** (7 horas diarias). Los fines de semana la frecuencia es de **1 cada 4 horas**.



### 🧮 Resolución y Procedimientos

#### a) ¿Cuál es la probabilidad de que el próximo lunes atiendan alguna consulta?
* **Tasa media diaria ($\lambda$):** 
  Si llegan 2 consultas cada 3,5 horas, en 1 hora llegan $\frac{2}{3,5} = \frac{4}{7}$ consultas.
  Como el puesto abre 7 horas al día ($7\text{ hs}$ a $14\text{ hs}$), la tasa por día laborable es:
  $$\lambda_{\text{día}} = \frac{4}{7} \times 7 = 4 \text{ consultas/día}$$
* **Cálculo:** Se calcula la probabilidad de que $X \ge 1$, utilizando el complemento ($X = 0$):
  $$P(X \ge 1) = 1 - P(X = 0) = 1 - \frac{e^{-4} \cdot 4^0}{0!} = 1 - e^{-4} \approx 1 - 0,0183 = 0,9817$$
* **Respuesta:** La probabilidad es del **$98,17\%$**.

#### b) ¿Cuál es la probabilidad de que entre el lunes y viernes de la próxima semana atienda como máximo 15 consultas?
* **Tasa media semanal ($5$ días hábiles):** 
  $$\lambda_{\text{semana}} = 4 \text{ consultas/día} \times 5 \text{ días} = 20 \text{ consultas/semana}$$
* **Cálculo:** Se busca la probabilidad acumulada $P(X \le 15)$ para una Poisson con $\lambda = 20$:
  $$P(X \le 15) = \sum_{k=0}^{15} \frac{e^{-20} \cdot 20^k}{k!} \approx 0,2516$$
* **Respuesta:** La probabilidad es de aproximadamente el **$25,16\%$**.

#### c) Si el dueño afirma que el día de su cumpleaños le hicieron 3 consultas, ¿cuál es la probabilidad de que haya sido en un fin de semana?
* **Planteo con Teorema de Bayes:**
  * Supongamos que hay igual probabilidad de que caiga en día de semana (probabilidad $\frac{5}{7}$) o fin de semana (probabilidad $\frac{2}{7}$).
  * Tasa de fin de semana: $\lambda_{\text{fin de semana}} = \frac{1}{4} \text{ consultas/hora} \times 7 \text{ horas/día} = 1,75 \text{ consultas/día}$.
  * Probabilidad de 3 consultas dado fin de semana ($P(X = 3 \mid \text{Fin de semana})$):
    $$P(X = 3 \mid \text{FS}) = \frac{e^{-1,75} \cdot (1,75)^3}{3!} \approx 0,1157$$
  * Probabilidad de 3 consultas dado día de semana ($P(X = 3 \mid \text{Semana})$ con $\lambda = 4$):
    $$P(X = 3 \mid \text{Sem}) = \frac{e^{-4} \cdot 4^3}{3!} \approx 0,1954$$
  * Aplicando Bayes para hallar la probabilidad condicional de que haya sido en fin de semana sabiendo que ocurrieron 3 consultas:
    $$P(\text{FS} \mid X = 3) = \frac{P(X = 3 \mid \text{FS}) \cdot P(\text{FS})}{P(X = 3 \mid \text{FS}) \cdot P(\text{FS}) + P(X = 3 \mid \text{Sem}) \cdot P(\text{Sem})}$$
    $$\text{Numerador} = 0,1157 \times \frac{2}{7} \approx 0,03306$$
    $$\text{Denominador} = \left(0,1157 \times \frac{2}{7}\right) + \left(0,1954 \times \frac{5}{7}\right) \approx 0,03306 + 0,13957 = 0,17263$$
    $$P(\text{FS} \mid X = 3) = \frac{0,03306}{0,17263} \approx 0,1915$$
* **Respuesta:** La probabilidad de que haya sido un fin de semana es del **$19,15\%$**.
