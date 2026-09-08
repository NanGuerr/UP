# 📊 Examen Parcial - Probabilidad y Estadística


**Contextualización:** En la empresa *UrbanMetrics*, los equipos de análisis urbano desarrollan modelos para evaluar el tráfico, la calidad del aire y el uso de espacios públicos en ciudades inteligentes. A partir de datos recolectados en tiempo real, se analizan los resultados con herramientas estadísticas y probabilísticas.



## 🏢 Ejercicio 1: Estadística Descriptiva y Análisis Comparativo

Se registró el nivel de contaminación (en microgramos por metro cúbico, $\mu\text{g/m}^3$) en dos zonas de la ciudad: **Zona Industrial** y **Zona Residencial**.

### 📋 Datos Registrados

| Día | Industrial ($\mu\text{g/m}^3$) | Residencial ($\mu\text{g/m}^3$) |
|:---:|:-------------------------------:|:---------------------------------:|
| 1 | 120 | 45 |
| 2 | 130 | 50 |
| 3 | 125 | 48 |
| 4 | 135 | 55 |
| 5 | 128 | 52 |
| 6 | 132 | 49 |



### 📝 Resumen de Resultados

| Métrica Estadística | Zona Industrial | Zona Residencial |
|:---|:---:|:---:|
| **Media ($\bar{x}$)** | $128.33\text{ }\mu\text{g/m}^3$ | $49.83\text{ }\mu\text{g/m}^3$ |
| **Mediana ($Me$)** | $129.00\text{ }\mu\text{g/m}^3$ | $49.50\text{ }\mu\text{g/m}^3$ |
| **Varianza Muestral ($s^2$)** | $27.87\text{ }(\mu\text{g/m}^3)^2$ | $12.17\text{ }(\mu\text{g/m}^3)^2$ |
| **Desviación Estándar Muestral ($s$)** | $5.28\text{ }\mu\text{g/m}^3$ | $3.49\text{ }\mu\text{g/m}^3$ |
| **Coeficiente de Variación ($CV$)** | $4.11\%$ | $7.00\%$ |
| **Coeficiente de Asimetría de Pearson ($A_p$)** | $-0.38$ | $+0.29$ |



### 🔍 Procedimiento Detallado

#### 1. Zona Industrial

* **Media Muestral ($\bar{x}_I$):**
  $$\bar{x}_I = \frac{\sum x_i}{n} = \frac{120 + 130 + 125 + 135 + 128 + 132}{6} = \frac{770}{6} \approx 128.33\text{ }\mu\text{g/m}^3$$

* **Mediana ($Me_I$):**
  Ordenando la muestra de menor a mayor: $120, 125, 128, 130, 132, 135$.  
  Al ser $n = 6$ (par), se promedian los dos valores centrales ($x_{(3)} = 128$, $x_{(4)} = 130$):
  $$Me_I = \frac{128 + 130}{2} = 129.00\text{ }\mu\text{g/m}^3$$

* **Varianza Muestral ($s_I^2$):**
  $$s_I^2 = \frac{\sum (x_i - \bar{x}_I)^2}{n - 1}$$
  $$\sum (x_i - \bar{x}_I)^2 = (120-128.33)^2 + (130-128.33)^2 + (125-128.33)^2 + (135-128.33)^2 + (128-128.33)^2 + (132-128.33)^2$$
  $$\sum (x_i - \bar{x}_I)^2 \approx 69.37 + 2.80 + 11.11 + 44.44 + 0.11 + 13.44 = 139.33$$
  $$s_I^2 = \frac{139.33}{5} \approx 27.87\text{ }(\mu\text{g/m}^3)^2$$

* **Desviación Estándar Muestral ($s_I$):**
  $$s_I = \sqrt{s_I^2} = \sqrt{27.87} \approx 5.28\text{ }\mu\text{g/m}^3$$

* **Coeficiente de Variación ($CV_I$):**
  $$CV_I = \left( \frac{s_I}{\bar{x}_I} \right) \times 100\% = \left( \frac{5.28}{128.33} \right) \times 100\% \approx 4.11\%$$

* **Coeficiente de Asimetría de Pearson ($A_{p,I}$):**
  $$A_{p,I} = \frac{3(\bar{x}_I - Me_I)}{s_I} = \frac{3(128.33 - 129.00)}{5.28} = \frac{3(-0.67)}{5.28} \approx -0.38$$



#### 2. Zona Residencial

* **Media Muestral ($\bar{x}_R$):**
  $$\bar{x}_R = \frac{\sum x_i}{n} = \frac{45 + 50 + 48 + 55 + 52 + 49}{6} = \frac{299}{6} \approx 49.83\text{ }\mu\text{g/m}^3$$

* **Mediana ($Me_R$):**
  Ordenando la muestra de menor a mayor: $45, 48, 49, 50, 52, 55$.  
  Valores centrales ($x_{(3)} = 49$, $x_{(4)} = 50$):
  $$Me_R = \frac{49 + 50}{2} = 49.50\text{ }\mu\text{g/m}^3$$

* **Varianza Muestral ($s_R^2$):**
  $$\sum (x_i - \bar{x}_R)^2 = (45-49.83)^2 + (50-49.83)^2 + (48-49.83)^2 + (55-49.83)^2 + (52-49.83)^2 + (49-49.83)^2$$
  $$\sum (x_i - \bar{x}_R)^2 \approx 23.36 + 0.03 + 3.36 + 26.70 + 4.69 + 0.70 = 58.83$$
  $$s_R^2 = \frac{58.83}{5} \approx 12.17\text{ }(\mu\text{g/m}^3)^2$$

* **Desviación Estándar Muestral ($s_R$):**
  $$s_R = \sqrt{s_R^2} = \sqrt{12.17} \approx 3.49\text{ }\mu\text{g/m}^3$$

* **Coeficiente de Variación ($CV_R$):**
  $$CV_R = \left( \frac{s_R}{\bar{x}_R} \right) \times 100\% = \left( \frac{3.49}{49.83} \right) \times 100\% \approx 7.00\%$$

* **Coeficiente de Asimetría de Pearson ($A_{p,R}$):**
  $$A_{p,R} = \frac{3(\bar{x}_R - Me_R)}{s_R} = \frac{3(49.83 - 49.50)}{3.49} = \frac{3(0.33)}{3.49} \approx +0.29$$



### 💡 Respuestas y Análisis de los Incisos (b y c)

* **b) Interpretación del Coeficiente de Asimetría:**
  * **Zona Industrial ($A_{p,I} = -0.38$):** Asimetría negativa o sesgada a la izquierda. La media es ligeramente menor que la mediana, lo que indica una leve concentración de datos hacia valores superiores.
  * **Zona Residencial ($A_{p,R} = +0.29$):** Asimetría positiva o sesgada a la derecha. La media es ligeramente mayor que la mediana, con una leve frecuencia de valores menores a la media.

* **c) Análisis Comparativo y Variabilidad:**
  * **Variabilidad Absoluta:** La Zona Industrial presenta una mayor dispersión absoluta con una desviación estándar de $5.28\text{ }\mu\text{g/m}^3$, comparada con los $3.49\text{ }\mu\text{g/m}^3$ de la Zona Residencial.
  * **Variabilidad Relativa:** Al comparar magnitudes diferentes ($
olinebreak\bar{x}_I \approx 128.33$ frente a $\bar{x}_R \approx 49.83$), se debe utilizar el Coeficiente de Variación. Dado que $CV_R = 7.00\%$ es mayor que $CV_I = 4.11\%$, la **Zona Residencial presenta una mayor variabilidad relativa** respecto a su propio nivel medio de contaminación.



## 🚦 Ejercicio 2: Probabilidad Total y Teorema de Bayes

Se evalúa la efectividad de dos sistemas de monitoreo de tráfico en intersecciones:
* **Eventos de Sistema:**
  * $F$: La intersección usa Sensores Fijos. $P(F) = 0.30$
  * $C$: La intersección usa Cámaras Inteligentes. $P(C) = 0.70$
* **Evento de Error:**
  * $E$: La intersección presenta un error de medición mayor al $5\%$.
* **Probabilidades Condicionales:**
  * $P(E \mid F) = 0.10$
  * $P(E \mid C) = 0.20$



### 🔍 Procedimiento y Solución

#### a) Probabilidad de que una intersección elegida al azar tenga un error mayor al 5%
Aplicando el **Teorema de la Probabilidad Total**:
$$P(E) = P(F) \cdot P(E \mid F) + P(C) \cdot P(E \mid C)$$
$$P(E) = (0.30 \times 0.10) + (0.70 \times 0.20) = 0.03 + 0.14 = 0.17$$

> **Respuesta:** La probabilidad de que una intersección elegida al azar presente un error mayor al $5\%$ es de **$0.17$** (o **$17\%$**).



#### b) Probabilidad de que una intersección con error mayor al 5% use Cámaras Inteligentes
Aplicando el **Teorema de Bayes**:
$$P(C \mid E) = \frac{P(C) \cdot P(E \mid C)}{P(E)}$$
$$P(C \mid E) = \frac{0.70 \times 0.20}{0.17} = \frac{0.14}{0.17} \approx 0.8235$$

> **Respuesta:** La probabilidad condicional $P(C \mid E)$ es aproximadamente **$0.8235$** (o **$82.35\%$**).



#### c) Evaluación de la estrategia de implementación
* **Criterio de la Ciudad:** Implementar únicamente Cámaras Inteligentes si $P(C \mid E) > 30\%$.
* **Resultado Obtención:** $P(C \mid E) = 82.35\% > 30\%$.

> **Justificación:** Desde la perspectiva estricta del criterio prefijado por la ciudad, la condición cuantitativa se cumple ampliamente. Sin embargo, **no es una estrategia operativamente válida ni lógica**. Un valor $P(C \mid E) = 82.35\%$ indica que el $82.35\%$ de los errores detectados provienen de intersecciones con Cámaras Inteligentes. Esto se debe a que las cámaras no solo abarcan la mayoría del sistema ($70\%$), sino que también poseen una tasa individual de error más alta ($20\%$) que los sensores fijos ($10\%$). Reemplazar los sensores fijos por cámaras incrementaría la tasa global de error del sistema del $17\%$ al $20\%$.



## 🌬️ Ejercicio 3: Modelos de Distribución Discreta (Binomial y Poisson)

Se analiza el control de emisión de contaminantes en muestras de aire.



### 🔍 Procedimiento y Solución

#### a) Probabilidad de que en una hora exactamente 4 muestras superen el límite
* **Definición de Variables y Modelo:**
  * Número de ensayos ($n$): $24$ muestras por hora.
  * Probabilidad de éxito ($p$): $0.05$ (probabilidad de superar el límite).
  * Los ensayos son independientes y con probabilidad constante $p$.
  * Variable aleatoria $X_h \sim \text{Binomial}(n = 24, p = 0.05)$.
* **Justificación de la Elección:** Se utiliza la distribución Binomial porque se conoce un número fijo y finito de ensayos independientes ($n = 24$) y cada muestra solo tiene dos resultados posibles (supera o no supera el límite).
* **Cálculo de la Probabilidad:**
  $$P(X_h = k) = \binom{n}{k} p^k (1-p)^{n-k}$$
  $$P(X_h = 4) = \binom{24}{4} (0.05)^4 (0.95)^{20}$$
  $$\binom{24}{4} = \frac{24 \times 23 \times 22 \times 21}{4 \times 3 \times 2 \times 1} = 10626$$
  $$(0.05)^4 = 0.00000625$$
  $$(0.95)^{20} \approx 0.3584859$$
  $$P(X_h = 4) = 10626 \times 0.00000625 \times 0.3584859 \approx 0.0238$$

> **Respuesta:** La probabilidad de que en una hora exactamente 4 muestras superen el límite es de **$0.0238$** (o **$2.38\%$**).



#### b) Probabilidad de observar al menos 6 muestras que superen el límite en un día
* **Definición de Variables y Modelo:**
  * Ocurrencia media diaria ($\lambda$): $5$ muestras por día.
  * Se analiza la cantidad de eventos raros en un intervalo continuo de tiempo (1 día).
  * Variable aleatoria $Y_d \sim \text{Poisson}(\lambda = 5)$.
* **Cálculo por el Evento Complementario:**
  $$P(Y_d \ge 6) = 1 - P(Y_d \le 5) = 1 - \sum_{k=0}^{5} \frac{e^{-\lambda} \lambda^k}{k!}$$
  Calculando término a término para $\lambda = 5$ ($e^{-5} \approx 0.00673794$):
  * $P(Y_d = 0) = \frac{e^{-5} 5^0}{0!} = 0.006738$
  * $P(Y_d = 1) = \frac{e^{-5} 5^1}{1!} = 0.033690$
  * $P(Y_d = 2) = \frac{e^{-5} 5^2}{2!} = 0.084224$
  * $P(Y_d = 3) = \frac{e^{-5} 5^3}{3!} = 0.140374$
  * $P(Y_d = 4) = \frac{e^{-5} 5^4}{4!} = 0.175467$
  * $P(Y_d = 5) = \frac{e^{-5} 5^5}{5!} = 0.175467$

  Suma acumulada $P(Y_d \le 5)$:
  $$P(Y_d \le 5) = 0.006738 + 0.033690 + 0.084224 + 0.140374 + 0.175467 + 0.175467 = 0.615960$$
  $$P(Y_d \ge 6) = 1 - 0.615960 = 0.384040$$

> **Respuesta:** La probabilidad de observar al menos 6 muestras que superen el límite en un día es aproximadamente **$0.3840$** (o **$38.40\%$**).



#### c) Esperanza, Varianza y Dispersión Relativa

* **Modelo Binomial (Muestreo por Hora, $X_h$):**
  * Esperanza: $E(X_h) = n \cdot p = 24 \times 0.05 = 1.2$
  * Varianza: $\text{Var}(X_h) = n \cdot p \cdot (1-p) = 24 \times 0.05 \times 0.95 = 1.14$
  * Desviación Estándar: $\sigma_{X_h} = \sqrt{1.14} \approx 1.0677$
  * Coeficiente de Variación ($CV$):
    $$CV(X_h) = \frac{\sigma_{X_h}}{E(X_h)} = \frac{1.0677}{1.2} \approx 0.8898\text{ }(88.98\%)$$

* **Modelo Poisson (Monitoreo Diario, $Y_d$):**
  * Esperanza: $E(Y_d) = \lambda = 5$
  * Varianza: $\text{Var}(Y_d) = \lambda = 5$
  * Desviación Estándar: $\sigma_{Y_d} = \sqrt{5} \approx 2.2361$
  * Coeficiente de Variación ($CV$):
    $$CV(Y_d) = \frac{\sigma_{Y_d}}{E(Y_d)} = \frac{2.2361}{5} \approx 0.4472\text{ }(44.72\%)$$

> **Conclusión:** El modelo **Binomial presenta una mayor dispersión relativa** ($88.98\%$ vs $44.72\%$), lo que implica que la variabilidad relativa con respecto a su media es superior en la escala horaria.



## ⏱️ Ejercicio 4: Teorema del Límite Central e Inferencia

Se analiza el tiempo $T$ (en minutos) necesario para optimizar el tráfico en una intersección:
* Distribución del tiempo individual: Asimétrica a la derecha.
* Esperanza individual: $\mu = 8\text{ min}$
* Desviación estándar individual: $\sigma = 1.5\text{ min}$



### 🔍 Procedimiento y Solución

#### a) ¿Se puede usar la distribución normal para una sola optimización?
* **Análisis:** Para una observación individual ($n = 1$), se especifica que la población de origen es **asimétrica a la derecha**. La distribución normal es estrictamente simétrica.
* **Respuesta:** **No**, no es correcto utilizar la distribución normal para calcular la probabilidad de que una sola optimización demore más de 10 minutos, ya que se desconoce la forma exacta de la función de densidad poblacional y no es simétrica.



#### b) Probabilidad de que el tiempo promedio de 36 optimizaciones supere 100 minutos
* **Análisis Conceptual:**
  * Tamaño muestral: $n = 36 \ge 30$.
  * Según el **Teorema del Límite Central (TLC)**, la media muestral $\bar{X}$ se aproxima a una distribución normal $\bar{X} \sim N\left(\mu, \frac{\sigma}{\sqrt{n}}\right)$, independiente de la forma de la población original.
  * Parámetros de la media muestral $\bar{X}$:
    * $E(\bar{X}) = \mu = 8\text{ min}$
    * $\sigma_{\bar{X}} = \frac{\sigma}{\sqrt{n}} = \frac{1.5}{\sqrt{36}} = \frac{1.5}{6} = 0.25\text{ min}$
* **Aclaración del Enunciado:** La consigna consulta por el *tiempo promedio* superando 100 minutos. Dado que la media poblacional es $\mu = 8\text{ minutos}$, un valor promedio de 100 minutos se halla a $368$ desviaciones estándar de la media ($Z = \frac{100 - 8}{0.25} = 368$).
* **Resultado Matemático:**
  $$P(\bar{X} > 100) = P\left(Z > \frac{100 - 8}{0.25}\right) = P(Z > 368) \approx 0$$

> **Respuesta:** La probabilidad de que el promedio muestral sea mayor a 100 minutos es prácticamente **$0$** (evento imposible en términos prácticos). *Nota: Si la consulta refiriera a la suma total de tiempos de las 36 optimizaciones $S_{36} = \sum X_i$, su media sería $36 \times 8 = 288\text{ min}$, resultando igualmente en probabilidad 0 de ser menor a 100.*



#### c) Probabilidad de que el tiempo promedio esté entre 7.5 y 8.5 minutos
Por el TLC, la variable tipificada es $Z = \frac{\bar{X} - \mu}{\sigma_{\bar{X}}} = \frac{\bar{X} - 8}{0.25}$.

* **Cálculo de límites Z:**
  * Para $\bar{X}_1 = 7.5$:
    $$Z_1 = \frac{7.5 - 8}{0.25} = \frac{-0.5}{0.25} = -2.00$$
  * Para $\bar{X}_2 = 8.5$:
    $$Z_2 = \frac{8.5 - 8}{0.25} = \frac{0.5}{0.25} = +2.00$$

* **Cálculo de la Probabilidad:**
  $$P(7.5 \le \bar{X} \le 8.5) = P(-2.00 \le Z \le 2.00) = \Phi(2.00) - \Phi(-2.00)$$
  De las tablas de la distribución normal estándar:
  * $\Phi(2.00) = 0.9772$
  * $\Phi(-2.00) = 0.0228$
  $$P(-2.00 \le Z \le 2.00) = 0.9772 - 0.0228 = 0.9544$$

> **Justificación:** Gracias al Teorema del Límite Central, al tomar una muestra suficientemente grande ($n = 36 \ge 30$), la distribución de la media muestral es aproximadamente normal. La probabilidad de que el promedio del tiempo de optimización se encuentre entre $7.5$ y $8.5$ minutos es del **$95.44\%$**.



## 🧮 Ejercicio 5: Propiedades de la Esperanza y Varianza en Variables Aleatorias

Sean $X$ e $Y$ dos variables aleatorias continuas independientes que representan el tiempo en horas de procesamiento de datos:
* $E(X) = 3.5$, $\text{Var}(X) = 0.25$
* $E(Y) = 4.8$, $\text{Var}(Y) = 0.64$



### 🔍 Procedimiento y Solución

#### a) Calculá $E(X+Y)$ y $\text{Var}(X+Y)$ suponiendo independencia
* **Esperanza de la Suma:**
  $$E(X+Y) = E(X) + E(Y) = 3.5 + 4.8 = 8.3$$

* **Varianza de la Suma (con independencia, $\text{Cov}(X,Y) = 0$):**
  $$\text{Var}(X+Y) = \text{Var}(X) + \text{Var}(Y) = 0.25 + 0.64 = 0.89$$

> **Respuestas:** $E(X+Y) = 8.3\text{ horas}$, $\text{Var}(X+Y) = 0.89\text{ horas}^2$.



#### b) Si $Z = 1.5X - 2Y$, calculá $E(Z)$ y $\text{Var}(Z)$
* **Esperanza de la Transformación Lineal:**
  $$E(Z) = E(1.5X - 2Y) = 1.5E(X) - 2E(Y)$$
  $$E(Z) = 1.5(3.5) - 2(4.8) = 5.25 - 9.60 = -4.35$$

* **Varianza de la Transformación Lineal (por independencia):**
  $$\text{Var}(Z) = \text{Var}(1.5X - 2Y) = (1.5)^2 \text{Var}(X) + (-2)^2 \text{Var}(Y)$$
  $$\text{Var}(Z) = 2.25 \times \text{Var}(X) + 4 \times \text{Var}(Y)$$
  $$\text{Var}(Z) = 2.25(0.25) + 4(0.64) = 0.5625 + 2.5600 = 3.1225$$

> **Respuestas:** $E(Z) = -4.35$, $\text{Var}(Z) = 3.1225$.



#### c) Modelo de Costo Total $C = 100X + 120Y$
* **Esperanza del Costo Total $E(C)$:**
  $$E(C) = E(100X + 120Y) = 100 E(X) + 120 E(Y)$$
  $$E(C) = 100(3.5) + 120(4.8) = 350 + 576 = 926$$

* **Varianza del Costo Total $\text{Var}(C)$:**
  $$\text{Var}(C) = \text{Var}(100X + 120Y) = 100^2 \text{Var}(X) + 120^2 \text{Var}(Y)$$
  $$\text{Var}(C) = 10000(0.25) + 14400(0.64)$$
  $$\text{Var}(C) = 2500 + 9216 = 11716$$

* **Desviación Estándar del Costo (métrica complementaria):**
  $$\sigma_C = \sqrt{11716} \approx 108.24$$

> **Respuestas:** Esperanza del costo $E(C) = 926$, Varianza del costo $\text{Var}(C) = 11716$.
