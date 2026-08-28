# 📊 Análisis de Distribuciones Binomiales: Asimetría y Simetría

Este documento analiza las tres gráficas de la imagen adjunta, enfocándose en la **Distribución Binomial** y su **Función de Masa de Probabilidad (FMP)** bajo diferentes valores del parámetro de probabilidad de éxito ($p$).



## 📈 1. Distribución Binomial Asimétrica Positiva ($p < 0.5$)

### Parámetros de la Gráfica:

* 🔢 **Número de ensayos ($n$):** 12


* 🎯 **Probabilidad de éxito ($p$):** 0.15


* 📐 **Modelo:** $X \sim \text{Bin}(12, 0.15)$


### Explicación teórica:

En esta primera gráfica, la probabilidad de éxito en cada ensayo individual es baja ($p = 0.15$).

* 📉 **Comportamiento de la FMP:** La masa de probabilidad se concentra fuertemente en los valores bajos de $x$ (hacia la izquierda del gráfico, principalmente en $x = 1, 2, 3$).


* ↗️ **Asimetría Positiva (o a la derecha):** Se denomina "aspositiva" o con sesgo a la derecha porque la "cola" de la distribución se alarga hacia los valores mayores de $x$ (hacia la derecha). Esto ocurre porque, al ser $p$ pequeño, es muy poco probable obtener una cantidad alta de éxitos, decayendo rápidamente la probabilidad conforme $x$ aumenta hacia 8.





## 📉 2. Distribución Binomial Asimétrica Negativa ($p > 0.5$)

### Parámetros de la Gráfica:

* 🔢 **Número de ensayos ($n$):** 12


* 🎯 **Probabilidad de éxito ($p$):** 0.80


* 📐 **Modelo:** $X \sim \text{Bin}(12, 0.80)$


### Explicación teórica:

En esta segunda gráfica, la probabilidad de éxito en cada ensayo es alta ($p = 0.80$).

* 📊 **Comportamiento de la FMP:** La masa de probabilidad se desplaza y concentra en los valores altos de $x$ (hacia la derecha del gráfico, principalmente en $x = 10$).


* ↙️ **Asimetría Negativa (o a la izquierda):** Se denomina asimétrica negativa porque la "cola" de la distribución se alarga hacia los valores menores de $x$ (hacia la izquierda, observándose barras desde $x = 4$). Dado que el éxito es altamente probable en cada intento, es muy infrecuente registrar pocos éxitos, lo que genera este sesgo inverso.





## ⚖️ 3. Distribución Binomial Simétrica ($p = 0.5$)

### Parámetros de la Gráfica:

* 🔢 **Número de ensayos ($n$):** 12


* 🎯 **Probabilidad de éxito ($p$):** 0.50


* 📐 **Modelo:** $X \sim \text{Bin}(12, 0.50)$


### Explicación teórica:

En esta tercera gráfica, la probabilidad de éxito y la de fracaso son exactamente iguales ($p = 0.50$).

* 🔔 **Comportamiento de la FMP:** La distribución presenta una forma perfectamente equilibrada o simétrica en forma de campana centrada en su valor esperado o media ($\mu = n \cdot p = 12 \cdot 0.5 = 6$).


* 🪞 **Simetría:** Las probabilidades de los valores situados a la misma distancia de la media son idénticas (por ejemplo, la probabilidad de $x = 5$ es igual a la de $x = 7$, y así sucesivamente). No existe sesgo ni hacia la izquierda ni hacia la derecha.
