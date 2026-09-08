# 📊 1er Parcial de Probabilidad y Estadística


## 📌 PROBLEMA 1: Estudio de Usabilidad en Plataforma E-commerce 🛒

### 📝 Enunciado
El término *usability* refiere a hasta qué punto un producto se utiliza de manera eficiente, efectiva y satisfactoria. En el campo de la informática este concepto se aplica a la interacción humano-computadora. En este ámbito se han formulado una serie de lineamientos y métodos de evaluación que ayudan a identificar y comprender los problemas de usabilidad de software.

Una cadena dedicada a la venta de electrodomésticos está presta a incorporar una tienda *on-line* y desean evaluar la usabilidad de esta plataforma para las operaciones habituales de los compradores.

**🔬 Metodología:**
Se simularon compras y otras operaciones habituales con una muestra de adultos voluntarios no vinculados a la empresa. Cada sujeto fue asistido por un auxiliar que registró el tiempo (en minutos) empleado en la ejecución de distintas tareas y el número de pasos (*clicks*) realizados para ejecutar cada tarea.

Luego se clasificaron los registros del tiempo de ejecución de cada tarea de acuerdo a si se lograron completar en el tiempo teórico calculado por los programadores (**cumplió** / **excedió**), al igual que el número de *clicks* (**cumplió** / **excedió**).

#### **📋 Tareas evaluadas:**
* **Tarea 1 ($T_1$):** Consultar las marcas y descripción de los microondas ofrecidos y comprar el de más potencia y precio medio.
* **Tarea 2 ($T_2$):** Comprar la juguera más barata.



### 📊 Base de Datos

| Voluntario 👤 | $T_1$ (min) ⏱️ | $T_2$ (min) ⏱️ | Cumplimiento $T_1$ 📈 | Cumplimiento $T_2$ 📈 |
| :---: | :---: | :---: | :---: | :---: |
| **1** | 29.3 | 19.1 | Excedió | Excedió |
| **2** | 15.9 | 25.6 | Cumplió | Excedió |
| **3** | 22.0 | 15.0 | Excedió | Excedió |
| **4** | 26.1 | 12.0 | Excedió | Cumplió |
| **5** | 25.8 | 19.8 | Excedió | Excedió |
| **6** | 27.9 | 14.3 | Excedió | Cumplió |
| **7** | 32.3 | 14.5 | Excedió | Cumplió |
| **8** | 20.1 | 11.6 | Cumplió | Cumplió |
| **9** | 25.4 | 16.6 | Excedió | Excedió |
| **10** | 16.7 | 28.3 | Cumplió | Excedió |
| **11** | 18.2 | 17.0 | Cumplió | Excedió |
| **12** | 14.2 | 7.0 | Cumplió | Cumplió |
| **13** | 13.6 | 11.7 | Cumplió | Cumplió |
| **14** | 17.1 | 13.4 | Cumplió | Cumplió |
| **15** | 27.0 | 16.5 | Excedió | Excedió |



### 🔍 Resolución y Análisis Procedimental

#### **a) Clasificación del Estudio 🧪**
* **Tipo de estudio:** **Experimental / Simulación controlada.**
  * *Justificación:* Los sujetos realizaron tareas simuladas prefijadas bajo asistencia y observación directa de auxiliares.
* **Diseño temporal:** **Transversal.**
  * *Justificación:* Las mediciones de tiempo y clics se realizaron en una única ocasión fija para cada voluntario.

#### **b) Identificación y Clasificación de Variables 🏷️**
1. **$V_1$: Tiempo de ejecución en $T_1$ y $T_2$**
   * **Tipo:** Cuantitativa Continua.
   * **Escala de Medición:** De Razón / Intervalo (expresada en minutos).
2. **$V_2$: Nivel de Cumplimiento / Efectividad ($T_1$ y $T_2$)**
   * **Tipo:** Categórica / Cualitativa Dicotómica.
   * **Escala de Medición:** Nominal (Categorías: *Cumplió* / *Excedió*).

#### **c) Análisis Estadístico Descriptivo 📈**

##### **1. Cálculos de Medidas de Tendencia Central y Dispersión:**

* **Para Tarea 1 ($T_1$):**
  * Media ($ ar{x}_1$):
    $$ ar{x}_1 = rac{\sum_{i=1}^{15} x_{1i}}{15} = rac{331.6}{15}  pprox 22.11 	ext{ min}$$
  * Mediana ($	ilde{x}_1$):
    $$	ilde{x}_1 = 25.40 	ext{ min}$$
  * Desviación Estándar Muestral ($s_1$):
    $$s_1 = \sqrt{rac{\sum (x_{1i} -  ar{x}_1)^2}{n-1}}  pprox 5.76 	ext{ min}$$
  * Rango Intercuartílico ($IQR_1$):
    $$Q_1 = 16.30, \quad Q_3 = 26.55 \implies IQR_1 = 26.55 - 16.30 = 10.25 	ext{ min}$$

* **Para Tarea 2 ($T_2$):**
  * Media ($ ar{x}_2$):
    $$ ar{x}_2 = rac{\sum_{i=1}^{15} x_{2i}}{15} = rac{242.4}{15} = 16.16 	ext{ min}$$
  * Mediana ($	ilde{x}_2$):
    $$	ilde{x}_2 = 15.00 	ext{ min}$$
  * Desviación Estándar Muestral ($s_2$):
    $$s_2 = \sqrt{rac{\sum (x_{2i} -  ar{x}_2)^2}{n-1}}  pprox 5.48 	ext{ min}$$
  * Rango Intercuartílico ($IQR_2$):
    $$Q_2 = 12.70, \quad Q_3 = 18.05 \implies IQR_2 = 18.05 - 12.70 = 5.35 	ext{ min}$$

##### **2. Conclusión de Eficiencia:**
* La **Tarea 1 ($T_1$)** resultó **menos eficiente**, ya que requirió un tiempo promedio de ejecución significativamente mayor ($ ar{x}_1 = 22.11 	ext{ min}$ frente a $ ar{x}_2 = 16.16 	ext{ min}$) y presentó mayor variabilidad en los tiempos de respuesta.

##### **3. Procedimiento si la ineficiencia se atribuye al cliente:**
* Si se decidiera que la ineficiencia es atribuible a características o competencias del usuario/cliente, se debería segmentar o estratificar la muestra según variables del perfil del cliente (e.g., rango etario, nivel de experiencia previa en compras web, grado de alfabetización digital). Luego, se realizaría un análisis comparativo inter-grupos (como ANOVA de un factor o pruebas no paramétricas como Kruskal-Wallis) para determinar si las diferencias de tiempos de ejecución son estadísticamente significativas entre los distintos segmentos de usuarios.

#### **d) Evaluación de Efectividad 🎯**
Se analiza la proporción de cumplimiento de las metas estimadas por los programadores:

* **Tarea 1 ($T_1$):**
  * Cumplieron el estándar: $7$ voluntarios ($46.67\%$).
  * Excedieron el tiempo/clics: $8$ voluntarios ($53.33\%$).
* **Tarea 2 ($T_2$):**
  * Cumplieron el estándar: $7$ voluntarios ($46.67\%$).
  * Excedieron el tiempo/clics: $8$ voluntarios ($53.33\%$).

**Conclusión:**
Ambas tareas presentaron exactamente el mismo nivel de efectividad global ($46.67\%$ de cumplimiento y $53.33\%$ de exceso). Por lo tanto, bajo este criterio métrico dicotómico, **ninguna tarea resultó menos efectiva que la otra, siendo ambas igualmente inefectivas respecto a las estimaciones de los desarrolladores.**



## 📱 PROBLEMA 2: Fidelidad a la Marca de Teléfonos Celulares 📲

### 📝 Enunciado
Como parte de un estudio de fidelidad a la marca de teléfono celular se llevó a cabo una encuesta registrando la marca de los dos últimos celulares que compró el encuestado ($C_1 =$ celular anterior, $C_2 =$ celular actual).

* El $68\%$ compró el $C_1$ marca $A$ y el resto ($32\%$) la marca $B$.
* El $80\%$ de los que tuvieron la marca $A$ mantuvieron la misma marca en la siguiente compra.
* El $70\%$ de los que tuvieron la marca $B$ mantuvieron la misma marca en la siguiente compra.

#### **Definición de Probabilidades:**
* $P(C_1 = A) = 0.68 \implies P(C_1 = B) = 0.32$
* $P(C_2 = A \mid C_1 = A) = 0.80 \implies P(C_2 = B \mid C_1 = A) = 0.20$
* $P(C_2 = B \mid C_1 = B) = 0.70 \implies P(C_2 = A \mid C_1 = B) = 0.30$



### 🔍 Resolución Paso a Paso

#### **a) ¿Qué porcentaje de sujetos optó por la marca A en la segunda compra ($C_2 = A$)? 🛍️**

Aplicando la **Ley de Probabilidad Total**:

$$P(C_2 = A) = P(C_2 = A \mid C_1 = A) \cdot P(C_1 = A) + P(C_2 = A \mid C_1 = B) \cdot P(C_1 = B)$$

Sustituyendo los valores:

$$P(C_2 = A) = (0.80 	imes 0.68) + (0.30 	imes 0.32) = 0.544 + 0.096 = 0.640$$

**Respuesta:** El **$64.0\%$** de los sujetos optó por la marca $A$ en la segunda compra.



#### **b) ¿Qué porcentaje de usuarios de celular son fieles a la marca? 🤝**

Un usuario es fiel si mantiene la misma marca en ambas compras consecutivas: $(C_1=A \cap C_2=A)$ o $(C_1=B \cap C_2=B)$.

$$P(	ext{Fiel}) = P(C_1 = A \cap C_2 = A) + P(C_1 = B \cap C_2 = B)$$

$$P(	ext{Fiel}) = P(C_2 = A \mid C_1 = A) \cdot P(C_1 = A) + P(C_2 = B \mid C_1 = B) \cdot P(C_1 = B)$$

$$P(	ext{Fiel}) = (0.80 	imes 0.68) + (0.70 	imes 0.32) = 0.544 + 0.224 = 0.768$$

**Respuesta:** El **$76.8\%$** de los usuarios son fieles a su marca de teléfono.



#### **c) Si un sujeto optó por la marca B en su segunda compra ($C_2 = B$), ¿cuál es la probabilidad de que sea un cliente fiel? 🔍**

Si el cliente compró la marca $B$ en $C_2$, la única forma de que sea un cliente fiel es que su compra previa $C_1$ haya sido también de la marca $B$.

Buscamos la probabilidad condicional $P(C_1 = B \mid C_2 = B)$ aplicando el **Teorema de Bayes**:

Primero calculamos $P(C_2 = B)$:

$$P(C_2 = B) = 1 - P(C_2 = A) = 1 - 0.640 = 0.360$$

Ahora aplicamos Bayes:

$$P(	ext{Fiel} \mid C_2 = B) = P(C_1 = B \mid C_2 = B) = rac{P(C_2 = B \mid C_1 = B) \cdot P(C_1 = B)}{P(C_2 = B)}$$

$$P(C_1 = B \mid C_2 = B) = rac{0.70 	imes 0.32}{0.360} = rac{0.224}{0.360}  pprox 0.6222$$

**Respuesta:** La probabilidad de que un cliente que compró marca $B$ en su segunda compra sea fiel es de **$62.22\%$** ($0.6222$).



#### **d) Distribución Normal: Tiempo de Renovación Celular ⏳**

**Parámetros:**
* Media ($\mu$): $21.7 	ext{ meses}$
* Desviación estándar ($\sigma$): $4.0 	ext{ meses}$
* Variable aleatoria: $X \sim \mathcal{N}(\mu = 21.7, \sigma^2 = 16)$

##### **d.1) ¿Qué porcentaje de titulares de celular lo renuevan antes de los dos años? 🗓️**
* Nota importante sobre conversión de unidades: $2 	ext{ años} = 24 	ext{ meses}$.

Calculamos el valor estandarizado $Z$:

$$Z = rac{X - \mu}{\sigma} = rac{24 - 21.7}{4} = rac{2.3}{4} = 0.575$$

Buscando la probabilidad acumulada:

$$P(X < 24) = P(Z < 0.575)  pprox 0.7173$$

**Respuesta Correcta:** El **$71.73\%$** de los titulares renuevan su celular antes de los 2 años ($24$ meses).

*(📌 Nota de corrección sobre el examen manuscrito: El estudiante cometió el error de evaluar $P(X < 2)$ usando "2" en lugar de conviértelo a $24$ meses, obteniendo erróneamente un valor cercano a $0.000000422$.)*

##### **d.2) Calcule el fractil 20 ($P_{20}$) e interprete el resultado 📉**

Buscamos el valor $x_{0.20}$ tal que $P(X \le x_{0.20}) = 0.20$.

De la tabla de la Distribución Normal Estándar, el valor $Z$ correspondiente a una probabilidad acumulada del $20\%$ ($0.20$) es:

$$Z_{0.20}  pprox -0.8416$$

Despejando $x$:

$$x_{0.20} = \mu + Z_{0.20} \cdot \sigma = 21.7 + (-0.8416 	imes 4) = 21.7 - 3.3664 = 18.3336 	ext{ meses}$$

**Interpretación:**
El **$20\%$** de los usuarios de telefonía celular renuevan su dispositivo en un tiempo menor o igual a **$18.33$ meses** (aproximadamente $18$ meses y $10$ días).



## 🎓 PROBLEMA 3: Rendimiento y Graduación Universitaria 🏛️

### 📝 Enunciado
Según un informe publicado por el Centro de Estudios de la Educación Argentina (CEA), sólo **$23$ de cada $100$** estudiantes que empiezan a estudiar en la universidad pública se gradúan.

* Probabilidad de graduación ($p$): $p = rac{23}{100} = 0.23$
* Proporción de no graduados ($q$): $q = 1 - p = 0.77$



### 🔍 Resolución y Procedimientos

#### **a) Si en un año se inscriben $n = 2000$ alumnos, ¿cuál es la probabilidad de que se reciban menos de $480$? 🎓**

La variable $X =$ "cantidad de alumnos graduados" sigue una distribución Binomial $X \sim 	ext{Binom}(n = 2000, p = 0.23)$.

Dado que $n$ es grande y se cumplen las condiciones de aproximación ($np = 460 \ge 5$ y $nq = 1540 \ge 5$), aproximamos mediante la **Distribución Normal**:

$$\mu = n \cdot p = 2000 	imes 0.23 = 460 	ext{ alumnos}$$

$$\sigma = \sqrt{n \cdot p \cdot (1 - p)} = \sqrt{2000 	imes 0.23 	imes 0.77} = \sqrt{354.2}  pprox 18.8202 	ext{ alumnos}$$

Queremos calcular $P(X < 480)$:

* **Sin corrección por continuidad (como en el desarrollo del parcial):**
  $$Z = rac{480 - 460}{18.8202} = rac{20}{18.8202}  pprox 1.0627$$
  $$P(X < 480) = P(Z < 1.0627)  pprox 0.8560 \quad (85.60\%)$$

* **Con corrección por continuidad por variable discreta $P(X \le 479)$:**
  $$Z = rac{479.5 - 460}{18.8202} = rac{19.5}{18.8202}  pprox 1.0361$$
  $$P(X \le 479.5) = P(Z < 1.0361)  pprox 0.8499 \quad (84.99\%)$$

*(📌 El valor calculado analíticamente de $84.99\%$ coincide perfectamente con la anotación manuscrita del parcial de $0.8498 
ightarrow 84.98\%$.)*

**Respuesta:** La probabilidad de que se reciban menos de $480$ alumnos es aproximadamente del **$84.99\%$**.



#### **b) Si se inscriben $n = 25000$ alumnos, ¿cuántos graduados puede esperarse? ¿Con qué desviación estándar? 📊**

##### **1. Número esperado de graduados (Esperanza Matemática):**

$$E(X) = \mu = n \cdot p = 25000 	imes 0.23 = 5750 	ext{ alumnos}$$

##### **2. Desviación Estándar ($\sigma$):**

$$\sigma = \sqrt{n \cdot p \cdot (1 - p)}$$

$$\sigma = \sqrt{25000 	imes 0.23 	imes 0.77} = \sqrt{4427.5}  pprox 66.539 	ext{ alumnos}$$

*(📌 Nota de corrección sobre el manuscrito: En la hoja borrador el estudiante cometió un error de fórmula al calcular la varianza como $rac{(6750 - 23)^2}{25000} = 1311.94$, obteniendo una desviación errónea de $36.22$. La fórmula matemática correcta para la desviación de una distribución binomial es $\sigma = \sqrt{n \cdot p \cdot q} = 66.54$.)*

**Respuesta:**
* Se espera que se gradúen **$5750$ alumnos**.
* La desviación estándar correcta del proceso es de **$66.54$ alumnos**.
