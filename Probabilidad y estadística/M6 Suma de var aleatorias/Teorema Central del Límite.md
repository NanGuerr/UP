# 📈 Teorema Central del Límite y Aplicaciones Prácticas 🚀

Este documento abarca la teoría formal y la comprobación empírica del **Teorema Central del Límite (TCL)**, acompañado de ejemplos prácticos y problemas de estimación de proyectos informáticos. Todas las expresiones matemáticas se encuentran formateadas en código LaTeX estándar, corrigiendo comandos y asegurando el uso correcto de delimitadores, sin incluir citas.



## 📐 1. Enunciado del Teorema Central del Límite

Sea $X_1, X_2, \dots, X_n$ un conjunto de variables aleatorias independientes e idénticamente distribuidas, con media $\mu$ y varianza $\sigma^2$ (finita y no nula). Sea $w$ una combinación lineal de ellas:

$$w = a_1 x_1 + a_2 x_2 + \dots + a_n x_n = \sum_{i=1}^{n} a_i x_i$$

Entonces, la variable aleatoria estandarizada:

$$Z = rac{w - \mu(w)}{\sigma(w)}$$

tiende asintóticamente a una distribución normal estándar a medida que $n$ tiende a infinito. 

> 💡 **Nota:** La media y el desvío estándar de $w$ se calculan utilizando las propiedades de la media y de la varianza. El teorema no hace referencia a la distribución de las variables aleatorias originales; basta con que:
> 1. Sean independientes.
> 2. Tengan la misma distribución.
> 3. Se realice la suma de varias variables (generalmente, con más de $30$ variables ya se observa una excelente aproximación a la normal).



## 📊 2. Comprobación del Teorema Central en Algunas Distribuciones 📉

A continuación, se presentan ejemplos gráficos que muestran cómo diversas distribuciones convergen hacia la forma acampanada de la distribución normal al incrementar el tamaño muestral o el parámetro de agregación:

* **Distribución Binomial ($X \sim 	ext{Bin}(n, p)$):** A medida que aumenta $n$ (por ejemplo, de $n = 5$ a $n = 50$), la asimetría se reduce y el histograma adquiere una forma simétrica normal.
* **Distribución de Poisson ($X \sim 	ext{Pois}(\lambda)$):** Conforme el parámetro $\lambda$ crece (de $\lambda = 1$ a $\lambda = 10$), la distribución discreta de Poisson se aproxima suavemente a una curva normal continua.
* **Distribución Chi-Cuadrado ($X \sim 	ext{ChiSq}(
u)$):** Al aumentar los grados de libertad $
u$ (desde $
u = 2$ hasta $
u = 40$), la distribución sesgada hacia la derecha se transforma en una campana simétrica.



## 🏢 3. Ejemplos Prácticos de Aplicación

### Ejemplo 1: Flujo de datos masivos en servidores 🌐
Los datos que maneja Google por hora son una variable aleatoria con un promedio de $1,2	ext{ PB}$ (petabytes) y un desvío estándar de $0,15	ext{ PB}$.

* **a) Cálculo de la media y desvío mensual ($30	ext{ días} = 720	ext{ horas}$):**
  Definimos la variable mensual $w = \sum_{i=1}^{720} x_i$.
  $$\mu(w) = 720 \cdot 1.2 = 864	ext{ PB}$$
  $$\sigma(w) = \sqrt{720 \cdot (0,15)^2}  pprox 4,02	ext{ PB}$$
  *Resultado:* Google maneja en promedio $864 \pm 4,02	ext{ PB}$ mensuales.

* **b) Probabilidad de superar los $870	ext{ PB}$ mensuales:**
  Aplicando el Teorema Central del Límite, modelamos $w$ como una distribución normal $\mathcal{N}(864, 4,02^2)$.
  $$P(w > 870	ext{ PB})  pprox 0,0678$$
  Es decir, el $6,78\%$ de los meses la cantidad de datos supera los $870	ext{ PB}$.

* **c) Percentil $80$ del volumen mensual:**
  Se busca el valor de datos superado por el $20\%$ de los meses (equivalente al percentil $80$), resultando en aproximadamente $867,38	ext{ PB}$.



### Ejemplo 2: Planificación de proyectos de software 💻
Una empresa argentina planea desarrollar una red social nacional. El proyecto está dividido en tres etapas principales con tiempos en días hábiles:
1. **$x$: Diseño de sistemas** $
ightarrow \mu(x) = 60, \; \sigma(x) = 12$
2. **$y$: Desarrollo de software** $
ightarrow \mu(y) = 95, \; \sigma(y) = 10$
3. **$z$: Prueba de software y puesta a punto** $
ightarrow \mu(z) = 15, \; \sigma(z) = 8$

* **a) Media y desvío total del proyecto original ($w = x + y + z$):**
  $$\mu(w) = 60 + 95 + 15 = 170	ext{ días}$$
  $$\sigma(w) = \sqrt{12^2 + 10^2 + 8^2} = \sqrt{144 + 100 + 64} = \sqrt{308}  pprox 17,55	ext{ días}$$

* **b) Probabilidad de que el proyecto demore más de $8	ext{ meses}$ ($176	ext{ días}$):**
  $$P(w > 176)  pprox 0,366$$

* **c) Incorporación de una etapa adicional de implementación y entrenamiento ($15	ext{ días}$ fijos):**
  La nueva variable es $w = x + y + z + 15$.
  $$\mu(w) = 170 + 15 = 185	ext{ días}$$
  $$\sigma(w) = \sqrt{12^2 + 10^2 + 8^2 + 0^2} = 17,55	ext{ días}$$
  La probabilidad de concluir en menos de $9	ext{ meses}$ ($198	ext{ días}$) es $P(w < 198)  pprox 0,77$ ($77\%$).

* **d) Optimización de tiempos con analistas experimentados:**
  Si se reduce un $20\%$ el diseño, un $30\%$ el desarrollo y un $10\%$ la prueba:
  $$W = 0,80x + 0,70y + 0,90z + 15$$
  $$\mu(W) = 0,80(60) + 0,70(95) + 0,90(15) + 15 = 48 + 66,5 + 13,5 + 15 = 143	ext{ días}$$
  $$\sigma(W) = \sqrt{0,80^2(12^2) + 0,70^2(10^2) + 0,90^2(8^2)} = \sqrt{0,64(144) + 0,49(100) + 0,81(64)}  pprox 13,89	ext{ días}$$
  El tiempo estimado se encuentra en $143 \pm 13,89	ext{ días}$.
