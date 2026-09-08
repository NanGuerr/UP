Se han transcrito y estructurado las notas de los apuntes de examen en un archivo Markdown completo, detallando los procedimientos, corrigiendo las expresiones matemáticas para su correcta visualización en GitHub e incorporando emojis temáticos.

[file-tag: code-generated-file-resolucion-apuntes]



# 📚 Transcripción y Resolución Detallada: Apuntes de Estadística y Probabilidad

Este documento recopila la transcripción y el desarrollo paso a paso de los ejercicios prácticos y conceptos teóricos presentes en los apuntes de estudio.



## 📈 1. Regresión Lineal y Análisis Predictivo (P1)

### 📝 Enunciado y Planteo

En un estudio donde se desea estimar la cantidad de profesores en función de los alumnos, se identifica a **profesores** como la variable dependiente ($Y$).

* Orden al origen ($\text{cons}$): $-91,49$
* Pendiente: $54,50$

### 📐 Ecuación de Regresión

La recta estimada se expresa como:


$$y = -91,49 + 54,50x$$

* **Coeficiente de Determinación ($R^2$):** $R^2 = 0,98$.
* **Interpretación:** Como $R^2 > 0,50$ (específicamente $0,98$), existe una **fuerte correlación lineal** y un ajuste óptimo del modelo a los datos.

### 🔢 Cálculo para un Valor Dado

* **Predicción con $20.000$ alumnos ($x = 20.000$):**
Sustituyendo en la ecuación o utilizando los límites del intervalo de confianza y predicción:
* Límite Inferior ($\text{LI}$): $9.637,94 \text{ profesores}$
* Límite Superior ($\text{LS}$): $12.761,97 \text{ profesores}$





## 🛠️ 2. Asunción Técnica y Propiedades

* **Asunción Técnica:** La recta de regresión permite predecir el valor de la variable dependiente ($Y$) en función de un valor dado de la variable independiente ($X$).
* **Medidas Estadísticas:**
* **Estimador:** Cualquier medida descriptiva calculada a partir de una muestra.
* **Parámetro:** Cualquier medida descriptiva correspondiente a una población entera.





## 🎲 3. Probabilidad Clásica, Frecuentista y Sucesos

### 🏛️ A. Probabilidad Clásica (Según Laplace)

Se define como el cociente entre el número de casos favorables y el número de casos posibles:


$$P(A) = \frac{\text{Casos Favorables}}{\text{Casos Posibles}}$$

* **Ejemplo 1 (Ruleta):** Probabilidad de que salga color rojo.

$$P(\text{rojo}) = \frac{18}{37} \approx 0,486 \quad (48,6\%)$$


* **Ejemplo 2 (Casino / Eventos):**
* $P(A) = 0,5$
* $P(B) = 0,3$
* $P(A \cap B) = 0,2$



### 🔄 B. Probabilidad Frecuentista

Se basa en la frecuencia relativa: cuantas más veces se repite un experimento aleatorio, más se aproxima la probabilidad empírica a la probabilidad teórica de ocurrencia.

* **Limitación:** No se puede aplicar en pruebas destructivas, ya que no se puede comprobar la frecuencia en las mismas unidades destruidas. A diferencia de la clásica, requiere experimentación o simulación previa.

### 🔀 C. Tipos de Sucesos y Reglas de Probabilidad

* **Sucesos Excluyentes o Disjuntos:** No pueden ocurrir simultáneamente. Si ocurre uno, se descarta el otro:

$$P(A \cap B) = 0$$


* **Sucesos No Excluyentes o Conjuntos:** Es posible que ocurran ambos, aunque no necesariamente de forma simultánea.
* **Regla de Adición:** Expresa la probabilidad de que ocurra el suceso $A$ o el suceso $B$:

$$P(A \cup B) = P(A) + P(B) \quad (\text{si } A \text{ y } B \text{ son excluyentes})$$





## 📊 4. Tabla de Contingencia y Probabilidad Condicional (P3)

Se presenta una tabla de doble entrada para clasificar datos relacionados con vehículos y distancias:

| Categoría | Más de $50\text{m}$ | Menos de $50\text{m}$ | Total ($D$) |
| --- | --- | --- | --- |
| **No Auto** | $0,0396$ | $0,533$ | $0,5726$ |
| **Auto** | $0,1404$ | $0,287$ | $0,4274$ |
| **Total** | $0,18$ | $0,32$ | $1$ |

### 🔍 Cálculos y Análisis Asociados

* **Probabilidad condicional o conjunta identificada:**

$$P(\text{No Auto} \cap \text{Más de } 50\text{m}) = 0,0396$$


* **Análisis de varianza y coeficientes:**
* $\text{Varianza} = 1.537.600$
* Evaluación de medias y desvíos para determinar homogeneidad mediante el coeficiente de variación ($\text{CV}$).





## 🧪 5. Pruebas de Hipótesis (Teórico)

* **Comparación para Dos Valores Dependientes (Datos Pareados):**
* Se analiza la **diferencia** entre los valores emparejados de una misma muestra bajo dos condiciones distintas. Se estima el parámetro que representa el promedio de dichas diferencias ($\mu_d$).
* **Planteo de Hipótesis:**
* Hipótesis Nula: $H_0: \mu_d = 0$ (No hay diferencia significativa)
* Hipótesis Alternativa:
* $H_1: \mu_d > 0$ (Unilateral derecha)
* $H_1: \mu_d < 0$ (Unilateral izquierda)
* $H_1: \mu_d \neq 0$ (Bilateral / Diferente de cero)




* **Criterio de Decisión:** Si el valor de probabilidad asociado ($p\text{-value}$) es menor que el nivel de significación tradicional ($\alpha < 0,05$), **se rechaza la hipótesis nula ($H_0$)**.


* **Nivel de Significación:** Cuanto menor sea el valor de probabilidad $p$, más estadísticamente significativo será el resultado obtenido en la prueba.
