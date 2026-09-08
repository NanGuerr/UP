📊 EXAMEN PARCIAL: Probabilidad y Estadística
🏢 Institución: Universidad de Palermo (UP)
🏙️ Caso de Estudio: Empresa UrbanMetrics (Monitoreo e Inteligencia Urbana)
🎓 Asignatura: Probabilidad y Estadística
📌 EJERCICIO 1: Análisis Descriptivo del Nivel de Contaminación 🌫️
📝 Enunciado
Se registró el nivel de contaminación (en microgramos por metro cúbico, $\mu g/m^3$) en dos zonas de la ciudad: Zona Industrial y Zona Residencial durante 6 días consecutivos.
📊 Tabla de Datos Registrados
Día 📅
Industrial ($\mu g/m^3$) 🏭
Residencial ($\mu g/m^3$) 🏡
 
1
120
45
2
130
50
3
125
48
4
135
55
5
128
52
6
132
49


🔍 Resolución Paso a Paso
a) Cálculo de Medidas Descriptivas por Zona 📈
1️⃣ Zona Industrial 🏭:
Media ($\bar{x}_I$): $$\bar{x}_I = \frac{120 + 130 + 125 + 135 + 128 + 132}{6} = \frac{770}{6} \approx 128.33 \text{ }\mu g/m^3$$
Mediana ($\tilde{x}_I$): Valores ordenados: $120, 125, 128, 130, 132, 135$ $$\tilde{x}_I = \frac{128 + 130}{2} = 129.00 \text{ }\mu g/m^3$$
Varianza Muestral ($s_I^2$): $$s_I^2 = \frac{\sum (x_i - \bar{x})^2}{n-1} = \frac{(-8.33)^2 + (1.67)^2 + (-3.33)^2 + (6.67)^2 + (-0.33)^2 + (3.67)^2}{5} = \frac{141.33}{5} = 28.27 \text{ }(\mu g/m^3)^2$$
Desviación Estándar Muestral ($s_I$): $$s_I = \sqrt{28.27} \approx 5.32 \text{ }\mu g/m^3$$
Coeficiente de Variación ($CV_I$): $$CV_I = \frac{s_I}{\bar{x}_I} \times 100 = \frac{5.32}{128.33} \times 100 \approx 4.14\%$$
Coeficiente de Asimetría de Pearson ($A_{pI}$): $$A_{pI} = \frac{3(\bar{x}_I - \tilde{x}_I)}{s_I} = \frac{3(128.33 - 129.00)}{5.32} = \frac{-2.01}{5.32} \approx -0.38 \text{ (Asimetría Negativa / Izquierda)}$$
2️⃣ Zona Residencial 🏡:
Media ($\bar{x}_R$): $$\bar{x}_R = \frac{45 + 50 + 48 + 55 + 52 + 49}{6} = \frac{299}{6} \approx 49.83 \text{ }\mu g/m^3$$
Mediana ($\tilde{x}_R$): Valores ordenados: $45, 48, 49, 50, 52, 55$ $$\tilde{x}_R = \frac{49 + 50}{2} = 49.50 \text{ }\mu g/m^3$$
Varianza Muestral ($s_R^2$): $$s_R^2 = \frac{\sum (x_i - \bar{x})^2}{n-1} = \frac{(-4.83)^2 + (0.17)^2 + (-1.83)^2 + (5.17)^2 + (2.17)^2 + (-0.83)^2}{5} = \frac{58.83}{5} = 11.77 \text{ }(\mu g/m^3)^2$$
Desviación Estándar Muestral ($s_R$): $$s_R = \sqrt{11.77} \approx 3.43 \text{ }\mu g/m^3$$
Coeficiente de Variación ($CV_R$): $$CV_R = \frac{s_R}{\bar{x}_R} \times 100 = \frac{3.43}{49.83} \times 100 \approx 6.88\%$$
Coeficiente de Asimetría de Pearson ($A_{pR}$): $$A_{pR} = \frac{3(\bar{x}_R - \tilde{x}_R)}{s_R} = \frac{3(49.83 - 49.50)}{3.43} = \frac{0.99}{3.43} \approx +0.29 \text{ (Asimetría Positiva / Derecha)}$$
📋 Resumen Comparativo de Estadísticos
Medida Estadística
Zona Industrial 🏭
Zona Residencial 🏡
 
Media ($\bar{x}$)
$128.33 \text{ }\mu g/m^3$
$49.83 \text{ }\mu g/m^3$
Mediana ($\tilde{x}$)
$129.00 \text{ }\mu g/m^3$
$49.50 \text{ }\mu g/m^3$
Desviación Estándar ($s$)
$5.32 \text{ }\mu g/m^3$
$3.43 \text{ }\mu g/m^3$
Varianza ($s^2$)
$28.27 \text{ }(\mu g/m^3)^2$
$11.77 \text{ }(\mu g/m^3)^2$
Coeficiente de Variación ($CV$)
$4.14\%$
$6.88\%$
Coeficiente de Asimetría ($A_p$)
$-0.38$ (Negativo)
$+0.29$ (Positivo)


b) Interpretación del Coeficiente de Asimetría 📐
Zona Industrial ($A_p = -0.38$): Presenta una asimetría levemente negativa (sesgada a la izquierda). Esto indica que la mayoría de los registros de contaminación se concentran en valores superiores a la media, con algunos días atípicos de menor contaminación que desplazan la media por debajo de la mediana ($\bar{x} < \tilde{x}$).
Zona Residencial ($A_p = +0.29$): Muestra una asimetría levemente positiva (sesgada a la derecha). Esto refleja que la mayoría de los valores son relativamente bajos, pero existen algunos días puntuales con mayor contaminación que elevan el promedio por encima de la mediana ($\bar{x} > \tilde{x}$).
c) Análisis Comparativo de Variabilidad ⚖️
Variabilidad Absoluta: La Zona Industrial posee una mayor desviación estándar ($5.32 \text{ }\mu g/m^3$ frente a $3.43 \text{ }\mu g/m^3$).
Variabilidad Relativa (Coeficiente de Variación): Como ambas zonas manejan órdenes de magnitud de contaminación sustancialmente distintos (un promedio industrial de $128.33$ frente a $49.83$ residencial), el análisis riguroso requiere comparar sus coeficientes de variación: $$CV_R = 6.88\% > CV_I = 4.14\%$$
Conclusión: La Zona Residencial presenta una mayor variabilidad relativa respecto de su propio nivel medio de contaminación.
📌 EJERCICIO 2: Evaluación de Sistemas de Monitoreo de Tráfico 🚦
📝 Enunciado
Se evalúa la efectividad de dos sistemas: Sensores Fijos ($SF$) y Cámaras Inteligentes ($CI$).
$P(SF) = 0.30$ ($30\%$ de las intersecciones usaron Sensores Fijos).
$P(CI) = 0.70$ ($70\%$ de las intersecciones usaron Cámaras Inteligentes).
$P(E \mid SF) = 0.10$ (Probabilidad de error $> 5\%$ en Sensores Fijos).
$P(E \mid CI) = 0.20$ (Probabilidad de error $> 5\%$ en Cámaras Inteligentes).
---
🔍 Resolución Paso a Paso
a) Probabilidad de que una intersección tenga un error $> 5\%$ ($P(E)$) 🎯
Aplicando la Ley de Probabilidad Total:
$$P(E) = P(E \mid SF) \cdot P(SF) + P(E \mid CI) \cdot P(CI)$$ $$P(E) = (0.10 \times 0.30) + (0.20 \times 0.70) = 0.03 + 0.14 = 0.17$$
Respuesta: La probabilidad de que una intersección elegida al azar tenga un error mayor al $5\%$ es de $0.17$ ($17.00\%$).
b) Probabilidad de que una intersección con error $> 5\%$ use Cámaras Inteligentes ($P(CI \mid E)$) 🔍
Aplicando el Teorema de Bayes:
$$P(CI \mid E) = \frac{P(E \mid CI) \cdot P(CI)}{P(E)}$$ $$P(CI \mid E) = \frac{0.20 \times 0.70}{0.17} = \frac{0.14}{0.17} \approx 0.8235$$
Respuesta: Dado que una intersección tuvo más del $5\%$ de error, la probabilidad de que corresponda a Cámaras Inteligentes es de $82.35\%$ ($0.8235$).
c) Evaluación de Estrategia de Implementación 💡
Criterio de la ciudad: Implementar únicamente Cámaras Inteligentes si $P(CI \mid E) > 0.30$.
Resultado obtenido: $P(CI \mid E) = 82.35\%$, valor sustancialmente mayor al umbral del $30\%$.
Justificación y Análisis Crítico: Desde el punto de vista del algoritmo de decisión planteado por la ciudad, la condición numérica se cumple holgadamente. Sin embargo, técnicamente NO es una estrategia válida ni lógica: que $P(CI \mid E) = 82.35\%$ significa que la abrumadora mayoría de las mediciones erróneas provienen de las Cámaras Inteligentes. Seleccionar exclusivamente el sistema que genera la mayor proporción de errores empeorará la calidad global del monitoreo. La estrategia correcta sería aumentar el uso de Sensores Fijos, los cuales presentan una tasa de error significativamente menor ($10\%$ vs $20\%$).
📌 EJERCICIO 3: Monitoreo de Calidad del Aire 🌬️
📝 Enunciado
Situación A (Por hora): Se toman $n = 24$ muestras independientes por hora, cada una con probabilidad $p = 0.05$ de superar el límite permitido.
Situación B (Por día): Se observan en promedio $\lambda = 5$ muestras que superan el límite diario.
---
🔍 Resolución Paso a Paso
a) Probabilidad de exactamente 4 muestras que superen el límite en una hora ($P(X = 4)$) 🕒
Elección y Justificación del Modelo: Se utiliza la Distribución Binomial $X \sim \text{Binom}(n = 24, p = 0.05)$, ya que consta de un número fijo de ensayos Bernoulli independientes ($n = 24$), con solo dos resultados posibles (supera o no el límite) y probabilidad de éxito constante ($p = 0.05$).
Cálculo: $$P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}$$ $$P(X = 4) = \binom{24}{4} (0.05)^4 (0.95)^{20}$$ $$\binom{24}{4} = \frac{24 \times 23 \times 22 \times 21}{4 \times 3 \times 2 \times 1} = 10626$$ $$P(X = 4) = 10626 \times 0.00000625 \times 0.358486 \approx 0.0238$$
Respuesta: La probabilidad es de $2.38\%$ ($0.0238$).
b) Probabilidad de observar al menos 6 muestras que superen el límite en un día ($P(Y \ge 6)$) ☀️
Elección del Modelo: Se modela mediante la Distribución de Poisson $Y \sim \text{Poisson}(\lambda = 5)$, adecuada para conteo de eventos raros en un intervalo de tiempo continuo.
Cálculo mediante el evento complemento: $$P(Y \ge 6) = 1 - P(Y \le 5) = 1 - \sum_{k=0}^{5} \frac{e^{-\lambda} \lambda^k}{k!}$$ $$\begin{aligned} P(Y = 0) &= e^{-5} = 0.006738 \\ P(Y = 1) &= e^{-5} \cdot 5 = 0.033690 \\ P(Y = 2) &= e^{-5} \cdot \frac{25}{2} = 0.084224 \\ P(Y = 3) &= e^{-5} \cdot \frac{125}{6} = 0.140374 \\ P(Y = 4) &= e^{-5} \cdot \frac{625}{24} = 0.175467 \\ P(Y = 5) &= e^{-5} \cdot \frac{3125}{120} = 0.175467 \end{aligned}$$ $$P(Y \le 5) = 0.006738 + 0.033690 + 0.084224 + 0.140374 + 0.175467 + 0.175467 = 0.61596$$ $$P(Y \ge 6) = 1 - 0.61596 = 0.38404$$
Respuesta: La probabilidad de observar al menos 6 muestras en un día es del $38.40\%$ ($0.3840$).
c) Esperanza, Varianza y Análisis de Dispersión Relativa 📊
1️⃣ Situación Horaria (Binomial $X$):
Esperanza: $E(X) = n \cdot p = 24 \times 0.05 = 1.20 \text{ muestras}$
Varianza: $\text{Var}(X) = n \cdot p \cdot (1-p) = 24 \times 0.05 \times 0.95 = 1.14 \text{ muestras}^2$
Desviación Estándar: $\sigma_X = \sqrt{1.14} \approx 1.0677$
Coeficiente de Variación: $$CV_X = \frac{\sigma_X}{E(X)} = \frac{1.0677}{1.20} \approx 88.98\%$$
2️⃣ Situación Diaria (Poisson $Y$):
Esperanza: $E(Y) = \lambda = 5.00 \text{ muestras}$
Varianza: $\text{Var}(Y) = \lambda = 5.00 \text{ muestras}^2$
Desviación Estándar: $\sigma_Y = \sqrt{5} \approx 2.2361$
Coeficiente de Variación: $$CV_Y = \frac{\sigma_Y}{E(Y)} = \frac{2.2361}{5.00} \approx 44.72\%$$
Conclusión: El modelo Binomial (Situación Horaria) presenta una mayor dispersión relativa ($CV_X = 88.98\%$ frente a $CV_Y = 44.72\%$), debido a que su valor esperado es muy pequeño en relación a su variabilidad inherente.
📌 EJERCICIO 4: Optimización del Tiempo de Semáforos Inteligentes 🚦
📝 Enunciado
La variable $X =$ "tiempo de optimización" tiene distribución asimétrica a la derecha con media $\mu = 8 \text{ min}$ y desviación estándar $\sigma = 1.5 \text{ min}$.
---
🔍 Resolución Paso a Paso
a) ¿Se puede usar la Distribución Normal para una observación individual ($X > 10$)? 🛑
Respuesta: NO. No es válido utilizar la distribución normal para una sola observación individual porque el enunciado especifica expresamente que la distribución poblacional es asimétrica a la derecha. La distribución normal requiere simetría estricta alrededor de la media.
b) Muestra de $n = 36$ optimizaciones y Probabilidad del Promedio Muestral ($\bar{X}$) 🧮
Por el Teorema del Límite Central (TLC), como el tamaño muestral es suficientemente grande ($n = 36 \ge 30$), la distribución de la media muestral $\bar{X}$ se aproxima a una distribución normal:
$$\bar{X} \sim \mathcal{N}\left(\mu = 8, \sigma_{\bar{X}}^2 = \frac{\sigma^2}{n}\right)$$ $$\sigma_{\bar{X}} = \frac{\sigma}{\sqrt{n}} = \frac{1.5}{\sqrt{36}} = \frac{1.5}{6} = 0.25 \text{ min}$$
Análisis del enunciado: Si la pregunta refiere al tiempo promedio muestral que supere los 10 minutos ($P(\bar{X} > 10)$):
$$Z = \frac{10 - 8}{0.25} = \frac{2}{0.25} = +8.00$$ $$P(\bar{X} > 10) = P(Z > 8.00) \approx 0.0000$$
Respuesta: La probabilidad de que el promedio muestral supere los 10 minutos es prácticamente **cero** ($0\%$).
c) Probabilidad de que el tiempo promedio esté entre 7.5 y 8.5 minutos ($P(7.5 \le \bar{X} \le 8.5)$) 📊
Estandarizando la variable $\bar{X}$ con $\sigma_{\bar{X}} = 0.25$:
$$Z_1 = \frac{7.5 - 8}{0.25} = \frac{-0.5}{0.25} = -2.00$$ $$Z_2 = \frac{8.5 - 8}{0.25} = \frac{0.5}{0.25} = +2.00$$ $$P(7.5 \le \bar{X} \le 8.5) = P(-2.00 \le Z \le +2.00)$$ $$P(-2.00 \le Z \le +2.00) = \Phi(2.00) - \Phi(-2.00) = 0.9772 - 0.0228 = 0.9544$$
Respuesta: La probabilidad de que el tiempo promedio muestral se encuentre entre 7.5 y 8.5 minutos es del $95.44\%$ ($0.9544$).
📌 EJERCICIO 5: Modelado de Costos y Combinación de Variables Aleatorias 💻
📝 Enunciado
Sean $X$ e $Y$ las variables aleatorias continuas que representan el tiempo (en horas) de análisis:
$E(X) = 3.5$, $\text{Var}(X) = 0.25$
$E(Y) = 4.8$, $\text{Var}(Y) = 0.64$

🔍 Resolución Paso a Paso
a) Cálculo de $E(X+Y)$ y $\text{Var}(X+Y)$ suponiendo independencia ➕
1️⃣ Esperanza de la Suma:
$$E(X+Y) = E(X) + E(Y) = 3.5 + 4.8 = 8.30 \text{ horas}$$
2️⃣ Varianza de la Suma (Bajo Independencia $\text{Cov}(X,Y) = 0$):
$$\text{Var}(X+Y) = \text{Var}(X) + \text{Var}(Y) = 0.25 + 0.64 = 0.89 \text{ horas}^2$$ ---
b) Si $Z = 1.5X - 2Y$, calculá $E(Z)$ y $\text{Var}(Z)$ ➖
1️⃣ Esperanza de $Z$:
$$E(Z) = E(1.5X - 2Y) = 1.5 E(X) - 2 E(Y)$$ $$E(Z) = 1.5(3.5) - 2(4.8) = 5.25 - 9.60 = -4.35$$
2️⃣ Varianza de $Z$ (Bajo Independencia):
$$\text{Var}(Z) = \text{Var}(1.5X - 2Y) = (1.5)^2 \text{Var}(X) + (-2)^2 \text{Var}(Y)$$ $$\text{Var}(Z) = 2.25(0.25) + 4(0.64) = 0.5625 + 2.5600 = 3.1225$$ ---
c) Modelado del Costo Total: $C = 100X + 120Y$ 💰
1️⃣ Esperanza del Costo $E(C)$:
$$E(C) = E(100X + 120Y) = 100 E(X) + 120 E(Y)$$ $$E(C) = 100(3.5) + 120(4.8) = 350 + 576 = 926.00 \text{ \$}$$
2️⃣ Varianza del Costo $\text{Var}(C)$:
$$\text{Var}(C) = \text{Var}(100X + 120Y) = (100)^2 \text{Var}(X) + (120)^2 \text{Var}(Y)$$ $$\text{Var}(C) = 10000(0.25) + 14400(0.64) = 2500 + 9216 = 11716.00 \text{ \$}^2$$ $$\sigma_C = \sqrt{11716} \approx 108.24 \text{ \$}$$
Respuesta: El costo total esperado de análisis es de \$926.00, con una varianza de $11716.00 \text{ \$}^2$ (desviación estándar de \$108.24).
