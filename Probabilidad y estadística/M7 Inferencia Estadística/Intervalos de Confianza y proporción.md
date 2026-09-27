# 📊 Intervalos de Confianza para la Media y la Proporción Poblacional mediante Jamovi

## 📑 Resumen Ejecutivo

Este documento sintetiza las metodologías y procedimientos prácticos para el cálculo e interpretación de Intervalos de Confianza aplicados a la media poblacional ($\mu$) y a la proporción poblacional ($p$), utilizando herramientas estadísticas manuales y el software Jamovi.

Los aspectos estratégicos y operativos centrales contemplados son:

* 📈 **Estimación de la Media Poblacional ($\mu$):** Basada en una muestra de transferencia de datos en red ($n = 5$), con un nivel de confianza del $95\%$, resultando en un intervalo de $640.64\text{ GB}$ a $843.36\text{ GB}$ (o $640.6\text{ GB}$ a $843.4\text{ GB}$ según la salida directa de Jamovi).
* 🎯 **Estimación de la Proporción Poblacional ($p$):** Basada en una muestra de incidentes de ciberseguridad ($n = 1100$), con un nivel de confianza del $96\%$, determinando una proporción estimada entre $0.813$ y $0.859$ (expresado también en la interpretación textual como entre $0.814$ y $0.858$).
* ⚙️ **Regla de Aplicación Metodológica:** El cálculo directo automatizado del intervalo de confianza en Jamovi requiere imperativamente contar con el listado completo de datos brutos. Si los datos suministrados consisten únicamente en estadísticos descriptivos resumidos (media y desvío estándar muestral), es obligatorio realizar la resolución mediante la fórmula matemática utilizando los cuantiles provistos por Jamovi.

---

## 1. 📊 Intervalo de Confianza para la Media Poblacional ($\mu$)

### Contexto y Caso de Estudio

Se evalúa un nuevo sistema de almacenamiento en red corporativo. Se midieron los gigabytes ($\text{GB}$) transferidos mensualmente durante $5$ meses ($n = 5$), obteniéndose los siguientes datos brutos: 
$$\text{Datos (GB)}: 607, 725, 784, 784, 810$$

**Objetivo:** Estimar el volumen medio de $\text{GB}$ transferidos con un nivel de confianza del $95\%$ ($1 - \alpha = 0.95$).

### Resolución mediante Fórmula Matemática

#### 1. Obtención de Estadísticos Descriptivos
Ingresando los datos brutos en Jamovi a través de la ruta `Exploración` $\rightarrow$ `Descriptivas`, se obtienen los parámetros muestrales base:
* Media muestral ($\bar{x}$): $742$
* Desvío estándar muestral ($s$): $81.649$

#### 2. Determinación del Cuantil t-Student
Para calcular el Error Muestral (EM), se utiliza la distribución t-Student dado que el tamaño muestral es pequeño ($n = 5$) y se desconoce el desvío poblacional:
* Nivel de confianza: $1 - \alpha = 0.95 \Rightarrow \alpha = 0.05 \Rightarrow \frac{\alpha}{2} = 0.025 \Rightarrow 1 - \frac{\alpha}{2} = 0.975$
* Grados de libertad ($df$): $\nu = n - 1 = 5 - 1 = 4$

Para hallar el valor crítico $t_{(4; 0.975)}$ en Jamovi:
1. Navegar a `distrACTION` $\rightarrow$ `T-Distribution`.
2. Completar los parámetros: $\nu = df = 4$ (mantener $\lambda = 0$).
3. Seleccionar la opción `Compute quantile(s)` e ingresar $p = 0.975$.
4. Marcar `cumulative quantile`.
5. **Resultado obtenido:** $t_{(4; 0.975)} = 2.776$

#### 3. Cálculo del Error Muestral y Límites del Intervalo
* **Fórmula del Error Muestral:** 
  $$EM = t_{\left(n-1; 1-\frac{\alpha}{2}\right)} \cdot \frac{s}{\sqrt{n}}$$
* **Sustitución de valores:** 
  $$EM = 2.776 \cdot \frac{81.649}{\sqrt{5}} = 101.36$$
* **Límites del Intervalo:**
  * Límite inferior ($l_i$): $\bar{x} - EM = 742 - 101.36 = 640.64$
  * Límite superior ($l_s$): $\bar{x} + EM = 742 + 101.36 = 843.36$
  * **Expresión formal:** $IC_{0.95}(\mu) = (640.64; 843.36)$

#### 4. Interpretación
💡 *Existe una probabilidad del $95\%$ de que el promedio real de datos transferidos por mes se encuentre comprendido entre $640.64\text{ GB}$ y $843.36\text{ GB}$.*

---

### Resolución Directa con Jamovi

Cuando se dispone de la serie completa de datos individuales, el procedimiento se simplifica en el entorno de Jamovi:
1. **Ruta de menú:** `Análisis` $\rightarrow$ `Pruebas t` $\rightarrow$ `Pruebas t de una Muestra`.
2. **Configuración de variables:** Transferir la columna de datos al campo de análisis.
3. **Ajustes obligatorios:**
   * Tildar la opción `Estadísticas Adicionales`.
   * Marcar `Diferencia de medias` e `Intervalo de confianza` (especificar $95\%$).
   * **Requisito crítico:** En el apartado `Hipótesis`, debe mantenerse seleccionada la opción $\neq$ (con valor de prueba $0$).
4. **Resultados arrojados por el software:**
   * Estadístico $t$: $20.32$
   * Grados de libertad ($gl$): $4.000$
   * Valor $p$: $< .0001$
   * Diferencia de medias: $742.0$
   * Límite Inferior ($95\%$): $640.6$
   * Límite Superior ($95\%$): $843.4$

---

## 2. 🎯 Intervalo de Confianza para Proporciones Poblacionales ($p$)

### Contexto y Caso de Estudio

Una empresa de ciberseguridad examina una muestra aleatoria de $1100$ incidentes de seguridad reportados ($n = 1100$). Se identifica que $920$ de estos eventos responden a vulnerabilidades en el software de los clientes ($x = 920$).

**Objetivo:** Estimar, con un nivel de confianza del $96\%$ ($1 - \alpha = 0.96$), la proporción real de incidentes vinculados a vulnerabilidades de software en toda la base de clientes.

### Parámetros y Procedimiento de Cálculo

#### 1. Datos e Indicadores Muestrales
* Tamaño muestral ($n$): $1100$
* Casos de éxito ($x$): $920$
* Proporción muestral ($\hat{p}$): 
  $$\hat{p} = \frac{920}{1100} \approx 0.836$$
* Nivel de confianza: $1 - \alpha = 0.96 \Rightarrow \alpha = 0.04 \Rightarrow \frac{\alpha}{2} = 0.02 \Rightarrow 1 - \frac{\alpha}{2} = 0.98$

#### 2. Cálculo del Cuantil Normal $z$
Para determinar el cuantil crítico $z_{0.98}$ mediante Jamovi:
1. Acceder a `distrACTION` $\rightarrow$ `Normal Distribution`.
2. Ir a la sección `Compute quantile(s)`.
3. Ingresar $p = 0.98$ y tildar `cumulative quantile`.
4. **Valor obtenido:** $z_{0.98} = 2.054$

#### 3. Cálculo del Error Muestral y Límites del Intervalo
* **Fórmula del Error Muestral (EM):** 
  $$EM = z_{\left(1-\frac{\alpha}{2}\right)} \cdot \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$$
* **Sustitución de valores:** 
  $$EM = 2.054 \cdot \sqrt{\frac{0.836 \cdot (1 - 0.836)}{1100}} = 2.054 \cdot \sqrt{\frac{0.836 \cdot 0.164}{1100}} = 2.054 \cdot 0.0112 = 0.023$$
* **Límites del Intervalo** ($l_{i,s} = \hat{p} \pm EM$):
  * Límite inferior ($l_i$): $0.836 - 0.023 = 0.813$
  * Límite superior ($l_s$): $0.836 + 0.023 = 0.859$
  * **Expresión formal:** $IC_{0.96}(p) = (0.813; 0.859)$

#### 4. Interpretación
💡 *Con un nivel de probabilidad del $0.96$ ($96\%$ de confianza), se estima que la proporción real de incidentes de seguridad causados por vulnerabilidades de software se ubica dentro del rango de $0.813$ a $0.859$ (delimitado textualmente en la interpretación como $0.814$ a $0.858$).*

---

## 3. 📋 Cuadro Comparativo Metodológico

La siguiente tabla resume las diferencias operativas y metodológicas entre los dos tipos de estimación analizados:

| Parámetro Poblacional | Tamaño Muestral ($n$) | Distribución de Referencia | Módulo Jamovi para Cuantiles | Expresión del Error Muestral (EM) | Intervalo Calculado |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Media ($\mu$)** | Pequeño ($n = 5$) | t-Student ($df = n-1$) | `distrACTION` $\rightarrow$ `T-Distribution` | $EM = t_{\left(n-1; 1-\frac{\alpha}{2}\right)} \cdot \frac{s}{\sqrt{n}}$ | $(640.64; 843.36)\text{ GB}$ |
| **Proporción ($p$)** | Grande ($n = 1100$) | Normal Estándar ($Z$) | `distrACTION` $\rightarrow$ `Normal Distribution` | $EM = z_{\left(1-\frac{\alpha}{2}\right)} \cdot \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$ | $(0.813; 0.859)$ |

---

## 🔀 Criterio de Elección del Método de Cálculo

```text
                     ¿Se dispone del listado completo de datos brutos?
                                      /              \
                                     /                \
                                   SÍ                  NO
                                  /                      \
      Realizar cálculo directo en Jamovi        Utilizar fórmula matemática calculando
   (Análisis -> Pruebas t -> Pruebas t de        los cuantiles (t o z) mediante el
                 una Muestra)                    módulo distrACTION de Jamovi
