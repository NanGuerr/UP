***

# 🔬 Informe de Laboratorio: Determinación de Errores

Este documento detalla la base teórica y el procedimiento experimental seguido para la caracterización de un cilindro metálico y la validación científica de sus mediciones.

---

## 📚 1. Introducción Teórica

La medición física no es exacta; es una aproximación. Para dar validez científica a un resultado, es necesario cuantificar su **incerteza**, expresándola como un intervalo de confianza:

$$\langle X \rangle = \overline{x} \pm \Delta X$$

* **$\overline{x}$ (Valor representativo):** El valor más probable.
* **$\Delta X$ (Incerteza absoluta):** El margen donde se encuentra el valor real.

### ⚠️ Clasificación de Errores
1.  **Sistemáticos:** Errores constantes (ej. mala calibración del instrumento). 🛠️
2.  **Aleatorios o Estadísticos:** Fluctuaciones impredecibles que se reducen aumentando el número de mediciones ($n$). 🎲

Para $n$ mediciones, el valor representativo es la **media aritmética**:
$$\overline{x} = \frac{\sum_{i=1}^{n} x_i}{n}$$

La incerteza total combina la estadística y la del instrumento:
$$\Delta X = \sqrt{\sigma_{est}^2 + \sigma_{apr}^2}$$

---

## 📐 2. Propagación de Errores (Medidas Indirectas)

Cuando el resultado depende de una fórmula (como el volumen $V$ o la densidad $\rho$), la incerteza se propaga mediante **derivadas parciales**:

$$\sigma F = \sqrt{\left(\frac{\partial F}{\partial x}\right)^2 (\sigma_x)^2 + \left(\frac{\partial F}{\partial y}\right)^2 (\sigma_y)^2}$$

### 📝 Fórmulas Clave:
* **Volumen del cilindro:** $V = \pi \cdot (\frac{D}{2})^2 \cdot h$ 🧊
* **Peso específico:** $P_e = \frac{P}{V}$ (Permite identificar el material). 🔬

---

## 🛠️ 3. Desarrollo Experimental

### 3.1. Materiales e Instrumental
Se utilizaron instrumentos de alta precisión para minimizar el error de apreciación:

1.  **Cilindro metálico:** Objeto de estudio. 🔩
2.  **Calibre (Pie de Rey):**
    * **Apreciación ($\sigma_{apr}$):** $0,02 \text{ mm}$.
    * **Uso:** Medición de diámetro y altura.
3.  **Balanza de precisión:**
    * **Apreciación ($\sigma_{apb}$):** $0,1 \text{ g}$.
    * **Uso:** Determinación de la masa. ⚖️

### ⚙️ 3.2. Disposición y Detalles de Medición
* **Nivelación:** El trabajo se realizó sobre una superficie estable y libre de vibraciones.
* **Altura ($h$):** 15 mediciones en diferentes generatrices para evitar errores de paralelismo. 📏
* **Diámetro ($D$):** 15 mediciones usando técnica de "rotación y traslación" para compensar irregularidades de cilindricidad. ⭕
* **Masa ($P$):** 15 registros independientes, retirando el objeto y esperando el retorno a cero (tara) entre cada medición. 🔄

---

## 📋 4. Bosquejo del Procedimiento

La secuencia experimental siguió este orden lógico:

1.  **Reconocimiento:** Limpieza del cilindro y verificación del "error de cero" en los instrumentos. ✨
2.  **Toma de datos:** Ejecución de las **15 series** de mediciones directas ($h, D, P$). ✍️
3.  **Cálculo de valores medios:** Obtención de los promedios aritméticos. 🔢
4.  **Análisis estadístico:** Determinación de la desviación estándar para hallar el error de la muestra. 📊
5.  **Cálculo de magnitudes indirectas:** Aplicación de fórmulas de Volumen y Peso Específico. 🧮
6.  **Propagación de incertezas:** Determinación de los errores finales para asegurar la integridad de los intervalos de confianza. ✅

***

> **Nota:** Este informe sigue los estándares de rigurosidad técnica requeridos para la validación de materiales en ingeniería.
