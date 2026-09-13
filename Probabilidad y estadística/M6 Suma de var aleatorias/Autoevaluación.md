# 📚 Paso a Paso Resolutivo: Autoevaluación - Propiedades de la Media y la Varianza. Teorema Central del Límite

Este documento presenta la resolución detallada, paso a paso, de cada uno de los ejercicios de la **Autoevaluación sobre Propiedades de la Media y la Varianza, y el Teorema Central del Límite**. Las expresiones matemáticas han sido rigurosamente formateadas utilizando código LaTeX estándar (empleando correctamente comandos como `\frac`, delimitadores simétricos como `\left` y `\right`, y sin incluir referencias ni citas bibliográficas).



## 📝 Pregunta 1

### Enunciado
Si $x$ e $y$ son dos variables aleatorias independientes con distribución normal, siendo $w = x - 3y + 7$, sabiendo que $\sigma(x) = 8$ y $\sigma(y) = 4$. ¿Cuál es el valor de $\sigma(w)$?

* **A.** Ninguna opción es correcta
* **B.** 10
* **C.** 3
* **D.** 28
* **E.** 100



### 🔍 Resolución Paso a Paso

1. **Identificar la variable combinación lineal:**
   Se define la variable aleatoria:
   $$w = x - 3y + 7$$
   Aquí, los coeficientes son $1$ para $x$, $-3$ para $y$, y la constante es $7$. Las variables $x$ e $y$ son independientes.

2. **Aplicar las propiedades de la varianza:**
   La varianza de una combinación lineal de variables aleatorias independientes se calcula elevando al cuadrado cada coeficiente y multiplicándolo por la varianza de su respectiva variable. La varianza de una constante es cero:
   $$V(w) = V(x - 3y + 7) = 1^2 \cdot V(x) + (-3)^2 \cdot V(y) + 0$$

3. **Calcular las varianzas individuales a partir de los desvíos estándar:**
   - Dado que $\sigma(x) = 8$, su varianza es:
     $$V(x) = \sigma^2(x) = 8^2 = 64$$
   - Dado que $\sigma(y) = 4$, su varianza es:
     $$V(y) = \sigma^2(y) = 4^2 = 16$$

4. **Sustituir los valores en la fórmula de la varianza:**
   $$V(w) = 1 \cdot (64) + 9 \cdot (16)$$
   $$V(w) = 64 + 144 = 208$$

5. **Calcular el desvío estándar de $w$ ($\sigma(w)$):**
   Recordemos que el desvío estándar es la raíz cuadrada positiva de la varianza:
   $$\sigma(w) = \sqrt{V(w)} = \sqrt{208} \approx 14,42$$
   *Nota:* Como el valor obtenido ($14,42$) no coincide con ninguna de las opciones enteras dadas ($10, 3, 28, 100$), la opción correcta es **"Ninguna opción es correcta"**.



## 📝 Pregunta 2

### Enunciado
Determinar las opciones correctas (las incorrectas restan puntos):
* **Contexto:** El tiempo de respuesta del chatbot tiene una media de $16$ segundos, con un desvío estándar de $2,7$ segundos. Un error en la codificación aumentó un $15\%$ el tiempo de respuesta del chatbot.
* **A.** Sea $W = 3x + 100$, la varianza de $W = 90000$
* **B.** Sea $W =$ el tiempo de respuesta de 45 respuestas con el chat sin error de codificación, $P(W > 740 \text{ segundos}) = 0,135$
* **C.** La media y el desvío estándar del tiempo que tarda en responder 50 preguntas el chat con error en la codificación son, respectivamente: $920$ segundos y $21,96$ segundos.
* **D.** Para hallar la media y el desvío estándar de la variable tiempo que tarda en responder 50 preguntas el chat con error en la codificación se utilizó el teorema central del límite.



### 🔍 Análisis y Resolución Paso a Paso

1. **Análisis de la situación con error de codificación:**
   - Tiempo original sin error: $\mu = 16$ segundos, $\sigma = 2,7$ segundos.
   - El error aumenta el tiempo de respuesta en un $15\%$, lo que significa que el nuevo tiempo medio por pregunta es:
     $$\mu_{\text{error}} = 16 \cdot (1 + 0,15) = 16 \cdot 1,15 = 18,4 \text{ segundos}$$
   - El nuevo desvío estándar se incrementa en la misma proporción lineal:
     $$\sigma_{\text{error}} = 2,7 \cdot 1,15 = 3,105 \text{ segundos}$$

2. **Evaluación de la Opción C (Suma de 50 preguntas con error):**
   - Para $n = 50$ respuestas independientes con error, la variable suma $W = \sum_{i=1}^{50} x_i$ tiene:
     - **Media:** $\mu(W) = n \cdot \mu_{\text{error}} = 50 \cdot 18,4 = 920 \text{ segundos}$.
     - **Varianza:** $V(W) = n \cdot \sigma_{\text{error}}^2 = 50 \cdot (3,105)^2 = 50 \cdot 9,641025 = 482,05125$.
     - **Desvío estándar:** $\sigma(W) = \sqrt{482,05125} \approx 21,9556 \approx 21,96 \text{ segundos}$.
   - Por lo tanto, la opción **C** es **correcta**.

3. **Evaluación de la Opción D:**
   - Para hallar la media y el desvío estándar de la suma o promedio de una gran cantidad de variables independientes ($n = 50 > 30$), el soporte teórico fundamental es el **Teorema Central del Límite**. Por lo tanto, la opción **D** es **correcta**.



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



### 🔍 Resolución Paso a Paso

1. **Fundamento teórico del Teorema Central del Límite (TCL):**
   El TCL establece que, bajo condiciones generales (variables independientes e idénticamente distribuidas con media y varianza finitas), la distribución de la suma (o promedio) de $n$ variables aleatorias se aproxima a una distribución normal a medida que $n$ crece hacia el infinito, **independientemente de cuál sea la distribución original de las variables**.

2. **Conclusión:**
   La afirmación es completamente **Verdadero**.



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
- Costo fijo de administrar el test: $\$2000$ por aspirante.
- Costo del evaluador: $\$18000$ la hora ($\$300$ por minuto).
- El tiempo de evaluación de cada aspirante tiene distribución normal con media $\mu = 45$ minutos y desvío estándar $\sigma = 15$ minutos.
Determinar la media y el desvío estándar (DE) del costo total de administrar el test a los 22 aspirantes que tiene la empresa (el test se toma en forma individual):
* **A.** Media: $\$341000$
* **B.** DE: $\$99000$
* **C.** DE: $211068,71$
* **D.** Media: $\$17864000$
* **E.** DE: $21106,87$



### 🔍 Resolución Paso a Paso

1. **Modelar el costo total por aspirante ($C_i$):**
   - Sea $t_i$ el tiempo que dura la evaluación del aspirante $i$ (en minutos).
   - El costo por cada aspirante es la suma del costo fijo más el costo variable dependiente del tiempo:
     $$C_i = 2000 + 300 \cdot t_i$$
     *(Nota: $\$18000 \text{ la hora} = \frac{18000}{60} = \$300 \text{ por minuto}$)*

2. **Calcular la media y varianza del costo de un aspirante individual:**
   - **Media del costo por aspirante:**
     $$\mu(C_i) = 2000 + 300 \cdot \mu(t_i) = 2000 + 300 \cdot 45 = 2000 + 13500 = \$15500$$
   - **Varianza del costo por aspirante:**
     $$V(C_i) = V(2000 + 300 \cdot t_i) = 0 + 300^2 \cdot V(t_i) = 90000 \cdot 15^2$$
     Sabemos que $\sigma(t_i) = 15 \implies \sigma^2(t_i) = 225$.
     $$V(C_i) = 90000 \cdot 225 = 20250000$$
   - **Desvío estándar del costo por aspirante:**
     $$\sigma(C_i) = \sqrt{20250000} = \$4500$$

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
