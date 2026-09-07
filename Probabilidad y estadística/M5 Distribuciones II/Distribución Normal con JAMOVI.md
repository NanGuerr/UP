# 📊📈 Distribución Normal: Resolución Usando Jamovi

## 📋 Resumen Ejecutivo
Este documento detalla la aplicación práctica de la **Distribución Normal** en la resolución de problemas estadísticos utilizando el software **Jamovi**. A través de un caso de estudio real en el desarrollo de software de salud mental (un chatbot terapéutico), se explican los procedimientos paso a paso para el cálculo de probabilidades y percentiles, facilitando la toma de decisiones basada en datos empíricos.



## 🤖 1. Presentación del Caso de Estudio: Chatbot de Salud Mental
* **Contexto:** Una empresa de desarrollo de software para la salud mental ha lanzado una aplicación de terapia virtual en la cual los usuarios interactúan con un chatbot psicológico.
* **Recolección de Datos:** Se midió el tiempo de respuesta del chatbot en segundos bajo condiciones normales de uso.
* **Modelo Estadístico:** Se determinó que los tiempos de respuesta siguen una **distribución normal**.
* **Parámetros del Sistema:**
  * **Media ($\mu$):** $0.850	ext{ s}$
  * **Desviación Estándar ($\sigma$):** $0.1	ext{ s}$



## ⏱️ 2. Ejercicio 1: Cálculo de Probabilidades (Tiempos Mayores a 1 Segundo)

### ❓ Pregunta Planteada
¿Qué porcentaje de respuestas se espera que demoren por lo menos $1	ext{ segundo}$? Es decir, calcular la probabilidad $P(X \ge 1)$.

### 🛠️ Procedimiento Paso a Paso en Jamovi (`distrAction`)
1. Abrir el software Jamovi e ir a la pestaña **`distrAction`**.
2. Seleccionar la opción **`Normal Distribution`** dentro de las distribuciones continuas.
3. Ingresar los parámetros correspondientes:
   * **Mean ($\mu$):** `0.85`
   * **SD ($\sigma$):** `0.1`
4. En el apartado de funciones, tildar la opción **`Compute probability`**.
5. Configurar los valores:
   * **$x_1$:** `1`
   * Seleccionar el operador de desigualdad correspondiente: **`P(X >= x1)`**.
6. Hacer clic en la flecha de actualización para procesar los resultados analíticos y gráficos.

### 📈 Resultados e Interpretación
* **Resultado Analítico:** $P(X \ge 1) = 0.067$
* **Interpretación Porcentual:** Existe un **$6.7\%$** de probabilidad de que, al realizar una consulta al azar, el chatbot demore más de un segundo en responder. 
* Tanto los desarrolladores como los psicólogos consideran este umbral como un punto crítico donde la eficacia percibida de la aplicación podría verse afectada.



## 🎯 3. Ejercicio 2: Cálculo de Cuantiles y Umbrales (Percentil 80)

### ❓ Pregunta Planteada
¿Cuál es el tiempo de respuesta superado por el $20\%$ de las respuestas? Es decir, determinar el **Percentil 80** ($X(0.80)$), un umbral crítico establecido por los expertos para evaluar la ineficiencia operativa.

### 🛠️ Procedimiento Paso a Paso en Jamovi (`distrAction`)
1. Mantenerse en el módulo **`distrAction`** -> **`Normal Distribution`**.
2. Verificar que los parámetros de entrada sigan configurados correctamente:
   * **Mean ($\mu$):** `0.85`
   * **SD ($\sigma$):** `0.1`
3. En el apartado de funciones, cambiar la selección a **`Compute quantile(s)`**.
4. Tildar la opción **`Cumulative quantile`**.
5. Ingresar el valor de probabilidad acumulada en el parámetro **$p$**:
   * **$p$:** `0.80`
6. Hacer clic en la flecha para obtener el resultado en pantalla.

### 📈 Resultados e Interpretación
* **Resultado Analítico:** $P(80) = X(0.80) = 0.934	ext{ segundos}$
* **Interpretación:** El tiempo límite que separa al $80\%$ de las respuestas más rápidas del $20\%$ de las respuestas más lentas es de **$0.934	ext{ segundos}$**.
* **Sugerencia Técnica:** Si las respuestas superan los $0.934	ext{ segundos}$, los usuarios percibirán que la aplicación no es eficiente. Por lo tanto, se aconseja a los desarrolladores optimizar los recursos del sistema para minimizar la latencia y reducir la probabilidad de superar este umbral crítico.



## 💡 4. Conclusiones Metodológicas
El uso de herramientas estadísticas modernas como Jamovi simplifica significativamente la transición entre la teoría de la distribución normal y la toma de decisiones prácticas. Al evitar el cálculo manual con tablas estandarizadas Z, los equipos interdisciplinarios (desarrolladores y profesionales de la salud) pueden concentrarse en la interpretación gráfica y analítica de los datos para optimizar la experiencia del usuario y el rendimiento del software.
