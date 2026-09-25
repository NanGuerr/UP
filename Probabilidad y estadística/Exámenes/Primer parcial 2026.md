# 📊 Resolución de Problemas de Probabilidad y Estadística

---

## 🤖 Contexto y Datos Iniciales
* **Empresa:** Implementación de asistencia con IA para usuarios.
* **Uso esperado:** Se espera que el **35%** de los usuarios utilice las sugerencias de la IA.

---
# Prgunta 1
## Inciso A: Modelo Binomial 📈

### Paso 1. Identificación del tema
Se aplica un modelo de **Distribución Binomial** $X \sim \text{Bi}(n, p)$. Este modelo analiza un número fijo y conocido de ensayos independientes $n$, donde cada usuario puede presentar solo dos resultados posibles ("éxito" o "fracaso") con una probabilidad constante $p$.

### Paso 2. Desarrollo paso a paso
* **Definición de la variable aleatoria ($X$):** $X =$ Cantidad de usuarios (de un total de 26) que **no** utilizan la asistencia con IA.
* **Parámetros de la distribución:**
  * **Tamaño de la muestra ($n$):** $26$ usuarios.
  * **Probabilidad de "éxito" ($p$):** Probabilidad de **no** usar la asistencia. Si el 35% sí la utiliza ($0,35$), entonces el porcentaje que no la utiliza es $p = 1 - 0,35 = 0,65$.
  * **Probabilidad de "fracaso" ($q = 1 - p$):** $0,35$.

**Identificación de lo que se debe calcular:**
Se solicita la probabilidad de que "al menos 10 no usen la asistencia", lo cual se expresa simbólicamente como la probabilidad acumulada $P(X \ge 10)$.

**Planteo probabilístico y desarrollo numérico:**
Utilizando la propiedad del complemento:

$$P(X \ge 10) = 1 - P(X \le 9) = 1 - \sum_{k=0}^{9} \binom{26}{k} (0,65)^k (0,35)^{26-k}$$

Calculando la probabilidad acumulada para $k \le 9$ con $n = 26$ y $p = 0,65$:

$$P(X \le 9) \approx 0,00224$$

$$P(X \ge 10) = 1 - 0,00224 = 0,99776$$

### Paso 3. Resultado final
* **Qué se debe calcular:** $P(X \ge 10)$ donde $X$ se define sobre los usuarios que no usan la asistencia.
* **Parámetros usados:** $n = 26$ y $p = 0,65$ ($X \sim \text{Bi}(26; 0,65)$).
* **Resultado numérico:** $P(X \ge 10) = 0,9978$ (equivalente al **99,78%**).

---

## ⏱️ Inciso B: Modelo de Poisson

### Paso 1. Identificación del tema
Se aplica un modelo de **Distribución de Poisson**. El modelo cuenta el número de eventos independientes que ocurren a una tasa constante dentro de un intervalo continuo (en este caso, el tiempo).

### Paso 2. Desarrollo paso a paso
* **Definición de la variable aleatoria ($X$):** $X =$ Cantidad de veces que se utiliza la asistencia con IA en un lapso de 2 horas.
* **Ajuste y parámetros de la distribución:**
  * **Tasa de ocurrencia original:** $3$ usos cada $40$ minutos.
  * **Extensión del continuo ($t$):** $2 \text{ horas} = 120 \text{ minutos}$.
  * **Parámetro Lambda ($\lambda$):**

$$\lambda = 3 \text{ usos} \times \frac{120 \text{ minutos}}{40 \text{ minutos}} = 9 \text{ usos en 2 horas}$$

Por lo tanto, la variable sigue un modelo $X \sim \text{Po}(\lambda = 9)$.

**Identificación de lo que se debe calcular:**
Se debe calcular la probabilidad de que la asistencia se use "entre 5 y 8 veces" (interpretado como el intervalo inclusivo): 

$$P(5 \le X \le 8) = P(X=5) + P(X=6) + P(X=7) + P(X=8)$$

**Desarrollo numérico explícito** (usando $P_{\text{Po}}(X=r) = \frac{e^{-\lambda} \lambda^r}{r!}$):

* $P(X=5) = \frac{e^{-9} \cdot 9^5}{5!} = \frac{0,00012341 \cdot 59049}{120} \approx 0,06073$
* $P(X=6) = \frac{e^{-9} \cdot 9^6}{6!} = \frac{0,00012341 \cdot 531441}{720} \approx 0,09109$
* $P(X=7) = \frac{e^{-9} \cdot 9^7}{7!} = \frac{0,00012341 \cdot 4782969}{5040} \approx 0,11712$
* $P(X=8) = \frac{e^{-9} \cdot 9^8}{8!} = \frac{0,00012341 \cdot 43046721}{40320} \approx 0,13176$

**Suma total:** 

$$P(5 \le X \le 8) = 0,06073 + 0,09109 + 0,11712 + 0,13176 = 0,40070$$

### Paso 3. Resultado final
* **Qué se debe calcular:** $P(5 \le X \le 8)$ (Probabilidad acumulada en el intervalo de 5 a 8 inclusive).
* **Parámetros usados:** $\lambda = 9$ usos por cada intervalo de 2 horas.
* **Resultado numérico:** $P(5 \le X \le 8) = 0,4007$ (equivalente al **40,07%**).

---

## 📉 Inciso C: Distribución Normal y Percentiles

### Paso 1. Identificación del tema
Se aplica el modelo de **Distribución Normal** $X \sim N(\mu, \sigma^2)$ y las propiedades conceptuales de los Percentiles ($P_k$) sobre variables aleatorias continuas.

### Paso 2. Desarrollo paso a paso
* **Definición de la variable aleatoria ($X$):** $X =$ Tiempo necesario para generar una sugerencia en segundos, con distribución normal de media $\mu = 2,8$ segundos.
* **Análisis conceptual del percentil 30 ($P_{30}$):**
  * La definición formal de un percentil $P_k$ indica que el valor $x_k$ acumula una probabilidad o área a la izquierda equivalente a $k/100$: $P(X \le x_{30}) = 0,30$.
  * La distribución normal es una curva estrictamente simétrica respecto de su media ($\mu$), alcanzando en ella su punto máximo.
  * Dado que el área total bajo la curva normal es igual a $1$, la media divide la probabilidad exactamente en dos mitades iguales de $0,50$ cada una: 

$$P(X < \mu) = 0,50$$

Al requerir un valor que acumule únicamente un área de $0,30$ ($30\%$ ), como $0,30 < 0,50$, la puntuación $Z$ estandarizada asociada será necesariamente negativa ($Z < 0$). Por consiguiente, dicho valor $x$ debe ubicarse en la cola izquierda del gráfico respecto al centro.

### Paso 3. Resultado final
* **Respuesta:** El valor del percentil 30 ($P_{30} = x_{0,30}$) debe ser **MENOR** a la media ($\mu = 2,8$ segundos).
* **Fundamentación:** Por simetría de la distribución normal, la media $\mu$ deja acumulado a su izquierda el $50\%$ del área total ($P(X < \mu) = 0,50$). Dado que el percentil $30$ acumula un área del $30\%$ ($0,30$), la cual es menor al $50\%$, el valor $x_{0,30}$ se sitúa obligatoriamente a la izquierda de la media en la variable aleatoria continua.

=============================
# Pregunta 2

## 2. Identificación del tema
El ejercicio requiere representar un espacio muestral dividido por un método de pago y un monto de compra. Se aplica:   

* **Definición de sucesos y tabla de contingencia de probabilidades** para organizar la interacción entre los distintos medios de pago y el nivel de monto abonado.   
* **Probabilidad Total** para determinar la probabilidad marginal del monto de compra.   
* **Probabilidad Condicional y Teorema de Bayes** para calcular la probabilidad a posteriori de un medio de pago dado el monto de la compra.   
* **Evaluación de Sucesos Exhaustivos y Mutuamente Excluyentes** aplicando la regla de la suma y los axiomas de Kolmogorov.   

---

## 📝 Paso 2. Desarrollo paso a paso

### Definición simbólica de sucesos:
**Medios de pago (Partición del espacio muestral):**
* $TDC$: La compra se abona con Tarjeta de Crédito.   
* $TR$: La compra se abona con Transferencia Bancaria.   
* $BV$: La compra se abona con Billetera Virtual.   

**Monto de la compra:**
* $S$: La compra supera los $\$250.000$ ($> 250.000$).   
* $\bar{S}$: La compra no supera los $\$250.000$ ($\le 250.000$).   

### Planteo simbólico de los datos iniciales:
Probabilidades marginales de los medios de pago:
* $P(TDC) = 0,45$
* $P(TR) = 0,20$

Como el resto es con billetera virtual y forman un sistema completo de sucesos ($P(TDC) + P(TR) + P(BV) = 1$):   
$$P(BV) = 1 - (0,45 + 0,20) = 0,35$$

Probabilidades condicionadas del monto según el medio de pago:
* En $TDC$, el $40\%$ supera los $\$250.000$: $P(S \mid TDC) = 0,40 \implies P(\bar{S} \mid TDC) = 1 - 0,40 = 0,60$.   
* En transferencia bancaria, el $12\%$ ($0,12$) supera los $\$250.000$: $P(S \mid TR) = 0,12 \implies P(\bar{S} \mid TR) = 1 - 0,12 = 0,88$.   
* En billetera virtual, el $60\%$ no superó los $\$250.000$: $P(\bar{S} \mid BV) = 0,60 \implies P(S \mid BV) = 1 - 0,60 = 0,40$.   

---

### 📊 Inciso A) Realización de la tabla de contingencia de probabilidades
Para construir la tabla de contingencia, calculamos las probabilidades conjuntas (intersecciones) mediante la Regla del Producto: $\left( P(A \cap B) = P(A) \cdot P(B \mid A) \right)$.   

* **Para Tarjeta de Crédito ($TDC$):**
  * $P(TDC \cap S) = P(TDC) \cdot P(S \mid TDC) = 0,45 \cdot 0,40 = 0,180$
  * $P(TDC \cap \bar{S}) = P(TDC) \cdot P(\bar{S} \mid TDC) = 0,45 \cdot 0,60 = 0,270$

* **Para Transferencia Bancaria ($TR$):**
  * $P(TR \cap S) = P(TR) \cdot P(S \mid TR) = 0,20 \cdot 0,12 = 0,024$
  * $P(TR \cap \bar{S}) = P(TR) \cdot P(\bar{S} \mid TR) = 0,20 \cdot 0,88 = 0,176$

* **Para Billetera Virtual ($BV$):**
  * $P(BV \cap S) = P(BV) \cdot P(S \mid BV) = 0,35 \cdot 0,40 = 0,140$
  * $P(BV \cap \bar{S}) = P(BV) \cdot P(\bar{S} \mid BV) = 0,35 \cdot 0,60 = 0,210$

* **Totales marginales por monto (Teorema de la Probabilidad Total):**
  * $P(S) = P(TDC \cap S) + P(TR \cap S) + P(BV \cap S) = 0,180 + 0,024 + 0,140 = 0,344$
  * $P(\bar{S}) = P(TDC \cap \bar{S}) + P(TR \cap \bar{S}) + P(BV \cap \bar{S}) = 0,270 + 0,176 + 0,210 = 0,656$

#### Tabla de Contingencia (Probabilidades)

| Monto / Medio de Pago | TDC | Transferencia (TR) | Billetera Virtual (BV) | Total |
| :--- | :---: | :---: | :---: | :---: |
| **Supera $\$250.000$ ($S$)** | $0,180$ | $0,024$ | $0,140$ | **$0,344$** |
| **No supera $\$250.000$ ($\bar{S}$)** | $0,270$ | $0,176$ | $0,210$ | **$0,656$** |
| **Total** | **$0,450$** | **$0,200$** | **$0,350$** | **$1,000$** |

---

### 💳 Inciso B) Probabilidad de que la compra se haya abonado con TDC si el monto supera los $\$250.000$
Se pide la probabilidad condicional inversa: $P(TDC \mid S)$.   

Aplicando la fórmula de Probabilidad Condicional / Teorema de Bayes:   
$$P(TDC \mid S) = \frac{P(TDC \cap S)}{P(S)}$$

Sustituyendo los valores previamente calculados de la tabla de contingencia:   
* $P(TDC \cap S) = 0,180$
* $P(S) = 0,344$

$$P(TDC \mid S) = \frac{0,180}{0,344} = \frac{45}{86} \approx 0,523256$$

Es decir, aproximadamente un **$52,33\%$**.

---

### 🧮 Inciso C) Evaluación de si los sucesos "pagar con Transferencia Bancaria" ($TR$) y "que el monto no supere los $\$250.000$" ($\bar{S}$) son exhaustivos y cálculo correspondiente

**Justificación teórica:**
Según la teoría del apunte, dos sucesos $A$ y $B$ son mutuamente exhaustivos si su unión conforma la totalidad del espacio muestral, es decir, $A \cup B = U$, lo cual implica axiomáticamente que $P(A \cup B) = 1$.   

**Planteo simbólico y cálculo:**
Para verificar si $TR$ y $\bar{S}$ son exhaustivos, calculamos $P(TR \cup \bar{S})$ utilizando la Regla de la Suma:   
$$P(TR \cup \bar{S}) = P(TR) + P(\bar{S}) - P(TR \cap \bar{S})$$

Sustituyendo los datos:   
* $P(TR) = 0,200$
* $P(\bar{S}) = 0,656$
* $P(TR \cap \bar{S}) = 0,176$

$$P(TR \cup \bar{S}) = 0,200 + 0,656 - 0,176 = 0,680$$

**Conclusión analítica:**
Dado que $P(TR \cup \bar{S}) = 0,680 \neq 1$, **los sucesos no son mutuamente exhaustivos**, pues su unión no cubre la totalidad del espacio muestral (existen compras con $TDC$ o $BV$ que superan los $\$250.000$, las cuales no pertenecen ni a $TR$ ni a $\bar{S}$).   

---

## ✅ Paso 3. Resultado final

* **A)** La tabla de contingencia completa queda definida por los valores de probabilidad conjunta:   
  * $P(TDC \cap S) = 0,180$, $P(TDC \cap \bar{S}) = 0,270$
  * $P(TR \cap S) = 0,024$, $P(TR \cap \bar{S}) = 0,176$
  * $P(BV \cap S) = 0,140$, $P(BV \cap \bar{S}) = 0,210$
  * Totales marginales: $P(S) = 0,344$ y $P(\bar{S}) = 0,656$.   

* **B)** La probabilidad de que una compra que superó los $\$250.000$ haya sido abonada con tarjeta de crédito es $P(TDC \mid S) = \frac{0,180}{0,344} \approx \mathbf{0,5233}$ ($52,33\%$).   

* **C)** Los sucesos pagar con transferencia bancaria ($TR$) y que el monto no supere los $\$250.000$ ($\bar{S}$) **NO** son exhaustivos, dado que $P(TR \cup \bar{S}) = 0,680 \neq 1$.

Aquí tienes un completamiento y resolución detallada de un ejercicio completo basado en el contexto de rendimiento de conexiones para copias de seguridad en la nube, modelado mediante una **Distribución Normal**.

---

# ☁️ Análisis de Rendimiento de Conexión para Copias de Seguridad en la Nube

Se analiza el rendimiento de una conexión para copias de seguridad de grandes volúmenes de información hacia un servidor en la nube. Tras registrar múltiples muestras, se determina que la velocidad de transferencia obtenida $X$ (medida en $\text{MB/s}$) sigue una **Distribución Normal** con una velocidad media $\mu = 50\text{ MB/s}$ y una desviación estándar $\sigma = 8\text{ MB/s}$.

---

## Pregunta 3

* **A)** ¿Cuál es la probabilidad de que la velocidad de transferencia en una copia de seguridad elegida al azar sea superior a $60\text{ MB/s}$?
* **B)** ¿Cuál es la probabilidad de que la velocidad de transferencia se encuentre entre $40\text{ MB/s}$ y $55\text{ MB/s}$?
* **C)** ¿Cuál debe ser la velocidad mínima de transferencia para pertenecer al $10\%$ de las conexiones más rápidas (es decir, el percentil $90$)?

---

## 📝 Desarrollo y Resolución Paso a Paso

Para resolver este ejercicio utilizando variables aleatorias continuas con distribución normal $X \sim N(\mu, \sigma^2)$, realizamos la tipificación a la variable estandarizada $Z$ mediante la fórmula:

$$Z = \frac{X - \mu}{\sigma} = \frac{X - 50}{8}$$

---

### 🚀 Inciso A) Probabilidad de que la velocidad supere los $60\text{ MB/s}$

Buscamos la probabilidad $P(X > 60)$:

1. **Tipificamos el valor:**

$$Z = \frac{60 - 50}{8} = \frac{10}{8} = 1,25$$


2. **Calculamos la probabilidad complementaria usando la tabla de la distribución normal estándar ($N(0,1)$):**

$$P(X > 60) = P(Z > 1,25) = 1 - P(Z \le 1,25)$$


3. **Sustituyendo el valor de la tabla ($\Phi(1,25) \approx 0,8944$):**

$$P(X > 60) = 1 - 0,8944 = 0,1056$$



* **Resultado A:** La probabilidad de que una copia de seguridad supere los $60\text{ MB/s}$ es de **$0,1056$** (aproximadamente **$10,56\%$**).

---

### 📊 Inciso B) Probabilidad de que la velocidad esté entre $40\text{ MB/s}$ y $55\text{ MB/s}$

Buscamos la probabilidad $P(40 < X < 55)$:

1. **Tipificamos ambos límites:**
* Para $X_1 = 40$:

$$Z_1 = \frac{40 - 50}{8} = \frac{-10}{8} = -1,25$$


* Para $X_2 = 55$:

$$Z_2 = \frac{55 - 50}{8} = \frac{5}{8} = 0,625 \approx 0,63$$




2. **Planteamos la probabilidad como la diferencia de áreas:**

$$P(40 < X < 55) = P(-1,25 < Z < 0,63) = P(Z < 0,63) - P(Z < -1,25)$$


3. **Evaluando en la distribución normal estándar:**
* $P(Z < 0,63) \approx 0,7357$
* $P(Z < -1,25) = 1 - P(Z < 1,25) = 1 - 0,8944 = 0,1056$


4. **Cálculo final:**

$$P(40 < X < 55) = 0,7357 - 0,1056 = 0,6301$$



* **Resultado B:** La probabilidad de que la velocidad de transferencia se mantenga en ese rango es de **$0,6301$** (aproximadamente **$63,01\%$**).

---

### ⚡ Inciso C) Velocidad mínima para pertenecer al $10\%$ de las conexiones más rápidas

Buscamos el valor de $x$ (percentil $90$) tal que la probabilidad acumulada sea de $0,90$:


$$P(X \le x_{90}) = 0,90$$

1. **Identificamos el valor crítico $Z$ para una acumulación del $90\%$ ($0,90$):**
De la tabla de la normal estándar, el valor de $Z$ que acumula $0,90$ es aproximadamente:

$$z_{90} \approx 1,28$$


2. **Despejamos $x$ de la fórmula de tipificación:**

$$x_{90} = \mu + (z_{90} \cdot \sigma)$$


3. **Sustituimos los datos del problema:**

$$x_{90} = 50 + (1,28 \cdot 8) = 50 + 10,24 = 60,24\text{ MB/s}$$



* **Resultado C:** La velocidad mínima requerida para formar parte del $10\%$ de las conexiones más veloces es de **$60,24\text{ MB/s}$**.
