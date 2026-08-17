# 📚 Apuntes de Matemáticas: Cálculo y Análisis

## ⛰️ 1. Multiplicadores de Lagrange (Lambda $\lambda$)
En el cálculo multivariable, $\lambda$ es el símbolo estándar para los Multiplicadores de Lagrange. Es una estrategia para encontrar los máximos y mínimos locales de una función sujeta a restricciones (condiciones de igualdad).

**Conceptos Clave:**
*   🧠 **El concepto:** Imagina que quieres encontrar el punto más alto de una montaña, pero estás obligado a caminar solo por un sendero específico.
*   📐 **La ecuación:** Se basa en que el gradiente de la función principal $f$ es paralelo al gradiente de la restricción $g$. Matemáticamente se expresa así: $\nabla f(x, y) = \lambda \nabla g(x, y)$.
*   ⚖️ **¿Qué es $\lambda$?**: Es el escalar que iguala la magnitud de ambos vectores gradiente. Se le llama "multiplicador de Lagrange".

---

## 🧮 2. Métodos de Integración
A continuación se detallan los diferentes métodos para resolver integrales, clasificados por módulo:

*   ⚡ **Inmediatas y Descomposición (Módulo 3):** Integración directa usando la tabla básica y propiedades de linealidad, a menudo tras simplificaciones algebraicas (Guía M3). 
    *   *Ejemplos de Uso:* $\int (x^n + 3/x)dx$.
*   🔄 **Por Sustitución / Cambio de Variable (Módulo 4):** Transformar el integrando identificando una función $u$ y su diferencial $du$ para resolver integrales compuestas (Guía M4).
    *   *Ejemplos de Uso:* $\int f(g(x))g'(x)dx$.
*   🧩 **Por Partes (Módulo 4):** Para integrales que son producto de funciones (ej. $x \cdot \ln(x)$), siguiendo la regla $\int u \cdot dv = u \cdot v - \int v \cdot du$ (Guía M4).
    *   *Ejemplos de Uso:* $\int x \cdot \cos x dx$.
*   ➗ **Fracciones Simples (Módulo 4):** Descomponer funciones racionales $\frac{P(x)}{Q(x)}$ en sumas de fracciones más sencillas para integrar con logaritmos (Guía M4).
    *   *Ejemplos de Uso:* $\int \frac{1}{x^2-4} dx$.

---

## 🗺️ 3. Estrategia de Solución Global
Los apuntes sugieren una estrategia secuencial al enfrentar cualquier integral indefinida:

1.  🔍 **¿Es Inmediata?**: Si coincide con una fórmula de la tabla o se simplifica algebraicamente de inmediato.
2.  🔁 **¿Sustitución?**: Si aparece una función compuesta y la derivada de la función interna.
3.  ✂️ **¿Por Partes?**: Si es el producto de funciones distintas y la sustitución no funciona.
4.  🍰 **¿Fracciones Simples?**: Si es un cociente de polinomios factorizables.
5.  🔀 **¿Otras Sustituciones?**: Para casos específicos (ej. trigonométricas especiales, racionalización de radicales).
