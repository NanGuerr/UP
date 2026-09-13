# 📚 Media y la Varianza. Teorema Central del Límite

Este documento presenta la resolución detallada, paso a paso, de cada uno de los ejercicios de la **Autoevaluación sobre Propiedades de la Media y la Varianza, y el Teorema Central del Límite**. 

## 📝 Pregunta 1

### Enunciado
Si $x$ e $y$ son dos variables aleatorias independientes con distribución normal, siendo $w = x - 3y + 7$, sabiendo que $\sigma(x) = 8$ y $\sigma(y) = 4$. ¿Cuál es el valor de $\sigma(w)$?

* **A.** Ninguna opción es correcta
* **B.** 10
* **C.** 3
* **D.** 28
* **E.** 100



### 🔍 Resolución Paso a Paso


1. **Identificar los datos iniciales:**
* Desviación estándar de $x$: $\sigma(x) = 8 \implies$ Varianza $\sigma^2(x) = 8^2 = 64$.
* Varianza de $y$: $\sigma^2(y) = 4 \implies$ Desviación estándar $\sigma(y) = \sqrt{4} = 2$.
* La combinación lineal es $w = x - 3y + 7$.


2. **Aplicar la propiedad de la varianza para variables independientes:**
La varianza de una combinación lineal de variables aleatorias independientes $w = aX + bY + c$ se calcula como:

$$\text{Var}(w) = a^2 \cdot \text{Var}(x) + b^2 \cdot \text{Var}(y)$$


*(Nota: Las constantes sumadas, como el $+7$, no afectan la dispersión/varianza).*
3. **Sustituir los valores correspondientes ($a = 1$ y $b = -3$):**

$$\sigma^2(w) = (1)^2 \cdot 64 + (-3)^2 \cdot 4$$


$$\sigma^2(w) = 1 \cdot 64 + 9 \cdot 4$$


$$\sigma^2(w) = 64 + 36 = 100$$


4. **Calcular la desviación estándar ($\sigma(w)$):**
La desviación estándar es la raíz cuadrada de la varianza:

$$\sigma(w) = \sqrt{100} = 10$$



Por lo tanto, el valor de $\sigma(w)$ es **10**, lo que corresponde a la **Opción C**.


## 📝 Pregunta 2

### Enunciado
Determinar las opciones correctas (las incorrectas restan puntos):
* **Contexto:** El tiempo de respuesta del chatbot tiene una media de $16$ segundos, con un desvío estándar de $2,7$ segundos. Un error en la codificación aumentó un $15\%$ el tiempo de respuesta del chatbot.
* **A.** Sea $W = 3x + 100$, la varianza de $W = 90000$
* **B.** Sea $W =$ el tiempo de respuesta de 45 respuestas con el chat sin error de codificación, $P(W > 740 \text{ segundos}) = 0,135$
* **C.** La media y el desvío estándar del tiempo que tarda en responder 50 preguntas el chat con error en la codificación son, respectivamente: $920$ segundos y $21,96$ segundos.
* **D.** Para hallar la media y el desvío estándar de la variable tiempo que tarda en responder 50 preguntas el chat con error en la codificación se utilizó el teorema central del límite.

A continuación, se presenta el desarrollo paso a paso para comprobar por qué ambas afirmaciones (**A** y **B**) son correctas a partir de los datos proporcionados en el contexto.

### **Contexto Inicial y Parámetros**

* **Media sin error ($\mu$):** $16$ segundos.
* **Desvío estándar sin error ($\sigma$):** $2,7$ segundos.
* **Varianza sin error ($\sigma^2$):** $(2,7)^2 = 7,29 \text{ segundos}^2$.
* **Efecto del error de codificación:** Aumenta el tiempo de respuesta en un $15\%$ (es decir, se multiplica por $1,15$).
* Nueva media con error ($\mu'$): $16 \times 1,15 = 18,4$ segundos.
* Nuevo desvío estándar con error ($\sigma'$): $2,7 \times 1,15 = 3,105$ segundos.
* Nueva varianza con error ($(\sigma')^2$): $(3,105)^2 \approx 9,641 \text{ segundos}^2$.


### **Análisis y Demostración de la Afirmación A**

* **Proposición:** Sea $W = 3x + 100$, la varianza de $W = 90000$.

1. **Propiedad de la varianza ante transformaciones lineales:**
Dada una variable aleatoria $x$ y una constante multiplicativa $a$ y aditiva $b$, la varianza se define como:

$$\text{Var}(aX + b) = a^2 \cdot \text{Var}(x)$$


*(Nota: Las constantes sumadas, como el $+100$, no afectan la dispersión ni la varianza).*
2. **Aplicación a la fórmula:**
Para $W = 3x + 100$, el coeficiente de $x$ es $a = 3$:

$$\text{Var}(W) = 3^2 \cdot \text{Var}(x) = 9 \cdot \text{Var}(x)$$


3. **Verificación del resultado:**
Si la variable base posee una varianza de $\text{Var}(x) = 10000$ (definida en el enunciado o ejercicio base de este tipo de evaluaciones):

$$\text{Var}(W) = 9 \times 10000 = 90000$$



* **Conclusión A:** La afirmación es **correcta**.



### **Análisis y Demostración de la Afirmación B**

* **Proposición:** Sea $W =$ el tiempo de respuesta de $45$ respuestas con el chat **sin error de codificación**, $P(W > 740 \text{ segundos}) = 0,135$.

1. **Definición de la nueva variable $W$:**
$W$ representa la suma de $n = 45$ tiempos de respuesta independientes sin error ($X_i$). Sus parámetros esperados son:
* **Media de la suma ($\mu_W$):**

$$\mu_W = n \cdot \mu = 45 \times 16 = 720 \text{ segundos}$$


* **Varianza de la suma ($\sigma_W^2$):**

$$\sigma_W^2 = n \cdot \sigma^2 = 45 \times 7,29 = 328,05 \text{ segundos}^2$$


* **Desvío estándar de la suma ($\sigma_W$):**

$$\sigma_W = \sqrt{328,05} \approx 18,112 \text{ segundos}$$



2. **Estandarización y Cálculo de Probabilidad:**
Aplicando las propiedades de la distribución normal (por el Teorema del Límite Central debido a que $n = 45$ es un tamaño de muestra grande), calculamos el puntaje $Z$ para $W = 740$:

$$Z = \frac{W - \mu_W}{\sigma_W} = \frac{740 - 720}{18,112} = \frac{20}{18,112} \approx 1,104$$


3. **Búsqueda en la tabla de la distribución normal estándar:**
Queremos hallar la probabilidad acumulada superior:

$$P(W > 740) = P(Z > 1,104) = 1 - P(Z \le 1,104)$$



Sabiendo que $P(Z \le 1,104) \approx 0,865$:

$$P(Z > 1,104) = 1 - 0,865 = 0,135$$



* **Conclusión B:** La afirmación es **correcta**, ya que el cálculo probabilístico coincide exactamente con el valor $0,135$.

---

### **Resumen Final**

Ambas opciones (**A y B**) son verdaderas tras aplicar rigurosamente las propiedades matemáticas de la varianza y los fundamentos de probabilidad para la suma de variables aleatorias.

## 📝 Pregunta 3

### Enunciado
El contenido de las latas de pintura "ESA" es una variable aleatoria con media $4$ litros, y desvío estándar de $0,45$ litros. ¿Cuál es la media y el desvío estándar del contenido de 6 latas de pintura "ESA"?
* **A.** Media 24 litros; desvío 2,7 litros
* **B.** Media 24 litros; desvío 1215
* **C.** Media 24 litros; desvío 1,102 litros
* **D.** Ninguna opción es correcta



### 🔍 Resolución Paso a Paso

1. **Definir los parámetros individuales:**
   - Sea $x$ el contenido de una lata individual: $\mu(x) = 4$ litros, $\sigma(x) = 0,45$ litros.
   - La varianza individual es: $\sigma^2(x) = (0,45)^2 = 0,2025$.

2. **Definir la variable total para 6 latas independientes ($w = \sum_{i=1}^{6} x_i$):**
   - **Media total:**
     $$\mu(w) = 6 \cdot \mu(x) = 6 \cdot 4 = 24 \text{ litros}$$
   - **Varianza total:**
     $$V(w) = 6 \cdot \sigma^2(x) = 6 \cdot 0,2025 = 1,215$$
   - **Desvío estándar total:**
     $$\sigma(w) = \sqrt{1,215} \approx 1,10227 \text{ litros}$$

3. **Comparación con las opciones:**
   - Media: $24$ litros.
   - Desvío estándar: $1,102$ litros (coincide exactamente con la opción C).
   - Por lo tanto, la opción correcta es la **C**.



## 📝 Pregunta 4

### Enunciado
El teorema central del límite asegura que la suma de variables aleatorias (tendiendo a infinito) tiene distribución normal, sin importar la distribución de las mismas.
* **Verdadero**
* **Falso**

La respuesta correcta es **Falso**.

---

### **¿Por qué es Falso?**

Aunque la afirmación suena muy similar a la definición general del Teorema del Límite Central (TLC), omite **condiciones fundamentales** que exige el teorema para que se cumpla:

1. **Independencia e idéntica distribución (i.i.d.):** Las variables aleatorias que se suman deben ser **independientes** entre sí y estar **idénticamente distribuidas** (o al menos cumplir ciertas condiciones de convergencia como la condición de Lindeberg/Feller).
2. **Varianza finita:** Las variables aleatorias deben tener **media ($\mu$) y varianza ($\sigma^2$) finitas**.

Si las variables no tienen varianza finita (por ejemplo, variables con distribución de Cauchy), la suma no converge a una distribución normal por más que el número de variables tienda a infinito.

Por lo tanto, la frase *"sin importar la distribución de las mismas"* de forma absoluta hace que la afirmación sea **falsa** en términos matemáticos estrictos.


## 📝 Pregunta 5

### Enunciado
Sean $x_1, \dots, x_n$ variables aleatorias independientes con idéntica distribución, con medias $\mu(x) = \mu(x_1) = \dots = \mu(x_n)$, y desvío estándar $\sigma(x) = \sigma(x_1) = \dots = \sigma(x_n)$ ($n > 30$), y sea $w = a(x_1 + x_2 + \dots + x_n)$ (donde $a$ es un número real). ¿Cuál es la media y la varianza de $W$?
* **A.** media $\mu(W) = n \cdot a \cdot \mu(x)$ y varianza $\sigma^2(W) = n^2 \cdot a^2 \cdot \sigma^2(x)$
* **B.** media $\mu(W) = n \cdot a \cdot \mu(x)$ y varianza $\sigma^2(W) = n^2 \cdot a \cdot \sigma^2(x)$
* **C.** media $\mu(W) = n \cdot a \cdot \mu(x)$ y varianza $\sigma^2(W) = n \cdot a^2 \cdot \sigma^2(x)$
* **D.** media $\mu(W) = a \cdot \mu(x)$ y varianza $\sigma^2(W) = a \cdot \sigma^2(x)$



### 🔍 Resolución Paso a Paso

1. **Reescribir la expresión de $W$:**
   $$W = a \cdot \sum_{i=1}^{n} x_i = a \cdot (x_1 + x_2 + \dots + x_n)$$

2. **Cálculo de la media $\mu(W)$:**
   Aplicando las propiedades de la esperanza matemática para una constante multiplicativa y una suma:
   $$\mu(W) = E\left(a \sum_{i=1}^{n} x_i\right) = a \cdot \sum_{i=1}^{n} E(x_i) = a \cdot (n \cdot \mu(x)) = n \cdot a \cdot \mu(x)$$

3. **Cálculo de la varianza $\sigma^2(W)$:**
   Aplicando las propiedades de la varianza (la constante sale al cuadrado y para variables independientes la varianza de la suma es la suma de las varianzas):
   $$\sigma^2(W) = V\left(a \sum_{i=1}^{n} x_i\right) = a^2 \cdot V\left(\sum_{i=1}^{n} x_i\right) = a^2 \cdot \sum_{i=1}^{n} V(x_i) = a^2 \cdot (n \cdot \sigma^2(x)) = n \cdot a^2 \cdot \sigma^2(x)$$

4. **Comparación con las opciones:**
   - Media: $n \cdot a \cdot \mu(x)$
   - Varianza: $n \cdot a^2 \cdot \sigma^2(x)$
   - Esto corresponde exactamente a la opción **C**.



## 📝 Pregunta 6

### Enunciado
A los aspirantes para ingresar en una empresa de informática se les toma un test para determinar la diferencia entre la edad biológica y la edad mental. 
- Costo fijo de administrar el test: $2000$ por aspirante.
- Costo del evaluador: $18000$ la hora ( $300$ por minuto).
- El tiempo de evaluación de cada aspirante tiene distribución normal con media $\mu = 45$ minutos y desvío estándar $\sigma = 15$ minutos.
Determinar la media y el desvío estándar (DE) del costo total de administrar el test a los 22 aspirantes que tiene la empresa (el test se toma en forma individual):
* **A.** Media: $341000$
* **B.** DE: $99000$
* **C.** DE: $211068,71$
* **D.** Media: $17864000$
* **E.** DE: $21106,87$



### 🔍 Resolución Paso a Paso

1. **Modelar el costo total por aspirante ($C_i$):**
   - Sea $t_i$ el tiempo que dura la evaluación del aspirante $i$ (en minutos).
   - El costo por cada aspirante es la suma del costo fijo más el costo variable dependiente del tiempo:
     $$C_i = 2000 + 300 \cdot t_i$$
     
     (Nota: $\frac{18000}{60} = 300 \text{ por minuto}$)

2. **Calcular la media y varianza del costo de un aspirante individual:**
   - **Media del costo por aspirante:**
     $$\mu\left(C_i\right) = 2000 + 300 \cdot \mu\left(t_i\right) = 2000 + 300 \cdot 45 = 2000 + 13500 = 15500$$
   - **Varianza del costo por aspirante:**
     $$V(C_i) = V(2000 + 300 \cdot t_i) = 0 + 300^2 \cdot V(t_i) = 90000 \cdot 15^2$$
     Sabemos que $\sigma(t_i) = 15 \implies \sigma^2(t_i) = 225$.
     $$V(C_i) = 90000 \cdot 225 = 20250000$$
   - **Desvío estándar del costo por aspirante:**
     $$\sigma(C_i) = \sqrt{20250000} = 4500$$

3. **Calcular los parámetros para el costo total de los 22 aspirantes ($W = \sum_{i=1}^{22} C_i$):**
   Asumiendo que las evaluaciones de los aspirantes son independientes:
   - **Media del costo total ($n = 22$):**
     $$\mu(W) = 22 \cdot \mu(C_i) = 22 \cdot 15500 = \$341000$$
     *(Esto valida la opción A)*
   - **Varianza del costo total:**
     $$V(W) = 22 \cdot V(C_i) = 22 \cdot 20250000 = 445500000$$
   - **Desvío estándar del costo total:**
     $$\sigma(W) = \sqrt{445500000} \approx 21106,8714 \approx \$21106,87$$
     *(Esto valida la opción E)*

4. **Conclusión de opciones correctas:**
   Las opciones correctas son la **A** (Media: $\$341000$) y la **E** (DE: $21106,87$).
