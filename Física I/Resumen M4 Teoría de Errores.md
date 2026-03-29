# 📊 Resumen M4 Teoría de Errores


Basado en el material de estudio y el syllabus de Física I para el Módulo 2, esta guía se centra en comprender que toda medida física es inexacta y requiere un tratamiento matemático para determinar su grado de confiabilidad.

---

## 📐 1. El Proceso de Medición
Medir es comparar una magnitud con una unidad o patrón de referencia. En este proceso intervienen cinco factores fundamentales:

1.  **El objeto a medir:** La propiedad física de interés.
2.  **El instrumento:** El aparato utilizado (regla, balanza, etc.).
3.  **Unidad o patrón:** El estándar de comparación.
4.  **El operador:** La persona que realiza la medición.
5.  **El medio ambiente:** Condiciones externas (temperatura, presión) que pueden afectar la medida.

### 📝 Expresión del Resultado
Toda medida debe expresarse como:
$$\langle X \rangle \pm \Delta X$$
Donde:
* $\langle X \rangle$ es el **valor más probable**.
* $\Delta X$ es la **incertidumbre o error absoluto**.

---

## 🔍 2. Clasificación de los Errores
Los errores se dividen principalmente en dos categorías según su origen y comportamiento:

* **Sistemáticos:** Errores que se repiten constantemente en un sentido (siempre por exceso o por defecto). Se deben a instrumentos mal calibrados, métodos defectuosos o sesgos del operador. **Pueden corregirse** si se identifica la causa.
    * *Ejemplo:* Una balanza que no está puesta a cero correctamente.
* **Aleatorios (o Accidentales):** Causados por variaciones impredecibles en las condiciones de medición. No se pueden eliminar, pero su efecto se reduce realizando múltiples mediciones y aplicando estadística.

---

## 🧊 3. Mediciones Directas e Indirectas

* **Directas:** Se obtienen directamente con el instrumento (ej. medir el lado de un cubo con una regla).
* **Indirectas:** Se calculan a partir de otras medidas directas mediante una fórmula matemática (ej. calcular el volumen de un cubo multiplicando sus lados).

### ⚡ Propagación de Errores
Cuando realizamos cálculos con medidas que tienen error, la incertidumbre se "propaga" al resultado final:
* **Suma y Resta:** Se suman las incertidumbres absolutas.
* **Multiplicación y División:** Se suman las incertidumbres relativas.

---

## 📈 4. Método de Mínimos Cuadrados (Regresión Lineal)
Se utiliza para encontrar la "mejor recta" ($y = A + Bx$) que se ajusta a un conjunto de datos experimentales.



[Image of a linear regression graph with data points and a line of best fit]


* **Pendiente ($B$):** Indica la tasa de cambio entre variables.
    $$B = \frac{\sum x_i y_i - N\bar{x}\bar{y}}{\sum x_i^2 - N\bar{x}^2}$$
* **Ordenada al origen ($A$):** Punto de corte con el eje vertical.
    $$A = \bar{y} - B\bar{x}$$
* **Coeficiente de correlación ($R^2$):** Mide qué tan buena es la relación lineal. Si $R^2$ es cercano a 1, la relación es muy fuerte.

---

## 🔢 5. Cifras Significativas y Redondeo
Son las cifras que aportan información real sobre la precisión de una medida.

* **Regla de Suma/Resta:** El resultado debe tener el mismo número de decimales que el dato con menos decimales.
    * *Ejemplo:* $2,45 + 7,5679 = 10,02$
* **Regla de Multiplicación/División:** El resultado debe tener el mismo número de cifras significativas totales que el dato menos preciso.

---

## ⚖️ 6. Técnicas Especiales de Laboratorio (Balanza)
El **método de Gauss** para pesadas permite corregir errores de fabricación en la simetría de los brazos de una balanza, utilizando una "tara" y realizando pesadas cruzadas para obtener la masa real:

$$m = \sqrt{m_1 \cdot m_2}$$

---

> 📌 **Tip de estudio:** Practica siempre la conversión entre error absoluto, error relativo ($e_r = \Delta X / X$) y error porcentual ($E\% = e_r \times 100$), ya que es fundamental para evaluar la calidad de tus experimentos.
