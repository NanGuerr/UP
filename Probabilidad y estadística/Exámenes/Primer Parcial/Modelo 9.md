# 📊 Examen Parcial - Probabilidad y Estadística (Tema M2)


## 📱 Ejercicio 1: Probabilidad de Eventos y Conjuntos

Una cadena de artículos de electrónica está analizando los productos comprados en *Hot Sale* y *Black Friday*. Por las experiencias anteriores sabe que:
* El $65\%$ compra celulares: $P(C) = 0.65$
* De los que compran celulares, el $40\%$ también compra notebooks: $P(N \mid C) = 0.40$
* El $13\%$ no compra ninguno de estos dos productos: $P((C \cup N)^c) = 0.13$



### 🔍 Procedimiento Detallado

1. **Determinación de Probabilidades Intermedias:**
   * Probabilidad de comprar celulares y notebooks ($C \cap N$):
     $$P(C \cap N) = P(C) \cdot P(N \mid C) = 0.65 	imes 0.40 = 0.26$$
   * Probabilidad de la unión ($C \cup N$):
     $$P(C \cup N) = 1 - P((C \cup N)^c) = 1 - 0.13 = 0.87$$
   * Probabilidad general de comprar notebook ($P(N)$):
     $$P(C \cup N) = P(C) + P(N) - P(C \cap N)$$
     $$0.87 = 0.65 + P(N) - 0.26 \implies P(N) = 0.87 - 0.39 = 0.48$$



### 💡 Preguntas y Soluciones

#### a) ¿Qué porcentaje de clientes compra solo celulares?
* **Análisis:** "Solo celulares" corresponde al evento $C \cap N^c$ (compra celular y no compra notebook).
* **Cálculo:**
  $$P(	ext{Solo } C) = P(C) - P(C \cap N) = 0.65 - 0.26 = 0.39$$

> **Respuesta:** El **$39\%$** de los clientes compra únicamente celulares.



#### b) Si un cliente compró una notebook, ¿cuál es la probabilidad de que no compre un celular?
* **Análisis:** Se busca la probabilidad condicional de no comprar celular dado que compró notebook: $P(C^c \mid N)$.
* **Cálculo:**
  $$P(C^c \mid N) = 1 - P(C \mid N) = 1 - \frac{P(C \cap N)}{P(N)}$$
  $$P(C \mid N) = \frac{0.26}{0.48} = \frac{13}{24}  pprox 0.5417$$
  $$P(C^c \mid N) = 1 - 0.5417 = 0.4583$$

> **Respuesta:** La probabilidad de que no compre un celular sabiendo que compró una notebook es de **$0.4583$** (o **$45.83\%$**).



## 💻 Ejercicio 2: Estadística Descriptiva y Medidas Muestrales

La cadena de electrónica está evaluando las ventas de notebooks realizadas con las ofertas de *Hot Sale*, *Cyber Monday* y *Black Friday*. Tomó una muestra aleatoria de $n = 20$ ofertas de notebooks obteniendo los siguientes resultados en unidades:

$$ ar{x} = 247.4 \quad Me = 240.6 \quad Ma = 235.9 \quad s = 92.8 \quad P_{10} = 126 \quad P_{90} = 349$$



### 🔍 Procedimiento y Solución

#### a) Definición, Clasificación y Escala de la Variable
* **Variable ($X$):** Cantidad de unidades de notebooks vendidas en una oferta durante los eventos *Hot Sale*, *Cyber Monday* y *Black Friday*.
* **Clasificación:** Cuantitativa discreta.
* **Escala de Medición:** Escala de razón (o de proporción), ya que posee un cero absoluto con significado de ausencia total de ventas.



#### b) Interpretación de la Frecuencia Absoluta Acumulada
* **Dato dado:** $FAA = 5$ en el intervalo $[220, 250)$.
* **Interpretación:** Existen **5 ofertas de notebooks** de la muestra cuyas ventas acumuladas alcanzaron un valor inferior a $250$ unidades (límite superior del intervalo).



#### c) ¿La cantidad promedio de notebooks vendidas es representativa?
* **Análisis:** Para determinar la representatividad de la media ($ ar{x} = 247.4$), se calcula el Coeficiente de Variación ($CV$):
  
  $$CV = \ left( \frac{s}{\bar{x}} \ right) \times 100\% = \ left( \frac{92.8}{247.4} \ right) \times 100\% \approx 37.51\%$$
* **Criterio de Representatividad:** Por convención estadística, una media es representativa si $CV \le 15\%$ o $CV \le 25\%$ (según el estándar exigido). Un $CV$ de $37.51\%$ superará ampliamente los límites habituales de homogeneidad.

> **Respuesta:** **FALSO.** La media muestral no es representativa de los datos debido a la alta dispersión relativa ($CV = 37.51\% > 25\%$).



#### d) "Solo en el 10% de las ofertas las ventas de Notebooks fueron inferiores a 349 unidades"
* **Análisis:** El dato muestra que el percentil 90 es $P_{90} = 349$. Por definición de percentil, el $90\%$ de las observaciones se encuentran por debajo o son iguales a 349 unidades, y solo el $10\%$ supera dicho valor.
* **Evaluación:** Afirmar que "solo el $10\%$ fue inferior" contradice la propiedad fundamental de $P_{90}$ (que acumula el $90\%$).

> **Respuesta:** **FALSO.** El $90\%$ de las ofertas tuvo ventas inferiores a $349$ unidades, mientras que solo el $10\%$ superó las $349$ unidades.



## 🛍️ Ejercicio 3: Transformación de Variables Aleatorias y Análisis de Ingresos

En el último *Hot Sale*, la casa de electrónica ofreció un descuento del $30\%$ en los celulares y vendió $n = 182$ celulares en CABA.
* El precio original de lista $P$ (sin descuento) es una variable aleatoria con:
  * Esperanza: $E(P) = \$480	ext{ mil} = \$480,000$
  * Desviación Estándar: $\sigma_P = \$160	ext{ mil} = \$160,000$
* La empresa cobra un costo fijo de envío de $\$4,500$ por cada entrega a CABA.
* Se requiere analizar la variable $X$: *Ingreso total de la empresa por la venta de celulares en CABA*.



### 🔍 Procedimiento Detallado

1. **Definición de la Función de Ingreso por Unidad ($I_{unit}$):**
   Con el $30\%$ de descuento, el cliente paga el $70\%$ del precio ($0.70 P$). Sumando el costo de envío, el ingreso por cada celular vendido es:
   $$I_{unit} = 0.70 P + 4,500$$

2. **Definición de la Variable Ingreso Total ($X$):**
   Para $182$ celulares vendidos:
   $$X = 182 \cdot I_{unit} = 182(0.70 P + 4,500) = 127.4 P + 819,000$$

3. **Cálculo de la Media o Esperanza de $X$ ($E(X)$):**
   $$E(X) = E(127.4 P + 819,000) = 127.4 \cdot E(P) + 819,000$$
   $$E(X) = 127.4 	imes 480,000 + 819,000 = 61,152,000 + 819,000 = 61,971,000$$

4. **Cálculo de la Varianza y Desviación Estándar de $X$ ($\sigma_X$):**
   $$	ext{Var}(X) = 	ext{Var}(127.4 P + 819,000) = (127.4)^2 \cdot 	ext{Var}(P)$$
   $$\sigma_X = \sqrt{	ext{Var}(X)} = 127.4 \cdot \sigma_P$$
   $$\sigma_X = 127.4 	imes 160,000 = 20,384,000$$



### 💡 Respuestas

> **Media de Ingresos $E(X)$:** **$\$61,971,000$** (o **$\$61.971	ext{ millones}$**)  
> **Desviación Estándar de Ingresos $\sigma_X$:** **$\$20,384,000$** (o **$\$20.384	ext{ millones}$**)



## 🚚 Ejercicio 4: Distribuciones de Probabilidad (Normal, Binomial y Poisson)

El tiempo de entrega $T$ de los productos comprados en *Hot Sale* tiene una media de $\mu = 4.7	ext{ días}$ y una desviación estándar de $\sigma = 1.4	ext{ días}$. Asumiendo distribución Normal $T \sim N(\mu = 4.7, \sigma = 1.4)$:



### 🔍 Procedimiento y Solución

#### a) ¿Cuántos días se tardó como mínimo el 20% de los envíos que más se demoraron?
* **Análisis:** El $20\%$ de los envíos más demorados se ubica en la cola superior derecha de la distribución. Buscamos un valor $t_0$ tal que $P(T > t_0) = 0.20$, equivalente a $P(T \le t_0) = 0.80$.
* **Cálculo de Z:**
  En la tabla de la Distribución Normal Estándar, el valor $z$ correspondiente a un área acumulada de $0.80$ es $z_0  pprox 0.8416$.
* **Despeje de $t_0$:**
  $$z_0 = \frac{t_0 - \mu}{\sigma} \implies 0.8416 = \frac{t_0 - 4.7}{1.4}$$
  $$t_0 = 4.7 + 0.8416 	imes 1.4 = 4.7 + 1.1782 = 5.8782	ext{ días}$$

> **Respuesta:** El $20\%$ de los envíos que más tardaron demoró como mínimo **$5.88	ext{ días}$** (aproximadamente $5	ext{ días y } 21	ext{ horas}$).



#### b) En 20 entregas, ¿cuál es la probabilidad de que menos de 10 se realicen en más de 5 días?
* **Paso 1: Probabilidad individual ($p$) de que un envío tarde más de 5 días:**

$$P(T > 5) = P \ left(Z > \frac{5 - 4.7}{1.4} \ right = P \ left(Z > \frac{0.3}{1.4} \ right  aprox P(Z > 0.2143)$$
  
  $$\Phi(0.2143)  aprox 0.5848 \implies p = 1 - 0.5848 = 0.4152$$

* **Paso 2: Modelo Binomial para $n = 20$ entregas:**
  Sea $Y$: *Número de entregas que tardan más de 5 días*.  
  $$Y \sim 	ext{Binomial}(n = 20, p = 0.4152)$$
  Se pide calcular $P(Y < 10) = P(Y \le 9)$.

* **Cálculo de la Suma Acumulada Binomial:**
  $$P(Y \le 9) = \sum_{k=0}^{9}  inom{20}{k} (0.4152)^k (0.5848)^{20-k}  pprox 0.7073$$

> **Respuesta:** La probabilidad de que menos de 10 entregas se demoren más de 5 días es de **$0.7073$** (o **$70.73\%$**).



#### c) Manuela realiza en promedio 7 entregas por hora. ¿Cuál es la probabilidad de que entre las 8:30 hs y las 13:00 hs pueda realizar más de 30 entregas?
* **Paso 1: Determinar la tasa media ($\lambda$) en el intervalo de tiempo:**
  * Intervalo entre las 8:30 hs y las 13:00 hs: $t = 4.5	ext{ horas}$.
  * Promedio de entregas por hora: $\mu_{hora} = 7$.
  * Tasa del intervalo ($\lambda$):
    $$\lambda = 7 	ext{ entregas/hora} 	imes 4.5 	ext{ horas} = 31.5 	ext{ entregas}$$

* **Paso 2: Modelo de Poisson:**
  Sea $W$: *Número de entregas realizadas en $4.5$ horas*.  
  $$W \sim 	ext{Poisson}(\lambda = 31.5)$$
  Se pide calcular $P(W > 30) = 1 - P(W \le 30)$.

* **Aproximación por Distribución Normal (dado que $\lambda = 31.5 > 10$):**
  $$W  pprox N(\mu = 31.5, \sigma = \sqrt{31.5}  pprox 5.6125)$$
  Aplicando corrección por continuidad:
  $$P(W > 30) = P(W \ge 30.5) = P \ left(Z \ge \ frac{30.5 - 31.5}{5.6125} \r ight = P \ left(Z \ge \frac{-1.0}{5.6125} \ right$$
  $$P(Z \ge -0.1782) = \Phi(0.1782)  pprox 0.5707$$

> **Respuesta:** La probabilidad de que Manuela realice más de 30 entregas en ese lapso de tiempo es aproximadamente **$0.5707$** (o **$57.07\%$**).



## ✏️ Ejercicio 5: Preguntas Teóricas y Completamiento

Completar sobre la línea punteada, justificando la respuesta y/o realizando los cálculos necesarios:



### 🔍 Procedimiento y Solución

#### a) Un embarque de 22 televisores contiene 8 defectuosos. Se toma una muestra de 3 televisores y se considera la v.a. $X$: *Cantidad de televisores defectuosos en la muestra de 3*. Calcular $P(X=1)$.

* **Modelo Probabilístico:** Distribución Hipergeométrica.
  * Tamaño de la población ($N$): $22$
  * Éxitos en la población ($K$): $8$ defectuosos
  * Fracasos en la población ($N-K$): $14$ no defectuosos
  * Tamaño de la muestra ($n$): $3$

* **Fórmula e Identificación:**
  $$P(X = k) = \frac{ inom{K}{k}  inom{N-K}{n-k}}{ inom{N}{n}}$$
  $$P(X = 1) = \frac{ inom{8}{1}  inom{14}{2}}{ inom{22}{3}}$$

* **Desarrollo Numérico de Combinatorias:**
  $$ inom{8}{1} = 8$$
  $$ inom{14}{2} = \frac{14 	imes 13}{2 	imes 1} = 91$$
  $$ inom{22}{3} = \frac{22 	imes 21 	imes 20}{3 	imes 2 	imes 1} = 1540$$
  $$P(X = 1) = \frac{8 	imes 91}{1540} = \frac{728}{1540}  pprox 0.4727$$

> **Resultado:**  
> Entonces $P(X=1) =$ **$\frac{728}{1540}  pprox 0.4727$** (o **$47.27\%$**).



#### b) Si $P(A \cup B) = 1$, entonces los sucesos $A$ y $B$ son...

* **Análisis Teórico:**
  Cuando la unión de dos eventos $A$ y $B$ cubre la totalidad del espacio muestral $S$ (es decir, $P(A \cup B) = 1$), se dice formalmente que los eventos son **colectivamente exhaustivos**.
  *(Nota: Si además fueran mutuamente excluyentes, conformarían una partición del espacio muestral, pero la condición $P(A \cup B) = 1$ define primariamente la exhaustividad).*

> **Resultado:**  
> Si $P(A \cup B) = 1$, entonces los sucesos $A$ y $B$ son **colectivamente exhaustivos** (o exhaustivos).
