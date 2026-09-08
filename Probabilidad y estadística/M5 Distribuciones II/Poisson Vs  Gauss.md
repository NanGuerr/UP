# 📊 Cuadro Comparativo: Distribución de Poisson vs. Distribución Normal

A continuación se presenta un análisis comparativo estructurado entre la **Distribución de Poisson** y la **Distribución Normal**, detallando sus características matemáticas, parámetros y ámbitos de aplicación.



## 🔍 1. Tabla Comparativa General

| Característica / Criterio | 📊 Distribución de Poisson | 🔔 Distribución Normal (Gaussiana) |
| :--- | :--- | :--- |
| **Tipo de Variable** | Discreta (conteo de eventos enteros: $0, 1, 2, 3, \dots$). | Continua (mediciones en un rango real: pesos, tiempos, estaturas). |
| **Dominio / Soporte** | $\mathbb{N} \cup \{0\}$ (enteros no negativos) . | Todo el conjunto de los números reales ($\mathbb{R}$). |
| **Parámetros Principales** | $\lambda$ (lambda), que representa la tasa media de ocurrencias . | $\mu$ (media) y $\sigma$ o $\sigma^2$ (desvío estándar o varianza) . |
| **Esperanza Matemática $E(X)$** | $\lambda$  | $\mu$ |
| **Varianza $Var(X)$** | $\lambda$  | $\sigma^2$ |
| **Probabilidad Puntual** | $P(X = k) > 0$ (calculada mediante la Función de Masa de Probabilidad). | $P(X = c) = 0$ (la probabilidad puntual es siempre cero) . |
| **Forma Gráfica / Simetría** | Asimétrica (sesgada a la derecha) cuando $\lambda$ es pequeño; tiende a la simetría si $\lambda$ crece . | Perfectamente simétrica en forma de campana respecto a su media $\mu$ [cite: 1, 8]. |
| **Herramienta de Cálculo** | Fórmulas factoriales o software especializado (ej. Jamovi) . | Tablas estandarizadas ($Z$), integración o software especializado . |



## ⚖️ 2. Comparación de Supuestos y Aplicaciones

| Criterio | 📊 Distribución de Poisson | 🔔 Distribución Normal (Gaussiana) |
| :--- | :--- | :--- |
| **Naturaleza del Fenómeno** | Modela eventos raros o de conteo en intervalos de tiempo o espacio (ej. llamadas por hora, fallas de servidores) . | Modela datos medidos influenciados por múltiples factores aleatorios independientes (ej. estaturas, errores de medición). |
| **Condiciones de Uso** | Los eventos deben ocurrir de manera independiente, individual y a una tasa constante . | Aplicable mediante el Teorema del Límite Central a sumas de variables aleatorias independientes bajo condiciones generales. |
| **Ejemplo Clásico** | Cantidad de autos que llegan a un peaje por minuto [cite: 1] o errores en un disco de datos . | Altura de los estudiantes de una universidad o desvíos térmicos en un laboratorio . |



## 🛠️ 3. Resumen de Fórmulas Clave

* **Poisson (Función de Masa):**
  $$P(X = k) = \frac{e^{-\lambda} \cdot \lambda^k}{k!} \quad \text{para } k \in \{0, 1, 2, \dots\}$$ 

* **Normal (Función de Densidad):**
  $$f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}$$ 

* **Normal Estándar (Estandarización $Z$):**
  $$Z = \frac{X - \mu}{\sigma}$$ 

$$Z = \frac{X - \mu}{\sigma}$$
