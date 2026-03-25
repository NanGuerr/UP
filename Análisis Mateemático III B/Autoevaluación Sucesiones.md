# 📝 Resumen: Autoevaluación Sucesiones y Series Numéricas 

Este resumen sintetiza los ejercicios y conceptos clave de la autoevaluación (Calificación: 10/10). Se enfoca en el comportamiento de las series de potencias según su radio de convergencia ($R$).

---

## 📏 1. La Regla de Oro del Radio de Convergencia ($R$)

El concepto central evaluado es cómo determinar si una serie converge o diverge basándose en el valor de $x$ comparado con $R$.

* **🟢 Si $|x| < R$:** La serie **converge** absolutamente.
* **🔴 Si $|x| > R$:** La serie **diverge**.
* **🟡 Si $|x| = R$:** El caso es **incierto** (se debe analizar el borde).

---

## 🧪 2. Análisis de Casos (Verdadero/Falso)

Basado en una serie con **$R = 5$**:

* **📍 Evaluación en $x = 3$:** * ¿$|3| < 5$? **SÍ**. 
    * **Conclusión:** La serie converge. (Es *falso* decir que diverge). 
* **📍 Evaluación en $x = -2$:** * ¿$|-2| < 5$? **SÍ**. 
    * **Conclusión:** La serie **converge**. ✅
* **📍 Evaluación en $x = -4$:** * ¿$|-4| < 5$? **SÍ**. 
    * **Conclusión:** La serie converge. (Es *falso* decir que diverge). ❌

---

## 🧮 3. Series Especiales y Dominios

En la autoevaluación se analizaron series específicas para hallar su radio y dominio de convergencia:

### A. Serie con Logaritmos y Potencias 📚
**Serie:** $\sum \frac{(-1)^n \ln(n+1)}{n^2} x^n$
* **Radio ($R$):** 1
* **Dominio:** $[-1, 1]$ 
* *Nota: Converge en ambos extremos.*

### B. Serie con Factoriales (El "Cohete") 🚀
**Serie:** $\sum \frac{n^3 + 5}{(n+2)!} x^n$
* **Radio ($R$):** $+\infty$
* **Análisis:** El factorial en el denominador crece mucho más rápido que el numerador, haciendo que el límite del cociente sea 0.
* **Conclusión:** Converge para **cualquier valor de $x$**.

---

## ⚠️ 4. Mitos y Verdades sobre los "Bordes"

Una de las preguntas más importantes de la evaluación fue:
> *"Si una serie de potencias converge en un borde, ¿entonces converge en el otro?"*

* **Respuesta:** **FALSO** 🚫.
* **Explicación:** El comportamiento en $x = R$ es totalmente independiente del comportamiento en $x = -R$. Una serie puede ser convergente en un extremo y divergente en el otro (ejemplo: la serie armónica simple vs. alternada).

---

## 🎓 Tips para el Examen

1. **Factoriales:** Siempre que veas un $(n!)$ solo en el denominador, sospecha de un radio de convergencia **infinito**. ♾️
2. **Valor Absoluto:** No importa si $x$ es negativo ($x = -4$); lo que define la convergencia es su distancia al centro ($|-4| = 4$), comparada con $R$. 📏
3. **Cuidado con las afirmaciones:** Si el enunciado dice que "diverge" en un punto dentro del radio, la respuesta siempre será **Falso**. 🛑
