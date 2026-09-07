# 📊 Autoevaluación de Distribuciones

## ❓ Pregunta 1

**¿Qué condiciones deben verificarse para que una variable aleatoria siga una distribución de Poisson?**

### 🧠 Marco Teórico

Una variable aleatoria discreta $X$ sigue una distribución de Poisson, denotada por $X \sim \text{Poisson}(\lambda)$, si modela el número de veces que ocurre un evento discreto a lo largo de un intervalo continuo (tiempo, área, volumen, etc.). La función de masa de probabilidad (FMP) es:


$$P(X = k) = \frac{e^{-\lambda} \lambda^k}{k!}, \quad \text{para } k \in \{0, 1, 2, \dots\}$$

Las propiedades principales de la media y la varianza son:

* **Esperanza:** $E(X) = \lambda$
* **Varianza:** $Var(X) = \lambda$

### 📝 Análisis Opción por Opción

1. **A. $Var(X) = \lambda^2$**
* **Desarrollo:** Como $Var(X) = \lambda$, igualar la varianza al cuadrado del parámetro es erróneo ($Var(X) \neq \lambda^2$).
* **Conclusión:** ❌ **Incorrecta.**


2. **B. Los sucesos ocurren al azar individual y colectivamente dentro del continuo.**
* **Desarrollo:** Constituye una condición del proceso de Poisson. Los eventos deben ocurrir de forma independiente en intervalos disjuntos, con aleatoriedad uniforme en todo el intervalo continuo.
* **Conclusión:** ✅ **Correcta.**


3. **C. $E(X) = \lambda$**
* **Desarrollo:** La media teórica de una variable de Poisson se define exactamente como $E(X) = \lambda$.
* **Conclusión:** ✅ **Correcta.**


4. **D. $\lambda$ = promedio de ocurrencias dentro del intervalo del continuo**
* **Desarrollo:** El parámetro $\lambda$ expresa la tasa promedio esperada de sucesos dentro de la unidad de medida continua especificada.
* **Conclusión:** ✅ **Correcta.**





## ❓ Pregunta 2

**Según una investigación, el tiempo semanal que los adolescentes dedican a jugar juegos por Internet varía con media $15\text{ h}$ y desvío $1{,}5\text{ h}$. ¿Qué es más probable?**

### 🧠 Marco Teórico

Sea la variable aleatoria continua:


$$X: \text{Tiempo semanal dedicado a juegos por Internet (en horas)}$$

$$X \sim N(\mu = 15, \, \sigma = 1{,}5)$$

Para calcular las probabilidades, transformamos $X$ a la variable normal estándar $Z \sim N(0, 1)$ mediante la estandarización:


$$Z = \frac{X - \mu}{\sigma}$$



### 🔢 Desarrollo de las Opciones

#### **Opción A: $P(X > 18)$**

1. Estandarizamos para $X = 18$:

$$Z = \frac{18 - 15}{1{,}5} = \frac{3}{1{,}5} = 2$$


2. Calculamos la probabilidad de la cola superior:

$$P(X > 18) = P(Z > 2) = 1 - \Phi(2)$$


3. Consultando la tabla de distribución normal estándar ($\Phi(2) \approx 0{,}9772$):

$$P(X > 18) = 1 - 0{,}9772 = 0{,}0228 \quad (2{,}28\%)$$





#### **Opción B: $P(X = 15)$**

1. Por definición de función de densidad para cualquier variable aleatoria continua:

$$P(X = c) = \int_{c}^{c} f(x) \, dx = 0$$


2. En particular:

$$P(X = 15) = 0 \quad (0\%)$$





#### **Opción C: $P(X < 14)$**

1. Estandarizamos para $X = 14$:

$$Z = \frac{14 - 15}{1{,}5} = \frac{-1}{1{,}5} = -\frac{2}{3} \approx -0{,}67$$


2. Calculamos la probabilidad acumulada:

$$P(X < 14) = P(Z < -0{,}67) = \Phi(-0{,}67)$$


3. Utilizando la simetría de la distribución normal $\Phi(-z) = 1 - \Phi(z)$:

$$\Phi(-0{,}67) = 1 - \Phi(0{,}67) \approx 1 - 0{,}7486 = 0{,}2514 \quad (25{,}14\%)$$





### 📊 Comparación de Resultados

$$P(X < 14) \approx 0{,}2514 > P(X > 18) \approx 0{,}0228 > P(X = 15) = 0$$

* **A.** ❌ `[ ]` $2{,}28\%$
* **B.** ❌ `[ ]` $0\%$
* **C.** ✅ `[x]` $25{,}14\%$ (**Es la más probable**)



## ❓ Pregunta 3

**¿Cuáles de las siguientes opciones corresponden al dominio de una variable aleatoria con distribución de Poisson?**

### 🧠 Marco Teórico

La variable aleatoria de Poisson es un modelo de conteo discreto. Representa el número total de ocurrencias en un intervalo, por lo que toma valores enteros desde cero hasta el infinito:


$$\text{Soporte / Dominio: } X \in \{0, 1, 2, 3, \dots\}$$



### 📝 Análisis de las Representaciones Matemáticas

1. **A. $\{0; 1; 2; 3; \dots; n\}$**
* **Desarrollo:** Es un conjunto discreto acotado superiormente por $n$. Representa el espacio muestral de una **distribución Binomial**, no de Poisson.
* **Conclusión:** ❌ **Incorrecta.**


2. **B. $\mathbb{N} \cup \{0\}$**
* **Desarrollo:** $\mathbb{N} = \{1, 2, 3, \dots\}$. La unión con $\{0\}$ resulta en $\{0, 1, 2, 3, \dots\}$.
* **Conclusión:** ✅ **Correcta.**


3. **C. $\{0; 1; 2; 3; 4; \dots\}$**
* **Desarrollo:** Es la extensión por extensión explícita del conjunto de los enteros no negativos.
* **Conclusión:** ✅ **Correcta.**


4. **D. $\mathbb{N}_0$**
* **Desarrollo:** Notación estándar en teoría de conjuntos para los números naturales con el cero incluido ($\mathbb{N}_0 = \mathbb{N} \cup \{0\}$).
* **Conclusión:** ✅ **Correcta.**


5. **E. $(0, +\infty)$**
* **Desarrollo:** Notación de intervalo continuo que abarca todos los números reales estrictamente mayores que cero.
* **Conclusión:** ❌ **Incorrecta.**





## ❓ Pregunta 4

**Sea $X$ una variable aleatoria con distribución normal, ¿cuáles de las siguientes características se verifican?**

### 🧠 Marco Teórico

La función de densidad de probabilidad (FDP) de una distribución normal es:


$$f(x) = \frac{1}{\sigma \sqrt{2\pi}} e^{-\frac{1}{2}\left(\frac{x - \mu}{\sigma}\right)^2}, \quad x \in \mathbb{R}$$



### 📝 Análisis Opción por Opción

1. **A. La función de densidad es una curva simétrica con respecto al desvío.**
* **Desarrollo:** Como la función depende de $(x - \mu)^2$, la simetría ocurre respecto al centro $x = \mu$, no respecto al parámetro de dispersión $\sigma$.
* **Conclusión:** ❌ **Incorrecta.**


2. **B. La función de densidad es una curva simétrica con respecto a la media.**
* **Desarrollo:** $f(\mu - x) = f(\mu + x)$. La línea $x = \mu$ (media) divide a la Campana de Gauss en dos mitades espejadas idénticas.
* **Conclusión:** ✅ **Correcta.**


3. **C. Los parámetros son la media y el desvío o la varianza.**
* **Desarrollo:** La distribución depende exactamente de dos parámetros independientes: la localización $\mu$ (media) y la escala $\sigma$ (desvío estándar) o $\sigma^2$ (varianza).
* **Conclusión:** ✅ **Correcta.**


4. **D. El único parámetro es la media.**
* **Desarrollo:** Es una característica de la distribución de Poisson ($\lambda$), pero la Normal requiere obligatoriamente dos parámetros.
* **Conclusión:** ❌ **Incorrecta.**


5. **E. El área total bajo la función de densidad es $1$.**
* **Desarrollo:** Por el segundo axioma de Kolmogorov para funciones de densidad de probabilidad:

$$\int_{-\infty}^{+\infty} f(x) \, dx = 1$$


* **Conclusión:** ✅ **Correcta.**





## ❓ Pregunta 5

**En un peaje, en la franja horaria de 8 a 10 h, pasan 10 autos, en promedio, por minuto. Se llama $X$: cantidad de autos que pasan por hora. Se puede decir que $X$ sigue una distribución de Poisson ($\lambda = 600$).**

### 🧠 Desarrollo y Ajuste de Escala

1. **Definición del parámetro inicial:**

$$\lambda_{\text{minuto}} = 10 \text{ autos/minuto}$$


2. **Definición de la nueva unidad de tiempo:**

$$t = 1 \text{ hora} = 60 \text{ minutos}$$


3. **Propiedad de aditividad/escalabilidad del parámetro de Poisson:**
Dado que los intervalos son aditivos en procesos de Poisson, el nuevo parámetro $\lambda_{\text{hora}}$ se calcula como:

$$\lambda_{\text{hora}} = \lambda_{\text{minuto}} \times t$$


$$\lambda_{\text{hora}} = 10 \frac{\text{autos}}{\text{minuto}} \times 60 \text{ minutos} = 600 \text{ autos/hora}$$


4. **Definición formal de la variable:**

$$X \sim \text{Poisson}(\lambda = 600)$$



* **Conclusión:** ✅ **Verdadero**



## ❓ Pregunta 6

**Sea $X$ una variable aleatoria con distribución normal, con media $50$ y desvío $5$, ¿cuáles de las siguientes probabilidades son verdaderas? (responder sin hacer cuentas)**

### 🧠 Marco Teórico

$$X \sim N(\mu = 50, \, \sigma = 5)$$

* Media $\mu = 50$
* Simetría alrededor de $\mu = 50 \implies P(X < 50) = P(X > 50) = 0{,}50$
* Las probabilidades siempre son acotadas: $0 \le P(A) \le 1$



### 📝 Análisis Conceptual

1. **A. $P(80) = X(0{,}80)$ es mayor a $50$**
* **Desarrollo:** Presenta inconsistencias de notación y viola la noción fundamental de que cualquier probabilidad debe estar dentro del intervalo $[0, 1]$. Adicionalmente, para variables continuas $P(X = 80) = 0$.
* **Conclusión:** ❌ **Incorrecta.**


2. **B. $P(X > 65)$ es mayor a $0{,}50$**
* **Desarrollo:** Dado que $65 > \mu$, la región $X > 65$ está estrictamente contenida dentro de la cola derecha $X > 50$. Dado que $P(X > 50) = 0{,}50$, el área a la derecha de $65$ debe ser necesariamente menor a $0{,}50$.
* **Conclusión:** ❌ **Incorrecta.**


3. **C. $P(X = 65) = 0$**
* **Desarrollo:** Como $X$ es una variable aleatoria continua, la probabilidad puntual sobre cualquier valor individual de la recta real es identicamente igual a $0$.
* **Conclusión:** ✅ **Correcta.**


4. **D. $P(X < 65)$ es mayor a $0{,}50$**
* **Desarrollo:** La media divide el área en dos mitades iguales: $P(X < 50) = 0{,}50$. Como $65 > 50$, el área acumulada comprende toda la mitad izquierda más la franja comprendida entre $50$ y $65$:

$$P(X < 65) = P(X < 50) + P(50 \le X < 65) = 0{,}50 + P(50 \le X < 65) > 0{,}50$$


* **Conclusión:** ✅ **Correcta.**
