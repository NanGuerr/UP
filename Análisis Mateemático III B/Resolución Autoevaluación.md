# 📑 Resumen: Resolución Autoevaluación - Series de Potencias 🚀

Este documento presenta la resolución detallada de los ejercicios de autoevaluación del **Módulo 1 de Análisis Matemático IIIb**, basándose en los criterios del libro de Piskunov y los apuntes de la cátedra[cite: 1, 14, 113].

---

## 🛡️ 1. Reglas Fundamentales del Radio de Convergencia ($R$)

El radio de convergencia define un "escudo protector" alrededor del centro de la serie (generalmente 0)[cite: 36, 37]. Las reglas estrictas son:

* **✅ Si $|x| < R$:** La serie **converge absolutamente**[cite: 1, 38, 114].
* **❌ Si $|x| > R$:** La serie **diverge**[cite: 2, 40, 115].
* **❓ Si $|x| = R$:** El comportamiento es **incierto** y se debe analizar cada "borde" por separado con criterios específicos[cite: 2, 41, 115].

---

## 🧪 2. Análisis de Casos Específicos

### 📉 Caso: $R = 5$ y evaluación en $x = 3$
* **Análisis:** Como $|3| < 5$, el valor cae dentro del intervalo de seguridad[cite: 2, 3].
* **Conclusión:** La serie **está obligada a converger**. Cualquier afirmación que diga que diverge en este punto es falsa[cite: 5, 140].

### ⚖️ Caso: El mito de los bordes ($x = R$ vs $x = -R$)
* **Concepto clave:** La convergencia en un borde **no asegura** la convergencia en el otro[cite: 71, 73].
* **Ejemplo:** Una serie puede ser una *serie alternada* (convergente por Leibniz) en un extremo y una *serie armónica* (divergente) en el otro[cite: 81, 82, 89].

---

## 🧮 3. Procedimiento para Calcular el Radio y Dominio

Para resolver los ejercicios del Módulo 1, se sigue esta metodología[cite: 14, 95]:

1. **Identificar el coeficiente ($a_n$):** Aislar la parte de la serie que no contiene a $x^n$[cite: 15, 110].
2. **Aplicar el Criterio de D'Alembert (Cociente):** Calcular el límite $L = \lim_{n \to \infty} |a_{n+1} / a_n|$[cite: 15, 110].
3. **Determinar $R$:** El radio es el recíproco del límite, $R = 1/L$[cite: 16, 111].
4. **Análisis de Extremos:** Sustituir $x$ por $R$ y $-R$ para verificar la convergencia manual en los bordes usando criterios como **Leibniz** o **Series p**[cite: 16, 70, 103].

---

## 💡 Tips de Oro para el Examen

* **🔝 Términos Dominantes:** Cuando $n$ tiende a infinito, el factorial ($n!$) crece mucho más rápido que los polinomios ($n^2$). Estos últimos se vuelven insignificantes en el cálculo del límite[cite: 15, 16].
* **🌌 Radio Infinito ($R = \infty$):** Si el límite $L$ da 0, la serie converge para **todos los números reales** ($\mathbb{R}$). Esto suele ocurrir cuando hay factoriales en el denominador que no son compensados en el numerador[cite: 111, 113].
* **⚠️ La Trampa del Borde:** Nunca asegures convergencia en $|x| = R$ sin conocer los coeficientes. Es el error conceptual más común en las autoevaluaciones[cite: 52, 69].

---

> **Nota:** Este resumen es una herramienta de apoyo para el examen final, donde se suele pedir específicamente el análisis de bordes[cite: 70, 322].
