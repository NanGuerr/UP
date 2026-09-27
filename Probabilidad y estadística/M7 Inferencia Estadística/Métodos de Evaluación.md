# 📊 Inferencia Estadística y Métodos de Evaluación

## 📋 Resumen Ejecutivo

La inferencia estadística constituye una disciplina fundamental para la toma de decisiones y la estimación de parámetros desconocidos en una población. A partir del análisis del material evaluativo y audiovisual, se establecen dos vías principales de actuación inferencial: la estimación (puntual y por intervalos) y las pruebas de hipótesis.

La estimación busca aproximar parámetros desconocidos en ausencia de información previa, empleando conceptos como el nivel de confianza y el margen de error. Por su parte, las pruebas de hipótesis tienen como objetivo tomar decisiones categóricas fundamentadas en supuestos preconcebidos, gestionando el nivel de significación y minimizando la probabilidad de incurrir en el error tipo I, considerado el más grave en este contexto.

Asimismo, se estructuran las bases conceptuales asociadas a las propiedades de los estimadores (como la insesgadez), el comportamiento del margen de error según el tamaño muestral y la precisión, y las reglas de interpretación formal para los intervalos de confianza.



## 🔀 1. Métodos de Inferencia Estadística: Estimación vs. Pruebas de Hipótesis

La inferencia estadística se divide operativamente en dos metodologías con objetivos, aplicaciones y métricas de probabilidad diferenciadas:

| Criterio de Comparación | Estimación | Pruebas de Hipótesis |
| :--- | :--- | :--- |
| **¿Cuándo se utiliza?** | Cuando no se dispone de información respecto del parámetro poblacional. | Cuando se requiere tomar una decisión referida a un parámetro. |
| **¿Para qué se utiliza?** | Para obtener una aproximación de los parámetros desconocidos. | Para tomar decisiones fundamentadas en los supuestos formulados en las hipótesis. |
| **Significado de las Probabilidades** | Nivel de Confianza: Probabilidad de que el parámetro esté contenido en el intervalo (o que el intervalo contenga al parámetro). | Nivel de Significación ($\alpha$): Probabilidad de cometer el error tipo I (clasificado habitualmente como el error más grave). |



## 🎯 2. Propiedades y Tipos de Estimadores Puntuales

En el proceso de estimación, es imperativo distinguir entre los parámetros poblacionales (fijos y desconocidos) y los estimadores puntuales (medidas muestrales calculadas para inferir dichos parámetros).

### Estimadores Puntuales vs. Parámetros

En el marco de la autoevaluación planteada, se identifican distintas medidas estadísticas para clasificar cuáles actúan como estimadores puntuales:

* 📌 **Estimadores puntuales (calculados sobre la muestra):**
  * Media muestral ($\bar{x}$)
  * Proporción muestral ($\hat{p}$)
  * Varianza muestral ($S^2$)
* 📌 **Parámetros poblacionales (no son estimadores):**
  * Media poblacional ($\mu$)
  * Varianza poblacional ($\sigma^2$)

### Condición de Insesgadez

Para determinar formalmente que un estimador como la media muestral ($\bar{x}$) es insesgado, debe cumplirse la condición matemática directa sobre su valor esperado:
$$\mu(\bar{x}) = \mu(x) = \mu$$

> **Nota:** Otras condiciones evaluadas, como el crecimiento de $n$ (consistencia) o la magnitud de la varianza del estimador (eficiencia), corresponden a propiedades estadísticas distintas a la insesgadez pura.



## 📏 3. Construcción e Interpretación de Intervalos de Confianza

Los intervalos de confianza otorgan un rango de valores plausibles para un parámetro, sujeto a una probabilidad de cobertura conocida como nivel de confianza ($1 - \alpha$).

### Parámetros Críticos y Distribución t de Student

Cuando se calcula un intervalo de 90% de confianza para la media poblacional ($\mu$) con desvío estándar poblacional desconocido ($\sigma$), se requiere emplear la distribución t de Student. El valor crítico $t$ acumulado a considerar con $n-1$ grados de libertad responde a la cola superior del nivel de confianza:

* Para un intervalo del 90% ($1 - \alpha = 0,90$), la cola bilateral deja $\alpha/2 = 0,05$ en cada extremo. Por ende, el cuantil requerido es: $t = t(0,95, n-1)$

### Interpretación de los Intervalos de Confianza

Las afirmaciones respecto a la interpretación de intervalos de confianza deben mantener la rigurosidad frecuentista:

1. **Intervalo de confianza para la media $\mu$ al 90%:** $IC(0.90) = (11, 13)$
   * ✅ **Interpretación correcta:** "90 de cada 100 intervalos construidos a partir de distintas muestras contienen a $\mu$."
   * ❌ **Errores comunes de interpretación:** Asignar una probabilidad a priori a un intervalo ya calculado (p. ej., afirmar que la probabilidad de que $\mu$ esté entre 11 y 13 sea de 0.90 o que la probabilidad de pertenencia sea de 0.90).
2. **Intervalo de confianza para la proporción $p$ al 95%:** $IC(0.95) = (0,15; 0,21)$
   * ✅ **Interpretación correcta:** "95 de cada 100 intervalos construidos a partir de distintas muestras contienen a $p$."
   * ❌ **Errores comunes de interpretación:** Atribuir probabilidades directas al parámetro poblacional dentro de los límites fijos del intervalo o confundir el parámetro objetivo (asociar $p$ a la media poblacional).



## 📐 4. Margen de Error ($EM$) y su Dinámica de Factores

El margen de error en un intervalo de confianza para la media está definido por la relación matemática corregida:

$$EM = t_{\left(1 - \frac{\alpha}{2}, \nu\right)} \cdot \frac{s}{\sqrt{n}}$$

Donde $s$ representa la desviación estándar muestral, $n$ el tamaño de la muestra, y $\nu = n-1$ los grados de libertad.

A partir de esta formulación, se analizan las siguientes relaciones directas e inversas:

* 📈 **Efecto del tamaño de muestra ($n$):** Si aumenta el tamaño de la muestra ($n$), el denominador $\sqrt{n}$ se incrementa, provocando que el margen de error ($EM$) disminuya.
* 🎯 **Relación entre $EM$ y Precisión:** El margen de error determina la amplitud del intervalo ($2 \cdot EM$). Por lo tanto, si el EM aumenta, la amplitud del intervalo crece y la precisión disminuye.
* ⬆️ **Efecto del nivel de confianza:** Si aumenta la confianza del intervalo ($1 - \alpha$), el valor crítico $t$ aumenta, lo que genera un incremento en el $EM$.
* 📉 **Efecto del nivel de significación ($\alpha$):** Si aumenta $\alpha$ (lo que implica reducir el nivel de confianza $1-\alpha$), el valor $t$ disminuye y el margen de error disminuye, obteniendo un intervalo más estrecho (mayor precisión, menor amplitud).
