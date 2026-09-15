# 📑 Diferenciación e Integración de Series de Fourier
Este documento técnico sintetiza los principios, teoremas y aplicaciones prácticas de la diferenciación e integración término a término de las series de Fourier, basándose en el análisis de funciones suaves a tramos y su representación matemática.



## 📊 Resumen Ejecutivo

La manipulación de series de Fourier mediante el cálculo diferencial e integral es una herramienta fundamental en el análisis matemático. El núcleo de esta capacidad reside en la posibilidad de operar sobre cada sumando de la serie de forma individual (término a término). 

Para que estas operaciones sean válidas, se requiere que las funciones cumplan con la condición de ser suaves a tramos:
* **Integración:** Requiere que la función original posea la propiedad de ser suave a tramos.
* **Diferenciación:** Impone una restricción más estricta, exigiendo que la función derivada resultante sea la que cumpla con la suavidad a tramos.

Más allá de la obtención de nuevas series, estos procedimientos son cruciales para el cálculo exacto de sumas de series numéricas complejas.



## 🧠 Fundamentos Conceptuales

### 📐 Definición de Función Suave a Tramos
Para el desarrollo de la teoría de Fourier, se define una función suave a tramos como aquella que cumple dos condiciones en un intervalo determinado:

1. Es continua en el intervalo cerrado $[a, b]$.
2. Es derivable en el intervalo abierto $(a, b)$, exceptuando posiblemente un número finito de puntos donde pueden existir saltos finitos. En estos puntos de discontinuidad, los límites laterales de la función deben existir y ser números reales.

### 📝 Representación General
Una función derivable a tramos se representa mediante la serie de Fourier:

$$f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} \left[ a_n \cos\left(\frac{n\pi}{\ell}x\right) + b_n \operatorname{sen}\left(\frac{n\pi}{\ell}x\right) \right]$$



## ⚙️ Teoremas de Operación Término a Término

El objetivo principal es extender las operaciones de límite (series) a la derivada y la integral. El análisis establece que una estructura matemática basada en límites pierde utilidad si no permite la aplicación de estas operaciones sobre cada uno de sus sumandos.

### 1. ⚡ Diferenciación de Series de Fourier
Para aplicar la derivada término a término, se establece el siguiente criterio:

* **Teorema:** La fórmula de la derivada es válida si la función derivada es suave a tramos.
* **Implicancia:** Esto significa que la función $f$ debe garantizar que $f'$ sea continua en el intervalo cerrado y derivable en el abierto, salvo en puntos de salto finito con límites laterales reales.

**Fórmula de la derivada:**

$$\frac{d}{dx} \text{Serie}(f) = \sum_{n=1}^{\infty} \left[ a_n \left(-\frac{n\pi}{\ell}\right) \operatorname{sen}\left(\frac{n\pi}{\ell}x\right) + b_n \left(\frac{n\pi}{\ell}\right) \cos\left(\frac{n\pi}{\ell}x\right) \right]$$



### 2. 🔄 Integración de Series de Fourier
La integración es, por naturaleza, una operación más flexible que la diferenciación.

* **Teorema:** Para que la fórmula de la integral sea válida, la función original debe ser suave a tramos.

**Fórmula de la integral (en el intervalo $[c, d]$):**

$$\int_{c}^{d} f(x) \, dx = \frac{a_0(d-c)}{2} + \sum_{n=1}^{\infty} \left[ a_n \int_{c}^{d} \cos\left(\frac{n\pi}{\ell}x\right) dx + b_n \int_{c}^{d} \operatorname{sen}\left(\frac{n\pi}{\ell}x\right) dx \right]$$



## 🔬 Análisis de Aplicaciones Prácticas

### 📈 Obtención de Nuevas Series de Fourier
El uso de teoremas de diferenciación permite obtener representaciones de funciones complejas a partir de series ya calculadas.

* **Ejemplo de Función Cuadrática:** Partiendo de $g(x) = x^2$ en el intervalo $(-2, 0)$, se puede hallar la serie de $f(x) = 2x$ aplicando la derivada. Si la función original es continua en todo el intervalo y su derivada es suave, la convergencia de la nueva serie es puntual.
* **Ejemplo de Función Exponencial:** Para $g(x) = e^{2x}$ en $(-4, 4)$, la suavidad de la derivada $g'(x) = 2e^{2x}$ permite la derivación término a término, facilitando la obtención de coeficientes para la función exponencial escalada sin necesidad de recalcular las integrales de Fourier desde cero.



### 🧮 Cálculo de Sumas de Series Numéricas
Una de las utilidades más destacadas del teorema de integración es el cálculo exacto de sumas de series que involucran funciones trigonométricas. Este proceso se resume en la siguiente metodología:

| Paso | Acción |
| :--- | :--- |
| **1** | Seleccionar una función $g(x)$ apropiada. |
| **2** | Definir un intervalo $(-\ell, \ell)$ adecuado. |
| **3** | Representar la función mediante su serie de Fourier. |
| **4** | Elegir valores $c$ y $d$ tales que $-\ell < c < d < \ell$. |
| **5** | Aplicar el teorema de integración para igualar la integral definida con la suma de la serie. |



## 🔍 Casos de Estudio de Sumas Numéricas

* **Caso 1:** Mediante la integración de la función $g(x) = -3x \mathbb{I}_{(-3,0)}(x) + x \mathbb{I}_{(0,3)}(x)$ en el intervalo $(-3, 3)$, y aplicando límites de integración de $0$ a $2$, se determinó que la suma de una serie numérica específica (que incluye términos de $(-1)^n$ y funciones seno/coseno) es exactamente $-4$.
* **Caso 2:** Utilizando $g(x) = x^2$ en $(-2, 2)$ e integrando entre $-1$ y $0$, se obtuvo que la suma de una serie numérica compleja resultante es $-\frac{1}{3}$.



## 💡 Conclusiones Técnicas

El análisis matemático busca partir de estructuras conocidas para construir nuevas. En el caso de las series de Fourier, la capacidad de integrar y derivar término a término no solo simplifica el hallazgo de nuevas representaciones de funciones, sino que vincula el análisis funcional con el cálculo de valores exactos de series infinitas. La restricción fundamental siempre recae en la suavidad a tramos, la cual garantiza la validez de estas operaciones dentro de los límites de convergencia puntual.
