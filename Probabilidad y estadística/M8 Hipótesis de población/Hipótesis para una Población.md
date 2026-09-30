# 📊 Pruebas de Hipótesis para una Población

## 🎯 Introducción a las Pruebas de Hipótesis
Cuando se realiza una inferencia estadística, el aspecto más importante es identificar el objetivo de la investigación, las variables y su clasificación para decidir con qué parámetro se plantearán las hipótesis estadísticas, alineándolas al objetivo del estudio. Una vez definido el parámetro, se debe elegir el estadístico adecuado y estudiar su distribución de probabilidad. Cuando la población es normal y la varianza poblacional es desconocida, la media muestral sigue una distribución t-Student.



## 📈 1. Prueba de Hipótesis para la Media con Varianza Desconocida

### 🛠 Pasos para realizar un Test de Hipótesis:
* **Identificar** el parámetro y el estadístico apropiado.
* **Plantear** la hipótesis de investigación y las hipótesis estadísticas.
* **Determinar** en función del parámetro y los datos la distribución del estadístico.
* **Calcular** el valor p ($pv$).
* **Verificar** la Condición de Rechazo (CR): comprobar si $\alpha > pv$ para concluir.



### 📝 Ejemplo 1: Longitud de Publicidades en Redes Sociales
Una consultora analizó publicidades en redes sociales para estudiar el largo promedio del contenido en palabras, fijando en $\mu = 11$ el promedio por marca. Al analizar $n = 10$ publicidades, se obtuvo una media muestral $\bar{x} = 13$ y un desvío estándar $s = 4$, con un nivel de significación $\alpha = 0.1$.

* **Hipótesis de investigación:** Si la cantidad promedio de palabras es superior a $11$, se ofrecerá asesorar a la marca.
* **Hipótesis estadísticas:** 
  $$H_0: \mu \le 11$$
  $$H_1: \mu > 11$$
* **Condición de Rechazo (CR):** 
  $$\text{CR: } \bar{x} > \bar{x}_c \quad \text{o bien} \quad \text{CR: } pv < \alpha$$

#### 🧮 Cálculo del Valor Crítico ($\bar{x}_c$)
Utilizando la distribución t-Student con $n - 1 = 9$ grados de libertad:
$$\bar{x}_c = \mu_0 + t_{(1-\alpha; \, n-1)} \cdot \frac{s}{\sqrt{n}}$$
$$\bar{x}_c = 11 + t_{(0.90; \, 9)} \cdot \frac{4}{\sqrt{10}} = 11 + 1.383 \cdot \frac{4}{\sqrt{10}} = 12.749$$

Como el valor muestral es $\bar{x} = 13 > 12.749 = \bar{x}_c$, se rechaza $H_0$.

#### 📉 Cálculo mediante el Valor P ($pv$)
El estadístico de prueba $t_m$ se calcula como:
$$t_m = \frac{\bar{x} - \mu_0}{\frac{s}{\sqrt{n}}} = \frac{13 - 11}{\frac{4}{\sqrt{10}}} = 1.58$$

El valor p se obtiene como:
$$pv = P\left(\bar{x} > 13\right) = P\left(t > 1.58\right) = 0.0743$$

Dado que $pv = 0.0743 < \alpha = 0.10$, se rechaza $H_0$ y se concluye que el promedio de palabras es superior a $11$.



### 🗑️ Ejemplo 2: Estudio sobre Residuos Domiciliarios
Un estudio sobre residuos arrojó promedios mensuales en $4$ períodos de $69445$, $59024$, $59646$ y $62793$ toneladas, con una media histórica anterior de $\mu_0 = 65260$ toneladas. Se busca probar si la media se redujo utilizando un nivel de significación del $\alpha = 0.05$.

* **Datos:** $n = 4$, $\alpha = 0.05$.
* **Hipótesis estadísticas:**
  $$H_0: \mu \ge 65260$$
  $$H_1: \mu < 65260$$
* **Resultados del software:** Se obtiene el valor muestral $t_m = -1.061$ y un valor p de:
  $$pv = P\left(t < -1.061\right) = 0.1832$$
* **Conclusión:** Como $pv = 0.1832 > 0.05 = \alpha$, **no se rechaza $H_0$**. No hay razones suficientes para suponer que la cantidad de residuos se redujo.



## 📐 2. Prueba de Hipótesis para la Proporción

Cuando la decisión se toma en base a proporciones o porcentajes, las hipótesis estadísticas se plantean con el parámetro $p$ y su estadístico muestral es:
$$\hat{p} = \frac{x}{n}$$

### 📱 Ejemplo: Estudio de Participación en Redes Sociales
Una consultora determinó que las actualizaciones con menos de $40$ caracteres representan el $90\%$ ($p_0 = 0.90$) en Facebook. En una prueba piloto con $n = 120$ usuarios, $x = 115$ cumplieron la condición. Se evalúa si el segmento representa un porcentaje mayor con un nivel de significación del $\alpha = 0.05$.

* **Proporción muestral:**
  $$\hat{p} = \frac{115}{120} = 0.9583$$
* **Hipótesis estadísticas:**
  $$H_0: p \le 0.90$$
  $$H_1: p > 0.90$$
* **Estadístico Z:**
  $$z_m = \frac{\hat{p} - p_0}{\sqrt{\frac{p_0 \cdot \left(1 - p_0\right)}{n}}} = \frac{0.9583 - 0.90}{\sqrt{\frac{0.90 \cdot 0.10}{120}}} = 2.118$$
* **Valor P ($pv$):**
  $$pv = P\left(z > 2.118\right) = 0.0171$$
* **Conclusión:** Como $\alpha = 0.05 > pv = 0.0171$, se rechaza $H_0$. La afirmación es verdadera asumiendo un riesgo del $5\%$.
