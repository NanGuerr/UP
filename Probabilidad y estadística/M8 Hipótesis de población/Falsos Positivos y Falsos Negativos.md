# ⚠️ Errores Estadísticos: Falsos Positivos y Falsos Negativos

## 🧠 Introducción a los Errores de Decisión
Aunque muchas personas no estén familiarizadas formalmente con los errores tipo I y tipo II, comúnmente conocen los términos **falso positivo** y **falso negativo**, ampliamente utilizados en medicina (por ejemplo, en tests de embarazo o pruebas diagnósticas) y en las garantías de precisión de diversos productos comerciales.



## 🔬 Tipos de Errores en Pruebas Estadísticas

En cualquier contraste de hipótesis, dado que trabajamos con muestras y probabilidades, siempre existe la posibilidad de tomar una decisión incorrecta al evaluar la hipótesis nula ($H_0$). Estos errores se clasifican en dos tipos principales:

### 1. Error Tipo I (Falso Positivo)
* **Definición:** Ocurre al rechazar la hipótesis nula ($H_0$) cuando esta es verdadera. En términos sencillos, es concluir que algo está presente o ocurre cuando en realidad no es así (por ejemplo, dar positivo en un test médico sin estar enfermo, o asumir que una persona está embarazada cuando no lo está).
* **Medición de probabilidad:** Se denota con la letra griega $\alpha$. Si la probabilidad es de $1$ en $1000$, se expresa matemáticamente como:
  $$\alpha = 0.001$$

### 2. Error Tipo II (Falso Negativo)
* **Definición:** Ocurre al no rechazar la hipótesis nula ($H_0$) cuando esta es falsa. Es decir, es concluir que no hay efecto o condición cuando en la realidad sí existe (por ejemplo, que una prueba de diagnóstico arroje un resultado negativo a pesar de que el paciente sí padece la enfermedad).
* **Medición de probabilidad:** Se denota con la letra griega $\beta$.



## 🧬 Replicabilidad y Reducción del Riesgo

* **Muestras duplicadas:** En el ámbito médico y científico, para mitigar la probabilidad de error, se exige el uso de muestras duplicadas o múltiples mediciones independientes. 
* **Conversión de probabilidades:** Si la probabilidad de un error individual es de $1$ en $1000$ ($0.001$), al replicar el experimento con muestras independientes, la probabilidad conjunta de fallo disminuye drásticamente a una escala de $1$ en $1\text{ }000\text{ }000$:
  $$P(\text{error conjunto}) = \frac{1}{1000} \times \frac{1}{1000} = \frac{1}{1\text{ }000\text{ }000}$$



## ⚖️ Implicaciones Prácticas y Judiciales

* **Gravedad de los errores:** En ciencias y medicina, ambos errores son críticos, aunque las consecuencias de un falso positivo o un falso negativo varían según el contexto del problema.
* **El sistema judicial:** En juicios y tribunales, las decisiones basadas en pruebas estadísticas que no ponderan adecuadamente la tasa de falsos positivos pueden derivar en errores graves de culpabilidad o absolución. Por esta razón, la ciencia estadística busca constantemente minimizar los riesgos asociados a ambos tipos de errores para garantizar conclusiones más robustas y confiables.
