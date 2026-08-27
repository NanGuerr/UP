# 📊 Modelos de Probabilidad: Binomial, Poisson y Normal

A continuación, encontrarás un cuadro comparativo detallado que contrasta los tres modelos de probabilidad más utilizados en estadística: **Binomial**, **Poisson** (ambas de variable aleatoria discreta) y **Normal** (modelo continuo de gran referencia), destacando sus características, parámetros y relaciones mutuas.  



## 📋 Cuadro Comparativo: Modelos de Probabilidad

| Característica / Criterio | 📦 Distribución Binomial | ⏱️ Distribución de Poisson | 🔔 Distribución Normal |
| :--- | :--- | :--- | :--- |
| **Tipo de Variable** | **Discreta** (cuenta el número de éxitos en $n$ ensayos). | **Discreta** (cuenta eventos en un intervalo de tiempo, espacio o área). | **Continua** (toma cualquier valor real dentro de un intervalo). |
| **Parámetros Principales** | • $n$ (número de ensayos u observaciones).<br>• $p$ (probabilidad de éxito en cada ensayo). | • $\lambda$ o $\mu$ (tasa media de ocurrencia del evento por unidad). | • $\mu$ (media o valor esperado).<br>• $\sigma$ (desviación estándar). |
| **Media ($\mu$)** | $\mu = n \cdot p$ | $\mu = \lambda$ | $\mu$ |
| **Varianza ($\sigma^2$)** | $\sigma^2 = n \cdot p \cdot q$ *(donde $q = 1 - p$)* | $\sigma^2 = \lambda$ *(la media y la varianza son iguales)* | $\sigma^2$ |
| **Condiciones / Supuestos** | • Número fijo de pruebas $n$ independientes.<br>• Solo dos resultados posibles (éxito/fracaso).<br>• Probabilidad $p$ constante. | • Los eventos ocurren de forma aleatoria e independiente.<br>• La tasa media es constante.<br>• No pueden ocurrir dos eventos simultáneamente en un punto infinitesimal. | • Los datos se acumulan simétricamente alrededor de un valor central (campana de Gauss).<br>• Afectada por una gran cantidad de factores independientes. |
| **Ejemplos de Aplicación** | • Número de bombillas defectuosas en una muestra de 50.<br>• Cantidad de pacientes que se curan de una enfermedad en un grupo de 20. | • Número de llamadas que recibe un call center en 10 minutos.<br>• Cantidad de defectos por metro cuadrado de tela. | • Estatura o peso de una población de personas.<br>• Errores de medición en un experimento científico. |
| **Relación / Aproximación** | Se puede aproximar a Poisson si $n$ es muy grande ($\ge 100$) y $p$ es muy pequeña ($\le 0.05$) haciendo $\lambda = n \cdot p$. | Se puede aproximar a la Normal cuando el parámetro $\lambda$ es grande ($\lambda > 20$). | Se puede usar para aproximar a la Binomial cuando $n$ es grande y $p$ no está cerca de 0 ni de 1 (usando corrección por continuidad). |



## 💡 Puntos clave a tener en cuenta:

* **🔢 Naturaleza discreta vs. continua:** Tanto la Binomial como la Poisson manejan conteos de elementos enteros ($0, 1, 2, 3...$), por lo que son discretas. La Normal se reserva para mediciones continuas (como peso, tiempo, longitud), aunque frecuentemente se emplea para aproximar a las anteriores cuando los volúmenes de datos son masivos.  
* **🌉 El puente entre modelos:** En la práctica estadística, las fórmulas de la Binomial y la Poisson pueden volverse muy pesadas de calcular con números grandes de ensayos ($n$). Es allí donde las leyes de aproximación (como usar Poisson para Binomiales de eventos raros, o la Normal para ambas) facilitan enormemente los cálculos analíticos.
