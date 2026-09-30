A continuación se presenta el desarrollo resolutivo paso a paso de la **Actividad Grupal: Prueba de hipótesis para 1 población**, estructurado según las pautas metodológicas fijadas por la cátedra en la guía explicativa con Jamovi y fundamentado en la teoría de contrastes de hipótesis.

---

### 📋 **1. Identificación de Datos, Parámetros y Estadísticos**

A partir de la consigna del ejercicio sobre el cumplimiento de plazos en proyectos de construcción:

* **Unidad de análisis:** Cada proyecto de construcción gestionado por la empresa.
* **Variable de estudio (\\(X\\)):** Tiempo de retraso en la entrega del proyecto (variable cuantitativa continua medida en días).
* **Parámetro poblacional (\\(\mu\\)):** Tiempo medio poblacional de retraso en la entrega de los proyectos (en días).
* **Tamaño muestral (\\(n\\)):** \\(18\\) proyectos.
* **Media muestral (\\(\bar{x}\\)):** \\(12,4\\) días.
* **Desvío estándar muestral (\\(s\\)):** \\(3,8\\) días.
* **Valor de prueba / Límite de referencia (\\(\mu_0\\)):** \\(14\\) días (límite máximo fijado por la empresa para definir un retraso como "razonable").
* **Nivel de significación (\\(\alpha\\)):** \\(0,10\\) (\\(10\%\\) de riesgo máximo asumido).
* **Modelo estadístico:** Prueba \\(t\\) de Student para una muestra con \\(n - 1 = 17\\) grados de libertad, debido a que la varianza poblacional (\\(\sigma^2\\)) es desconocida y la muestra es de tamaño pequeño (\\(n = 18 < 30\\)).

---

### 🎯 **2. Desarrollo del Punto 1: Planteo de Hipótesis**

* **Hipótesis de investigación (\\(H_i\\)):** "Si el tiempo medio de retraso en la entrega de los proyectos es inferior a 14 días, entonces los proyectos gestionados por la empresa tienen un retraso razonable."
* **Hipótesis nula (\\(H_0\\)):** \\(\mu \ge 14\\)  *(El retraso medio es igual o superior a 14 días; los proyectos no tienen un retraso razonable)*.
* **Hipótesis alternativa (\\(H_1\\)):** \\(\mu < 14\\)  *(El retraso medio es estrictamente menor a 14 días; los proyectos tienen un retraso razonable)*.

---

### 🧮 **3. Desarrollo del Punto 2: Cálculo del Valor P (\\(p_v\\)), Condición de Rechazo y Decisión**

#### **a) Cálculo del Estadístico de Prueba (\\(t_m\\))**
Aplicando la fórmula de estandarización \\(t\\) de Student:
\\[t_m = \frac{\bar{x} - \mu_0}{\frac{s}{\sqrt{n}}} = \frac{12,4 - 14}{\frac{3,8}{\sqrt{18}}} = \frac{-1,6}{\frac{3,8}{4,24264}} = \frac{-1,6}{0,89566} \approx \mathbf{-1,7864}\\]

* **Grados de libertad (\\(\nu = df\\)):** \\(n - 1 = 18 - 1 = \mathbf{17}\\).

#### **b) Cálculo e Interpretación del Valor P (\\(p_v\\))**
Dado que la hipótesis alternativa plantea un contraste unilateral izquierdo (\\(H_1: \mu < 14\\)), el valor p (\\(p_v\\)) representa la **probabilidad de obtener por azar una media muestral igual o más extrema (menor) que la observada (\\(t_m = -1,7864\\))**, bajo la suposición de que \\(H_0\\) es verdadera:
\\[p_v = P(t_{17} < -1,7864)\\]

##### **Pasos para obtenerlo en Jamovi (`DistrACTION` o `Pruebas t`):**
1. **Opción A (`DistrACTION` \\(\rightarrow\\) `Student's t Distribution`):**
   * Configurar: \\(\text{Mean} = 0\\), \\(\text{SD} = 1\\), \\(\text{DF} = 17\\).
   * Tildar `Compute probability`, ingresar \\(x1 = -1.7864\\) y seleccionar \\(P(X \le x1)\\).
   * **Resultado:** \\(p_v = \mathbf{0,0459}\\) (o \\(\mathbf{0,046}\\)).
2. **Opción B (`Análisis` \\(\rightarrow\\) `Pruebas t` \\(\rightarrow\\) `Prueba t de una muestra`):**
   * Variable dependiente: *Tiempo de retraso*.
   * Valor de prueba (\\(\mu_0\\)): \\(14\\).
   * Hipótesis alternativa: \\(< \text{Valor de prueba}\\) (\\(\mu < \mu_0\\)).
   * **Resultado de Jamovi:** \\(t = -1,786\\), \\(df = 17\\), \\(p = \mathbf{0,046}\\).

#### **c) Regla y Condición de Rechazo (CR)**
\\[\text{CR: } p_v < \alpha \quad \text{}\\]
Comparando los valores:
\\[0,0459 < 0,10 \implies \mathbf{\text{Se rechaza la hipótesis nula } (H_0)} \quad \text{}\\]

#### **d) Conclusión en Términos del Problema**
Asumiendo un riesgo del 10% (\\(\alpha = 0,10\\)), los datos muestrales aportan evidencia estadística suficiente para rechazar \\(H_0\\) y afirmar que el tiempo medio de retraso en la entrega de las obras es inferior a 14 días. En consecuencia, **se concluye que los proyectos gestionados por la empresa tienen un retraso razonable**.

---

### ⚠️ **4. Desarrollo del Punto 3: Evaluación de Errores y Nivel de Confianza**

El enunciado establece que:
* Se fija en \\(0,10\\) la probabilidad de concluir que un proyecto tiene un retraso razonable cuando en realidad no lo tiene \\(\rightarrow\\) **Nivel de significación (\\(\alpha = 0,10\\)) / Error Tipo I / Falso Positivo**.
* Se fija en \\(0,95\\) la probabilidad de concluir que tiene un retraso razonable cuando en realidad lo tiene (para una media de \\(13\\) días) \\(\rightarrow\\) **Potencia de la prueba (\\(1 - \beta = 0,95\\))**.

#### **a) Valor de \\(1 - \alpha\\) (Nivel de Confianza):**
\\[1 - \alpha = 1 - 0,10 = \mathbf{0,90} \quad (\text{o } \mathbf{90\%}) \quad \text{}\\]

#### **b) Valor de \\(\beta\\) (Probabilidad de cometer Error Tipo II / Falso Negativo):**
Sabiendo que la potencia de la prueba es \\(1 - \beta = 0,95\\):
\\[\beta = 1 - 0,95 = \mathbf{0,05} \quad (\text{o } \mathbf{5\%}) \quad \text{}\\]

---

💡 ¿Te gustaría que armemos una plantilla o informe formateado en PDF con estos resultados y capturas sugeridas para la entrega de tu trabajo grupal?
