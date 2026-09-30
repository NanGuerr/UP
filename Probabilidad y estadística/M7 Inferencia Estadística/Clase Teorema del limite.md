# 📊 Resolución de Ejercicio de Estadística y Redes 💻📈

> **Módulo 6: Práctico - Ejercicio 8**
> **Tema:** Variables Aleatorias, Esperanza, Varianza y Teorema Central del Límite.

---

## 📝 Enunciado del Problema

Un servidor de red gestiona el tráfico de paquetes de datos de dos tipos: pequeños **tipo A** (aproximadamente, cuyo tamaño $x$ es una variable aleatoria con media $10 \text{ KB}$ y desvío estándar $3 \text{ KB}$) y pequeños **tipo B** (tamaño de $y$, con media $7.5 \text{ KB}$ y desvío estándar $2.3 \text{ KB}$).

Durante un intervalo de alta demanda, el servidor procesa **$30$ paquetes tipo A** y **$50$ paquetes tipo B**.

1. **a)** Escribir la fórmula de la variable aleatoria $W$ de tamaño total del tráfico procesado (en $\text{ KB}$).
2. **b)** Si el total de tráfico procesado superara los $700 \text{ KB}$, el sistema entra en modo de congestión crítica, y se activa un protocolo de control. Calcular la probabilidad de que se active el protocolo de congestión crítica.
3. **c)** Determinar el umbral de tráfico (en $\text{ KB}$) que solo se supera el $20\%$ de las veces. Interpretar el resultado en el contexto de administración de red.

---

## 📐 Procedimiento y Desarrollo Paso a Paso

### 📌 Datos Iniciales y Parámetros

* **Paquetes Tipo A ($x$):**
* Cantidad: $n_1 = 30$
* Media poblacional: $\mu(x) = 10 \text{ KB}$
* Desvío estándar: $\sigma(x) = 3 \text{ KB}$ (Varianza: $\sigma^2(x) = 9$)


* **Paquetes Tipo B ($y$):**
* Cantidad: $n_2 = 50$
* Media poblacional: $\mu(y) = 7.5 \text{ KB}$
* Desvío estándar: $\sigma(y) = 2.3 \text{ KB}$ (Varianza: $\sigma^2(y) = 2.3^2 = 5.29$)



---

### 🔣 Inciso a): Fórmula de la variable aleatoria $W$ (Tamaño total del tráfico)

Para calcular el tamaño total del tráfico procesado ($W$), debemos sumar el tamaño individual de cada uno de los $30$ paquetes de tipo A y los $50$ paquetes de tipo B:

$$W = \sum_{i=1}^{30} X_i + \sum_{i=1}^{50} Y_i$$

* **Explicación:** No se multiplica directamente $30 \cdot x$, ya que cada paquete es una variable aleatoria independiente con su propio peso individual alrededor de la media, por lo que se modela mediante la suma de las variables aleatorias correspondientes.

---

### 📈 Inciso b): Probabilidad de activación del protocolo de congestión crítica

Queremos calcular la probabilidad de que el tráfico total supere los $700 \text{ KB}$:

$$P(W > 700)$$

#### 1. Cálculo de la Esperanza (Media) de $W$:

Por las propiedades de la esperanza matemática para sumas de variables aleatorias:

$$\mu(W) = \sum_{i=1}^{30} \mu(X_i) + \sum_{i=1}^{50} \mu(Y_i)$$

$$\mu(W) = (30 \cdot 10) + (50 \cdot 7.5) = 300 + 375 = 675 \text{ KB}$$

#### 2. Cálculo de la Varianza y Desvío Estándar de $W$:

Las varianzas siempre se suman (incluso si hay restas entre variables, las varianzas se acumulan):

$$\sigma^2(W) = \sum_{i=1}^{30} \sigma^2(X_i) + \sum_{i=1}^{50} \sigma^2(Y_i)$$

$$\sigma^2(W) = (30 \cdot 9) + (50 \cdot 2.3^2) = 270 + (50 \cdot 5.29) = 270 + 264.5 = 534.5$$

Para obtener el desvío estándar, aplicamos la raíz cuadrada a la varianza total:

$$\sigma(W) = \sqrt{534.5} \approx 23.119 \text{ KB}$$

#### 3. Aplicación del Teorema Central del Límite (TCL):

Dado que estamos sumando una cantidad grande de variables aleatorias independientes ($n = 30 + 50 = 80 \ge 30$), por el **Teorema Central del Límite**, la variable $W$ se distribuye de forma **aproximadamente normal**:

$$W \sim N(\mu = 675, \, \sigma = 23.119)$$

*(A partir de aquí, se estandariza la variable para buscar el valor en la tabla de la distribución normal estándar y hallar $P(W > 700)$).*

---

### 🎯 Inciso c): Determinación del umbral de tráfico (Percentil 80)

Se busca un umbral de tráfico (que llamaremos $W_{80}$) tal que **solo se supere el $20\%$ de las veces**.

* Si a la derecha queda el $20\%$, a la izquierda queda acumulado el $80\%$ de los datos.
* Esto significa que debemos buscar el **percentil 80** ($P_{80}$) de la distribución normal de $W$.

$$\text{Área a la izquierda} = 0.80$$

Utilizando la media $\mu(W) = 675$ y el desvío estándar $\sigma(W) = 23.119$, se busca el valor correspondiente en la normal estándarizada aplicando la fórmula inversa para hallar el umbral crítico de tráfico en $\text{ KB}$.

---

## 💡 Notas Finales de la Clase

* Recordar que **las varianzas siempre se suman**, nunca se restan ni se multiplican directamente sin elevar al cuadrado las constantes.
* El **Teorema Central del Límite** nos permite utilizar la distribución normal cuando la cantidad de variables sumadas es grande (generalmente $n \ge 30$).
