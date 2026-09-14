# 📈 Aplicación del Teorema Central del Límite en Tráfico de Datos

**Docente:** Beatriz Fuertes (Universidad de Palermo) 🎓  
**Materia:** Estadística / Probabilidad  
**Tema:** Aplicación del Teorema Central del Límite (TCL) a la suma de variables aleatorias independientes con distribución normal y transformaciones lineales. 🤖💾



## 📝 1. Enunciado del Problema

Una empresa de tecnología está estudiando el tráfico de datos (en $\text{TB}$) transmitidos a través de su API de inteligencia artificial.

* Se ha determinado que el tráfico de datos diario sigue una distribución normal con una media de $12 \text{ TB}$ y un desvío estándar de $1{,}5 \text{ TB}$.
* Con la incorporación de un sistema de caché inteligente, el tráfico de datos se reduce en un $15\%$ cada día.

**Pregunta principal:**  
¿Cuál es la probabilidad de que el total de $\text{TB}$ transmitidos durante una semana ($7 \text{ días}$) supere los $70 \text{ TB}$? ❓



## 📊 2. Definición de Variables y Parámetros Iniciales

### Variable aleatoria original (sin sistema de caché):
* $X$: Tráfico de datos diario original en $\text{TB}$.
* Distribución: $X \sim N(\mu_X = 12, \sigma_X = 1{,}5)$
* Media: $\mu(X) = 12 \text{ TB}$
* Desvío estándar: $\sigma(X) = 1{,}5 \text{ TB}$
* Varianza: $\sigma^2(X) = (1{,}5)^2 = 2{,}25 \text{ TB}^2$

### Impacto del sistema de caché inteligente:
La reducción del $15\%$ implica que el nuevo tráfico diario consumido es el $85\%$ del valor original:

$$\text{Tráfico corregido por día} = X - 0{,}15 X = 0{,}85 X$$

### Variable acumulada semanal ($W$):
Sea $W$ la suma del tráfico de datos transferidos con la caché inteligente durante $n = 7 \text{ días}$:

$$W = \sum_{i=1}^{7} 0{,}85 X_i$$

Dado que cada $X_i$ sigue una distribución normal e independiente, por las propiedades del Teorema Central del Límite y la suma de variables normales, $W$ también sigue una distribución normal: $W \sim N(\mu_W, \sigma_W)$.

**Objetivo probabilístico:** Calcular $P(W > 70)$.



## 🧮 3. Paso 1: Cálculo de la Media de $W$, $\mu(W)$

### 📌 Propiedades aplicadas:
1. **Linealidad de la Esperanza / Media:** La media de una suma es la suma de las medias.
2. **Propiedad de la constante multiplicativa:** $\mu(c \cdot X) = c \cdot \mu(X)$.

### ⚙️ Desarrollo paso a paso:

$$\mu(W) = \mu\left( \sum_{i=1}^{7} 0{,}85 X_i \right)$$

$$\mu(W) = \mu\left( 0{,}85 X_1 + 0{,}85 X_2 + \dots + 0{,}85 X_7 \right)$$

$$\mu(W) = \mu(0{,}85 X_1) + \mu(0{,}85 X_2) + \dots + \mu(0{,}85 X_7)$$

$$\mu(W) = 0{,}85 \cdot \mu(X_1) + 0{,}85 \cdot \mu(X_2) + \dots + 0{,}85 \cdot \mu(X_7)$$

Dado que cada $\mu(X_i) = 12 \text{ TB}$:

$$\mu(W) = 0{,}85 \cdot 12 \cdot 7$$

$$\mu(W) = 10{,}2 \cdot 7$$

$$\mu(W) = 71{,}4 \text{ TB}$$

✅ **Resultado:** La media acumulada semanal de $W$ es **$71{,}4 \text{ TB}$**.



## 📉 4. Paso 2: Cálculo de la Varianza y Desvío Estándar de $W$

### 📌 Propiedades aplicadas:
1. **Independencia de variables aleatorias:** La varianza de la suma de variables independientes es la suma de sus varianzas.
2. **Propiedad de la constante multiplicativa en la varianza:** $\sigma^2(c \cdot X) = c^2 \cdot \sigma^2(X)$.
3. **Relación Varianza-Desvío:** $\sigma^2(X) = (\sigma(X))^2 = 1{,}5^2$.

### ⚙️ Desarrollo de la Varianza, $\sigma^2(W)$:

$$\sigma^2(W) = \sigma^2\left( \sum_{i=1}^{7} 0{,}85 X_i \right)$$

$$\sigma^2(W) = \sigma^2(0{,}85 X_1 + 0{,}85 X_2 + \dots + 0{,}85 X_7)$$

$$\sigma^2(W) = \sigma^2(0{,}85 X_1) + \sigma^2(0{,}85 X_2) + \dots + \sigma^2(0{,}85 X_7)$$

$$\sigma^2(W) = (0{,}85)^2 \cdot \sigma^2(X_1) + (0{,}85)^2 \cdot \sigma^2(X_2) + \dots + (0{,}85)^2 \cdot \sigma^2(X_7)$$

Sustituyendo $\sigma^2(X_i) = (1{,}5)^2$:

$$\sigma^2(W) = (0{,}85)^2 \cdot (1{,}5)^2 \cdot 7$$

$$\sigma^2(W) = 0{,}7225 \cdot 2{,}25 \cdot 7$$

$$\sigma^2(W) = 11{,}379375 \approx 11{,}379 \text{ TB}^2$$

### ⚙️ Desarrollo del Desvío Estándar, $\sigma(W)$:

$$\sigma(W) = \sqrt{\sigma^2(W)}$$

$$\sigma(W) = \sqrt{11{,}379375} \approx 3{,}373 \text{ TB}$$

✅ **Resultado:** La varianza de $W$ es **$11{,}379 \text{ TB}^2$** y el desvío estándar es **$3{,}373 \text{ TB}$**.



## 🎯 5. Paso 3: Cálculo de la Probabilidad $P(W > 70)$

### 📌 Parámetros de la variable $W$:
* Distribución: $W \sim N(\mu_W = 71{,}4, \, \sigma_W = 3{,}373)$

### ⚙️ Estandarización a la Normal Estándar $Z$:

$$Z = \frac{W - \mu_W}{\sigma_W}$$

Para el punto crítico $W = 70 \text{ TB}$:

$$Z = \frac{70 - 71{,}4}{3{,}373} = \frac{-1{,}4}{3{,}373} \approx -0{,}415$$

### ⚙️ Determinación de la probabilidad acumulada:

$$P(W > 70) = P(Z > -0{,}415) = 1 - P(Z \le -0{,}415)$$

Buscando en la tabla / aplicación de distribución normal estándar:

$$P(Z \le -0{,}415) \approx 0{,}339$$

$$P(W > 70) = 1 - 0{,}339 = 0{,}661 \quad (\text{o } 0{,}66 \text{ redondeado a dos decimales})$$

✅ **Resultado final:** La probabilidad de que el consumo semanal supere los $70 \text{ TB}$ es **$0{,}66$** (o **$66\%$**).



## 📋 6. Tabla Resumen de Resultados

| Variable / Parámetro | Expresión Matemática | Valor Numérico | Unidades |
| :--- | :---: | :---: | :---: |
| **Media diaria original** | $\mu(X)$ | $12$ | $\text{TB}$ |
| **Desvío diario original** | $\sigma(X)$ | $1{,}5$ | $\text{TB}$ |
| **Media semanal ajustada** | $\mu(W)$ | $71{,}4$ | $\text{TB}$ |
| **Varianza semanal ajustada** | $\sigma^2(W)$ | $11{,}379$ | $\text{TB}^2$ |
| **Desvío estándar semanal** | $\sigma(W)$ | $3{,}373$ | $\text{TB}$ |
| **Probabilidad de superar 70 TB** | $P(W > 70)$ | **$0{,}66$** | **$66\%$** |
