# 📊 Comparación: Distribución de Poisson vs. Distribución Chi-Cuadrado ($\chi^2$)



## 📑 Tabla Comparativa de Criterios

| Característica / Criterio | 🎲 Distribución de Poisson | 📏 Distribución Chi-Cuadrado ($\chi^2$) |
| :--- | :--- | :--- |
| **🔢 Tipo de Variable** | Discreta (conteo de eventos enteros: $0, 1, 2, 3, \dots$) | Continua (medición de valores reales no negativos: $[0, \infty)$ ) |
| **⚙️ Parámetro Principal** | $\lambda$ (tasa media de ocurrencias por intervalo) | $\nu$ o $k$ (grados de libertad) |
| **🎯 Esperanza Matemática $E(X)$** | $\lambda$ | $\nu$ |
| **📈 Varianza $\text{Var}(X)$** | $\lambda$ | $2\nu$ |
| **🛠️ Ámbito de Aplicación** | Modela el número de eventos independientes en un intervalo de tiempo o espacio (ej. errores de sistema, llegada de paquetes de red). | Inferencia estadística, pruebas de hipótesis (bondad de ajuste, independencia de variables) y estimación de varianzas poblacionales. |
| **🔔 Aproximación a la Normal** | Conforme el parámetro $\lambda$ crece (ej. de $\lambda = 1$ a $\lambda = 10$), la distribución se aproxima suavemente a una curva normal continua. | Al aumentar los grados de libertad $\nu$ (ej. de $\nu = 2$ a $\nu = 40$), la distribución sesgada hacia la derecha se transforma en una campana simétrica normal. |



## 🔍 Diferencias Clave y Puntos de Contacto

* 🧬 **Naturaleza del objeto de estudio:**
  * **Poisson:** Se utiliza para contar cuántas veces ocurre un suceso en un período o región fija (ej. cantidad de solicitudes que llegan a un servidor por minuto).
  * **Chi-Cuadrado ($\chi^2$):** Es una herramienta teórica continua que surge de sumar los cuadrados de $\nu$ variables aleatorias normales estándar independientes:
    $$\sum_{i=1}^{\nu} Z_i^2 = Z_1^2 + Z_2^2 + \dots + Z_\nu^2$$

* 🤝 **Relación entre ambas (Prueba de Bondad de Ajuste):**  
  En estadística práctica, la distribución Chi-Cuadrado se utiliza para evaluar si una serie de datos reales observados se ajusta correctamente a un modelo teórico, como por ejemplo verificar mediante una prueba $\chi^2$ si un conteo empírico de fallas sigue una distribución de Poisson.

* 📉 **Efecto del Teorema Central del Límite:**  
  Ambas distribuciones parten de formas asimétricas (sesgadas hacia la derecha para valores pequeños), pero al hacer crecer sus respectivos parámetros ($\lambda$ en Poisson y $\nu$ en Chi-Cuadrado), ambas convergen a la distribución normal.

