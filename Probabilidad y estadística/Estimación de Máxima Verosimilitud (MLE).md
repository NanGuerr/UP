# 📌 Estimación de Máxima Verosimilitud (MLE) [LEC4, LinReg III]

Resumen sobre el concepto de **Estimación de Máxima Verosimilitud (MLE)**. Se analiza su relación técnica con **MSE** (Mean Squared Error), **MAE** (Mean Absolute Error) y la diferencia filosófica entre los enfoques **Frecuentista (MLE)** y **Bayesiano (MAP)**. 🧠✨

---

## 🔑 Conceptos Clave y Temas Tratados

### 1. Probabilidad vs. Estadística ⚖️ [[00:15](https://www.youtube.com/watch?v=b3lQDR92-xk&t=15)]
*   **Probabilidad:** Parte de un modelo con parámetros conocidos ($\theta$) para predecir datos futuros. 🔮
*   **Estadística:** Utiliza los datos observados para inferir los parámetros desconocidos del modelo. Es el motor fundamental del Machine Learning. ⚙️

### 2. Fundamentos de Probabilidad 📊 [[05:08](https://www.youtube.com/watch?v=b3lQDR92-xk&t=308)]
El video repasa 5 pilares para entender MLE:
1.  **Experimento:** Proceso que genera datos. 🧪
2.  **Espacio Muestral ($\Omega$):** Todos los resultados posibles. 🌌
3.  **Evento:** Subconjunto del espacio muestral. 🎯
4.  **Variable Aleatoria ($X$):** Mapeo de resultados a números reales. 🔢
5.  **Función de Probabilidad:** Asignación de probabilidades a los valores de la variable. 📉

### 3. ¿Qué es Verosimilitud (Likelihood)? 🧐 [[03:36](https://www.youtube.com/watch?v=b3lQDR92-xk&t=216)]
*   Cuando los datos ya fueron recolectados, se vuelven **fijos**. 📌
*   La **Función de Verosimilitud $L(\theta)$** mide qué tan plausible es que un parámetro $\theta$ haya generado esos datos específicos.
*   **Log-Likelihood:** Se usa el logaritmo natural ($\ln L(\theta)$) por tres razones:
    1.  Mantiene los mismos máximos (función estrictamente creciente). 📈
    2.  Evita el *underflow* numérico. 🚫
    3.  Convierte multiplicaciones en sumas, facilitando las derivadas. ➕ [[18:36](https://www.youtube.com/watch?v=b3lQDR92-xk&t=1116)]

### 4. Conexión de MLE con MSE y Regresión Lineal 📉 [[26:03](https://www.youtube.com/watch?v=b3lQDR92-xk&t=1563)]
*   Si los errores siguen una **Distribución Gaussiana (Normal)**, maximizar la verosimilitud (MLE) es matemáticamente idéntico a minimizar el **Error Cuadrático Medio (MSE)**. ✅ [[28:52](https://www.youtube.com/watch?v=b3lQDR92-xk&t=1732)]

### 5. Distribución de Laplace y MAE ⚠️ [[30:38](https://www.youtube.com/watch?v=b3lQDR92-xk&t=1838)]
*   Si los errores siguen una **Distribución de Laplace** (robusta ante *outliers*), MLE resulta en la minimización del **Error Absoluto Medio (MAE)**. 🛡️ [[32:00](https://www.youtube.com/watch?v=b3lQDR92-xk&t=1920)]

### 6. Filosofía: Frecuentista (MLE) vs. Bayesiano (MAP) 🌐 [[32:42](https://www.youtube.com/watch?v=b3lQDR92-xk&t=1962)]
*   **Frecuentismo (MLE):** $\theta$ es un valor fijo y objetivo. Solo importan los datos observados. 🔎 [[37:56](https://www.youtube.com/watch?v=b3lQDR92-xk&t=2276)]
*   **Bayesianismo (MAP):** La probabilidad refleja el grado de conocimiento. Incorpora una distribución previa (**Prior $P(\theta)$**) y la actualiza con los datos. 🧠 [[39:26](https://www.youtube.com/watch?v=b3lQDR92-xk&t=2366)]
*   *Dato curioso:* Con datos infinitos, MAP converge a MLE. ♾️ [[41:36](https://www.youtube.com/watch?v=b3lQDR92-xk&t=2496)]

---
*Resumen generado para facilitar el aprendizaje de Machine Learning. ¡Sigue practicando!* 🚀
