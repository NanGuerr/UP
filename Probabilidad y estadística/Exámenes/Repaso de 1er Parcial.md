# 📚 Guía Resolutiva para el Primer Examen Parcial

Este documento presenta la resolución completa, detallada y descriptiva de la guía de **Ejercicios Prácticos de Repaso para el Primer Examen Parcial**.



## 📊 Ejercicio 1: Estadística Descriptiva y Clasificación de Variables

### 📝 Enunciado
Una empresa de seguridad informática registró los tiempos de respuesta (en segundos) que demoraron sus sistemas en detectar y bloquear ataques DDoS en los últimos 90 días. El resumen de datos es:
* **Media ($\bar{X}$):** $18{,}2 \text{ segundos}$
* **Mediana ($\text{Me}$):** $15{,}5 \text{ segundos}$
* **Moda ($\text{Mo}$):** $12 \text{ segundos}$
* **Desviación Estándar ($s$):** $7{,}6 \text{ segundos}$
* **Percentil 20 ($P_{20}$):** $9{,}7 \text{ segundos}$
* **Percentil 25 ($P_{25}$):** $11{,}2 \text{ segundos}$
* **Percentil 75 ($P_{75}$):** $22{,}8 \text{ segundos}$
* **Percentil 80 ($P_{80}$):** $26 \text{ segundos}$



### 🔍 Resolución Paso a Paso

#### **a) Determinar y clasificar la variable de estudio**
* **Variable ($X$):** Tiempo de respuesta (en segundos) que demoran los sistemas en detectar y bloquear ataques DDoS.
* **Clasificación de la variable:** 
  * **Por su naturaleza:** Cuantitativa continua (el tiempo puede tomar cualquier valor real positivo).
  * **Por su escala de medición:** Escala de razón (existe un cero absoluto representativo de la ausencia de tiempo).

#### **b) Análisis e interpretación de los datos descriptivos**
Completamos las oraciones de forma justificada:

1. **Representatividad de la Media:**
   Para evaluar si la media aritmética es representativa, calculamos el **Coeficiente de Variación ($\text{CV}$)**:
   $$\text{CV} = \frac{s}{\bar{X}} = \frac{7{,}6}{18{,}2} \approx 0{,}4176 \implies 41{,}76\%$$
   * **Conclusión:** Como $\text{CV} = 41{,}76\% > 20\%$, la dispersión relativa es alta. Por lo tanto, la media **no es representativa**.

2. **Interpretación del Percentil 75 ($P_{75}$):**
   * El $75\%$ de los ataques fueron bloqueados en menos de **$22{,}8 \text{ segundos}$**.

3. **Interpretación del Percentil 80 ($P_{80}$):**
   * El percentil 80 indica que el $80\%$ de las observaciones están por debajo de $26 \text{ segundos}$, lo que equivale a afirmar que **sólo el $20\%$ de los ataques tardaron más de $26 \text{ segundos}$** en ser detectados.

4. **Forma de la Distribución (Asimetría):**
   Comparando las medidas de posición central:
   $$\bar{X} = 18{,}2 > \text{Me} = 15{,}5 > \text{Mo} = 12$$
   * **Conclusión:** Como la media es mayor que la mediana ($\bar{X} > \text{Me}$), la distribución presenta una **asimetría positiva** (o sesgada a la derecha).



## 🛡️ Ejercicio 2: Probabilidad Condicional y Teorema de Bayes

### 📝 Enunciado
Un sistema antivirus clasifica a los usuarios en tres perfiles:
* **Administradores ($A$):** $20\%$ del total ($P(A) = 0{,}20$).
* **Usuarios Regulares ($R$):** $60\%$ del total ($P(R) = 0{,}60$).
* **Usuarios Invitados ($I$):** $20\%$ del total ($P(I) = 0{,}20$).

Las probabilidades de que un archivo analizado por cada perfil contenga malware ($M$) son:
* $P(M \mid A) = 0{,}04$
* $P(M \mid R) = 0{,}10$
* $P(M \mid I) = 0{,}18$

Si el último archivo analizado **no contenía malware** ($\bar{M}$ o $\text{sin } M$), ¿cuál es la probabilidad de que sea de un usuario regular, $P(R \mid \bar{M})$?



### 🔍 Resolución Paso a Paso

1. **Calcular la probabilidad condicional de NO tener malware para cada perfil:**
   * $P(\bar{M} \mid A) = 1 - P(M \mid A) = 1 - 0{,}04 = 0{,}96$
   * $P(\bar{M} \mid R) = 1 - P(M \mid R) = 1 - 0{,}10 = 0{,}90$
   * $P(\bar{M} \mid I) = 1 - P(M \mid I) = 1 - 0{,}18 = 0{,}82$

2. **Calcular la probabilidad total de que un archivo NO contenga malware, $P(\bar{M})$:**
   Aplicando el Teorema de la Probabilidad Total:
   $$P(\bar{M}) = P(A) \cdot P(\bar{M} \mid A) + P(R) \cdot P(\bar{M} \mid R) + P(I) \cdot P(\bar{M} \mid I)$$
   $$P(\bar{M}) = (0{,}20 \cdot 0{,}96) + (0{,}60 \cdot 0{,}90) + (0{,}20 \cdot 0{,}82)$$
   $$P(\bar{M}) = 0{,}192 + 0{,}540 + 0{,}164 = 0{,}896$$

3. **Aplicar el Teorema de Bayes para $P(R \mid \bar{M})$:**
   $$P(R \mid \bar{M}) = \frac{P(R) \cdot P(\bar{M} \mid R)}{P(\bar{M})}$$
   $$P(R \mid \bar{M}) = \frac{0{,}60 \cdot 0{,}90}{0{,}896} = \frac{0{,}540}{0{,}896} \approx 0{,}602678$$

✅ **Resultado:** La probabilidad es aproximadamente **$0{,}6027$** (o **$60{,}27\%$**).



## 🔐 Ejercicio 3: Tablas de Contingencia e Independencia de Eventos

### 📝 Enunciado
Una organización registra las conexiones entrantes por origen y por tipo de cifrado:
* **Origen:** Extranjero ($E$), Nacional ($N$). Dado que $P(E) = 0{,}70 \implies P(N) = 0{,}30$.
* **Cifrado:** Cifrado ($C$), No cifrado ($\bar{C}$). Dado que $P(C) = 0{,}80 \implies P(\bar{C}) = 0{,}20$.
* El $20\%$ del tráfico cifrado es de origen nacional: $P(N \mid C) = 0{,}20$.



### 🔍 Resolución Paso a Paso

#### **Construcción de la Tabla de Probabilidades:**
* De $P(N \mid C) = 0{,}20$:
  $$P(N \cap C) = P(C) \cdot P(N \mid C) = 0{,}80 \cdot 0{,}20 = 0{,}16$$
* De la suma de los marginales:
  $$P(E \cap C) = P(C) - P(N \cap C) = 0{,}80 - 0{,}16 = 0{,}64$$
  $$P(N \cap \bar{C}) = P(N) - P(N \cap C) = 0{,}30 - 0{,}16 = 0{,}14$$
  $$P(E \cap \bar{C}) = P(E) - P(E \cap C) = 0{,}70 - 0{,}64 = 0{,}06$$

| Origen / Cifrado | Cifrado ($C$) | No Cifrado ($\bar{C}$) | Total |
| :--- | :---: | :---: | :---: |
| **Extranjero ($E$)** | $0{,}64$ | $0{,}06$ | **$0{,}70$** |
| **Nacional ($N$)** | $0{,}16$ | $0{,}14$ | **$0{,}30$** |
| **Total** | **$0{,}80$** | **$0{,}20$** | **$1{,}00$** |



#### **a) ¿Qué porcentaje del tráfico es extranjero y no cifrado, $P(E \cap \bar{C})$?**
$$P(E \cap \bar{C}) = 0{,}06 \implies 6\%$$

#### **b) ¿Cuál es la probabilidad de que una conexión sea del extranjero o esté cifrada, $P(E \cup C)$?**
Aplicando la regla general de la adición:
$$P(E \cup C) = P(E) + P(C) - P(E \cap C)$$
$$P(E \cup C) = 0{,}70 + 0{,}80 - 0{,}64 = 0{,}86 \implies 86\%$$

#### **c) Si una conexión proviene del país, ¿cuál es la probabilidad de que esté cifrada, $P(C \mid N)$?**
$$P(C \mid N) = \frac{P(C \cap N)}{P(N)} = \frac{0{,}16}{0{,}30} \approx 0{,}5333 \implies 53{,}33\%$$

#### **d) ¿Son independientes el origen y el cifrado? Justificar.**
Dos eventos $A$ y $B$ son independientes si y solo si $P(A \mid B) = P(A)$ o equivalentes.
* Evaluamos la condición de independencia:
  $$P(N \mid C) = 0{,}20 \quad \text{vs} \quad P(N) = 0{,}30 \implies P(N \mid C) \neq P(N)$$
  $$P(E \mid C) = \frac{0{,}64}{0{,}80} = 0{,}80 \quad \text{vs} \quad P(E) = 0{,}70 \implies P(E \mid C) \neq P(E)$$
* **Conclusión:** **No son independientes**, ya que la probabilidad condicional difiere de la probabilidad marginal correspondiente.



## 🌐 Ejercicio 4: Distribución Normal y Distribución Binomial

### 📝 Enunciado
El tiempo de conexión de sesiones VPN ($X$) sigue una distribución normal:
$$X \sim N(\mu = 48 \text{ min}, \sigma = 5 \text{ min})$$



### 🔍 Resolución Paso a Paso

#### **a) Probabilidad de que una sesión dure menos de 45 minutos, $P(X < 45)$:**
1. **Estandarización a la distribución normal estándar $Z$:**
   $$Z = \frac{X - \mu}{\sigma} = \frac{45 - 48}{5} = \frac{-3}{5} = -0{,}60$$
2. **Cálculo probabilístico:**
   $$P(X < 45) = P(Z < -0{,}60) \approx 0{,}2743$$

✅ **Resultado:** **$0{,}274$** (o **$27{,}4\%$**).



#### **b) Calcular e interpretar el percentil 85 ($P_{85}$):**
1. Buscamos el valor $z_{0{,}85}$ en la tabla normal estándar tal que $P(Z \le z) = 0{,}85$:
   $$z_{0{,}85} \approx 1{,}0364$$
2. Desestandarizamos para encontrar el valor en minutos ($x_{0{,}85}$):
   $$x_{0{,}85} = \mu + z_{0{,}85} \cdot \sigma = 48 + (1{,}0364 \cdot 5) = 48 + 5{,}182 = 53{,}182 \text{ minutos}$$
* **Interpretación:** El $85\%$ de las sesiones VPN tienen una duración inferior a **$53{,}18 \text{ minutos}$** (o equivalentemente, solo un $15\%$ supera esta duración).



#### **c) Muestra de $n = 10$ sesiones; probabilidad de que al menos 4 duren más de 52 minutos:**
1. **Calcular la probabilidad individual de 'éxito' ($p$), donde el éxito es que una sesión dure más de 52 minutos ($X > 52$):**
   $$Z = \frac{52 - 48}{5} = \frac{4}{5} = 0{,}80$$
   $$p = P(X > 52) = P(Z > 0{,}80) = 1 - P(Z \le 0{,}80) = 1 - 0{,}7881 = 0{,}2119 \approx 0{,}212$$

2. **Modelar como una variable binomial $Y \sim \text{Bin}(n = 10, p = 0{,}212)$:**
   Queremos calcular $P(Y \ge 4)$:
   $$P(Y \ge 4) = 1 - P(Y \le 3) = 1 - \sum_{k=0}^{3} \binom{10}{k} (0{,}212)^k (1 - 0{,}212)^{10-k}$$
   Calculando las probabilidades acumuladas para $k = 0, 1, 2, 3$:
   * $P(Y = 0) = (0{,}788)^{10} \approx 0{,}0924$
   * $P(Y = 1) = 10 \cdot (0{,}212)^1 \cdot (0{,}788)^9 \approx 0{,}2486$
   * $P(Y = 2) = 45 \cdot (0{,}212)^2 \cdot (0{,}788)^8 \approx 0{,}3009$
   * $P(Y = 3) = 120 \cdot (0{,}212)^3 \cdot (0{,}788)^7 \approx 0{,}2157$
   $$P(Y \le 3) \approx 0{,}0924 + 0{,}2486 + 0{,}3009 + 0{,}2157 = 0{,}8576$$
   $$P(Y \ge 4) = 1 - 0{,}8576 = 0{,}1424 \approx 0{,}143$$

✅ **Resultado:** **$0{,}143$** (o **$14{,}3\%$**).



## 💻 Ejercicio 5: Distribución de Poisson y Mezcla Binomial-Poisson

### 📝 Enunciado
Un servidor web recibe en promedio $\lambda = 12 \text{ peticiones por minuto}$.



### 🔍 Resolución Paso a Paso

#### **a) Probabilidad de recibir menos de 110, o más de 125 peticiones (inclusive) en los próximos 10 minutos:**
1. **Ajustar la tasa media $\lambda$ para un intervalo de $t = 10 \text{ minutos}$:**
   $$\lambda_{10} = 12 \times 10 = 120 \text{ peticiones}$$
   Sea $X \sim \text{Poisson}(\lambda = 120)$.

2. **Aproximación por la Distribución Normal o Poisson acumulada:**
   Buscamos $P(X < 110) + P(X \ge 125)$:
   * Utilizando la distribución de Poisson exacta / aproximación normal sin continuidad:
     $$P(X < 110) = P(X \le 109) \approx 0{,}169$$
     $$P(X \ge 125) = 1 - P(X \le 124) \approx 0{,}304$$
3. **Suma de probabilidades:**
   $$P(X < 110 \cup X \ge 125) = 0{,}169 + 0{,}304 = 0{,}473$$

✅ **Resultado:** **$0{,}473$** (o **$47{,}3\%$**).



#### **b) Muestra de 6 servidores; probabilidad de que alguno (al menos 1) reciba menos de 50 peticiones en 5 minutos:**
1. **Ajustar la tasa media de Poisson a un intervalo de $t = 5 \text{ minutos}$:**
   $$\lambda_5 = 12 \times 5 = 60 \text{ peticiones}$$
   Sea $K \sim \text{Poisson}(\lambda = 60)$.

2. **Calcular la probabilidad de 'éxito' para un servidor ($p$), $P(K < 50)$:**
   $$p = P(K \le 49 \mid \lambda = 60) \approx 0{,}084$$

3. **Definir la variable Binomial para $n = 6$ servidores:**
   Sea $Y \sim \text{Bin}(n = 6, p = 0{,}084)$. Queremos hallar la probabilidad de que al menos uno cumpla la condición ($P(Y \ge 1)$):
   $$P(Y \ge 1) = 1 - P(Y = 0) = 1 - \binom{6}{0} (p)^0 (1 - p)^6$$
   $$P(Y \ge 1) = 1 - (1 - 0{,}084)^6 = 1 - (0{,}916)^6$$
   $$P(Y \ge 1) = 1 - 0{,}5906 = 0{,}4094 \approx 0{,}409$$

✅ **Resultado:** **$0{,}409$** (o **$40{,}9\%$**).


## 🚨 Ejercicio 6: Aplicación Integral (Normal, TCL, Binomial y Poisson)

### 📝 Enunciado

El costo de recuperación ante incidentes por evento individual ($X$) sigue una distribución normal:


$$X \sim N(\mu = 12500 \text{ USD}, \sigma = 2000 \text{ USD})$$


La empresa enfrentó $n = 120$ eventos durante el año.



### 🔍 Resolución Paso a Paso

#### **a) Media y desvío estándar del costo total anual ($W = \sum_{i=1}^{120} X_i$):**

1. **Media del costo total ($\mu_W$):**

$$\mu_W = n \cdot \mu_X = 120 \times 12500 = 1500000 \text{ USD} \quad (1,5 \text{ millones})$$


2. **Varianza del costo total ($\sigma_W^2$):**

$$\sigma_W^2 = n \cdot \sigma_X^2 = 120 \times 2000^2 = 120 \times 4000000 = 480000000 \text{ USD}^2$$


3. **Desviación estándar del costo total ($\sigma_W$):**

$$\sigma_W = \sqrt{\sigma_W^2} = \sqrt{480000000} \approx 21908,90 \text{ USD}$$



✅ **Resultado:** Media $\mu_W = 1500000 \text{ USD}$; Desvío $\sigma_W = 21908,90 \text{ USD}$.



#### **b) Probabilidad de que el costo total anual esté entre 1480000 USD y 1550000 USD:**

Dado que $W \sim N(\mu_W = 1500000, \sigma_W = 21908,90)$:

1. **Estandarizar ambos límites:**

$$Z_1 = \frac{1480000 - 1500000}{21908,90} = \frac{-20000}{21908,90} \approx -0,9128 \approx -0,91$$


$$Z_2 = \frac{1550000 - 1500000}{21908,90} = \frac{50000}{21908,90} \approx 2,2821 \approx 2,28$$


2. **Calcular la probabilidad:**

$$P(1480000 < W < 1550000) = P(-0,91 < Z < 2,28)$$


$$P(Z < 2,28) - P(Z < -0,91) = 0,9887 - 0,1814 = 0,8073 \approx 0,8081$$



✅ **Resultado:** **$0,8081$** (o **$80,81\%$**).



#### **c) Para un incidente al azar, probabilidad de que el costo sea superior a 13600 USD:**

1. **Estandarizar para una variable individual $X$:**

$$Z = \frac{13600 - 12500}{2000} = \frac{1100}{2000} = 0,55$$


2. **Calcular la probabilidad acumulada superior:**

$$P(X > 13600) = P(Z > 0,55) = 1 - P(Z \le 0,55) = 1 - 0,7088 = 0,2912$$



✅ **Resultado:** **$0,2912$** (o **$29,12\%$**).



#### **d) Muestra de 10 incidentes; probabilidad de que a lo sumo 3 tengan un costo inferior a 12000 USD:**

1. **Calcular la probabilidad individual de que un incidente cueste menos de 12000 USD ($p$):**

$$Z = \frac{12000 - 12500}{2000} = \frac{-500}{2000} = -0,25$$


$$p = P(X < 12000) = P(Z < -0,25) \approx 0,4013 \approx 0,401$$


2. **Modelar como una distribución Binomial $Y \sim \text{Bin}(n = 10, p = 0,401)$:**
Queremos la probabilidad de que $Y \le 3$:

$$P(Y \le 3) = \sum_{k=0}^{3} \binom{10}{k} (0,401)^k (1 - 0,401)^{10-k}$$



Calculando cada término acumulado:
* $P(Y = 0) = (0,599)^{10} \approx 0,0060$
* $P(Y = 1) = 10 \cdot (0,401)^1 \cdot (0,599)^9 \approx 0,0403$
* $P(Y = 2) = 45 \cdot (0,401)^2 \cdot (0,599)^8 \approx 0,1215$
* $P(Y = 3) = 120 \cdot (0,401)^3 \cdot (0,599)^7 \approx 0,2169$

$$P(Y \le 3) = 0,0060 + 0,0403 + 0,1215 + 0,2169 = 0,3847 \approx 0,38$$





✅ **Resultado:** **$0,38$** (o **$38\%$**).


#### **e) Un sistema SIEM detecta promedio $0,25 \text{ eventos/minuto}$. Probabilidad de detectar entre 15 y 18 eventos (inclusive) en una hora:**

1. **Ajustar el parámetro $\lambda$ para el intervalo de $t = 1 \text{ hora} = 60 \text{ minutos}$:**

$$\lambda_{60} = 0,25 \times 60 = 15 \text{ eventos}$$



Sea $K \sim \text{Poisson}(\lambda = 15)$.
2. **Calcular la probabilidad evaluada en el rango $[15, 18]$:**

$$P(15 \le K \le 18) = P(K = 15) + P(K = 16) + P(K = 17) + P(K = 18)$$



Aplicando la fórmula de Poisson $P(K = k) = \frac{e^{-\lambda} \cdot \lambda^k}{k!}$:
* $P(K = 15) = \frac{e^{-15} \cdot 15^{15}}{15!} \approx 0,1024$
* $P(K = 16) = \frac{e^{-15} \cdot 15^{16}}{16!} \approx 0,0960$
* $P(K = 17) = \frac{e^{-15} \cdot 15^{17}}{17!} \approx 0,0847$
* $P(K = 18) = \frac{e^{-15} \cdot 15^{18}}{18!} \approx 0,0706$

$$P(15 \le K \le 18) = 0,1024 + 0,0960 + 0,0847 + 0,0706 = 0,3537 \approx 0,3538$$





✅ **Resultado:** **$0,3538$** (o **$35,38\%$**).
