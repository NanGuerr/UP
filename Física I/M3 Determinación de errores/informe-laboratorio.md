### **1. Resumen**

El propósito de este informe es determinar de manera precisa las dimensiones físicas, el volumen, el peso y el peso específico (densidad) de un cilindro metálico a partir de mediciones experimentales directas e indirectas, aplicando de manera rigurosa la teoría de propagación de errores. Se realizaron quince mediciones de la altura, el diámetro y el peso del cilindro utilizando un calibre con apreciación instrumental de $0,02 \text{ mm}$ y una balanza con apreciación de $0,1 \text{ g}$. 

Los resultados promedio obtenidos fueron: 
*   **Altura:** $h = (13,17 \pm 0,05) \text{ mm}$
*   **Diámetro:** $D = (25,61 \pm 0,09) \text{ mm}$
*   **Peso:** $P = (50,0 \pm 0,1) \text{ g}$

Mediante el cálculo diferencial por derivadas parciales se estimó el volumen del cilindro en $V = (6790 \pm 50) \text{ mm}^3$ y su peso específico en $Pe = (7370 \pm 60) \text{ kg/m}^3$. A partir de la comparación del peso específico experimental con tablas físicas estándar, se identificó que el cilindro está constituido por **estaño** o por **hierro fundido**.

---

### **2. Introducción Teórica**

Cualquier proceso de medición física conlleva inevitablemente una incertidumbre debido a las limitaciones de los instrumentos, el método de medición y las condiciones ambientales. Por lo tanto, el resultado de una medición se expresa formalmente como:

$$X = \langle X \rangle \pm \Delta X \quad$$

Donde $\langle X \rangle$ representa el valor representativo (o valor medio más probable) y $\Delta X$ es la incerteza absoluta o error absoluto asociado a la medición.

#### **2.1 Mediciones Directas**
Para una magnitud medida directamente $n$ veces de forma independiente, el valor representativo se calcula como el promedio aritmético de las mediciones $x_i$:

$$\langle X \rangle = \bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i \quad$$

La incerteza de una medición directa se compone de dos contribuciones: la dispersión estadística (error estándar del promedio) y el error instrumental (apreciación del instrumento):

$$\Delta X = \sqrt{\sigma_{est}^2 + \sigma_{apr}^2} \quad$$

Donde la dispersión estadística representa el error estándar del promedio y se calcula mediante la fórmula:

$$\sigma_{est} = \sqrt{\frac{\sum_{i=1}^{n} (x_i - \bar{x})^2}{n(n-1)}} \quad$$

El error instrumental $\sigma_{apr}$ corresponde a la menor división de escala del instrumento utilizado (o la apreciación declarada por el fabricante).

#### **2.2 Mediciones Indirectas y Propagación de Errores**
Cuando una magnitud se determina indirectamente mediante una función matemática $F$ que depende de $m$ variables independientes medidas directamente $x_1, x_2, \dots, x_m$, es decir, $F = F(x_1, x_2, \dots, x_m)$, el error absoluto se propaga utilizando el método de sumatoria cuadrática de derivadas parciales:

$$\Delta F = \sqrt{\sum_{k=1}^{m} \left( \frac{\partial F}{\partial x_k} \Delta x_k \right)^2} \quad$$

En esta experiencia, el volumen del cilindro es una función indirecta del diámetro $D$ y la altura $h$:

$$V(D, h) = \pi \left( \frac{D}{2} \right)^2 h = \frac{\pi}{4} D^2 h \quad$$

Las derivadas parciales respecto al diámetro $D$ y la altura $h$ son, respectivamente:

$$\frac{\partial V}{\partial D} = \frac{\pi}{2} D h \quad \text{y} \quad \frac{\partial V}{\partial h} = \frac{\pi}{4} D^2 \quad$$

El error propagado para el volumen resulta entonces en:

$$\Delta V = \sqrt{\left( \frac{\partial V}{\partial D} \Delta D \right)^2 + \left( \frac{\partial V}{\partial h} \Delta h \right)^2} \quad$$

Asimismo, el peso específico:

$$\Delta Pe = \sqrt{\left(\frac{\partial Pe}{\partial P} \Delta P\right)^2 + \left(\frac{\partial Pe}{\partial V} \Delta V\right)^2}$$

---

### **3. Desarrollo Experimental**

#### **3.1 Instrumentos Utilizados**
Se utilizaron los siguientes instrumentos de medición física para registrar las variables del cilindro:
*   **Calibre (Pie de Rey):** Utilizado para medir la altura $h$ y el diámetro $D$ del cilindro. Presenta un error de apreciación instrumental de $\sigma_{apc} = 0,02 \text{ mm}$.
*   **Balanza de Precisión:** Utilizada para medir el peso del cilindro. Presenta un error de apreciación instrumental de $\sigma_{apb} = 0,1 \text{ g}$.

#### **3.2 Bosquejo del Procedimiento**
El ensayo experimental constó de las siguientes etapas secuenciales:
1.  Se colocó el cilindro en las mordazas del calibre para registrar de forma consecutiva e independiente la altura $h$ en 15 oportunidades, rotando levemente la pieza entre lecturas para capturar cualquier asimetría geométrica.
2.  Se procedió de igual manera para registrar el diámetro $D$ en 15 mediciones directas.
3.  El peso $P$ se determinó colocando el cilindro centrado sobre el platillo de la balanza de precisión, registrando el valor arrojado por el display digital en 15 instancias de pesaje independiente.
4.  Se recopilaron los datos en planillas para efectuar el análisis estadístico y aplicar las fórmulas de propagación descritas en la sección teórica.

---

### **4. Resultados de las Mediciones**

En la **Tabla 1** se presentan las 15 mediciones directas e independientes obtenidas en el laboratorio para cada una de las variables bajo estudio.

##### **Tabla 1: Mediciones directas de la Altura ($h$), el Diámetro ($D$) y el Peso ($P$) del cilindro**

| N° de Medición | Altura $h$ ($\text{mm}$) | Diámetro $D$ ($\text{mm}$) | Peso $P$ ($\text{g}$) |
| :---: | :---: | :---: | :---: |
| 1 | 13,36 | 25,40 | 49,9 |
| 2 | 13,24 | 25,24 | 50,4 |
| 3 | 13,16 | 25,72 | 49,7 |
| 4 | 13,24 | 26,02 | 50,3 |
| 5 | 13,20 | 25,88 | 49,6 |
| 6 | 13,08 | 26,04 | 49,9 |
| 7 | 13,56 | 25,08 | 50,4 |
| 8 | 12,94 | 25,24 | 49,6 |
| 9 | 13,02 | 25,34 | 49,8 |
| 10 | 13,36 | 25,86 | 50,3 |
| 11 | 13,00 | 25,46 | 50,4 |
| 12 | 13,10 | 25,84 | 50,2 |
| 13 | 13,32 | 25,78 | 49,9 |
| 14 | 13,06 | 25,32 | 50,3 |
| 15 | 12,98 | 25,90 | 49,7 |


Tras aplicar el procesamiento estadístico detallado, se obtuvieron los siguientes parámetros consolidados:

##### **Tabla 2: Resumen estadístico y determinación de incertezas absolutas para magnitudes directas**

| Magnitud | Promedio ($\bar{X}$) | Error estándar ($\sigma_{est}$) | Error inst. ($\sigma_{apr}$) | Error abs. ($\Delta X$) |
| :--- | :---: | :---: | :---: | :---: |
| **Altura $h$** | $13,175 \text{ mm}$ | $0,045 \text{ mm}$ | $0,02 \text{ mm}$ | $0,05 \text{ mm}$ |
| **Diámetro $D$** | $25,608 \text{ mm}$ | $0,083 \text{ mm}$ | $0,02 \text{ mm}$ | $0,09 \text{ mm}$ |
| **Peso $P$** | $50,0 \text{ g}$ | $0,1 \text{ g}$ | $0,1 \text{ g}$ | $0,1 \text{ g}$ |


De acuerdo a las reglas de redondeo y cifras significativas (error absoluto expresado con 1 cifra significativa, o 2 si empieza con 1), los resultados de las medidas directas se expresan de la siguiente manera:

| Magnitud | Variable | Valor ± Error | Unidad |
| --- | --- | --- | --- |
| **Altura del cilindro** | $h$ | $13,17 \pm 0,05$ | mm |
| **Diámetro del cilindro** | $D$ | $25,61 \pm 0,09$ | mm |
| **Peso del cilindro** | $P$ | $50,0 \pm 0,1$ | g |

#### **4.1 Resultados para las Magnitudes Indirectas (Volumen y Peso Específico)**
A partir de las medidas anteriores, se determinó el volumen experimental del cilindro y su densidad/peso específico:

*   **Volumen del cilindro ($V$):** El valor promedio calculado es de $6785,48 \text{ mm}^3$ (o $6,785 \text{ cm}^3$). El error absoluto propagado es de $\Delta V = 51,81 \text{ mm}^3$ (o $0,052 \text{ cm}^3$). Redondeado correctamente:
    $$V = (6790 \pm 50) \text{ mm}^3 \quad \text{o bien} \quad V = (6,79 \pm 0,05) \text{ cm}^3$$. 

*   **Peso específico del cilindro ($Pe$):** El promedio calculado es de $7372,60 \text{ kg/m}^3$ (equivalente a $7,373 \text{ g/cm}^3$). El error absoluto propagado resulta en $\Delta Pe = 59,38 \text{ kg/m}^3$. Redondeado formalmente:
    $$Pe = (7370 \pm 60) \text{ kg/m}^3 \quad \text{o bien} \quad Pe = (7,37 \pm 0,06) \text{ g/cm}^3$$.

### Propiedades físicas del Estaño
| Propiedad | Valor |
| :--- | :--- |
| **Estado ordinario** | Sólido |
| **Densidad** | 7365 kg/m³ |
| **Punto de fusión** | 505,08 K (232 °C) |
| **Punto de ebullición** | 2875 K (2602 °C) |
| **Entalpía de vaporización** | 295,8 kJ/mol |
| **Entalpía de fusión** | 7,029 kJ/mol |
| **Presión de vapor** | 5,78 · 10⁻²¹ Pa a 505 K |

---

### **5. Análisis de Resultados y Conclusiones**

El análisis del peso específico obtenido experimentalmente de $7370 \pm 60 \text{ kg/m}^3$ delimita un rango de confianza de $[7310; 7430] \text{ kg/m}^3$ para el material de la pieza de prueba. Al contrastar con tablas de constantes físicas estándar, se destacan los siguientes candidatos:

1.  **Estaño (Sn):** Posee una densidad nominal aproximada de $7310 \text{ kg/m}^3$ ($7,31 \text{ g/cm}^3$). Este valor coincide perfectamente con el límite inferior del intervalo de confianza calculado, sugiriendo que la muestra podría ser un cilindro de estaño puro.
2.  **Hierro Fundido (Fundición Gris):** Su densidad nominal oscila habitualmente entre $7000$ y $7400 \text{ kg/m}^3$. Dado que nuestro valor promedio de $7370 \text{ kg/m}^3$ cae en esta ventana, es otra alternativa muy plausible (especialmente tratándose de un material ferromagnético de uso común en laboratorios de física).

Por el contrario, otros materiales comunes como el Zinc ($\approx 7140 \text{ kg/m}^3$), el Hierro dulce/Acero ($\approx 7850-7870 \text{ kg/m}^3$), o el Cobre ($\approx 8960 \text{ kg/m}^3$) quedan tajantemente descartados al estar muy distantes del intervalo de confianza determinado experimentalmente.

Respecto a la contribución de los errores, se observa que en las magnitudes geométricas ($h$ y $D$), la dispersión estadística superó la apreciación del calibre ($\sigma_{est} > \sigma_{apr}$), revelando que los errores de tipo humano y de irregularidades físicas del cilindro dominan la precisión [14]. En cambio, para la medición de peso, el error instrumental de la balanza de precisión fue el factor limitante ($\sigma_{apr} = 0,1 \text{ g} > \sigma_{est} = 0,08 \text{ g}$) [14]. Concluimos que el método experimental permitió alcanzar una excelente precisión, con un error acumulado en el peso específico final de apenas el $0,81\%$ [14].

---

### **6. Bibliografía**

1.  Alonso, M. y Finn, E. (1995). *Física, Vol. 1*. Addison-Wesley Iberoamericana.
2.  Universidad de Palermo. (2026). *Apunte Consignas del Trabajo práctico de Determinación de errores*.
3.  Universidad de Palermo. (2026). *Guía para la confección de informes de formación experimental*.

---

### **7. Apéndices**

#### **7.1 Apéndice A: Desarrollo Matemático de las Propagaciones**
A continuación se detallan las operaciones numéricas sin redondear para la determinación del volumen $V$ y el peso específico $Pe$.

*   **Cálculo del Volumen:**

    $$V = \frac{\pi}{4} \cdot (25,608)^2 \cdot 13,17467 \approx 6785,484 \text{ mm}^3$$
    $$\frac{\partial V}{\partial D} = \frac{\pi}{2} \cdot (25,608) \cdot (13,17467) \approx 529,950 \text{ mm}^2$$
    $$\frac{\partial V}{\partial h} = \frac{\pi}{4} \cdot (25,608)^2 \approx 515,040 \text{ mm}^2$$
    $$\Delta V = \sqrt{(529,950 \cdot 0,085318)^2 + (515,040 \cdot 0,049124)^2} \approx \sqrt{45,214^2 + 25,301^2} \approx 51,812 \text{ mm}^3$$

*   **Cálculo del Peso Específico:**

$$\frac{\partial Pe}{\partial P} \cdot \Delta P = \frac{0{,}128162\text{ g}}{6785{,}484\text{ mm}^3} \cdot 10^6 \approx 18{,}89\text{ kg/m}^3$$
$$\left\vert{} \frac{\partial Pe}{\partial V} \right\vert{} \cdot \Delta V = \frac{50{,}02667\text{ g} \cdot 51{,}812\text{ mm}^3}{(6785{,}484\text{ mm}^3)^2} \cdot 10^6 \approx 56{,}30\text{ kg/m}^3$$
$$\Delta Pe = \sqrt{(18{,}89)^2 + (56{,}30)^2} \approx \sqrt{356{,}83 + 3169{,}69} \approx 59{,}38\text{ kg/m}^3$$
$$\Delta Pe \approx 60\text{ kg/m}^3$$
$$Pe = (7370 \pm 60)\text{ kg/m}^3$$

#### **7.2 Apéndice B: Respuestas Detalladas a cada Consigna de la Guía**
Se listan las respuestas puntuales a cada uno de los ítems requeridos en la consigna de trabajos prácticos:

*   **a) El valor medio de la altura $h$ del cilindro:** $\bar{h} = 13,175 \text{ mm}$.
*   **b) El error standard $\sigma_{Sh}$ en la altura:** $\sigma_{Sh} = 0,045 \text{ mm}$.
*   **c) El error absoluto $\sigma_{fh}$ en la altura:** $\sigma_{fh} = \sqrt{\sigma_{Sh}^2 + \sigma_{apr}^2} = 0,049 \text{ mm}$.
*   **d) Expresión correcta de la altura e intervalo de confianza:**
    $$h = (13,17 \pm 0,05) \text{ mm}$$
    El intervalo de confianza se muestra gráficamente en la Figura 1.
*   **e) El valor medio del diámetro $D$ del cilindro:** $\bar{D} = 25,608 \text{ mm}$.
*   **f) El error standard $\sigma_{SD}$ en el diámetro:** $\sigma_{SD} = 0,083 \text{ mm}$.
*   **g) El error absoluto $\sigma_{fD}$ en el diámetro:** $\sigma_{fD} = 0,085 \text{ mm}$.
*   **h) Expresión correcta del diámetro e intervalo de confianza:**
    $$D = (25,61 \pm 0,09) \text{ mm}$$
    El intervalo de confianza se muestra gráficamente en la Figura 2.
*   **i) El valor medio del volumen $V$ del cilindro:** $\bar{V} = 6785,48 \text{ mm}^3$ (ó $6,785 \text{ cm}^3$).
*   **j) El error $\sigma_V$ en el volumen:** $\sigma_V = 51,81 \text{ mm}^3$ (ó $0,052 \text{ cm}^3$).
*   **k) Expresión correcta del volumen e intervalo de confianza:**
    $$V = (6790 \pm 50) \text{ mm}^3 \quad \text{o bien} \quad V = (6,79 \pm 0,05) \text{ cm}^3$$
    El intervalo de confianza se muestra gráficamente en la Figura 3.
*   **l) El valor medio del peso $P$ del cilindro:** $\bar{P} = 50,027 \text{ g}$.
*   **m) El error standard $\sigma_{SP}$ en el peso:** $\sigma_{SP} = 0,080 \text{ g}$.
*   **n) El error absoluto $\sigma_{fP}$ en el peso:** $\sigma_{fP} = 0,128 \text{ g}$.
*   **o) Expresión correcta del peso del cilindro e intervalo de confianza:**
    $$P = (50,0 \pm 0,1) \text{ g}$$
    El intervalo de confianza se muestra gráficamente en la Figura 4.
*   **p) El valor medio del peso específico del cilindro en $\text{kg/m}^3$:** $Pe = 7372,60 \text{ kg/m}^3$.
*   **q) El error $\sigma_\rho$ en $\text{kg/m}^3$:** $\sigma_\rho = 59,38 \text{ kg/m}^3$.
*   **r) Expresión correcta del peso específico e intervalo de confianza:**
    $$Pe = (7370 \pm 60) \text{ kg/m}^3$$
    El intervalo de confianza se muestra gráficamente en la Figura 5.
*   **s) Identificación del material del cual está hecho el cilindro:** Dadas las condiciones de contorno experimentales y el rango físico $[7310; 7430] \text{ kg/m}^3$, el cilindro metálico está fabricado de **estaño**.
