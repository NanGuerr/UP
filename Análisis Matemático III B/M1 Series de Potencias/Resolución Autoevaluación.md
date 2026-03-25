# 📑 Resumen: Resolución Autoevaluación - Series de Potencias

Este documento presenta la resolución detallada de los ejercicios de autoevaluación del **Módulo 1 de Análisis Matemático IIIb**, basándose en los criterios del libro de Piskunov y los apuntes de la cátedra.

---

## 🛡️ 1. Reglas Fundamentales del Radio de Convergencia ($R$)

El radio de convergencia define un "escudo protector" alrededor del centro de la serie (generalmente 0). Las reglas estrictas son:

* **✅ Si $|x| < R$:** La serie **converge absolutamente**.
* **❌ Si $|x| > R$:** La serie **diverge**.
* **❓ Si $|x| = R$:** El comportamiento es **incierto** y se debe analizar cada "borde" por separado con criterios específicos.

---

## 🧪 2. Análisis de Casos Específicos

### 📉 Caso: $R = 5$ y evaluación en $x = 3$
* **Análisis:** Como $|3| < 5$, el valor cae dentro del intervalo de seguridad.
* **Conclusión:** La serie **está obligada a converger**. Cualquier afirmación que diga que diverge en este punto es falsa.

### ⚖️ Caso: El mito de los bordes ($x = R$ vs $x = -R$)
* **Concepto clave:** La convergencia en un borde **no asegura** la convergencia en el otro.
* **Ejemplo:** Una serie puede ser una *serie alternada* (convergente por Leibniz) en un extremo y una *serie armónica* (divergente) en el otro.

---

## 🧮 3. Procedimiento para Calcular el Radio y Dominio

Para resolver los ejercicios del Módulo 1, se sigue esta metodología:

1. **Identificar el coeficiente ($a_n$):** Aislar la parte de la serie que no contiene a $x^n$.
2. **Aplicar el Criterio de D'Alembert (Cociente):** Calcular el límite $L = \lim_{n \to \infty} |a_{n+1} / a_n|$.
3. **Determinar $R$:** El radio es el recíproco del límite, $R = 1/L$.
4. **Análisis de Extremos:** Sustituir $x$ por $R$ y $-R$ para verificar la convergencia manual en los bordes usando criterios como **Leibniz** o **Series p**.

---

## 💡 Tips de Oro para el Examen

* **🔝 Términos Dominantes:** Cuando $n$ tiende a infinito, el factorial ($n!$) crece mucho más rápido que los polinomios ($n^2$). Estos últimos se vuelven insignificantes en el cálculo del límite.
* **🌌 Radio Infinito ($R = \infty$):** Si el límite $L$ da 0, la serie converge para **todos los números reales** ($\mathbb{R}$). Esto suele ocurrir cuando hay factoriales en el denominador que no son compensados en el numerador.
* **⚠️ La Trampa del Borde:** Nunca asegures convergencia en $|x| = R$ sin conocer los coeficientes. Es el error conceptual más común en las autoevaluaciones.

---

> **Nota:** Este resumen es una herramienta de apoyo para el examen final, donde se suele pedir específicamente el análisis de bordes.
