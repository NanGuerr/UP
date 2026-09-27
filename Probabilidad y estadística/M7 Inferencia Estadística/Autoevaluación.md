# 📊 Autoevaluación Respuestas y Explicaciones Teóricas

A continuación, se presentan las respuestas correctas y explicaciones detalladas para cada una de las preguntas de la autoevaluación de inferencia estadística, basadas en el material teórico de la cátedra.



## 📝 Pregunta 1
* **Respuesta correcta:** B. $t = t(0.95, n-1)$
* **Explicación:** Cuando se calcula un intervalo con un nivel de confianza del $90\%$ ($1 - \alpha = 0.90$), se obtiene que $\alpha = 0.10$, por lo que $\alpha / 2 = 0.05$ y el valor acumulado necesario es $1 - \alpha / 2 = 0.95$. Los grados de libertad corresponden a $\nu = n - 1$.



## 🎯 Pregunta 2: Interpretación del Intervalo de Confianza para la Media
* **¿Cómo se interpreta el siguiente intervalo de confianza para la media: $IC (0.90) = (11, 13)$?**
* **Respuesta correcta:** Opción A
  * **90 de cada 100 intervalos construidos a partir de distintas muestras contienen a $\mu$.**

### 🔍 Análisis de las opciones:
* **Opción A (Correcta):** Representa la definición frecuentista clásica del nivel de confianza. Significa que si repitiéramos el muestreo muchas veces bajo las mismas condiciones, aproximadamente el $90\%$ de los intervalos calculados de esa forma incluirán el verdadero valor del parámetro poblacional ($\mu$).
* **Opción B (Incorrecta):** *La probabilidad de que $\mu$ asuma valores comprendidos entre 11 y 13 es de 0.90.* En la estadística clásica, $\mu$ es un valor fijo (aunque desconocido), no una variable aleatoria. No tiene una distribución de probabilidad; o está dentro del intervalo (probabilidad 1) o no está (probabilidad 0). El $90\%$ de confianza se refiere al método o procedimiento, no al parámetro en sí.
* **Opción C (Incorrecta):** *La probabilidad de que $\mu$ pertenezca al intervalo es de 0.90.* Por la misma razón que la Opción B, una vez calculado el intervalo numérico $(11, 13)$, este es fijo y el parámetro $\mu$ también lo es, por lo que la probabilidad de que pertenezca a este intervalo específico es 1 o 0.



## 📈 Teoría Complementaria: Intervalo de Confianza para la Proporción Poblacional ($p$)

### 1. Definición
El intervalo de confianza para una proporción poblacional ($p$) proporciona un rango de valores calculado a partir de una muestra (utilizando la proporción muestral $\hat{p}$) que, con un determinado nivel de confianza $(1 - \alpha)$, garantiza contener el verdadero valor de la proporción desconocida de la población. Se aplica a variables cualitativas o dicotómicas (procesos de Bernoulli con resultados de tipo "éxito/fracaso").

### 2. Deducción de la Fórmula del IC para la Proporción
* **Distribución Muestral:** Si se realiza un proceso de Bernoulli con $n$ ensayos independientes, el número de éxitos sigue una distribución binomial. Cuando el tamaño de muestra es suficientemente grande ($n > 30$), por el Teorema Central del Límite, la proporción muestral ($\hat{p} = \frac{x}{n}$) se aproxima a una distribución normal con media $\mu(\hat{p}) = p$ y desviación estándar $\sigma(\hat{p}) = \sqrt{\frac{p(1-p)}{n}}$.
* **Estandarización teórica:**
  $$Z = \frac{\hat{p} - p}{\sqrt{\frac{p(1-p)}{n}}} \sim N(0,1)$$
* **El problema del parámetro desconocido:** El error estándar teórico $\sqrt{\frac{p(1-p)}{n}}$ depende de $p$, que es precisamente el parámetro desconocido que queremos estimar.
* **Sustitución por el estimador puntual:** Para solucionar esto, se reemplaza el parámetro poblacional $p$ por su estimador puntual $\hat{p}$ en la fórmula del error estándar:
  $$Z \approx \frac{\hat{p} - p}{\sqrt{\frac{\hat{p}(1-\hat{p})}{n}}}$$
* **Despeje del intervalo:** Planteando la probabilidad de cobertura del nivel de confianza $(1-\alpha)$ mediante los valores críticos de la distribución normal estándar ($z_{1 - \alpha/2}$), se despeja el parámetro $p$:
  $$EM = z_{\left(1 - \frac{\alpha}{2}\right)} \cdot \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$$
  $$IC_{(1-\alpha)}(p) = \hat{p} \mp EM = \left( \hat{p} - z_{\left(1 - \frac{\alpha}{2}\right)} \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}, \; \hat{p} + z_{\left(1 - \frac{\alpha}{2}\right)} \sqrt{\frac{\hat{p}(1-\hat{p})}{n}} \right)$$

### 3. Diferencias Clave: IC para la Media ($\mu$) vs. IC para la Proporción ($p$)

| Característica | Intervalo de Confianza para la Media ($\mu$) | Intervalo de Confianza para la Proporción ($p$) |
| :--- | :--- | :--- |
| **Tipo de variable** | Cuantitativa (mide magnitudes, ej. pesos, ventas, temperaturas). | Cualitativa o dicotómica (mide presencia/ausencia, éxito/fracaso, proporciones). |
| **Distribución utilizada** | Utiliza la distribución $t$-Student cuando $\sigma$ es desconocido y $n \le 30$, o la Normal ($Z$) si $n > 30$. | Utiliza siempre la distribución Normal estándar ($Z$) por el Teorema Central del Límite. |
| **Fórmula del Error Muestral ($EM$)** | $EM = t_{\left(\nu, 1 - \frac{\alpha}{2}\right)} \cdot \frac{s}{\sqrt{n}}$ (emplea el desvío estándar muestral $s$). | $EM = z_{\left(1 - \frac{\alpha}{2}\right)} \cdot \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$ (emplea la proporción muestral $\hat{p}$). |
| **Estimador puntual base** | La media muestral ($\overline{x}$). | La proporción muestral ($\hat{p}$). |



## 🚫 Errores Conceptuales Comunes en Intervalos de Confianza

### 🔎 Análisis de la Pregunta 4 (Intervalo de Confianza para la Proporción $p$)
* **Opción A (Incorrecta):** *"La probabilidad de que la proporción poblacional se encuentre en el intervalo es de 0,95".* -> $p$ es una constante fija, no una variable aleatoria.
* **Opción B (Incorrecta):** *"95 de cada 100 intervalos... contienen a la media poblacional".* -> Error de definición del parámetro (calcula para $p$, no para $\mu$).
* **Opción C (Incorrecta):** *"La probabilidad de que $p$ asuma valores comprendidos entre 0,15 y 0,21 es de 0,95".* -> Confunde un intervalo de confianza con un intervalo probabilístico.
* **Opción D (Correcta):** **"95 de cada 100 intervalos construidos a partir de distintas muestras contienen a $p$."** -> Única opción que respeta la interpretación frecuentista correcta aplicada a proporciones.



## 🧮 Pregunta 3: Parámetros vs. Estimadores Puntuales
* **Opciones correctas:** A. $\overline{x}$, D. $p$ y E. $S^2$
* **Explicación:** En el contexto de la estadística, $\mu$ y $\sigma^2$ son **parámetros poblacionales** (valores fijos y constantes que definen a toda la población). Por el contrario, los **estimadores puntuales** son estadísticos calculados a partir de los datos de la muestra para aproximar dichos parámetros:
  * $\overline{x}$ estima la media poblacional ($\mu$).
  * $S^2$ estima la varianza poblacional ($\sigma^2$).
  * $p$ (o $\hat{p}$) representa la proporción muestral.



## 📉 Pregunta 5: Comportamiento del Error Muestral ($EM$)
* **Opciones correctas:** B, C y D
  * **B. Si aumenta el tamaño de muestra, el $EM$ disminuye.** (Al estar $n$ en el denominador bajo la raíz, un mayor tamaño reduce el error).
  * **C. Si el $EM$ aumenta, la precisión del intervalo disminuye.** (Un margen de error más amplio implica menor precisión).
  * **D. Si aumenta la confianza del intervalo, el $EM$ aumenta.** (Un nivel de confianza mayor requiere un valor crítico más alto, incrementando el error).
  * *(Nota: La opción A es incorrecta porque si $\alpha$ aumenta, disminuye el nivel de confianza y se reduce el error muestral).*



## 🎯 Pregunta 6: Insesgadez de la Media Muestral
* **Respuesta correcta:** A. $\mu(\overline{x}) = \mu(x) = \mu$
* **Explicación:** Un estimador es insesgado cuando su esperanza matemática o valor esperado es igual al parámetro poblacional que se pretende estimar ($E(\text{estimador}) = \text{parámetro}$). Para la media muestral, esto se cumple dado que su esperanza es igual a la media poblacional $\mu$.
