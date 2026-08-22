# 📊 Guía de Frecuencia Absoluta y Relativa 📈

En estadística descriptiva, el análisis de datos comienza con la organización de las observaciones mediante **frecuencias**. Estas nos permiten resumir grandes conjuntos de datos para entender su comportamiento y distribución.

---

## 📌 1. Frecuencia Absoluta ($f_i$ o $n_i$)

La **frecuencia absoluta** es el **número total de veces que se repite un valor o categoría específica** dentro de un conjunto de datos observados.

### 📐 Propiedades y Características:
* 🔢 **Valores enteros no negativos:** Siempre es un número entero ($f_i \geq 0$).
* ➕ **Suma total:** La suma de todas las frecuencias absolutas individuales es igual al tamaño total de la muestra o población ($N$ o $n$).

$$\sum_{i=1}^{k} f_i = f_1 + f_2 + \dots + f_k = N$$

### 💡 Ejemplo Práctico:
Se consulta a **20 estudiantes** sobre cuántas mascotas tienen en casa:
* Datos obtenidos: `0, 1, 1, 2, 0, 1, 3, 1, 0, 2, 1, 1, 0, 2, 1, 0, 1, 2, 3, 1`

* **Frecuencia absoluta de 0 mascotas:** $f_0 = 5$ estudiantes.
* **Frecuencia absoluta de 1 mascota:** $f_1 = 9$ estudiantes.
* **Frecuencia absoluta de 2 mascotas:** $f_2 = 4$ estudiantes.
* **Frecuencia absoluta de 3 mascotas:** $f_3 = 2$ estudiantes.
* **Suma Total ($N$):** $5 + 9 + 4 + 2 = 20$.

---

## 📊 2. Frecuencia Relativa ($h_i$ o $f_r$)

La **frecuencia relativa** es el **cociente o proporción** entre la frecuencia absoluta de un valor y el número total de datos ($N$). Indica qué parte del total representa cada categoría.

### 📐 Definición Matemática:
$$h_i = \frac{f_i}{N}$$

### 📐 Propiedades y Características:
* 🎯 **Rango acotado:** Siempre es un valor decimal entre $0$ y $1$ inclusive ($0 \leq h_i \leq 1$).
* 💯 **Suma unitaria:** La suma de todas las frecuencias relativas siempre debe ser exactamente $1$ (o $100\%$ si se expresa en porcentaje).

$$\sum_{i=1}^{k} h_i = h_1 + h_2 + \dots + h_k = 1$$

---

## 💯 3. Frecuencia Relativa Porcentual ($p_i$)

Para facilitar la interpretación de los datos en informes y presentaciones, la frecuencia relativa suele expresarse como un **porcentaje**.

### 📐 Definición Matemática:
$$p_i = h_i \times 100\%$$

### 💡 Ejemplo del Cálculo Porcentual (con los datos anteriores):
* **0 mascotas:** $h_0 = \frac{5}{20} = 0.25 \implies 25\%$
* **1 mascota:** $h_1 = \frac{9}{20} = 0.45 \implies 45\%$
* **2 mascotas:** $h_2 = \frac{4}{20} = 0.20 \implies 20\%$
* **3 mascotas:** $h_3 = \frac{2}{20} = 0.10 \implies 10\%$
* **Suma Porcentual Total:** $25\% + 45\% + 20\% + 10\% = 100\%$

---

## ➕ 4. Frecuencias Acumuladas

Además de las frecuencias simples, existen las versiones acumuladas, muy útiles para responder preguntas como *"¿cuántos individuos tienen 2 mascotas o menos?"*.

* **Frecuencia Absoluta Acumulada ($F_i$):** Suma sucesiva de las frecuencias absolutas hasta la categoría $i$.
  $$F_i = f_1 + f_2 + \dots + f_i$$
* **Frecuencia Relativa Acumulada ($H_i$):** Suma sucesiva de las frecuencias relativas hasta la categoría $i$.
  $$H_i = h_1 + h_2 + \dots + h_i$$

---

## 🗓️ 5. Tabla de Distribución de Frecuencias Completa

Integrando todos los conceptos vistos para el ejemplo de las 20 mascotas:

| N° Mascotas ($X_i$) | Frecuencia Absoluta ($f_i$) | Frecuencia Relativa ($h_i$) | Frecuencia Porcentual ($p_i$) | Frec. Absoluta Acumulada ($F_i$) | Frec. Relativa Acumulada ($H_i$) |
| :---: | :---: | :---: | :---: | :---: | :---: |
| **0** | 5 | 0.25 | 25% | 5 | 0.25 (25%) |
| **1** | 9 | 0.45 | 45% | 14 | 0.70 (70%) |
| **2** | 4 | 0.20 | 20% | 18 | 0.90 (90%) |
| **3** | 2 | 0.10 | 10% | 20 | 1.00 (100%) |
| **Total** | **20** | **1.00** | **100%** | — | — |

---

## ⚖️ 6. Cuadro Comparativo: Absoluta vs. Relativa

| Criterio | Frecuencia Absoluta ($f_i$) | Frecuencia Relativa ($h_i$) |
| :--- | :--- | :--- |
| **¿Qué mide?** | El recuento de observaciones individuales. | La proporción o peso respecto al total. |
| **Unidad de medida** | Unidades (personas, objetos, eventos). | Decimales ($0$ a $1$) o Porcentajes ($0\%$ a $100\%$). |
| **Suma Total** | Tamaño de la muestra ($N$). | $1.00$ o $100\%$. |
| **Utilidad principal** | Conocer la cantidad exacta muestreada. | Comparar muestras de diferentes tamaños. |

---

## 💡 ¿Por qué es fundamental la Frecuencia Relativa para Comparaciones? 🔍

Supongamos que queremos comparar la cantidad de usuarios con fallas de servicio en dos redes sociales distintas:

* **Red A:** 500 usuarios reportaron fallas de un total de 1,000 usuarios.
* **Red B:** 2,000 usuarios reportaron fallas de un total de 100,000 usuarios.

Si solo miras la **frecuencia absoluta**, podrías pensar que la **Red B** es peor porque tiene más reclamos ($2,000 > 500$). Sin embargo, al calcular la **frecuencia relativa**:

* **Red A:** $h_A = \frac{500}{1000} = 0.50 \implies \mathbf{50\% \text{ de fallas}}$
* **Red B:** $h_B = \frac{2000}{100000} = 0.02 \implies \mathbf{2\% \text{ de fallas}}$

La frecuencia relativa demuestra claramente que la **Red A tiene un desempeño mucho peor** que la Red B.
