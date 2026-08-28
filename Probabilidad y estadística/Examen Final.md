# 📚 Examen Final: Probabilidad y Estadística



## 📝 Ejercicio 1: Probabilidad (Distribución de Poisson)

Una empresa de software desarrolla un servidor que registra el número de errores críticos por hora. Según datos históricos, el servidor experimenta un promedio de **3 errores críticos cada 30 minutos**.

### Planteamiento del parámetro:
* El enunciado indica $\lambda_{30\text{ min}} = 3$ errores cada 30 minutos.
* Como las preguntas están en función de **una hora** (60 minutos), ajustamos la tasa esperada de Poisson ($\lambda$):
  $$\lambda_{\text{hora}} = 3 \times 2 = 6 \text{ errores por hora}$$
* Sea $X$ la variable aleatoria que representa el número de errores críticos en una hora: $X \sim \text{Poisson}(\lambda = 6)$.
* La función de probabilidad de Poisson es:
  $$P(X = k) = \frac{e^{-\lambda} \cdot \lambda^k}{k!}$$



### a) ¿Cuál es la probabilidad de que ocurra exactamente 4 errores críticos en una hora?
* Queremos calcular $P(X = 4)$ con $\lambda = 6$:
  $$P(X = 4) = \frac{e^{-6} \cdot 6^4}{4!}$$
* Calculando paso a paso:
  * $6^4 = 1296$
  * $4! = 24$
  * $e^{-6} \approx 0.00247875$
  * $P(X = 4) = \frac{0.00247875 \times 1296}{24} = 0.13385$
* 📊 **Respuesta:** La probabilidad de que ocurran exactamente 4 errores críticos en una hora es de **0.1339** (o **13.39%**).



### b) ¿Cuál es la probabilidad de que ocurran 2 o menos errores críticos en una hora?
* Queremos calcular $P(X \le 2) = P(X = 0) + P(X = 1) + P(X = 2)$:
  * $P(X = 0) = \frac{e^{-6} \cdot 6^0}{0!} = e^{-6} \approx 0.00248$
  * $P(X = 1) = \frac{e^{-6} \cdot 6^1}{1!} = 6 \cdot e^{-6} \approx 0.01487$
  * $P(X = 2) = \frac{e^{-6} \cdot 6^2}{2!} = \frac{36}{2} \cdot e^{-6} = 18 \cdot e^{-6} \approx 0.04462$
* Sumando las probabilidades:
  $$P(X \le 2) = e^{-6} (1 + 6 + 18) = 25 \cdot e^{-6} \approx 25 \times 0.00247875 = 0.06197$$
* 📊 **Respuesta:** La probabilidad de que ocurran 2 o menos errores críticos en una hora es de **0.0620** (o **6.20%**).



## 📈 Ejercicio 2: Distribución Normal

El tiempo de ejecución de un programa crítico se modela con una distribución normal de media $\mu = 120$ segundos y desviación estándar $\sigma = 15$ segundos. Es decir, $X \sim N(120, 15^2)$.



### a) ¿Cuál es la probabilidad de que un programa se ejecute en menos de 110 segundos?
* Queremos calcular $P(X < 110)$. Estandarizamos a la variable normal estándar $Z$:
  $$Z = \frac{X - \mu}{\sigma} = \frac{110 - 120}{15} = \frac{-10}{15} = -0.6667$$
* Buscamos en la tabla de la distribución normal estándar $P(Z < -0.67)$:
  $$P(Z < -0.6667) \approx 0.2525$$
* 📊 **Respuesta:** La probabilidad de que un programa se ejecute en menos de 110 segundos es del **25.25%** ($0.2525$).



### b) El 5% de los programas más lentos tardan al menos cuántos segundos en ejecutarse.
* Los programas "más lentos" son los que tienen tiempos de ejecución mayores (cola derecha). Buscamos el valor $x_p$ tal que el área a su derecha sea del 5% ($0.05$), lo que equivale a buscar el percentil 95 ($P_{95}$) de la distribución.
* Para un área acumulada a la izquierda del 95% ($0.95$), el valor crítico de $Z$ es:
  $$Z_{0.95} \approx 1.645$$
* Despejando $X$ de la fórmula de estandarización:
  $$X = \mu + Z \cdot \sigma = 120 + 1.645 \times 15 = 120 + 24.675 = 144.68 \text{ segundos}$$
* 📊 **Respuesta:** El 5% de los programas más lentos tardan al menos **144.68 segundos** en ejecutarse.



### c) Si se ejecutan 50 programas, ¿cuál es la probabilidad de que el tiempo promedio esté entre 118 y 122 segundos?
* Cuando tomamos una muestra de tamaño $n = 50$ (dado que $n \ge 30$, por el Teorema del Límite Central), la media muestral $\bar{X}$ se distribuye normalmente con:
  * Media de la media muestral: $\mu_{\bar{X}} = \mu = 120$
  * Error estándar: $\sigma_{\bar{X}} = \frac{\sigma}{\sqrt{n}} = \frac{15}{\sqrt{50}} = \frac{15}{7.071} \approx 2.1213$
* Queremos calcular $P(118 < \bar{X} < 122)$:
  * Estandarizamos el límite inferior ($118$):
    $$Z_1 = \frac{118 - 120}{2.1213} = \frac{-2}{2.1213} = -0.9428$$
  * Estandarizamos el límite superior ($122$):
    $$Z_2 = \frac{122 - 120}{2.1213} = \frac{2}{2.1213} = 0.9428$$
* Calculamos la probabilidad acumulada:
  $$P(-0.9428 < Z < 0.9428) = P(Z < 0.9428) - P(Z < -0.9428)$$
  $$= 0.8271 - 0.1729 = 0.6542$$
* 📊 **Respuesta:** La probabilidad de que el tiempo promedio de los 50 programas esté entre 118 y 122 segundos es del **65.42%** ($0.6542$).



## 🛡️ Ejercicio 3: Prueba de Hipótesis para Proporciones

Un analista de ciberseguridad afirma que **más del 30%** de los ataques detectados en una red son intentos de fuerza bruta. Se analizaron $n = 200$ ataques, de los cuales $x = 70$ fueron clasificados como intentos de fuerza bruta.



### a) Plantea las hipótesis nula y alternativa.
* La afirmación a demostrar ("más del 30%") constituye la hipótesis alternativa ($H_1$). La hipótesis nula ($H_0$) plantea lo opuesto o la igualdad:
  * **Hipótesis nula ($H_0$):** $p \le 0.30$ (La proporción de ataques de fuerza bruta es del 30% o menos)
  * **Hipótesis alternativa ($H_1$):** $p > 0.30$ (La proporción de ataques de fuerza bruta es mayor al 30%)



### b) Si el nivel de significancia es $\alpha = 0.05$, ¿qué conclusión debes tomar?
* **Cálculo de la proporción muestral:**
  $$\hat{p} = \frac{x}{n} = \frac{70}{200} = 0.35$$
* **Estadístico de prueba ($Z$):**
  $$Z = \frac{\hat{p} - p_0}{\sqrt{\frac{p_0 (1 - p_0)}{n}}} = \frac{0.35 - 0.30}{\sqrt{\frac{0.30 \times 0.70}{200}}} = \frac{0.05}{\sqrt{\frac{0.21}{200}}} = \frac{0.05}{\sqrt{0.00105}} = \frac{0.05}{0.03240} = 1.543$$
* **Región crítica (Prueba unilateral derecha con $\alpha = 0.05$):**
  * El valor crítico es $Z_{0.05} = 1.645$.
  * Como nuestro estadístico calculado ($1.543$) **no supera** el valor crítico ($1.645$) ($1.543 < 1.645$), el estadístico cae en la zona de aceptación.
* 📊 **Conclusión:** No se rechaza la hipótesis nula $H_0$ al nivel de significancia del 5%. No hay evidencia estadísticamente significativa para afirmar que más del 30% de los ataques sean de fuerza bruta.



### c) Si se cambia la hipótesis para evaluar si menos del 40% de los ataques son intentos de fuerza bruta, ¿cómo cambian los resultados?
* **Nuevo planteamiento:**
  * $H_0: p \ge 0.40$
  * $H_1: p < 0.40$ (Prueba unilateral izquierda)
* **Estadístico de prueba con $p_0 = 0.40$:**
  $$Z = \frac{0.35 - 0.40}{\sqrt{\frac{0.40 \times 0.60}{200}}} = \frac{-0.05}{\sqrt{\frac{0.24}{200}}} = \frac{-0.05}{\sqrt{0.0012}} = \frac{-0.05}{0.03464} = -1.443$$
* **Región crítica ($\alpha = 0.05$, unilateral izquierda):**
  * El valor crítico es $-Z_{0.05} = -1.645$.
  * Nuestro estadístico es $Z = -1.443$. Como $-1.443 > -1.645$, el valor se encuentra en la zona de aceptación.
* 📊 **Cambios en el resultado:** Tampoco se rechaza la hipótesis nula $H_0$. Aunque la proporción muestral ($\hat{p} = 0.35$) es menor a 0.40, la diferencia no es estadísticamente significativa al nivel del 5% para rechazar que la verdadera proporción sea del 40% o más.



## ✅ Ejercicio 4: Verdadero o Falso con Justificación

* **a) En una prueba de hipótesis para comparar medias de dos poblaciones con muestras apareadas, se requiere que las observaciones sean independientes entre pares.**
  * **Verdadero.** En las muestras apareadas (o dependientes), cada par de observaciones debe ser independiente de los demás pares para garantizar la validez de la distribución t de Student aplicada a las diferencias.

* **b) La comparación de medias de dos muestras independientes siempre asume igualdad de varianzas.**
  * **Falso.** Existen dos versiones de la prueba t para muestras independientes: una que asume varianzas iguales (prueba t clásica de Student) y otra que no asume igualdad de varianzas (prueba t de Welch), siendo esta última la recomendada y utilizada por defecto cuando no se cumple la homocedasticidad.

* **c) El Teorema de Bayes se utiliza principalmente para evaluar correlaciones en datos experimentales.**
  * **Falso.** El Teorema de Bayes se utiliza para calcular probabilidades condicionales inversas ($P(A|B)$ a partir de $P(B|A)$), no para medir correlaciones lineales entre variables continuas (para lo cual se emplean coeficientes como el de Pearson).

* **d) Una correlación de 0 implica que no existe relación entre dos variables.**
  * **Falso.** Un coeficiente de correlación de Pearson igual a 0 indica específicamente que **no existe relación lineal**, pero las variables pueden estar fuertemente relacionadas a través de una relación no lineal (por ejemplo, cuadrática o exponencial).

* **e) En un modelo de regresión lineal, el coeficiente de determinación ($R^2$) siempre aumenta al añadir nuevas variables al modelo.**
  * **Verdadero.** El $R^2$ convencional nunca disminuye (y por lo general aumenta o se mantiene igual) al agregar nuevas variables predictoras al modelo de regresión, ya que cada nueva variable explica una fracción adicional (aunque sea marginal o espuria) de la variabilidad de la muestra. Por esta razón se prefiere el $R^2$ ajustado para comparar modelos con diferente número de variables.



## 📊 Ejercicio 5: Estadística Descriptiva y Análisis de Datos

A partir de la muestra de 15 usuarios con las variables: *Edad*, *Tiempo de uso*, *Sesiones/día* y *Calificación*, resolvemos los apartados:



### a) Calcula la media, mediana y moda para las variables edad y calificación promedio.
* **Edad de los usuarios:**
  * Datos: $[22, 29, 35, 27, 31, 23, 28, 34, 26, 30, 24, 32, 29, 33, 25]$
  * **Media:** $\frac{428}{15} = \mathbf{28.53}$ años.
  * **Mediana:** Ordenando los datos, el valor central (posición 8) es $\mathbf{29.0}$ años.
  * **Moda:** El valor que más se repite es **29** años (aparece 2 veces).

* **Calificación promedio:**
  * Datos: $[4.5, 4.0, 3.5, 4.0, 4.5, 3.0, 4.0, 5.0, 3.5, 4.0, 4.5, 5.0, 3.0, 4.5, 4.0]$
  * **Media:** $\frac{61.0}{15} = \mathbf{4.07}$ puntos.
  * **Mediana:** El valor central ordenado es $\mathbf{4.0}$ puntos.
  * **Moda:** El valor más frecuente es **4.0** puntos.



### b) Calcula la desviación estándar y el rango para la variable tiempo promedio diario de uso de la app.
* **Tiempos de uso (minutos):** $[35, 50, 40, 30, 45, 25, 38, 55, 32, 47, 36, 50, 28, 42, 40]$
* **Rango:** $\text{Máximo} - \text{Mínimo} = 55 - 25 = \mathbf{30 \text{ minutos}}$.
* **Desviación estándar muestral ($s$):** $\mathbf{8.77 \text{ minutos}}$.



### c) Gráfico de barras del número de usuarios según las categorías de sesiones abiertas por día.
* **Categorización de sesiones:**
  * **1 - 2 sesiones:** 4 usuarios (Usuarios 5, 6, 9, 13)
  * **3 - 4 sesiones:** 8 usuarios (Usuarios 1, 2, 4, 7, 10, 11, 14, 15)
  * **5 - 6 sesiones:** 3 usuarios (Usuarios 3, 8, 12)



### d) Promedio de calificación para cada grupo etario y conclusiones.
* Agrupando por edad y calculando sus calificaciones:
  * **Menores de 25 años ($<25$):** Edades 22, 23, 24 (3 usuarios). Calificaciones: $4.5, 3.0, 4.5$.
    * **Promedio de calificación = 4.00**
  * **Entre 25 y 30 años ($[25, 30]$):** Edades 25, 26, 27, 28, 29, 29, 30 (7 usuarios). Calificaciones: $4.0, 3.5, 4.0, 4.0, 4.0, 3.0, 4.0$.
    * **Promedio de calificación = 3.79**
  * **Mayores de 30 años ($>30$):** Edades 31, 32, 33, 34, 35 (5 usuarios). Calificaciones: $4.5, 5.0, 4.5, 5.0, 3.5$.
    * **Promedio de calificación = 4.50**
* 💡 **Conclusión:** Los usuarios mayores de 30 años otorgan las calificaciones más altas en promedio (4.50), seguidos por los menores de 25 años (4.00), mientras que el grupo intermedio (25-30 años) muestra el promedio más bajo (3.79).



### e) Patrón más común de uso de la app en términos de sesiones por día.
* De acuerdo con la distribución de frecuencias del inciso (c), el intervalo más común es el de **3 a 4 sesiones por día**, concentrando al 53.3% de los usuarios analizados (8 de 15). Esto indica que la tendencia general de interacción de los usuarios con la aplicación es moderada-alta (abrirla varias veces a lo largo de la jornada).



### f) ¿Los usuarios más jóvenes o mayores tienden a otorgar mejores calificaciones? Justifica con los datos.
* Con base en los cálculos del inciso (d), **los usuarios mayores (de más de 30 años)** tienden a otorgar mejores calificaciones, registrando un promedio de **4.50**, en contraste con los usuarios más jóvenes ($<25$ años) cuyo promedio es de **4.00**, y el grupo de adultos jóvenes (25-30 años) con **3.79**. Por lo tanto, en esta muestra, la satisfacción (calificación) aumenta con la edad del usuario.
