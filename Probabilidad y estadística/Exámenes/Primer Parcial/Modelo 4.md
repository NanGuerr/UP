# 📊 Transcripción y Resolución: 1er Parcial de Probabilidad y Estadística (Abril/2016)

Este documento detalla la transcripción y resolución exhaustiva de los ejercicios del primer parcial, incluyendo la captura de pantallas de software estadístico y los procedimientos analíticos detallados para cada consigna.



## 💻 Problema 1: Duración de Visitas y Distribución Normal

### 📝 Enunciado

Una consultora investiga cómo se relaciona la duración de cada visita (en minutos) con el origen del tráfico ($A$: motor de búsqueda como Google, y $B$: directo). Asumiendo que la duración de las visitas directas se distribuye normalmente con media $\mu = 12$ minutos y desvío $\sigma = 3$ minutos ($\text{Varianza } \sigma^2 = 9$):



### 🧮 Resolución y Procedimientos

#### 📌 c.1) ¿Qué porcentaje de visitas duran menos de 15 minutos?

* **Procedimiento:** Se calcula la probabilidad acumulada $P(X < 15)$ utilizando la distribución normal con $\mu = 12$ y $\sigma^2 = 9$.
* **Cálculo con software estadístico:**

$$P(X < 15) \approx 0,8413$$


* **Respuesta:** El **$84,13\%$** de las visitas duran menos de $15$ minutos.

#### 📌 c.2) ¿Cuánto dura el 20% de visitas más largas?

* **Procedimiento:** Se busca el percentil 80 (o el valor que deja un área del $20\%$ a la derecha), equivalente a hallar el cuantil donde $P(X > x) = 0,20$.
* **Cálculo:**
Mediante la función de cuantiles de la distribución normal, se obtiene:

$$x \approx 14,52\text{ minutos}$$


* **Respuesta:** El $20\%$ de las visitas más largas dura al menos **$14,52\text{ minutos}$**.

#### 📌 c.3) Si un día reciben 30 visitas independientes, ¿cuál es la probabilidad de que por lo menos una docena duren más de 10 minutos?

* **Paso 1:** Calcular la probabilidad individual de que una visita dure más de 10 minutos ($P(X > 10)$):

$$P(X > 10) \approx 0,7475$$


* **Paso 2:** Plantear un modelo binomial con $n = 30$ y $p = 0,7475$ para calcular la probabilidad de que $Y \ge 12$:

$$P(Y \ge 12) \approx 0,9999$$


* **Respuesta:** La probabilidad es prácticamente del **$99,99\%$**.

#### 📌 c.4) Si reciben 250 visitas, ¿cuántas se espera que duren menos de 10 minutos?

* **Paso 1:** Calcular la probabilidad de que una visita dure menos de 10 minutos ($P(X < 10)$):

$$P(X < 10) \approx 0,2525$$


* **Paso 2:** Aplicar la esperanza matemática para $n = 250$:

$$E(Y) = 250 \times 0,2525 \approx 63,12$$


* **Respuesta:** Se espera que aproximadamente **$63$** visitas duren menos de 10 minutos.



## 🛒 Problema 2: Modalidades de Pago y Montos de Compra

### 📝 Enunciado

En un hipermercado se relevó información sobre las modalidades de pago y el monto de las compras, distribuidas de la siguiente manera:

* Menos de $\$300$: $16\%$ ($0,16$)


* Entre $\$300$ y $\$800$: $49\%$ ($0,49$)


* Más de $\$900$: El resto, es decir, el $35\%$ ($0,35$)





### 📊 Tabla de Contingencia de Probabilidades Conjuntas

| Monto de Compra | Efectivo | Débito | Tarjeta de Crédito | Total |
| --- | --- | --- | --- | --- |
| **$<\$300$** | $0,16 \times 0,80 = 0,128$ | $0,16 \times 0,20 = 0,032$ | $0$ | **$0,16$**<br> |
| **$\$300 - \$800$** | $0,49 \times 0,12 = 0,0588$ | $0,49 \times 0,63 = 0,3087$ | $0,49 \times 0,25 = 0,1225$ | **$0,49$**<br> |
| **$>\$900$** | $0$ | $0,35 \times 0,37 = 0,1295$ | $0,35 \times 0,63 = 0,2205$ | **$0,35$**<br> |
| **Total** | **$0,1868$** | **$0,4702$** | **$0,3430$** | **$1,00$**<br> |



### 🔍 Incisos y Procedimientos

#### 📌 a) ¿Qué porcentaje de operaciones se cobra con tarjeta de crédito?

* **Procedimiento:** Corresponde al total marginal de la columna de tarjeta de crédito obtenido en la tabla de contingencia.
* **Cálculo:**

$$P(\text{Crédito}) = 0 + 0,1225 + 0,2205 = 0,343$$


* **Respuesta:** El **$34,3\%$** de las operaciones se cobra con tarjeta de crédito.



#### 📌 b) Si un sujeto pagó con tarjeta de crédito, ¿cuál es la probabilidad de que el monto de su compra esté entre $\$300$ y $\$800$?

* **Procedimiento:** Se aplica la fórmula de probabilidad condicional dividiendo la intersección entre el monto y el pago con tarjeta sobre el total de pagos con tarjeta.


* **Cálculo:**

$$P(\$300 - \$800 \mid \text{Crédito}) = \frac{P(\$300 - \$800 \cap \text{Crédito})}{P(\text{Crédito})} = \frac{0,1225}{0,343} \approx 0,357$$


* **Respuesta:** La probabilidad es de aproximadamente el **$35,7\%$**.
