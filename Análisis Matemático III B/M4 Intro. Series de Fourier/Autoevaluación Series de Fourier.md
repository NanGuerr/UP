# 📚 Resolución de Autoevaluación: Series de Fourier

Este documento detalla los enunciados y las soluciones correctas de la autoevaluación, analizando las propiedades de paridad, convergencia y coeficientes.

---

## 📝 Desarrollo de Preguntas

### 🔢 Pregunta 1
**Enunciado:** La serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x$ es:
* **Respuesta correcta:** $a_0 = 0$ y $a_n = 0$
* **Justificación:** ⚖️ La función $f(x) = x$ es una función **impar** ($f(-x) = -f(x)$). Por propiedad matemática, en cualquier intervalo simétrico $(-l, l)$, todos los coeficientes que acompañan a los cosenos ($a_n$) y el término independiente ($a_0$) se anulan. Solo sobreviven los coeficientes de los senos ($b_n$).

### 🔢 Pregunta 2
**Enunciado:** La serie de Fourier en el intervalo $(-l, l)$ de la función $f(x) = x^2$ es:
* **Respuesta correcta:** $b_n = 0$
* **Justificación:** 🪞 La función $f(x) = x^2$ es una función **par** ($f(-x) = f(x)$). En este caso, la gráfica es perfectamente simétrica respecto al eje vertical, lo que hace que la integral que define a los coeficientes de los senos se anule por completo.

### 🔢 Pregunta 3
**Enunciado:** La serie de Fourier en el intervalo $(-5, 5)$ de la función: $f(x) = I_{(-5,0)}(x) + xI_{(0,5)}(x)$ es:
* **Respuesta correcta:** El término constante empieza con $\frac{7}{4}$ y hay convergencia puntual en: $(-5,0) \cup (0,5)$.
* **Justificación:** 1.  **Convergencia:** La función vale $1$ cuando $x \to 0^-$ y vale $0$ cuando $x \to 0^+$. Al haber un "salto" o discontinuidad en $x=0$, la serie de Fourier no converge puntualmente al valor de la función en ese punto, por lo que se excluye el $0$. 🚫
    2.  **Coeficiente $a_0$:** Al calcular la integral por tramos resulta $a_0 = \frac{7}{2}$. Como la fórmula de la serie utiliza $\frac{a_0}{2}$, el término inicial es $\frac{7}{4}$. 🧮

### 🔢 Pregunta 4
**Enunciado:** La serie de Fourier en el intervalo $(-1, 1)$ de la función $f(x) = e^{3x}$ es:
* **Respuesta correcta:** La opción que inicia con $\frac{1}{6}(e^3 - e^{-3})$ y afirma que hay convergencia puntual en $(-1,1)$.
* **Justificación:** 📈 La función exponencial $f(x) = e^{3x}$ es continua en todos los reales, por lo que no presenta discontinuidades en $(-1, 1)$. La serie converge puntualmente en todo el intervalo. El cálculo de $\frac{a_0}{2}$ arroja exactamente el término indicado.

### 🔢 Pregunta 5
**Enunciado:** La serie de Fourier de $f(x) = -I_{(-1,0)}(x) + I_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1, 1)$.
* **Respuesta correcta:** Falso
* **Justificación:** ❌ Evaluando los límites laterales en $x=0$, por la izquierda la función vale $-1$ y por la derecha vale $1$. Debido a este salto, en $x=0$ la serie converge al promedio de los límites ($0$), no a la función original.

### 🔢 Pregunta 6
**Enunciado:** La siguiente serie de Fourier converge puntualmente a $f$ en toda la recta real: $f(x) = (x+1)I_{(-1,0)}(x) + (1-x)I_{(0,1)}(x)$.
* **Respuesta correcta:** Verdadero
* **Justificación:** ✅ La función es continua en $x=0$ ($1=1$). Además, en los extremos $x=-1$ y $x=1$, los valores de la extensión periódica coinciden. Al ser continua y suave a tramos, su serie de Fourier converge a ella en todos los reales.

### 🔢 Pregunta 7
**Enunciado:** La serie de Fourier de $f(x) = I_{(-1,0)}(x) + (1-x) \cdot I_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1, 1)$.
* **Respuesta correcta:** Verdadero
* **Justificación:** 🔗 Verificando el punto crítico $x=0$: el límite por la izquierda es $1$ y por la derecha es $(1-0)=1$. Como no hay salto, es continua en todo el intervalo abierto.

### 🔢 Pregunta 8
**Enunciado:** La serie de Fourier de $f(x) = I_{(-1,0)}(x) + x \cdot I_{(0,1)}(x)$ converge puntualmente a $f$ en todo el intervalo $(-1, 1)$.
* **Respuesta correcta:** Falso
* **Justificación:** ⚠️ En $x=0$, el límite por la izquierda es $1$, pero por la derecha es $0$. Existe una discontinuidad de salto finito que impide la convergencia puntual a $f$ en ese punto.

### 🔢 Pregunta 9
**Enunciado:** El coeficiente $a_n$ de $f(x) = x^3$ es distinto de $0$ en cualquier intervalo $(-1, 1)$.
* **Respuesta correcta:** Falso
* **Justificación:** ❌ La función $f(x) = x^3$ es **impar**. Para todas las funciones impares en intervalos simétricos, los coeficientes $a_n$ (cosenos) son estrictamente iguales a $0$.

### 🔢 Pregunta 10
**Enunciado:** El coeficiente $b_n$ de $f(x) = \cos(x)$ es distinto de $0$ en cualquier intervalo $(-1, 1)$.
* **Respuesta correcta:** Falso
* **Justificación:** 🌊 La función $f(x) = \cos(x)$ es una función **par**. Para cualquier función par, los coeficientes $b_n$ (senos) son estrictamente iguales a $0$.

---

## 📊 Resumen de Propiedades: Paridad y Coeficientes

| Tipo de Función | Condición Matemática | Coeficientes Nulos | Coeficientes que Sobreviven |
| :--- | :--- | :--- | :--- |
| **Impar** (ej. $x, x^3$) | $f(-x) = -f(x)$ | $a_0 = 0$ y $a_n = 0$ | $b_n$ (Senos) |
| **Par** (ej. $x^2, \cos(x)$) | $f(-x) = f(x)$ | $b_n = 0$ | $a_0$ y $a_n$ (Cosenos) |

---

## 💡 Tips para tu próximo examen

1.  **Identifica la Paridad Primero:** Antes de integrar, mira si la función es par o impar. Esto te ahorrará la mitad del trabajo. 🕒
2.  **Puntos de Discontinuidad:** Si ves un "salto" en la gráfica, la serie convergerá al punto medio del salto, no al valor de la función. 🌉
3.  **Continuidad en los Extremos:** Para la convergencia en toda la recta real, los valores en los extremos del intervalo deben coincidir para que la repetición periódica sea fluida. 🔄
