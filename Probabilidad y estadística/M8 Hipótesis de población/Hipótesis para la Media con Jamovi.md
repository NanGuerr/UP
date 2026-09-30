# 🤖 Prueba de Hipótesis para la Media con Jamovi

## 📋 Planteamiento del Problema
Una plataforma digital de atención al cliente busca mejorar la experiencia del usuario asegurándose de que las respuestas de su *chatbot* sean breves. El equipo define que la cantidad ideal de cada respuesta debe ser de **no más de $50$ caracteres en promedio**. Si no se verifica esta condición, se procederá a actualizar el sistema del *chatbot*.

Para tomar una decisión fundamentada, se extrae una muestra aleatoria de $n = 10$ respuestas del *chatbot*, obteniendo los siguientes resultados:
$$48, \, 55, \, 54, \, 53, \, 50, \, 51, \, 53, \, 51, \, 49, \, 55$$

Utilizando un nivel de significación de $\alpha = 0.05$, evaluaremos si se debe aconsejar la actualización del *chatbot*.



## ⚙️ Definición de Hipótesis y Parámetros

* **Parámetro a testear:** Media poblacional de caracteres por respuesta $\mu_0 = 50$.
* **Hipótesis de investigación:** Si la cantidad promedio de caracteres en la respuesta es superior a $50$, entonces se realizará la actualización.
* **Hipótesis estadísticas:**
  $$H_0: \mu \le 50$$
  $$H_1: \mu > 50$$
* **Condición de Rechazo (CR):** 
  $$\text{CR: } pv < \alpha$$



## 📊 Estadístico de Prueba y Valor P

Para realizar la prueba de hipótesis cuando se desconoce la varianza poblacional, utilizamos el estadístico t de Student:

$$t_m = \frac{\bar{x} - \mu_0}{\frac{s}{\sqrt{n}}}$$

Donde el valor de $pv$ (valor p) se calcula en función del sentido de la prueba determinado por la hipótesis alternativa ($H_1$):

$$pv = P\left(t > t_m \mid \nu = n - 1\right)$$

Siendo $\nu = n - 1$ los grados de libertad de la muestra.



## 💻 Procedimiento en Jamovi

Para resolver este caso utilizando el software estadístico **Jamovi**, se siguen estos pasos:

1. **Ingresar los datos:** Cargar la muestra de $10$ valores en una columna y definir la variable como **Continua**.
2. **Seleccionar la prueba:** Ir a la pestaña **Análisis** $\rightarrow$ **Pruebas t** $\rightarrow$ **Prueba t de una muestra**.
3. **Configurar las opciones:**
   * Pasar la variable dependiente al campo correspondiente.
   * En **Hipótesis**, ingresar el valor de prueba $\mu_0 = 50$.
   * Seleccionar el sentido de la prueba correspondiente a mayor ($\mu > \mu_0$).
   * En **Comprobaciones de Supuestos**, tildar **Prueba de Normalidad (Shapiro-Wilk)** para validar que los datos provienen de una distribución normal.



## 📈 Resultados y Conclusión

Al ejecutar el análisis en Jamovi, se obtienen los siguientes resultados estadísticos:

* **Prueba t de una muestra:**
  * Estadístico $t = 2.43$
  * Grados de libertad ($\text{df}$ / $\nu$) $= 9$
  * Valor p ($p\text{-value}$) $= 0.019$

* **Prueba de Normalidad (Shapiro-Wilk):**
  * Estadístico $W = 0.937$
  * Valor $p = 0.522$ (Como $0.522 > 0.05$, se cumple el supuesto de normalidad).

### 🔍 Verificación y Decisión:
Evaluamos la condición de rechazo comparando el valor p con el nivel de significación:
$$0.019 < 0.05 \implies \text{Se rechaza } H_0$$

### 💡 Conclusión final:
En base a los datos obtenidos y asumiendo una probabilidad de error de $0.05$ ($\alpha = 0.05$), se concluye que el promedio de caracteres excede el límite esperado. Por lo tanto, **se aconseja realizar la actualización del *chatbot*.**
