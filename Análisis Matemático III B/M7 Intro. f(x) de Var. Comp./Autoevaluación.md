# 📝 Solucionario de Autoevaluación: Introducción a Funciones de Variable Compleja

> **Descripción General**: Análisis detallado, demostraciones paso a paso y resolución de las preguntas de autoevaluación correspondientes al estudio de funciones de variable compleja.



## 🔍 Preguntas y Soluciones Detalladas

### ❓ Pregunta 1: Raíces de Números Reales Negativos
**Enunciado**: Las dos raíces cuadradas de un número real negativo son números imaginarios puros.  
* **Respuesta**: **Verdadero**  
* **Explicación**: Al calcular la raíz cuadrada de un número real negativo, aparece la unidad imaginaria $i$ multiplicando a un valor real, lo que da como resultado un número imaginario puro.



### ❓ Pregunta 2: Representación Binomial de $f(z) = z^2 - z$
**Enunciado**: La representación de $f(z) = z^2 - z$ como $f(x+iy) = u(x,y) + i v(x,y)$ es:  
* **Respuesta**: **A. $f(x+iy) = (x^2 - y^2 - x) + i(2xy - y)$**  

#### 🛠️ Desarrollo Paso a Paso:
1. Sustituimos $z = x + iy$ en la función $f(z) = z^2 - z$:
   $$f(x+iy) = (x + iy)^2 - (x + iy)$$
2. Desarrollamos el binomio al cuadrado $(x + iy)^2 = x^2 - y^2 + 2ixy$ (recordando que $i^2 = -1$):
   $$f(x+iy) = (x^2 - y^2 + 2ixy) - (x + iy)$$
3. Agrupamos los términos reales y los términos imaginarios por separado:
   $$f(x+iy) = (x^2 - y^2 - x) + i(2xy - y)$$
4. Concluimos que las componentes son:
   * **Parte real**: $u(x,y) = x^2 - y^2 - x$
   * **Parte imaginaria**: $v(x,y) = 2xy - y$



### ❓ Pregunta 3: Cuadrantes de Raíces de Imaginarios Puros
**Enunciado**: Las dos raíces cuadradas de un número imaginario puro (con parte real igual a $0$) están en los cuadrantes donde la parte imaginaria es mayor o igual a $0$.  
* **Respuesta**: **Falso**  
* **Explicación**: Dependiendo del número imaginario puro, sus raíces se ubican en cuadrantes opuestos simétricos respecto al origen, por lo que una de ellas tendrá necesariamente parte imaginaria negativa.



### ❓ Pregunta 4: Ramas de la Función Raíz Cuadrada
**Enunciado**: La función raíz cuadrada tiene dos ramas.  
* **Respuesta**: **Verdadero**  
* **Explicación**: En análisis complejo, la función raíz cuadrada es multivaluada y se divide convencionalmente en dos ramas univaluadas independientes.



### ❓ Pregunta 5: Uso Exclusivo de la Forma Binomial
**Enunciado**: Utilizando solo la forma binomial se puede calcular la raíz cuadrada de un número complejo arbitrario.  
* **Respuesta**: **Verdadero**  
* **Explicación**: Es perfectamente posible plantear y resolver un sistema de ecuaciones algebraicas reales igualando las partes real e imaginaria mediante la expansión binomial directa.



### ❓ Pregunta 6: Representación Binomial del Inverso $f(z) = \frac{1}{z}$
**Enunciado**: La representación de $f(z) = \frac{1}{z}$ como $f(x+iy) = u(x,y) + i v(x,y)$ es:  
* **Respuesta**: **D. $f(x+iy) = \frac{x}{x^2 + y^2} + i \left(\frac{-y}{x^2 + y^2}\right)$**  

#### 🛠️ Desarrollo Paso a Paso:
1. Sustituimos $z = x + iy$ en la función:
   $$f(x+iy) = \frac{1}{x + iy}$$
2. Multiplicamos el numerador y el denominador por el conjugado del denominador $(x - iy)$:
   $$f(x+iy) = \frac{1}{x + iy} \cdot \frac{x - iy}{x - iy}$$
3. Desarrollamos el producto en el denominador usando $(x + iy)(x - iy) = x^2 + y^2$:
   $$f(x+iy) = \frac{x - iy}{x^2 + y^2}$$
4. Separamos las componentes real e imaginaria distribuyendo el denominador común:
   $$f(x+iy) = \frac{x}{x^2 + y^2} + i \left(\frac{-y}{x^2 + y^2}\right)$$

# 📝 Solucionario de Autoevaluación: Introducción a Funciones de Variable Compleja

> **Descripción General**: Análisis detallado, demostraciones paso a paso y resolución de las preguntas de autoevaluación correspondientes al estudio de funciones de variable compleja.



## 🔍 Preguntas y Soluciones Detalladas

### ❓ Pregunta 1: Raíces de Números Reales Negativos
**Enunciado**: Las dos raíces cuadradas de un número real negativo son números imaginarios puros.  
* **Respuesta**: **Verdadero**  
* **Explicación**: Al calcular la raíz cuadrada de un número real negativo, aparece la unidad imaginaria $i$ multiplicando a un valor real, lo que da como resultado un número imaginario puro.



### ❓ Pregunta 2: Representación Binomial de $f(z) = z^2 - z$
**Enunciado**: La representación de $f(z) = z^2 - z$ como $f(x+iy) = u(x,y) + i v(x,y)$ es:  
* **Respuesta**: **A. $f(x+iy) = (x^2 - y^2 - x) + i(2xy - y)$**  

#### 🛠️ Desarrollo Paso a Paso:
1. Sustituimos $z = x + iy$ en la función $f(z) = z^2 - z$:
   $$f(x+iy) = (x + iy)^2 - (x + iy)$$
2. Desarrollamos el binomio al cuadrado $(x + iy)^2 = x^2 - y^2 + 2ixy$ (recordando que $i^2 = -1$):
   $$f(x+iy) = (x^2 - y^2 + 2ixy) - (x + iy)$$
3. Agrupamos los términos reales y los términos imaginarios por separado:
   $$f(x+iy) = (x^2 - y^2 - x) + i(2xy - y)$$
4. Concluimos que las componentes son:
   * **Parte real**: $u(x,y) = x^2 - y^2 - x$
   * **Parte imaginaria**: $v(x,y) = 2xy - y$



### ❓ Pregunta 3: Cuadrantes de Raíces de Imaginarios Puros
**Enunciado**: Las dos raíces cuadradas de un número imaginario puro (con parte real igual a $0$) están en los cuadrantes donde la parte imaginaria es mayor o igual a $0$.  
* **Respuesta**: **Falso**  
* **Explicación**: Dependiendo del número imaginario puro, sus raíces se ubican en cuadrantes opuestos simétricos respecto al origen, por lo que una de ellas tendrá necesariamente parte imaginaria negativa.



### ❓ Pregunta 4: Ramas de la Función Raíz Cuadrada
**Enunciado**: La función raíz cuadrada tiene dos ramas.  
* **Respuesta**: **Verdadero**  
* **Explicación**: En análisis complejo, la función raíz cuadrada es multivaluada y se divide convencionalmente en dos ramas univaluadas independientes.



### ❓ Pregunta 5: Uso Exclusivo de la Forma Binomial
**Enunciado**: Utilizando solo la forma binomial se puede calcular la raíz cuadrada de un número complejo arbitrario.  
* **Respuesta**: **Verdadero**  
* **Explicación**: Es perfectamente posible plantear y resolver un sistema de ecuaciones algebraicas reales igualando las partes real e imaginaria mediante la expansión binomial directa.



### ❓ Pregunta 6: Representación Binomial del Inverso $f(z) = \frac{1}{z}$
**Enunciado**: La representación de $f(z) = \frac{1}{z}$ como $f(x+iy) = u(x,y) + i v(x,y)$ es:  
* **Respuesta**: **D. $f(x+iy) = \frac{x}{x^2 + y^2} + i \left(\frac{-y}{x^2 + y^2}\right)$**  

#### 🛠️ Desarrollo Paso a Paso:
1. Sustituimos $z = x + iy$ en la función:
   $$f(x+iy) = \frac{1}{x + iy}$$
2. Multiplicamos el numerador y el denominador por el conjugado del denominador $(x - iy)$:
   $$f(x+iy) = \frac{1}{x + iy} \cdot \frac{x - iy}{x - iy}$$
3. Desarrollamos el producto en el denominador usando $(x + iy)(x - iy) = x^2 + y^2$:
   $$f(x+iy) = \frac{x - iy}{x^2 + y^2}$$
4. Separamos las componentes real e imaginaria distribuyendo el denominador común:
   $$f(x+iy) = \frac{x}{x^2 + y^2} + i \left(\frac{-y}{x^2 + y^2}\right)$$



### ❓ Pregunta 7: Representación del Conjugado $f(z) = \bar{z}$
**Enunciado**: La representación de $f(z) = \bar{z}$ como $f(x+iy) = u(x,y) + i v(x,y)$ es:  
* **Nota aclaratoria**: La opción que figura como D en el cuestionario original ($f(x+iy) = x + iy$) corresponde a la función identidad $f(z) = z$, por lo que el análisis correcto de la función conjugada se detalla a continuación.

#### 🛠️ Desarrollo Paso a Paso:
1. Sustituimos $z = x + iy$ aplicando la operación de conjugación:
   $$f(x+iy) = \overline{x + iy}$$
2. Por definición, el conjugado invierte el signo de la componente imaginaria:
   $$\overline{x + iy} = x - iy$$
3. Expresándolo en formato estándar de componentes:
   $$f(x+iy) = x + i(-y)$$
   * **Parte real**: $u(x,y) = x$
   * **Parte imaginaria**: $v(x,y) = -y$

### ❓ Pregunta 7: Representación del Conjugado $f(z) = \bar{z}$
**Enunciado**: La representación de $f(z) = \bar{z}$ como $f(x+iy) = u(x,y) + i v(x,y)$ es:  
* **Nota aclaratoria**: La opción que figura como D en el cuestionario original ($f(x+iy) = x + iy$) corresponde a la función identidad $f(z) = z$, por lo que el análisis correcto de la función conjugada se detalla a continuación.

#### 🛠️ Desarrollo Paso a Paso:
1. Sustituimos $z = x + iy$ aplicando la operación de conjugación:
   $$f(x+iy) = \overline{x + iy}$$
2. Por definición, el conjugado invierte el signo de la componente imaginaria:
   $$\overline{x + iy} = x - iy$$
3. Expresándolo en formato estándar de componentes:
   $$f(x+iy) = x + i(-y)$$
   * **Parte real**: $u(x,y) = x$
   * **Parte imaginaria**: $v(x,y) = -y$
