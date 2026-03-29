# 📏 Reporte de Laboratorio: Determinación de Errores

Este documento resume el análisis realizado sobre un cilindro metálico para identificar su composición material.

## 📝 Resumen del Desarrollo (Puntos a - s)

### 📏 Dimensiones de la Altura ($h$)
* **a) Valor medio:** Se calculó el promedio de 15 lecturas, resultando en **13,23 mm**. 
* **b) Error estándar:** La dispersión estadística de las medidas fue de **0,066 mm**. 
* **c) Error absoluto:** Combinando el error estadístico y la apreciación del calibre ($0,02 \text{ mm}$), se obtuvo **0,07 mm**. 
* **d) Resultado final:** La altura se expresa como **$(13,23 \pm 0,07) \text{ mm}$**. 

### ⭕ Dimensiones del Diámetro ($D$)
* **e) Valor medio:** El promedio de las mediciones fue **25,59 mm**. 
* **f) Error estándar:** Se determinó una desviación de **0,061 mm**. 
* **g) Error absoluto:** Tras la combinación de incertidumbres, el error resultó en **0,06 mm**. 
* **h) Resultado final:** El diámetro se define como **$(25,59 \pm 0,06) \text{ mm}$**. 

### 🧊 Análisis del Volumen ($V$)
* **i) Valor medio:** Aplicando la fórmula del cilindro, el volumen calculado fue **$6802,3 \text{ mm}^3$**. 
* **j) Error absoluto:** Mediante propagación por derivadas parciales, se obtuvo un error de **$49,2 \text{ mm}^3$**. 
* **k) Resultado final:** Redondeando por cifras significativas: **$(6800 \pm 50) \text{ mm}^3$**. 

### ⚖️ Medición del Peso ($P$) y Masa
* **l) Valor medio del peso:** Basado en una masa promedio de $50,1 \text{ g}$, el peso es aproximadamente **$0,491 \text{ N}$**. 
* **m) Error estándar:** La dispersión en la balanza fue de **$0,0506 \text{ g}$**.
* **n) Error absoluto:** Considerando la apreciación de la balanza ($0,1 \text{ g}$), el error final es **$0,1 \text{ g}$**. 
* **o) Resultado final:** La masa/peso se reporta como **$(50,1 \pm 0,1) \text{ g}$**. 

### 🔬 Peso Específico ($\rho$) e Identificación
* **p) Valor medio:** Se calculó una densidad/peso específico de **$7362,23 \text{ kg/m}^3$**. 
* **q) Error absoluto:** El error propagado fue de **$60,36 \text{ kg/m}^3$**. 
* **r) Resultado final:** El valor final es **$(7360 \pm 60) \text{ kg/m}^3$**.
* **s) Identificación del material:** El valor obtenido es muy cercano a la densidad nominal del **Estaño ($7310 \text{ kg/m}^3$)**, validando la hipótesis de que el cilindro es de este material. 

---

## 📊 Resumen de Resultados Finales

| Magnitud | Valor Medio | Error Absoluto | Resultado |
| :--- | :--- | :--- | :--- |
| **Altura** 📏 | $13,23 \text{ mm}$ | $0,07 \text{ mm}$ | $(13,23 \pm 0,07) \text{ mm}$ |
| **Diámetro** ⭕ | $25,59 \text{ mm}$ | $0,06 \text{ mm}$ | $(25,59 \pm 0,06) \text{ mm}$ |
| **Masa** ⚖️ | $50,10 \text{ g}$ | $0,10 \text{ g}$ | $(50,10 \pm 0,10) \text{ g}$ |
| **Volumen** 🧊 | $6800 \text{ mm}^3$ | $50 \text{ mm}^3$ | $(6800 \pm 50) \text{ mm}^3$ |
| **Densidad** 🔬 | $7360 \text{ kg/m}^3$ | $60 \text{ kg/m}^3$ | $(7360 \pm 60) \text{ kg/m}^3$ |

[cite: 408]

---
¿Te gustaría que profundice en el código Python utilizado para estos cálculos o en alguna de las fórmulas de propagación?
