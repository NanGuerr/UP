# 📄 Desarrollo Resolutivo


Se presenta el análisis detallado y la fundamentación teórica de cada uno de los bloques de la autoevaluación:



## 🔹 1. Bloque 1: Integral de $\frac{\ln(1+x)}{x}$ (Preguntas 1 y 2) 🧮

Para evaluar la integral definida:

$$\int_{a}^{b} \frac{\ln(1+x)}{x} \, dx$$

* **Paso 1 (Obtener la derivada):** Partimos de la derivada del numerador:
  $$\frac{d}{dx}[\ln(1+x)] = \frac{1}{1+x}$$

* **Paso 2 (Serie Geométrica):** Usamos la serie geométrica estándar $\frac{1}{1-u} = \sum_{n=0}^{\infty} u^n$ reemplazando $u = -x$:
  $$\frac{1}{1+x} = \sum_{n=0}^{\infty} (-1)^n x^n \quad \text{para } |x| < 1$$

* **Paso 3 (Integración de la serie):** Integramos término a término con la condición inicial $\ln(1) = 0$ para hallar la serie del logaritmo:
  $$\ln(1+x) = \int_0^x \left( \sum_{n=0}^{\infty} (-1)^n t^n \right) dt = \sum_{n=0}^{\infty} \frac{(-1)^n x^{n+1}}{n+1} = \sum_{n=1}^{\infty} \frac{(-1)^{n-1} x^n}{n}$$

* **Paso 4 (División por $x$):** Dividimos cada término por $x$ para reconstruir el integrando:
  $$\frac{\ln(1+x)}{x} = \sum_{n=1}^{\infty} \frac{(-1)^{n-1} x^{n-1}}{n}$$

* **Paso 5 (Integración final):** Integramos término a término la serie resultante en el intervalo $[a, b]$:
  $$\int_{a}^{b} \frac{\ln(1+x)}{x} \$$
  

$$\int_a^b \frac{\ln(1+x)}{x} \, dx = \left[\sum_{n=1}^{\infty} \frac{(-1)^{n-1} x^n}{n^2} \right]_a^b = \sum_{n=1}^{\infty} \frac{(-1)^{n-1}(b^n - a^n)}{n^2}$$

  
### 💡 Conclusiones de las preguntas:
* **Pregunta 1:** Verdadero. Es estrictamente necesario usar la serie geométrica y la integración de series de potencias. ✅
* **Pregunta 2:** Falso. Se requiere integración término a término de la serie resultante para resolver la integral, no su derivación. ❌



## 🔹 2. Bloque 2: Integral de $\frac{\arctan(x)}{x}$ (Preguntas 3 y 4) 📐

Para evaluar la integral definida:

$$\int_{a}^{b} \frac{\arctan(x)}{x} \, dx$$

* **Paso 1 (Obtener la derivada):** Derivamos el numerador:
  $$\frac{d}{dx}[\arctan(x)] = \frac{1}{1+x^2}$$

* **Paso 2 (Serie Geométrica):** Sustituimos $u = -x^2$ en la serie geométrica:
  $$\frac{1}{1+x^2} = \sum_{n=0}^{\infty} (-1)^n x^{2n} \quad \text{para } |x| < 1$$

* **Paso 3 (Integrar para hallar $\arctan(x)$):** Integramos término a término (con $\arctan(0) = 0$):
  $$\arctan(x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1}$$

* **Paso 4 (Dividir por $x$ e Integrar):** Dividimos entre $x$ e integramos la serie de potencias entre $a$ y $b$:



$$\int_a^b \frac{\arctan(x)}{x} \, dx = \left[ \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)^2} \right]_a^b = \sum_{n=0}^{\infty} \frac{(-1)^n (b^{2n+1} - a^{2n+1})}{(2n+1)^2}$$

  
### 💡 Conclusiones de las preguntas:
* **Pregunta 3:** Verdadero. Requiere serie geométrica e integración término a término. ✅
* **Pregunta 4:** Falso. El proceso requiere integrar para resolver la integral de la función, no derivar. ❌



## 🔹 3. Bloque 3: Integrales Especiales (Preguntas 5, 6, 7 y 8) ⚡

* **Pregunta 5: Integral de $x e^{-x^2}$** ❌ **Falso.**  
  El enunciado afirma que es strictly necesario el desarrollo en series, lo cual es incorrecto. Como la integral tiene una $x$ multiplicando a la exponencial, se puede resolver de forma exacta y directa por sustitución simple ($u = -x^2 \implies du = -2xdx$) sin necesidad de series de potencias:
  $$\int_a^b x e^{-x^2} \, dx = \left[ -\frac{1}{2} e^{-x^2} \right]_a^b = -\frac{1}{2} (e^{-b^2} - e^{-a^2})$$

* **Pregunta 6: Integral de $\frac{\cos(x^2)}{x}$ o $\frac{\sin(x^2)}{x}$** ✅ **Verdadero.**  
  Se parte del desarrollo de Maclaurin de la función trigonométrica, se sustituye el argumento por $x^2$, se divide cada término por $x$ y se integra término a término.

* **Pregunta 7: Integral de $e^{x^2}$** ✅ **Verdadero.**  
  Como no posee primitiva elemental, es obligatorio sustituir $x$ por $x^2$ en la serie de $e^x$ ($\sum \frac{x^{2n}}{n!}$) e integrar término a término:
  $$\int_a^b e^{x^2} \, dx = \sum_{n=0}^{\infty} \frac{b^{2n+1} - a^{2n+1}}{n!(2n+1)}$$

* **Pregunta 8: Integral de $\frac{\sin(x)}{\sqrt{x}}$** ✅ **Verdadero.**  
  Se toma la serie de $\sin(x)$, se divide por $x^{1/2}$ (restando $1/2$ a cada exponente) y se integra término a término la serie resultante de potencias fraccionarias.



## 🔹 4. Bloque 4: Derivación de Series de Potencias (Preguntas 9, 10 y 11) ⚙️

* **Pregunta 9: Segunda derivada de $\sum_{n=0}^{\infty} x^n$**
  * La primera derivada es $s'(x) = \sum_{n=1}^{\infty} n x^{n-1}$.
  * La segunda derivada es $\sum_{n=2}^{\infty} n(n-1) x^{n-2}$.
  * **Radio de convergencia ($R$):** La derivación término a término conserva el mismo radio de la serie geométrica original. Por lo tanto, $R = 1$. 🎯

* **Pregunta 10: Segunda derivada de $\sum_{n=0}^{\infty} \frac{x^n}{n!}$**
  * Esta serie corresponde a la función exponencial $e^x$. Dado que la derivada de $e^x$ es igual a sí misma, la segunda derivada es idéntica a la serie original:
    $$\sum_{n=0}^{\infty} \frac{x^n}{n!}$$
  * **Radio de convergencia ($R$):** Sigue siendo infinito ($R = +\infty$) para todos los números reales. ♾️

* **Pregunta 11: Primera derivada de $f(x) = \arctan(x)$**
  * La primera derivada es $f'(x) = \frac{1}{1+x^2}$.
  * Sustituyendo $-x^2$ en la serie geométrica, el desarrollo en series de Maclaurin de su derivada es:
    $$\sum_{n=0}^{\infty} (-1)^n x^{2n}$$
  * **Radio de convergencia ($R$):** Al requerirse que $|-x^2| < 1$, el radio de convergencia es $R = 1$. 🎯

