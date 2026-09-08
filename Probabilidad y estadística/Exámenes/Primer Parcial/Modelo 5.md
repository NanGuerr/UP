# 🖥️ Transcripción y Resolución: 1er Parcial de Probabilidad y Estadística (Septiembre/2013)

Este documento presenta la transcripción detallada y la resolución paso a paso de los problemas del examen, estructurando los procedimientos analíticos, fórmulas matemáticas compatibles con GitHub y emojis descriptivos.



## 🌐 Problema 1: Rendimiento de Redes de Computadoras y Modelos Probabilísticos

### 📝 Enunciado

Se llevó a cabo una prueba sobre el rendimiento de dos redes ($\text{A}$ y $\text{B}$) con arquitecturas diferentes utilizadas para un juego *online*. Se registraron tres variables:

* $V1$: Número de $\text{bytes/segundo}$ ($\text{kb/s}$).


* $V2$: Tiempo de respuesta en segundos.


* $V3$: Estado de los paquetes de datos recibidos ($\text{íntegro}$ o $\text{alterado}$).





### 🧮 Resolución y Procedimientos

#### 📌 a) Identificación y Clasificación

* **Unidad de análisis:** Una transmisión o paquete de datos evaluado en la red.


* **Tipo de estudio:** Experimental y transversal.


* **Variables y clasificación:**
* $V1$ (Velocidad): Cuantitativa continua (escala de razón).


* $V2$ (Tiempo de respuesta): Cuantitativa continua (escala de razón).


* $V3$ (Estado del paquete): Cualitativa nominal.





#### 📌 b) Informe Descriptivo y Comparativo

* A partir de los datos recolectados en la base de datos, se observa que la **Red B** opera con velocidades ($V1$) significativamente mayores pero con tiempos de respuesta ($V2$) más elevados y variables en comparación con la **Red A**. La variable $V1$ muestra mayor heterogeneidad debido a la dispersión de los valores de transferencia en ambas arquitecturas.



#### 📌 c) Probabilidades en la Red A (Paquetes de datos)

De los datos de la Red A ($n = 23$ observaciones totales), se cuentan $20$ paquetes íntegros y $3$ alterados. La probabilidad estimada de éxito (llegar íntegro) es $p = \frac{20}{23} \approx 0,8696$, y la de fracaso (alterado) es $q = \frac{3}{23} \approx 0,1304$. Para una muestra de $20$ paquetes ($n = 20$):

* **c.1) ¿Cuál es la probabilidad de que uno llegue con alteraciones?**
* Se modela con una **Distribución Binomial** donde el éxito es llegar alterado ($p = \frac{3}{23}$).


* Se calcula $P(X = 1)$:

$$P(X = 1) = \binom{20}{1} \left(\frac{3}{23}\right)^1 \left(\frac{20}{23}\right)^{19} \approx 0,265$$





* **c.2) ¿Cuál es la probabilidad de que más de 17 lleguen sin alteraciones?**
* Tomando como éxito que llegue íntegro ($p = \frac{20}{23}$), se busca $P(X > 17) = P(X = 18) + P(X = 19) + P(X = 20)$.


* Aplicando la fórmula binomial acumulada, se obtiene un valor aproximado de $0,478$ ($47,8\%$).





#### 📌 d) Red B y Distribución Normal del Tiempo de Respuesta ($V2$)

Se asume que en la Red B el tiempo de respuesta $V2$ se distribuye normalmente con media $\mu = 0,45\text{ s}$ y desvío estándar $\sigma = 0,06\text{ s}$.

* **d.1) ¿En qué porcentaje de transmisiones el tiempo de respuesta supera los $0,50$ segundos?**
* Se estandariza el valor $X = 0,50$:

$$Z = \frac{0,50 - 0,45}{0,06} = \frac{0,05}{0,06} \approx 0,833$$



* Se calcula el área a la derecha:

$$P(X > 0,50) = P(Z > 0,833) \approx 0,2023$$



* **Respuesta:** En el **$20,23\%$** de las transmisiones.




* **d.2) ¿Cuál es el tiempo de respuesta del 15% de las transmisiones más lentas?**
* Las transmisiones más lentas corresponden a los tiempos mayores (cola derecha de la distribución), por lo que se busca el percentil 85 ($P_{85}$). Para un área acumulada de $0,85$, el valor estandarizado $Z \approx 1,04$.


* Se despeja el valor de $X$:

$$X = \mu + (Z \cdot \sigma) = 0,45 + (1,04 \cdot 0,06) = 0,45 + 0,0624 = 0,5124\text{ segundos}$$



* **Respuesta:** El tiempo de respuesta es de **$0,5124\text{ segundos}$**.







## 📦 Problema 2: Control de Calidad y Peso en Cajas de Calzado

### 📝 Enunciado

Tras quejas de clientes por cajas que contenían un zapato menos, se implementó un control por peso con un punto de corte de $350\text{ g}$. El lote de prueba consistió en:

* $40\%$ ($0,40$) de cajas completas.


* $60\%$ ($0,60$) de cajas incompletas (con un solo zapato).


* El $15\%$ de las cajas completas y el $10\%$ de las incompletas fueron clasificadas erróneamente en la revisión.





### 🧮 Resolución y Procedimientos

#### 📌 a) ¿Qué porcentaje de cajas fueron clasificadas correctamente con el nuevo sistema?

* **Concepto:** Una caja completa se considera clasificada correctamente si pesa $\ge 350\text{ g}$ (no se revisa inútilmente, $1 - 0,15 = 0,85$). Una caja incompleta se clasifica correctamente si pesa $< 350\text{ g}$ (es detectada y revisada, $1 - 0,10 = 0,90$).


* **Cálculo de aciertos:**

$$\text{Correctas Completas} = 0,40 \times (1 - 0,15) = 0,40 \times 0,85 = 0,34$$



$$\text{Correctas Incompletas} = 0,60 \times (1 - 0,10) = 0,60 \times 0,90 = 0,54$$



$$\text{Total Correctas} = 0,34 + 0,54 = 0,88$$



* **Respuesta:** El **$88\%$** de las cajas fueron clasificadas correctamente.



#### 📌 b) Si una caja tiene un peso inferior al punto de corte, ¿cuál es la probabilidad de que esté incompleta?

* **Concepto:** Se aplica el Teorema de Bayes para calcular la probabilidad condicional de que la caja esté incompleta dado que su peso resultó inferior al punto de corte (es decir, fue derivada a revisión).


* **Cálculo:**
* Probabilidad de peso inferior al corte (enviada a revisión):

$$P(\text{Revisión}) = (0,40 \times 0,15) + (0,60 \times 0,90) = 0,06 + 0,54 = 0,60$$



* Intersección (incompleta y con peso inferior al corte): $0,60 \times 0,90 = 0,54$

* Aplicando Bayes:

$$P(\text{Incompleta} \mid \text{Revisión}) = \frac{0,54}{0,60} = 0,90$$





* **Respuesta:** La probabilidad es del **$90\%$**.
