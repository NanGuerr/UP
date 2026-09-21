# 📊 Propiedades en Variables Aleatorias 🎲

Este documento recopila la teoría, demostraciones y ejemplos prácticos detallados sobre el cálculo de la **media (esperanza matemática)** y la **varianza/desvío estándar** de variables aleatorias utilizando sus propiedades algebraicas. Todas las expresiones matemáticas han sido corregidas y formateadas en código LaTeX estándar (`\frac`, delimitadores correctos con `\left` y `\right`, etc.).



## 📈 1. Introducción: Motivación del Uso de Propiedades

Supongamos que una empresa argentina que planea desarrollar una nueva red social digital a nivel nacional definió 5 etapas para el desarrollo del proyecto total. Basándose en su experiencia, define el tiempo estimado de duración (en meses):

| Etapa | A | B | C | D | E |
| :---: | :---: | :---: | :---: | :---: | :---: |
| **Tiempo (meses)** | 2,1 | 2,5 | 2,4 | 2,2 | 2,3 |

Si calculamos el tiempo medio $\mu(x)$ y la varianza $\sigma^2(x)$ de las etapas, tenemos:

$$\mu(x) = \frac{2,1 + 2,5 + 2,4 + 2,2 + 2,3}{5} = 2,3$$

$$\sigma^2(x) = \frac{\sum_{i=1}^{5} \left(x_i - \mu(x)\right)^2}{5}$$

$$\sigma^2(x) = \frac{(2,1 - 2,3)^2 + (2,5 - 2,3)^2 + (2,4 - 2,3)^2 + (2,2 - 2,3)^2 + (2,3 - 2,3)^2}{5} = 0,02$$

### ⏱️ Efecto de una variación lineal en el tiempo
Llamemos $y$ a la nueva variable de tiempo de demora de una etapa sumando un mes de retraso general: $y = x + 1$. 

Volvemos a calcular la media $\mu(y)$:
$$\mu(y) = \frac{\sum_{i=1}^{5} \left(y_i\right)}{5} = \frac{(2,1 + 1) + (2,5 + 1) + (2,4 + 1) + (2,2 + 1) + (2,3 + 1)}{5} = \mu(x) + \frac{5}{5} = \mu(x) + 1$$

Observamos que la media aumentó en 1 mes, como era de esperar. Para calcular la nueva varianza:
$$\sigma^2(y) = \frac{\sum_{i=1}^{5} \left(y_i - \mu(y)\right)^2}{5} = \frac{\sum_{i=1}^{5} \left((x_i + 1) - (2,3 + 1)\right)^2}{5} = \frac{\sum_{i=1}^{5} \left(x_i - 2,3\right)^2}{5} = \sigma^2(x)$$
La varianza se mantiene exactamente igual ($0,02$), ya que al sumar y restar una constante en cada término, la dispersión respecto a la media no cambia.



## 🎯 2. Propiedades de la Media o Esperanza Matemática ($E(x)$ o $\mu(x)$)

Sería engorroso realizar el cálculo completo cada vez que realizamos una variación lineal a una variable. Por ello, se utilizan las siguientes propiedades fundamentales:

Sean $x$ e $y$ variables aleatorias; $a$ y $b$ constantes reales.

1. **Media de una constante:** 
   $$E(a) = \mu(a) = a$$
   *La media de una constante es la misma constante.*
2. **Media de una suma con constante:** 
   $$E(x \pm a) = \mu(x \pm a) = \mu(x) \pm a$$
3. **Media de un producto por constante:** 
   $$E(a \cdot x) = \mu(a \cdot x) = a \cdot \mu(x)$$
4. **Media de la suma de dos variables aleatorias:** 
   $$E(x \pm y) = \mu(x \pm y) = \mu(x) \pm \mu(y)$$
5. **Media de una combinación lineal general:** 
   $$E(a \cdot x \pm b \cdot y) = \mu(a \cdot x \pm b \cdot y) = a \cdot \mu(x) \pm b \cdot \mu(y)$$
6. **Media del producto de variables independientes:** 
   $$E(x \cdot y) = \mu(x \cdot y) = \mu(x) \cdot \mu(y) \quad \text{para } x \text{ e } y \text{ independientes}$$
7. **Propiedad de nulidad de desvíos:** 
   $$\sum_{i=1}^{N} \left(x_i - \mu(x)\right) = 0$$



## 📉 3. Propiedades de la Varianza ($V(x)$ o $\sigma^2(x)$)

Sean $x$ e $y$ variables aleatorias; $a$ y $b$ constantes reales.

1. **Varianza de una constante:** 
   $$V(a) = \sigma^2(a) = 0$$
   *La varianza de una constante es cero, ya que no presenta dispersión.*
2. **Varianza ante la suma o resta de una constante:** 
   $$V(x \pm a) = \sigma^2(x \pm a) = \sigma^2(x)$$
   *Sumar o restar una constante desplaza la distribución pero no altera su dispersión.*
3. **Varianza ante el producto por una constante:** 
   $$V(a \cdot x) = \sigma^2(a \cdot x) = a^2 \cdot \sigma^2(x)$$
   *Nota importante: la constante sale elevada al cuadrado.*
4. **Varianza de la suma o resta de variables independientes:** 
   $$V(x \pm y) = \sigma^2(x \pm y) = \sigma^2(x) + \sigma^2(y) \quad \text{para } x \text{ e } y \text{ independientes}$$
   *¡Atención! Tanto para la suma como para la resta de variables independientes, las varianzas **siempre se suman**.*
5. **Varianza de una combinación lineal general:** 
   $$V(a \cdot x \pm b \cdot y) = \sigma^2(a \cdot x \pm b \cdot y) = a^2 \cdot \sigma^2(x) + b^2 \cdot \sigma^2(y) \quad \text{para } x \text{ e } y \text{ independientes}$$

> ⚠️ **Importante sobre el Desvío Estándar:** Para hallar el desvío estándar $\sigma(w)$, debemos calcular la **raíz cuadrada de la varianza** ($\sigma(w) = \sqrt{\sigma^2(w)}$), ya que **no existen propiedades directas para el desvío estándar** debido a que la raíz cuadrada no es distributiva con respecto a la suma ni a la resta.



## 📝 4. Ejemplos Prácticos Resueltos

### Ejemplo 1: Suma de múltiples variables idénticas e independientes
Utilizando las propiedades, hallar la media y el desvío estándar de la variable aleatoria $w$, siendo:
$$w = \sum_{i=1}^{5} x_i = x_1 + x_2 + x_3 + x_4 + x_5$$
Donde $\mu(x_i) = 13$ y $\sigma^2(x_i) = 7$ para $i = 1, 2, 3, 4, 5$. Todas las $x_i$ son variables aleatorias independientes.

* **Cálculo de la media:**
  $$\mu(w) = \mu(x_1 + x_2 + x_3 + x_4 + x_5) = \mu(x_1) + \mu(x_2) + \mu(x_3) + \mu(x_4) + \mu(x_5)$$
  $$\mu(w) = 13 + 13 + 13 + 13 + 13 = 5 \times 13 = 65$$

* **Cálculo de la varianza y desvío estándar:**
  $$\sigma^2(w) = \sigma^2(x_1 + x_2 + x_3 + x_4 + x_5) = \sigma^2(x_1) + \sigma^2(x_2) + \sigma^2(x_3) + \sigma^2(x_4) + \sigma^2(x_5)$$
  $$\sigma^2(w) = 7 + 7 + 7 + 7 + 7 = 35$$
  $$\sigma(w) = \sqrt{35} \approx 5,916$$

* **Respuesta final:** 
  $$\mu(w) = 65, \quad \sigma(w) = 5,916$$



### Ejemplo 2: Combinación lineal de dos variables
Utilizando las propiedades, hallar la media y el desvío estándar de la variable aleatoria $w = 6x - 3y + 5$, sabiendo que:
$$\mu(x) = 7, \quad \sigma(x) = 2, \quad \mu(y) = 8, \quad \sigma^2(y) = 16$$
(Considerando $x$ e $y$ como variables aleatorias independientes).

* **Aplicación para la media:**
  $$\mu(w) = \mu(6x - 3y + 5) = 6 \cdot \mu(x) - 3 \cdot \mu(y) + 5$$
  $$\mu(w) = 6 \cdot 7 - 3 \cdot 8 + 5 = 42 - 24 + 5 = 23$$

* **Aplicación para la varianza:**
  $$\sigma^2(w) = \sigma^2(6x - 3y + 5) = 6^2 \cdot \sigma^2(x) + (-3)^2 \cdot \sigma^2(y) + 0$$
  Como $\sigma(x) = 2$, entonces $\sigma^2(x) = 2^2 = 4$. Por lo tanto:
  $$\sigma^2(w) = 36 \cdot 4 + 9 \cdot 16 = 144 + 144 = 288$$

* **Aplicación para el desvío estándar:**
  $$\sigma(w) = \sqrt{\sigma^2(w)} = \sqrt{288} \approx 16,97$$



### Ejemplo 3: Varianza con coeficientes y constantes
Hallar la varianza de la variable aleatoria $w = 2x - 3y + 5$, sabiendo que $\sigma^2(x) = 12$ y $\sigma(y) = 2$.

* **Planteo de la propiedad:**
  $$\sigma^2(w) = 2^2 \cdot \sigma^2(x) + (-3)^2 \cdot \sigma^2(y) + 0$$
  Sabemos que $\sigma(y) = 2 \implies \sigma^2(y) = 2^2 = 4$.
* **Operatoria numérica:**
  $$\sigma^2(w) = 4 \cdot 12 + 9 \cdot 4 = 48 + 36 = 84$$
