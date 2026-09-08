# 📚 Análisis de Series de Potencias e Identidades Matemáticas: Informe de Revisión

## 📝 Resumen Ejecutivo

Este documento sintetiza los conceptos matemáticos fundamentales presentados en las fuentes, centrándose en dos áreas principales: el análisis de convergencia de series de potencias y la aplicación de identidades trigonométricas.

Los hallazgos clave incluyen:

* **📏 Determinación del Radio de Convergencia:** Se establece que el radio de convergencia es el inverso multiplicativo del límite del cociente de los términos sucesivos en valor absoluto:

$$\lim_{n \to \infty} \left\vert{} \frac{a_{n+1}}{a_n} \right\vert{}$$


* **🔍 Comportamiento en los Extremos:** El análisis del Ejemplo 3.2 demuestra convergencia absoluta en $x = -1$ (basado en una serie tipo "casi $p$" con $p=2$) y convergencia mediante el criterio de Leibniz en $x = 1$.
* **📐 Fundamentos Trigonométricos:** Se detallan las identidades básicas de suma de ángulos y pitagóricas, aplicadas específicamente a la reconfiguración de la función $\cos(2x)$.



## 1. 📈 Análisis de Series de Potencias (Ejemplo 3.2)

El estudio se centra en una serie de potencias definida como:

$$\sum_{n=1}^{\infty} a_n \cdot x^n$$

donde el coeficiente general está dado por la expresión:

$$a_n = \frac{(-1)^n \cdot \ln(n)}{n^2}$$

### 1.1 ⚙️ Cálculo del Radio de Convergencia

De acuerdo con el material analizado, el radio de convergencia $R$ se define formalmente como el inverso multiplicativo del siguiente límite:

$$L = \lim_{n \to \infty} \left\vert{} \frac{a_{n+1}}{a_n} \right\vert{}$$

El desarrollo inicial de este límite se presenta como:

$$L = \lim_{n \to \infty} \left\vert{} \frac{\ln(n+1)}{(n+1)^2} \cdot \frac{n^2}{\ln(n)} \right\vert{}$$



### 1.2 🎯 Evaluación de la Convergencia en los Extremos

El análisis detalla el comportamiento de la serie al sustituir valores específicos para $x$:

#### 🔹 Caso $x = -1$

* **Sustitución:** La serie toma la forma:

$$\sum_{n=1}^{\infty} (-1)^n \cdot (-1)^n \cdot b_n$$



donde:

$$b_n = \frac{\ln(n)}{n^2}$$


* **Simplificación:** Dado que $(-1)^n \cdot (-1)^n = 1$, la serie se reduce a:

$$\sum_{n=1}^{\infty} b_n = \sum_{n=1}^{\infty} \frac{\ln(n)}{n^2}$$


* **Conclusión:** Se identifica como una serie "casi $p$" con un valor de $p = 2 > 1$. La serie converge y, específicamente, en este punto existe **convergencia absoluta**.

#### 🔹 Caso $x = 1$

* **Sustitución:** La serie se presenta como:

$$\sum_{n=1}^{\infty} (-1)^n \cdot b_n = \sum_{n=1}^{\infty} (-1)^n \cdot \frac{\ln(n)}{n^2}$$


* **Metodología:** Se utiliza el **Criterio de Leibniz** para series alternadas.
* **Conclusión:** Tras verificar las hipótesis correspondientes (términos decrecientes y límite cero), se determina que la serie es **convergente**.



## 2. 📐 Identidades Trigonométricas y Aplicaciones

El contenido del "Módulo 2" establece las identidades básicas necesarias para la manipulación de funciones circulares.

### 2.1 🔗 Identidades Básicas

Se enumeran las siguientes relaciones fundamentales:

| Tipo de Identidad | Fórmula |
| --- | --- |
| **Suma de Seno** ➕ | $\sin(a + b) = \sin(a) \cdot \cos(b) + \cos(a) \cdot \sin(b)$ |
| **Suma de Coseno** ➕ | $\cos(a + b) = \cos(a) \cdot \cos(b) - \sin(a) \cdot \sin(b)$ |
| **Identidad Pitagórica** 🔺 | $\sin^2(a) + \cos^2(a) = 1$ |



### 2.2 🔄 Aplicación a la Función Coseno de Ángulo Doble

Se ilustra un procedimiento para reescribir la función $\cos(2x)$ introduciendo una constante $a$, lo que permite aplicar las identidades de suma de ángulos:

1. **Forma Inicial:** $\cos(2x)$
2. **Transformación:** $\cos(2 \cdot ((x - a) + a))$
3. **Resultado:** $\cos(2(x - a) + 2a)$

Este desglose facilita el uso de la identidad de la suma del coseno mencionada anteriormente para futuras expansiones algebraicas.
