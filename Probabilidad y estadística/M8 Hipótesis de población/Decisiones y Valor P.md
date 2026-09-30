# 📈 Toma de Decisiones y Valor P en Pruebas de Hipótesis

## 🧠 ¿Cómo tomamos la decisión estadística?
Para tomar una decisión basada en una muestra, debemos considerar el riesgo $\alpha$ que estamos dispuestos a fijar. Por ejemplo, si buscamos que la media muestral sea superior a un valor objetivo (como $\text{1000}$ unidades), debemos determinar qué tan superior exigimos que sea.

* **¿Cuánto superior?** Dependerá del nivel de riesgo que estemos dispuestos a asumir.
* **¿Cómo medimos la distancia a la media objetivo?** Mediante áreas o probabilidades.



## 📊 Gráficos y Valor Crítico

Al fijar diferentes umbrales para la media muestral $\bar{x}$, obtenemos distintos escenarios de riesgo:

* **Caso 1:** Se fija $\bar{x} > \text{1010}$. El valor crítico es $\text{1010}$, el área de riesgo $\alpha$ es mayor y nos arriesgamos más.
* **Caso 2:** Se fija $\bar{x} > \text{1022}$. El valor crítico es $\text{1022}$, el área de riesgo $\alpha$ es menor y exigimos un estándar más alto.

El **valor crítico** es el límite que divide la zona de aceptación de la zona de rechazo de la hipótesis nula $H_0$. Si la media muestral supera el valor crítico, se decide rechazar $H_0$.



## 📉 El Valor P (o p-value)

Dado que establecer un criterio fijo para $\alpha$ y el valor crítico de antemano puede ser complejo, los paquetes estadísticos calculan el **p-value** ($p_v$):

* **Definición:** Es el mínimo nivel de significación para el cual la hipótesis nula $H_0$ sería rechazada, calculado directamente a partir del valor de la muestra.
* **Comparación por valores:** Si el estadístico de la muestra es mayor al valor crítico, rechazamos $H_0$.
* **Comparación por áreas o probabilidades:** Si el nivel de significación $\alpha$ es mayor que el valor $p_v$ ($\alpha > p_v$), rechazamos $H_0$.

### 🛠️️ Pasos para realizar un Test de Hipótesis
1. Identificar el parámetro y el estadístico apropiado.
2. Plantear la hipótesis de investigación y las hipótesis estadísticas.
3. Determinar la distribución del estadístico en función del parámetro y los datos.
4. Calcular el valor p ($p_v$).
5. Verificar la Condición de Rechazo (CR): comprobar si $\alpha > p_v$ para concluir.



## 💡 Ejercicio Práctico de Aplicación

**Enunciado:** Un emprendedor afirma que menos del $\text{30} \text{ \%}$ en promedio (con un desvío estándar del $\text{5} \text{ \%}$) de los que visitan su tienda online está interesado en adquirir sus productos, pero no realiza la compra virtual. De comprobarlo, ofrecerá como opción el pago una vez que el cliente reciba el producto.

* **Planteamiento de la Hipótesis Alternativa correcta:** 
  $$H_1: \mu < \text{30}$$

* **Análisis de Errores:**
  * **Error tipo 1:** Concluir erróneamente en poner la opción de pago una vez recibido el producto cuando la proporción no es menor a $\text{30} \text{ \%}$.
  * **Error tipo 2:** Concluir en no poner la opción del pago una vez recibido el producto cuando en realidad sí es menor a $\text{30} \text{ \%}$.
