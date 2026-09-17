# 📘 Integrales Dobles sobre Rectángulos Guía de Resolución Paso a Paso




## 📌 Introducción

El presente documento ofrece la resolución matemática detallada, rigurosa y justificada de cada una de las 5 preguntas que integran la **Autoevaluación de Integrales Dobles e Iteradas sobre Rectángulos**. Todos los desarrollos y fundamentaciones conceptuales se encuentran respaldados explícitamente por las definiciones, teoremas y propiedades expuestas en el **Apunte Teórico Oficial de la Cátedra** (*Integrales dobles sobre rectángulos. Integrales iteradas*).



## ❓ Pregunta 1

**Consigna:**  
Sea el rectángulo $R = [1,2] \times [-1,1]$, entonces $\iint_{R} f(x,y) \, \text{d}A = \dots$  
Indicar todas las respuestas correctas *(Seleccione hasta 4 opciones)*.

**Opciones planteadas:**
* **A.** $\int_{1}^{2} \int_{-1}^{1} f(x,y) \, \text{d}y \, \text{d}x$
* **B.** $\int_{-1}^{1} \int_{1}^{2} f(x,y) \, \text{d}x \, \text{d}y$
* **C.** $\int_{1}^{2} \int_{-1}^{1} f(x,y) \, \text{d}x \, \text{d}y$
* **D.** $\int_{-1}^{1} \int_{1}^{2} f(x,y) \, \text{d}y \, \text{d}x$

### 💡 Desarrollo Teórico y Justificación Paso a Paso

1. **Definición del dominio $R$:** La notación del producto cartesiano de intervalos $R = [a,b] \times [c,d]$ establece de manera unívoca que la variable independiente $x$ varía en el intervalo cerrado $[a,b] = [1,2]$, mientras que la variable $y$ varía en el intervalo $[c,d] = [-1,1]$. Es decir:
   $$1 \le x \le 2 \quad \text{y} \quad -1 \le y \le 1$$

2. **Aplicación del Teorema de Fubini:** De acuerdo con el apunte teórico, el Teorema de Fubini establece que para cualquier función continua $f$ sobre un rectángulo $R = [a,b] \times [c,d]$, la integral doble equivale a las dos integrales iteradas posibles:
   $$\iint_{R} f(x,y) \, \text{d}A = \int_{a}^{b} \int_{c}^{d} f(x,y) \, \text{d}y \, \text{d}x = \int_{c}^{d} \int_{a}^{b} f(x,y) \, \text{d}x \, \text{d}y$$

3. **Evaluación de los dos órdenes de integración posibles:**
   * Integrando primero respecto de $y$ (de $-1$ a $1$) y luego respecto de $x$ (de $1$ a $2$):
     $$\int_{1}^{2} \int_{-1}^{1} f(x,y) \, \text{d}y \, \text{d}x \implies \text{Coincide con la Opción A.}$$
   * Integrando primero respecto de $x$ (de $1$ a $2$) y luego respecto de $y$ (de $-1$ a $1$):
     $$\int_{-1}^{1} \int_{1}^{2} f(x,y) \, \text{d}x \, \text{d}y \implies \text{Coincide con la Opción B.}$$

4. **Análisis de las opciones incorrectas (C y D):**
   * La **Opción C** presenta los límites exteriores de $1$ a $2$ e interiores de $-1$ a $1$, pero coloca el orden de los diferenciales como $\text{d}x \, \text{d}y$. Esto implicaría erróneamente que $x$ varía entre $-1$ y $1$ y $y$ varía entre $1$ y $2$.
   * La **Opción D** intercambia los límites exteriores e interiores sin adaptar el orden de los diferenciales, asignando límites incoherentes a las variables.

**✅ Respuesta Correcta:** Opciones **A** y **B**.



## ❓ Pregunta 2

**Consigna:**  
Calcular la integral iterada:
$$\int_{0}^{2} \int_{1}^{3} (x+2y)^{3} \, \text{d}x \, \text{d}y = \dots$$

**Opciones planteadas:**
* **A.** $328$
* **B.** $600$
* **C.** $104$
* **D.** $336$

### 💡 Desarrollo Matemático Paso a Paso

1. **Paso 1: Resolución de la integral interior (respecto a $x$):**  
   Mantenemos la variable $y$ constante e integramos el término $(x+2y)^{3}$ con respecto a $x$:
   $$\int_{1}^{3} (x+2y)^{3} \, \text{d}x = \left[ \frac{(x+2y)^{4}}{4} \right]_{x=1}^{x=3}$$
   Evaluamos mediante la Regla de Barrow en los límites $x=3$ y $x=1$:
   $$\left[ \frac{(x+2y)^{4}}{4} \right]_{x=1}^{x=3} = \frac{(3+2y)^{4} - (1+2y)^{4}}{4}$$

2. **Paso 2: Integración del resultado (respecto a $y$):**  
   Sustituimos la función obtenida en la integral exterior respecto a $y$ desde $y=0$ hasta $y=2$:
   $$I = \int_{0}^{2} \frac{(3+2y)^{4} - (1+2y)^{4}}{4} \, \text{d}y = \frac{1}{4} \int_{0}^{2} (3+2y)^{4} \, \text{d}y - \frac{1}{4} \int_{0}^{2} (1+2y)^{4} \, \text{d}y$$
   Aplicamos la primitiva para un término de la forma $(a+2y)^{4}$, cuya integral respecto a $y$ es $\frac{(a+2y)^{5}}{5 \cdot 2} = \frac{(a+2y)^{5}}{10}$:
   * **Primera integral:**
     $$\int_{0}^{2} (3+2y)^{4} \, \text{d}y = \left[ \frac{(3+2y)^{5}}{10} \right]_{0}^{2} = \frac{(3+4)^{5} - (3+0)^{5}}{10} = \frac{7^{5} - 3^{5}}{10} = \frac{16807 - 243}{10} = \frac{16564}{10}$$
   * **Segunda integral:**
     $$\int_{0}^{2} (1+2y)^{4} \, \text{d}y = \left[ \frac{(1+2y)^{5}}{10} \right]_{0}^{2} = \frac{(1+4)^{5} - (1+0)^{5}}{10} = \frac{5^{5} - 1^{5}}{10} = \frac{3125 - 1}{10} = \frac{3124}{10}$$

3. **Paso 3: Resta y simplificación final:**  
   Uniendo ambas partes divididas por $4$:
   $$I = \frac{1}{4} \left( \frac{16564}{10} - \frac{3124}{10} \right) = \frac{1}{4} \left( \frac{13440}{10} \right) = \frac{1}{4} (1344) = 336$$

**✅ Respuesta Correcta:** Opción **D** ($336$).



## ❓ Pregunta 3

**Consigna:**  
La integral doble debajo de una superficie dada por una función continua $z=f(x,y)$ sobre un rectángulo $R=[a,b] \times [c,d]$ representa el volumen por debajo de la superficie y por encima del rectángulo:

**Opciones planteadas:**
* **A.** Siempre
* **B.** A veces
* **C.** Nunca

### 💡 Desarrollo Teórico y Justificación Paso a Paso

1. **Revisión del Teorema en el Apunte Teórico:** En la sección "Teorema de Fubini - Interpretación intuitiva" del apunte oficial se expresa textualmente:
   > *"Si $f(x,y) \ge 0$ podemos interpretar $\iint_{R} f(x,y) \, \text{d}A$ como el volumen del sólido que se encuentra arriba de $R$ y debajo de la superficie $z=f(x,y)$."*

2. **Análisis de la restricción $f(x,y) \ge 0$:** La integral doble calcula el volumen físico geométrico en el sentido estricto únicamente si la función es no negativa en todo el dominio $R$. Si la función adopta valores negativos en alguna región de $R$, las regiones por debajo del plano $xy$ aportan un valor de integración negativo, resultando en un "volumen neto con signo" y no en el volumen geométrico total.

3. **Conclusión:** Como la consigna no especifica que $f(x,y) \ge 0$, la afirmación no se cumple "siempre", sino únicamente cuando la función sea no negativa sobre $R$.

**✅ Respuesta Correcta:** Opción **B** (A veces).



## ❓ Pregunta 4

**Consigna:**  
El volumen debajo de la superficie $z = x \cdot y$ sobre el rectángulo $R = [-1,1] \times [0,1]$ se puede calcular como $V = \int_{-1}^{1} \int_{0}^{1} x \cdot y \, \text{d}x \, \text{d}y$.

**Opciones planteadas:**
* Verdadero
* Falso

### 💡 Desarrollo Teórico y Justificación Paso a Paso

1. **Verificación del signo de la función $z = f(x,y) = x \cdot y$:**  
   Analizamos el dominio $R = [-1,1] \times [0,1]$ donde $-1 \le x \le 1$ y $0 \le y \le 1$:
   * Para la subregión $x \in [-1,0)$ y $y \in (0,1]$, el producto $z = x \cdot y < 0$ (la superficie está por debajo del plano $xy$).
   * Para la subregión $x \in (0,1]$ y $y \in (0,1]$, el producto $z = x \cdot y > 0$.

   Al tomar valores negativos en la mitad izquierda del rectángulo, la integral directa de $x \cdot y$ produce la cancelación por simetría de ambas regiones:
   $$\int_{0}^{1} \int_{-1}^{1} x \cdot y \, \text{d}x \, \text{d}y = \int_{0}^{1} y \left[ \frac{x^{2}}{2} \right]_{-1}^{1} \text{d}y = \int_{0}^{1} y \cdot (0) \, \text{d}y = 0$$
   Un volumen geométrico real no puede ser $0$.

2. **Incoherencia en los límites expuestos en la fórmula planteada:**  
   Además, la expresión propuesta en la consigna es $V = \int_{-1}^{1} \int_{0}^{1} x \cdot y \, \text{d}x \, \text{d}y$. En esta integral iterada, los límites interiores son de $0$ a $1$ para la variable $x$, y los exteriores de $-1$ a $1$ para la variable $y$. Esto correspondería al rectángulo $[0,1] \times [-1,1]$, lo cual distorsiona los ejes del dominio original $R = [-1,1] \times [0,1]$.

3. **Conclusión:** Por ambas razones (la presencia de valores negativos de $f(x,y)$ que invalidan la interpretación directa de volumen y la mala asignación del dominio en la fórmula), la afirmación es falsa.

**✅ Respuesta Correcta:** **Falso**.



## ❓ Pregunta 5

**Consigna:**  
Si se quiere calcular $\int_{a}^{b} \int_{c}^{d} f(x,y) \, \text{d}y \, \text{d}x$, entonces $\int_{c}^{d} f(x,y) \, \text{d}y$:

**Opciones planteadas:**
* **A.** Es una función que depende de $y$ que luego se debe integrar respecto de $x$.
* **B.** Es una función que depende de $y$ que luego se debe integrar respecto de $y$.
* **C.** Es una función que depende de $x$ que luego se debe integrar respecto de $x$.
* **D.** Es una función que depende de $x$ que luego se debe integrar respecto de $y$.

### 💡 Desarrollo Teórico y Justificación Paso a Paso

1. **Análisis de la definición de Integral Iterada:** En las páginas 2 y 3 del apunte de la cátedra se define textualmente:
   > *"Empleamos la notación $\int_{c}^{d} f(x,y) \, \text{d}y$ para indicar que $x$ se mantiene fija y que $f(x,y)$ se integra con respecto a $y$ desde $y=c$ hasta $y=d$. Entonces $\int_{c}^{d} f(x,y) \, \text{d}y$ es un número que depende de $x$, de modo que define una función de $x$. Llamamos $A(x) = \int_{c}^{d} f(x,y) \, \text{d}y$."*

2. **Proceso del cálculo:** Al realizar la evaluación respecto de $y$ usando la Regla de Barrow en los límites $y=c$ e $y=d$, la variable $y$ queda completamente reemplazada por constantes. El resultado parcial es una expresión $A(x)$ que depende únicamente de la variable libre $x$.

3. **Siguiente paso:** Dicha función $A(x)$ es la que posteriormente se integra en la integral exterior respecto de $x$ en el intervalo $[a,b]$:
   $$\int_{a}^{b} A(x) \, \text{d}x$$

**✅ Respuesta Correcta:** Opción **C** (*Es una función que depende de $x$ que luego se debe integrar respecto de $x$*).



## 📊 Tabla Resumen de Soluciones Oficiales

| Pregunta | Concepto Clave Evaluado | Respuesta Correcta |
| :---: | :--- | :--- |
| **1** | Planteo de integrales iteradas (Teorema de Fubini) | **Opciones A y B** |
| **2** | Cálculo algebraico de integral iterada sobre rectángulo | **Opción D ($336$)** |
| **3** | Interpretación geométrica de la integral doble como volumen | **Opción B (A veces)** |
| **4** | Condición de no negatividad y asignación de dominio | **Falso** |
| **5** | Naturaleza matemática de la integral parcial interior | **Opción C** |
