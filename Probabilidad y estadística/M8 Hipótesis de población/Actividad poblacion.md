# 🏗️ Actividad Grupal: Prueba de Hipótesis para una Población

## 📊 1. Identificación de Datos, Parámetros y Estadísticos
A partir de la consigna del ejercicio sobre el cumplimiento de plazos en proyectos de construcción, se identifican los siguientes elementos metodológicos:

* **Unidad de análisis:** Cada proyecto de construcción gestionado por la empresa.
* **Variable de estudio ($X$):** Tiempo de retraso en la entrega del proyecto (variable cuantitativa continua medida en días).
* **Parámetro poblacional ($\mu$):** Tiempo medio poblacional de retraso en la entrega de los proyectos, expresado en días.
* **Tamaño muestral ($n$):** $18$ proyectos.
* **Media muestral ($\bar{x}$):** $12.4$ días.
* **Desvío estándar muestral ($s$):** $3.8$ días.
* **Valor de prueba / Límite de referencia ($\mu_0$):** $14$ días (límite máximo fijado por la empresa para definir un retraso como razonable).
* **Nivel de significación ($\alpha$):** $0.10$ ($10 \, \text{\%}$ de riesgo máximo asumido).
* **Modelo estadístico:** Prueba $t$ de Student para una muestra con $\nu = n - 1 = 17$ grados de libertad, debido a que la varianza poblacional ($\sigma^2$) es desconocida y la muestra es pequeña ($n = 18 < 30$).

---

## 🎯 2. Desarrollo del Punto 1: Planteo de Hipótesis

* **Hipótesis de investigación ($H_i$):** Si el tiempo medio de retraso en la entrega de los proyectos es inferior a $14$ días, entonces los proyectos gestionados por la empresa tienen un retraso razonable.
* **Hipótesis nula ($H_0$):** 
  $$H_0: \mu \ge 14$$
  (El retraso medio es igual o superior a $14$ días; los proyectos no tienen un retraso razonable).
* **Hipótesis alternativa ($H_1$):** 
  $$H_1: \mu < 14$$
(El retraso medio es estrictamente menor a $14$ días; los proyectos tienen un retraso razonable).

---

## 🧮 3. Desarrollo del Punto 2: Cálculo del Valor P, Condición de Rechazo y Decisión

### a) Cálculo del Estadístico de Prueba ($t_m$)
Aplicando la fórmula de estandarización de la distribución $t$ de Student:

$$t_m = \frac{\bar{x} - \mu_0}{\frac{s}{\sqrt{n}}} = \frac{12.4 - 14}{\frac{3.8}{\sqrt{18}}} = \frac{-1.6}{\frac{3.8}{4.24264}} = \frac{-1.6}{0.89566} \approx -1.7864$$

* **Grados de libertad ($\nu = df$):** $n - 1 = 18 - 1 = 17$.

### b) Cálculo e Interpretación del Valor P ($p_v$)
Dado que la hipótesis alternativa plantea un contraste unilateral izquierdo ($H_1: \mu < 14$), el valor p ($p_v$) representa la probabilidad de obtener por azar una media muestral igual o más extrema que la observada ($t_m = -1.7864$), bajo la suposición de que $H_0$ es verdadera:

$$p_v = P\left(t_{17} < -1.7864\right)$$

#### Procedimiento en Jamovi:
1. **Opción A (DistrACTION $\rightarrow$ Student's t Distribution):**
   * Configurar los parámetros: $\text{Mean} = 0$, $\text{SD} = 1$, $\text{DF} = 17$.
   * Tildar **Compute probability**, ingresar $x1 = -1.7864$ y seleccionar $P\left(X \le x1\right)$.
   * Resultado obtenido: $p_v = 0.0459$ (aproximadamente $0.046$).
2. **Opción B (Análisis $\rightarrow$ Pruebas t $\rightarrow$ Prueba t de una muestra):**
   * Variable dependiente: Tiempo de retraso.
   * Valor de prueba ($\mu_0$): $14$.
   * Hipótesis alternativa: Menor que el valor de prueba ($\mu < \mu_0$).
   * Resultado en Jamovi: $t = -1.786$, $\text{df} = 17$, $p = 0.046$.

### c) Regla y Condición de Rechazo (CR)
$$\text{CR: } p_v < \alpha$$

Comparando los valores numéricos:
$$0.0459 < 0.10 \implies \text{Se rechaza la hipótesis nula } \left(H_0\right)$$

### d) Conclusión en Términos del Problema
Asumiendo un riesgo del $10 \, \text{\%}$ ($\alpha = 0.10$), los datos muestrales aportan evidencia estadística suficiente para rechazar $H_0$ y afirmar que el tiempo medio de retraso en la entrega de las obras es inferior a $14$ días. En consecuencia, se concluye que los proyectos gestionados por la empresa tienen un retraso razonable.

---

## ⚠️ 4. Desarrollo del Punto 3: Evaluación de Errores y Nivel de Confianza

De acuerdo con los parámetros del problema:
* Se fija en $0.10$ la probabilidad de concluir que un proyecto tiene un retraso razonable cuando en realidad no lo tiene $\rightarrow$ Nivel de significación ($\alpha = 0.10$ / Error Tipo I / Falso Positivo).
* Se fija en $0.95$ la probabilidad de concluir que tiene un retraso razonable cuando en realidad lo tiene $\rightarrow$ Potencia de la prueba ($1 - \beta = 0.95$).

### a) Cálculo del Nivel de Confianza ($1 - \alpha$)
$$1 - \alpha = 1 - 0.10 = 0.90 \quad (\text{o } 90 \, \text{\%})$$

### b) Cálculo de la Probabilidad de Error Tipo II ($\beta$)
Sabiendo que la potencia de la prueba es $1 - \beta = 0.95$:
$$\beta = 1 - 0.95 = 0.05 \quad (\text{o } 5 \, \text{\%})$$
