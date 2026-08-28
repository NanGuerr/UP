# 📚 Examen Parcial: Probabilidad y Estadística

**Empresa:** UrbanMetrics



## 🏭 Ejercicio 1: Estadística Descriptiva (Zona Industrial vs. Zona Residencial)

Se registró el nivel de contaminación ($\mu g/m^3$) en dos zonas durante 6 días:
* **Industrial:** $[120, 130, 125, 135, 128, 132]$
* **Residencial:** $[45, 50, 48, 55, 52, 49]$



### a) Cálculos estadísticos para cada zona

#### 🏢 Zona Industrial:
* 📊 **Media ($ ar{x}$):** $\frac{120+130+125+135+128+132}{6} = \mathbf{128.33} \text{ }\mu g/m^3$
* 📌 **Mediana ($Me$):** Ordenando $[120, 125, 128, 130, 132, 135]$, el promedio central es $\frac{128 + 130}{2} = \mathbf{129.0} \text{ }\mu g/m^3$
* 📈 **Desviación estándar muestral ($s$):** $\mathbf{5.32} \text{ }\mu g/m^3$
* 📐 **Varianza muestral ($s^2$):** $\mathbf{28.27} \text{ }(\mu g/m^3)^2$
* 📉 **Coeficiente de variación ($CV$):** $\frac{5.32}{128.33} \times 100 = \mathbf{4.14\%}$
* 📐 **Coeficiente de asimetría ($g_1$):** $\mathbf{-0.53}$ (Asimetría negativa leve)

#### 🏡 Zona Residencial:
* 📊 **Media ($ ar{x}$):** $\frac{45+50+48+55+52+49}{6} = \mathbf{49.83} \text{ }\mu g/m^3$
* 📌 **Mediana ($Me$):** Ordenando $[45, 48, 49, 50, 52, 55]$, el promedio central es $\frac{49 + 50}{2} = \mathbf{49.5} \text{ }\mu g/m^3$
* 📈 **Desviación estándar muestral ($s$):** $\mathbf{3.43} \text{ }\mu g/m^3$
* 📐 **Varianza muestral ($s^2$):** $\mathbf{11.77} \text{ }(\mu g/m^3)^2$
* 📉 **Coeficiente de variación ($CV$):** $\frac{3.43}{49.83} \times 100 = \mathbf{6.88\%}$
* 📐 **Coeficiente de asimetría ($g_1$):** $\mathbf{+0.21}$ (Asimetría positiva leve)



### b) Interpretación del coeficiente de asimetría
* **Zona Industrial ($g_1 = -0.53$):** Presenta una asimetría negativa (o sesgo a la izquierda). Esto indica que la mayor parte de los registros se concentran en valores altos de contaminación, con una cola extendida hacia los valores más bajos.
* **Zona Residencial ($g_1 = +0.21$):** Presenta una asimetría positiva (o sesgo a la derecha). Significa que la mayoría de los registros se concentran en niveles bajos de contaminación, con una ligera cola hacia los valores más altos.



### c) Análisis comparativo entre las dos zonas. ¿En qué zona hay mayor variabilidad en los niveles de contaminación?
* 📊 **Nivel general:** La contaminación en la zona industrial es significativamente mayor que en la residencial (media de $128.33$ frente al $49.83$ $\mu g/m^3$).
* 🔄 **Variabilidad absoluta:** La zona industrial tiene mayor desviación estándar ($5.32$ vs $3.43$) y mayor varianza ($28.27$ vs $11.77$).
* ⚖️ **Variabilidad relativa ($CV$):** Al analizar el Coeficiente de Variación, la **zona residencial** muestra una mayor dispersión relativa con un **$6.88\%$** frente al **$4.14\%$** de la zona industrial, debido a que su media es mucho más baja en proporción a su desviación estándar.



## 🚦 Ejercicio 2: Probabilidad Condicional y Teorema de Bayes

Se evalúan dos sistemas de monitoreo de tráfico:
* $SF$: Sensores Fijos ($P(SF) = 0.30$)
* $CI$: Cámaras Inteligentes ($P(CI) = 0.70$)
* Error mayor al 5% ($E$): $P(E|SF) = 0.10$ y $P(E|CI) = 0.20$



### a) ¿Cuál es la probabilidad de que una intersección elegida al azar tenga un error de medición mayor al 5%?
Aplicamos el Teorema de la Probabilidad Total:
$$P(E) = P(E|SF) \cdot P(SF) + P(E|CI) \cdot P(CI)$$
$$P(E) = (0.10 \times 0.30) + (0.20 \times 0.70) = 0.03 + 0.14 = 0.17$$
* 📊 **Respuesta:** La probabilidad total de que se registre un error mayor al 5% es del **17%** ($0.17$).



### b) Si una intersección tiene más del 5% de error, ¿cuál es la probabilidad de que use Cámaras Inteligentes?
Aplicamos el Teorema de Bayes para calcular $P(CI|E)$:
$$P(CI|E) = \frac{P(E|CI) \cdot P(CI)}{P(E)} = \frac{0.20 \times 0.70}{0.17} = \frac{0.14}{0.17} \approx 0.8235$$
* 📊 **Respuesta:** La probabilidad condicional es del **82.35%** ($0.8235$).



### c) La ciudad decide implementar solo Cámaras Inteligentes cuando la probabilidad condicional calculada en (b) es mayor al 30%. ¿Es una estrategia válida? Justificá con el resultado.
* 💡 **Respuesta:** **Sí, es una estrategia totalmente válida.** El resultado obtenido en el inciso (b) es de **$82.35\%$**, lo cual supera ampliamente el umbral mínimo exigido del $30\%$. Esto indica que la gran mayoría de los errores de medición provienen de las intersecciones con cámaras inteligentes, justificando la intervención.



## 🌬️ Ejercicio 3: Distribuciones Discretas (Binomial y Poisson)

* Probabilidad de éxito (superar límite en una muestra): $p = 0.05$
* Muestras por hora: $n = 24$
* Promedio diario de muestras que superan el límite: $\lambda_{\text{día}} = 5$



### a) Probabilidad de que en una hora exactamente 4 muestras superen el límite. Justificá el modelo.
* **Justificación del modelo:** Se utiliza la **Distribución Binomial** ($X \sim \text{Bin}(24, 0.05)$) porque se realizan $n = 24$ ensayos independientes (muestras), cada uno con idéntica probabilidad de éxito $p = 0.05$.
* Cálculo de $P(X = 4)$:
  $$P(X = 4) = \binom{24}{4} (0.05)^4 (0.95)^{20} \approx 10626 \times 0.00000625 \times 0.35848 \approx 0.0238$$
* 📊 **Respuesta:** La probabilidad es del **2.38%** ($0.0238$).



### b) ¿Cuál es la probabilidad de observar al menos 6 muestras que superen el límite en un día?
* Para el análisis diario, la tasa esperada es $\lambda = 5$ muestras por día, modelada mediante una **Distribución de Poisson** ($Y \sim \text{Poisson}(5)$).
* Queremos $P(Y \ge 6) = 1 - P(Y \le 5)$:
  $$P(Y \le 5) = e^{-5} \left( \frac{5^0}{0!} + \frac{5^1}{1!} + \frac{5^2}{2!} + \frac{5^3}{3!} + \frac{5^4}{4!} + \frac{5^5}{5!} \right) \approx 0.6160$$
  $$P(Y \ge 6) = 1 - 0.6160 = 0.3840$$
* 📊 **Respuesta:** La probabilidad de observar al menos 6 muestras en un día es del **38.40%** ($0.3840$).



### c) Esperanza, varianza y dispersión relativa de ambas situaciones.
* **Situación 1 (Binomial):**
  * Esperanza ($E$) = $n \cdot p = 24 \times 0.05 = \mathbf{1.20}$
  * Varianza ($Var$) = $n \cdot p \cdot (1-p) = 24 \times 0.05 \times 0.95 = \mathbf{1.14}$
  * Coeficiente de variación (dispersión relativa): $CV = \frac{\sqrt{1.14}}{1.20} \approx \mathbf{0.8898}$ ($88.98\%$)
* **Situación 2 (Poisson):**
  * Esperanza ($E$) = $\lambda = \mathbf{5.00}$
  * Varianza ($Var$) = $\lambda = \mathbf{5.00}$
  * Coeficiente de variación: $CV = \frac{\sqrt{5}}{5} \approx \mathbf{0.4472}$ ($44.72\%$)
* 💡 **Conclusión:** El modelo **Binomial** tiene mayor dispersión relativa ($88.98\%$ frente al $44.72\%$).



## ⏱️ Ejercicio 4: Teorema del Límite Central y Distribución Normal

* Tiempo de optimización: Distribución asimétrica a la derecha, con $\mu = 8$ minutos y $\sigma = 1.5$ minutos.



### a) ¿Se puede usar la distribución normal para calcular la probabilidad de que una optimización demore más de 10 minutos? Justificá.
* 💡 **Respuesta:** **No se puede.** Dado que el tamaño de muestra es $n = 1$ (una sola optimización) y la población subyacente tiene una **distribución asimétrica**, la aproximación normal no es válida sin aplicar el Teorema del Límite Central (el cual requiere muestras grandes, típicamente $n \ge 30$).



### b) Si se toma una muestra de 36 optimizaciones, ¿cuál es la probabilidad de que el tiempo promedio supere los 10 minutos?
* Estandarizando para $10$ minutos (asumiendo el análisis con muestra grande):
  $$Z = \frac{10 - 8}{1.5 / \sqrt{36}} = \frac{2}{0.25} = 8.0$$
* $P(\bar{X} > 10) = P(Z > 8) \approx 0$
* 📊 **Respuesta:** La probabilidad es prácticamente **0%**.



### c) ¿Cuál es la probabilidad de que el promedio esté entre 7.5 y 8.5 minutos? Analizá y justificá.
* Gracias al **Teorema del Límite Central** (porque $n = 36 \ge 30$), la media muestral $\bar{X}$ se distribuye de forma aproximadamente normal con $\mu_{\bar{X}} = 8$ y $\sigma_{\bar{X}} = 0.25$.
* Estandarizamos los límites:
  * $Z_1 = \frac{7.5 - 8}{0.25} = -2.0$
  * $Z_2 = \frac{8.5 - 8}{0.25} = 2.0$
* Calculamos el área acumulada:
  $$P(-2.0 < Z < 2.0) = P(Z < 2.0) - P(Z < -2.0) = 0.9772 - 0.0228 = 0.9545$$
* 📊 **Respuesta:** La probabilidad de que el tiempo promedio esté entre 7.5 y 8.5 minutos es del **95.45%**.



## 📐 Ejercicio 5: Variables Aleatorias Continuas y Combinaciones Lineales

* Sistema de ruido ($X$): $E(X) = 3.5$, $Var(X) = 0.25$
* Sistema de vibraciones ($Y$): $E(Y) = 4.8$, $Var(Y) = 0.64$
* Asumimos independencia entre $X$ e $Y$.



### a) Calculá $E(X+Y)$ y $Var(X+Y)$ suponiendo independencia.
* **Esperanza:**
  $$E(X + Y) = E(X) + E(Y) = 3.5 + 4.8 = \mathbf{8.3}$$
* **Varianza (por independencia):**
  $$Var(X + Y) = Var(X) + Var(Y) = 0.25 + 0.64 = \mathbf{0.89}$$



### b) Si $Z = 1.5X - 2Y$, calculá $E(Z)$ y $Var(Z)$.
* **Esperanza:**
  $$E(Z) = 1.5 \cdot E(X) - 2 \cdot E(Y) = 1.5(3.5) - 2(4.8) = 5.25 - 9.6 = \mathbf{-4.35}$$
* **Varianza:**
  $$Var(Z) = 1.5^2 \cdot Var(X) + (-2)^2 \cdot Var(Y) = 2.25(0.25) + 4(0.64) = 0.5625 + 2.56 = \mathbf{3.1225}$$



### c) Si el costo por hora es 100 para ruido y 120 para vibraciones, modelamos $C = 100X + 120Y$. Calculá su esperanza y varianza.
* **Esperanza del costo total:**
  $$E(C) = 100 \cdot E(X) + 120 \cdot E(Y) = 100(3.5) + 120(4.8) = 350 + 576 = \mathbf{926.0}$$
* **Varianza del costo total:**
  $$Var(C) = 100^2 \cdot Var(X) + 120^2 \cdot Var(Y) = 10000(0.25) + 14400(0.64) = 2500 + 9216 = \mathbf{11716.0}$$
