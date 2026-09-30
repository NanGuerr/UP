# 📊 Ejercicios y Aplicaciones Prácticas de Pruebas de Hipótesis

## 📝 1. Evaluación de Comprensión en Ciberseguridad (Prueba para la Media)

### 🔍 Enunciado del Problema
Un test diseñado para medir la eficacia de los textos escritos es utilizado para medir la comprensión de las noticias sobre ciberseguridad[cite: 25]. Se evalúa, con este instrumento, a $n = 20$ personas que leen frecuentemente noticias sobre esta temática[cite: 25]. La calificación media y la desviación típica de la muestra fueron de $\bar{x} = 60.41 \, \text{\%}$ y $s = 11.28 \, \text{\%}$, respectivamente[cite: 25].

Una nota que supone un adecuado entendimiento es si la media supera el $57 \, \text{\%}$[cite: 25]. ¿Podemos concluir que los que tienen conocimientos de informática tienen un adecuado entendimiento? Utilizar un nivel de significación de $\alpha = 0.10$[cite: 25].

### ⚙️ Planteamiento de Hipótesis
Como se desea comprobar si la media supera el valor de referencia, la hipótesis alternativa se plantea como una desigualdad de tipo mayor[cite: 25]:
$$H_1: \mu > 57$$

### 📈 Cálculo del Valor P ($pv$)
El valor p correspondiente a la prueba se determina mediante la probabilidad asociada al estadístico de prueba en la distribución t-Student[cite: 24]:
$$pv = P\left(t > 1.35\right)$$



## 📱 2. Desarrollo de una Red Social (Prueba de Hipótesis para la Proporción)

### 🔍 Enunciado del Problema
En encuestas realizadas a $n = 200$ usuarios de Facebook, una empresa argentina encontró que $x = 180$ de ellos desean una ventana de chat mayor que la que ofrece dicha red social[cite: 23]. Esta mejora sólo se desarrollará si más del $82 \, \text{\%}$ de los encuestados indican esta característica como importante[cite: 23]. Se asume un nivel de significación del $5 \, \text{\%}$ ($\alpha = 0.05$)[cite: 23].

### ⚙️ Planteamiento de Hipótesis y Estadístico
El parámetro de interés es la proporción poblacional $p$, y su estadístico muestral se define como[cite: 24]:
$$\hat{p} = \frac{x}{n}$$

La hipótesis alternativa adecuada para verificar si el porcentaje supera el valor de referencia es[cite: 23]:
$$H_1: p > 0.82$$

### 📉 Resultados y Conclusión
* **Mínimo nivel de significación ($pv$):** Se obtiene un valor de $0.0016$[cite: 22].
* **Decisión estadística:** Dado que el valor p es menor que el nivel de significación ($0.0016 < 0.05$), se rechaza la hipótesis nula $H_0$[cite: 22].
* **Consejo para la empresa:** Se aconseja **desarrollar la ventana de chat**[cite: 22].
