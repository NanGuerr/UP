# Actividad Integración estadística descriptiva 📊

Análisis de Variables Aleatorias y Métricas Predictivas 



### a) Definición de la Variable Aleatoria 🎯
* **Variable aleatoria:** El error absoluto medio ($MAE$) de los modelos predictivos, medido en una escala de 0 a 10.



### b) Clasificación de la Variable 📏
* **Clasificación:** Cuantitativa continua.
* **Escala de medición:** Escala de razón.



### c) Distribución de los Datos 📈
* **Comportamiento:** **Heterogénea**, debido a que el coeficiente de variación ($CV$) es superior al 20%.

#### Fórmula del Coeficiente de Variación:
$$CV = \frac{s}{\bar{x}} \times 100$$

#### Valores Obtenidos:
* **Desviación estándar ($s$):** $2,1$
* **Media ($\,\bar{x}\,\$):** $5,5$

#### Cálculo:
$$CV = \frac{2,1}{5,5} \times 100 \approx \mathbf{38,18\%}$$

> 💡 **Conclusión:** Al ser el resultado ($38,18\%$) mayor al $20\%$, se confirma formalmente la heterogeneidad en la distribución de los datos.



### d) Puntuación Mínima del 10% con Mayor Error ⚠️
* **Valor registrado:** **7,90**
* **Interpretación:** Esta métrica se obtiene calculando el **Percentil 90** ($P_{90} = 7,90$). El $10\%$ de los modelos con los errores más altos presenta un MAE de al menos 7,90.



### e) Error Absoluto Máximo de la Mitad de los Modelos ⚖️
* **Valor registrado:** **4,30**
* **Interpretación:** Este valor corresponde a la **Mediana** (o **Percentil 50**, $P_{50}$). Exactamente el $50\%$ de los modelos evaluados tiene un error absoluto medio de 4,30 o inferior.



### f) Interpretación de la Frecuencia Absoluta Acumulada ($FAA$) 🔢
* **Dato:** $FAA = 12$ para $x = 4$
* **Interpretación en el contexto del problema:** Significa que **12 de los 50 modelos predictivos** analizados registraron un error absoluto medio de **4 o menos**.
