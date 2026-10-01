# 📊 Autoevaluación - Prueba de Hipótesis para una Población

> **Descripción:** A continuación se presenta la resolución detallada, justificada y verificada paso a paso de las 8 preguntas contenidas en la autoevaluación de la materia, fundamentada en los principios teóricos y metodológicos de la estadística inferencial.



## 📉 Pregunta 1: Porcentaje de Ausentismo (1,5 puntos)

* **Enunciado:** Porcentaje de ausentismo actual mayor al 10%. El gerente implementará un sistema de incentivos solo si puede probar que el porcentaje de ausentismo es superior al 10%. Nivel de significación $\alpha = 0,01$ (1%).
* **Análisis Estadístico:**
* Parámetro a evaluar: Proporción poblacional $p$.
* Hipótesis de investigación ($H_i$): Probar si $p > 0,10$.
* Planteo de hipótesis: $H_0: p \le 0,10$ vs. $H_1: p > 0,10$ (prueba unilateral derecha).
* Si un supuesto $p\text{-value} = 0,05$, al compararlo con $\alpha = 0,01$, como $0,05 > 0,01$, no se rechaza $H_0$, por lo que no se concluiría que el sistema fue efectivo.
* El valor $0,10$ es la proporción poblacional hipotética $p_0$, no la proporción muestral $\hat{p}$.


* **Opciones Correctas:**
* **B.** Hipótesis nula: $p \le 0,10$
* **D.** Es una prueba unilateral derecha





## 🤖 Pregunta 2: Robot para Tejer Cables (1,5 puntos)

* **Enunciado:** Se producirá en serie si se demuestra que el porcentaje de errores es inferior al actual (3%). ¿Qué representan $\alpha$ y $\beta$?
* **Análisis Estadístico:**
* Hipótesis: $H_0: p \ge 0,03$ (No producir) vs. $H_1: p < 0,03$ (Producir).
* **Error Tipo I ($\alpha$):** Rechazar $H_0$ siendo verdadera $\rightarrow$ Concluir en producir los robots cuando el porcentaje de errores es mayor o igual al 3% ($\ge 3\%$).
* **Error Tipo II ($\beta$):** No rechazar $H_0$ siendo falsa $\rightarrow$ Concluir en no producir los robots cuando el porcentaje de errores es menor al 3% ($< 3\%$).


* **Opción Correcta:**
* **D.** $\alpha = P(\text{producir los robots cuando el porcentaje de errores es mayor o igual al } 3\%)$ / $\beta = P(\text{no producir los robots cuando el porcentaje de errores es menor al } 3\%)$





## 🎯 Pregunta 3: Zona de Rechazo y No Rechazo (1,0 punto)

* **Enunciado:** ¿Cómo se denomina el valor que divide la zona de rechazo de la de no rechazo?
* **Análisis Estadístico:** El límite que separa la región de no rechazo de la región de rechazo (región crítica) se define formalmente como el **valor crítico**.
* **Opción Correcta:**
* **D.** Valor crítico





## ⏱️ Pregunta 4: Tiempo Medio de Espera (1,5 puntos)

* **Enunciado:** Tiempo medio de espera afirmado: 3 minutos. Muestra de $n = 30$ clientes, $\bar{x} = 2,75$ minutos, $s = 1$. Asumiendo $\alpha = 0,05$, ¿se puede decir que el tiempo de espera varió?
* **Análisis Estadístico:**
* Plantear si "varió" implica una prueba bilateral: $H_0: \mu = 3$ vs. $H_1: \mu \neq 3$.
* Estadístico de prueba: 
$$t_m = \frac{\bar{x} - \mu_0}{s / \sqrt{n}} = \frac{2,75 - 3}{1 / \sqrt{30}} = \frac{-0,25}{0,18257} \approx -1,3693$$


* Con $\alpha = 0,05$ e hipótesis bilateral, el valor $p$ es $p_v = 2 \cdot P(t_{29} < -1,3693) \approx 0,181$.
* Regla de decisión: Como $p_v = 0,181 > 0,05 = \alpha$, no se rechaza $H_0$.
* Conclusión: No hay evidencia suficiente para afirmar que el tiempo varió; se concluye que el tiempo medio poblacional se mantiene en 3 minutos.


* **Opciones Correctas:**
* **A.** Es una prueba bilateral
* **B.** $H_0: \mu = 3$
* **D.** Se concluye que el tiempo medio de atención a nivel poblacional es 3 minutos





## 🔀 Pregunta 5: Probabilidades Complementarias (0,5 puntos)

* **Enunciado:** $\alpha$ y $\beta$ son probabilidades complementarias.
* **Análisis Estadístico:** **Falso.** $\alpha$ es la probabilidad de cometer Error Tipo I y su complementario es $1 - \alpha$ (Nivel de confianza). $\beta$ es la probabilidad de cometer Error Tipo II y su complementario es $1 - \beta$ (Potencia de la prueba).
* **Opción Correcta:**
* **Falso**





## ❌ Pregunta 6: Hipótesis Estadísticas (1,5 puntos)

* **Enunciado:** ¿Cuáles de las siguientes hipótesis no pueden ser una hipótesis estadística?
* **Análisis Estadístico:** Las hipótesis estadísticas son aseveraciones referentes exclusivamente a parámetros poblacionales ($\mu, p, \sigma^2$). Nunca pueden plantearse sobre estadísticos muestrales ($\bar{x}, s^2, \hat{p}$). Las opciones C y E utilizan estadísticos muestrales.
* **Opciones Correctas (no pueden ser hipótesis estadísticas):**
* **C.** $H_0: s^2 \ge s_0^2 \quad H_1: s^2 < s_0^2$
* **E.** $H_0: \bar{x} \le \bar{x}_0 \quad H_0: \bar{x} > \bar{x}_0$





## 📐 Pregunta 7: Cálculo del p-value (1,0 punto)

* **Enunciado:** En el planteo $H_0: \mu \ge \mu_0$ vs. $H_1: \mu < \mu_0$, ¿cuál es el $p\text{-value}$?
* **Análisis Estadístico:** El $p\text{-value}$ es la probabilidad acumulada que respeta el sentido de la desigualdad planteada en la hipótesis alternativa ($H_1$). Para una prueba de cola izquierda ($<$), $p_v = P(t < t_m)$.
* **Opción Correcta:**
* **A.** Pvalue = $P(t < t_m)$





## 🏢 Pregunta 8: Relevamiento de Locales y Reclamos (1,5 puntos)

* **Enunciado:** Relevamiento de $n = 100$ locales, $x = 25$ reclamos ($\hat{p} = 0,25$). Se realizarán cambios estructurales si más del 15% ($p > 0,15$) reciben reclamos. Con $\alpha = 0,10$, ¿qué se concluye?
* **Análisis Estadístico:**
* Proporción muestral: $\hat{p} = \frac{25}{100} = 0,25$.
* Hipótesis: $H_0: p \le 0,15$ vs. $H_1: p > 0,15$.
* Estadístico: 
$$Z_m = \frac{0,25 - 0,15}{\sqrt{\frac{0,15 \cdot 0,85}{100}}} = \frac{0,10}{0,0357} \approx 2,80$$


* $p_v = P(Z > 2,80) = 0,0026$.
* Como $p_v = 0,0026 < 0,10 = \alpha$, se rechaza $H_0$. Al rechazarse, se concluye que el porcentaje supera el 15%, por lo que sí se aconseja realizar cambios estructurales.


* **Opciones Correctas:**
* **B.** $H_1: p > 0,15$
* **C.** Valor muestral $\hat{p} = 0,25$

