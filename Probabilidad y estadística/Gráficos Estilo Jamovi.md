# 📊 Guía de Gráficos Estilo Jamovi

Este documento recopila el prompt optimizado para la generación de gráficos con la estética de **Jamovi** y la aplicación práctica de los resultados clave de la actividad de prueba de hipótesis para una población[cite: 1].



## 🤖 📋 1. Prompt Optimizado para Inteligencia Artificial

> Copia y pega el siguiente texto en tu IA de preferencia (reemplazando los corchetes según corresponda):

"Actúa como un estadístico experto y diseñador de visualización de datos. Genera un gráfico individual para **[insertar aquí el resultado, variable o análisis]**, diseñado exactamente con la estética visual característica del software **Jamovi** (siguiendo las directrices del formato APA y gráficos limpios estilo ggplot2). 

El gráfico debe cumplir con las siguientes especificaciones técnicas y visuales:
* **🎨 Estética general:** Fondo blanco puro, limpio y profesional, sin cuadrículas de fondo recargadas.
* **📐 Ejes y líneas:** Ejes X e Y bien definidos con líneas de grosor moderado en gris oscuro, sin bordes superiores ni derechos (estilo clásico de ggplot2).
* **🔤 Tipografía:** Fuente sans-serif limpia, moderna y altamente legible (tipo Arial o Helvetica), con tamaños jerárquicos adecuados para el título, los ejes y las etiquetas.
* **🎨 Paleta de colores:** Colores sobrios, académicos y profesionales (tonos pastel suaves, azules corporativos o escala de grises elegante; evita colores fluorescentes o sobre saturados).
* **📈 Tipo de gráfico según el resultado:** 
  * Si es categórico/comparativo: usa barras limpias con bordes definidos y, de ser necesario, barras de error estándar.
  * Si es correlacional/dispersión: puntos bien definidos y limpios con su respectiva línea de tendencia suave.
  * Si es distribución: gráficos de caja (boxplots) claros que muestren la mediana, los cuartiles y los valores atípicos (outliers) si los hay.
* **📝 Elementos de texto:** Título descriptivo en la parte superior, etiquetas claras en ambos ejes y leyenda minimalista (si aplica) ubicada de forma que no sature el área de trazado."



## 💡 🛠️ Consejos para Mejores Resultados

* **💻 Si usas una IA de código (como Python/R):** Puedes pedirle que añada al prompt que utilice la librería `ggplot2` en R con el tema `theme_classic()` o paquetes de Jamovi como `jmv` para replicar los gráficos de forma programática.
* **📑 Si necesitas múltiples gráficos:** Especifica en el prompt: *"Genera los gráficos de forma individual y secuencial para cada uno de los siguientes resultados: [Lista tus resultados aquí]"*.



## 📉 📊 2. Resultados Clave a Graficar (Caso: Tiempos de Retraso)

A continuación se detallan los tres resultados fundamentales que deben graficarse individualmente para el análisis de la actividad:

### 📋 1️⃣ Gráfico de Estadística Descriptiva (Variable de Estudio)
Este gráfico refleja el comportamiento de la variable cuantitativa continua del estudio:
* **🔍 Variable analizada:** Tiempo de retraso en la entrega de los proyectos medido en días[cite: 1].
* **📊 Media muestral ($\bar{x}$):** Se sitúa exactamente en $12,4$ días[cite: 1].
* **📏 Desvío estándar ($s$):** Representa una dispersión de $3,8$ días[cite: 1].
* **👥 Tamaño de la muestra ($n$):** Basado en un total de $18$ proyectos de construcción gestionados por la empresa[cite: 1].

### ⚖️ 2️⃣ Gráfico de la Prueba t de una Muestra (Comparativa de Medias)
Este gráfico permite visualizar el contraste directo entre la realidad de la muestra y el límite establecido:
* **📊 Media de la muestra:** El valor promedio observado de $12,4$ días[cite: 1].
* **🎯 Valor de prueba / Límite de referencia ($\mu_0$):** El umbral máximo fijado por la empresa en $14$ días[cite: 1].

### 🔔 3️⃣ Gráfico de la Distribución t de Student (Módulo DistrACTION / Contraste)
Este gráfico muestra la curva de probabilidad teórica bajo la hipótesis nula:
* **📐 Grados de libertad ($\nu$ o $df$):** Configurado con un valor de $17$ (resultado de $n - 1$)[cite: 1].
* **📌 Estadístico de prueba ($t_m$):** Ubicado en el valor $-1,786$ (o $-1,7864$)[cite: 1].
* **📉 Valor P ($p_v$):** Representado por el área bajo la curva que arroja un valor de $0,046$ (o $0,0459$)[cite: 1].
* **⚠️ Nivel de significación ($\alpha$):** La región crítica delimitada por el riesgo máximo asumido del $10\%$ ($\alpha = 0,10$), donde se comprueba que el valor p es menor ($0,046 < 0,10$), justificando el rechazo de la hipótesis nula ($H_0$)[cite: 1].
