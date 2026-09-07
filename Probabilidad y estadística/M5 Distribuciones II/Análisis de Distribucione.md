# 📊📈 Análisis de Distribuciones: Teoría y Aplicación Práctica con Jamovi

## 📋 Resumen Ejecutivo
Este documento sintetiza los principios fundamentales de las distribuciones de probabilidad discretas y continuas, centrándose en los modelos de Poisson y Normal, y su resolución mediante el software estadístico Jamovi.
Los puntos clave identificados en el análisis incluyen:

* 📉 **Distribución de Poisson:** Utilizada para modelar el número de eventos independientes en un intervalo continuo (tiempo o espacio) a una velocidad constante. Es fundamental para el análisis de fallos en sistemas de computación y procesos biológicos.
* 🔔 **Distribución Normal:** El modelo más importante en estadística, aplicado a variables continuas cuya representación gráfica es la "campana de Gauss". Es esencial para evaluar tiempos de respuesta y comparaciones de escalas mediante la estandarización (puntuación Z).
* 🔗 **Sinergia de Modelos:** La capacidad de combinar distribuciones (como Poisson y Binomial) para resolver problemas complejos de monitoreo y control de calidad.
* 💻 **Eficiencia Computacional:** El uso de Jamovi permite la transición de cálculos integrales complejos y tablas manuales a una interpretación directa y gráfica de resultados de probabilidad y cuantiles.



## 🎲 1. La Distribución de Poisson
La distribución de Poisson, atribuida al matemático Simeón Denis Poisson (1838), es una distribución discreta de probabilidad que mide la frecuencia de ocurrencia de sucesos aleatorios en un intervalo determinado.

### 🔍 1.1. Fundamentos y Características
* **Naturaleza:** Se le conoce como la distribución de los "casos raros" debido a su aplicación cuando la probabilidad de éxito es pequeña y el número de ensayos es muy grande.
* **Variable Aleatoria ($X$):** Representa el número de sucesos independientes que ocurren en una extensión del continuo.
* **Parámetro Central ($\lambda$):** Indica el promedio de ocurrencias fijado en una unidad de medida.
* **Propiedades Estadísticas:** En este modelo, tanto la esperanza (media) como la varianza son iguales al parámetro $\lambda$ ($E(x) = \lambda$ y $V(x) = \lambda$).
* **Forma de la Distribución:** Es sesgada a la derecha cuando $\lambda < 20$; a medida que el parámetro crece, la distribución tiende a la simetría.

### ⚙️ 1.2. Condiciones de Aplicación
1. La presencia de eventos en un intervalo es independiente de otros intervalos.
2. Los sucesos ocurren individualmente (no pueden ocurrir dos juntos en el mismo espacio exacto).
3. Los sucesos ocurren según un promedio de ocurrencias fijo ($\lambda$).

### 🗂️ 1.3. Resolución de Problemas Prácticos (Caso: Clúster de Servidores)
Basado en un escenario donde ocurren, en promedio, 1,2 fallos por hora:

| Problema | Planteo Probabilístico | Resultado |
| :--- | :--- | :--- |
| Probabilidad de exactamente 2 fallos en 1 hora | $P(X=2 \mid \lambda=1,2)$ | 0,217 |
| Probabilidad de al menos 1 fallo en 3 horas | $P(X \ge 1 \mid \lambda=3,6)$ | 0,973 |
| Probabilidad de que en 6 períodos de 1 hora, al menos uno tenga más de 3 fallos | Combinación Poisson/Binomial | 0,187 |



## 📈 2. La Distribución Normal
La distribución normal es el modelo de probabilidad más relevante para variables aleatorias continuas, donde los valores pueden ser infinitos dentro de un intervalo.

### 🌐 2.1. Propiedades de la Curva de Gauss
* **Simetría:** La curva es simétrica respecto a la media ($\mu$).
* **Puntos de Inflexión:** Se ubican en $\mu \pm \sigma$ (media más/menos desviación estándar).
* **Área Total:** El área bajo la curva es igual a 1.
* **Valor Puntual:** En una distribución continua, la probabilidad de que la variable adopte un valor exacto es 0. Por ello, siempre se calculan probabilidades para intervalos ($P(a < X < b)$).

### 📐 2.2. Estandarización (Puntuación Z)
La puntuación estándar $Z$ indica el número de desviaciones típicas en las que una observación se separa de la media. Es vital para comparar variables con escalas distintas (por ejemplo, liderazgo vs. empatía).

* **Fórmula:** 
$$Z = \frac{X - \mu}{\sigma}$$
* **Distribución Normal Estándar:** Tiene una media de 0 y una varianza/desviación de 1.

### 🧠 2.3. Aplicación en Aplicaciones de Salud Mental (Chatbots)
En un análisis de tiempos de respuesta con $\mu = 0,85s$ y $\sigma = 0,1s$:
* **Riesgo de Percepción de Ineficacia:** Existe un 6,7% de probabilidad de que una respuesta demore más de un segundo.
* **Umbral Crítico (Percentil 80):** El valor de tiempo superado por el 20% de las respuestas es 0,934 segundos. Superar este tiempo afecta la percepción de eficacia de la app.



## 💻 3. Metodología de Resolución con Jamovi
El software Jamovi optimiza el cálculo estadístico a través del módulo `distrAction`. El proceso general se estructura de la siguiente manera:

### 🛠️ 3.1. Procedimiento para Poisson y Normal
1. **Selección del Módulo:** Abrir la pestaña `distrAction` y seleccionar el tipo de distribución (*Poisson Distribution* o *Normal Distribution*).
2. **Carga de Parámetros:**
   * Para Poisson: Ingresar $\lambda$.
   * Para Normal: Ingresar Media ($\mu$) y Desvío Estándar ($\sigma$).
3. **Configuración de la Función:**
   * Para hallar probabilidades: Tildar *Compute probability*, ingresar el valor $x_1$ y seleccionar el operador correspondiente ($=, \le, \ge$).
   * Para hallar percentiles (cuantiles): Tildar *Compute quantiles*, seleccionar *Cumulative quantile* e ingresar la probabilidad en $p$.
4. **Interpretación:** Al hacer clic en la flecha del margen superior derecho, Jamovi entrega el resultado analítico y la representación gráfica (área sombreada bajo la curva o histograma).



## 🔗 4. Combinación de Distribuciones Discretas
Existen problemas complejos que requieren el uso sucesivo de diferentes modelos de probabilidad.
Ejemplo de monitoreo de red:
* Se define una variable $X_2$ (cantidad de fallas en el tiempo) que sigue una Distribución de Poisson. Se calcula la probabilidad de éxito $p$ para un evento específico (ej: tener más de 3 fallas).
* Se define una variable $X_1$ (cantidad de monitoreos que presentan ese evento) que sigue una Distribución Binomial, utilizando el valor $p$ obtenido previamente y el número de ensayos $n$.
* Este enfoque permite determinar la probabilidad de fallos recurrentes en sistemas distribuidos.



## 📚 5. Referencias Bibliográficas Obligatorias
El sustento teórico de estos análisis se encuentra en las siguientes obras:
* Devore, J. (2016). *Probabilidad y estadística para ingeniería y ciencias* (9ª ed.). Cengage Learning.
* Walpole, R. et al. (2012). *Probabilidad y estadística para ingenieros* (9ª ed.). Pearson Educación.
