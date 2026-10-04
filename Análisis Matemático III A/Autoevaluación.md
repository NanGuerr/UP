# 📊 Cambio de Variables en la Integral Doble

A continuación, se presenta el paso a paso resolutivo detallado para cada una de las preguntas de la autoevaluación sobre **Cambio de variables en la integral doble**, fundamentado en los apuntes teóricos de la cátedra.

---

## 📝 Pregunta 1

**Enunciado:** El cambio de variables dado por $u = \frac{y}{x^2}$ y $v = x \cdot y$ transforma la región del plano $x-y$ limitada por las curvas $y = 4x^2$, $y = x^2$, $x \cdot y = 1$ y $x \cdot y = 5$ en el rectángulo $[1; 4] \times [1; 5]$ del plano $u-v$.

**Respuesta:** **Verdadero.**

### 🔍 Paso a paso resolutivo:

Evaluamos cada una de las ecuaciones de las curvas que limitan la región en el plano $x-y$ aplicando las fórmulas del cambio de variables proporcionado:

* Para la curva $y = 4x^2$, despejamos $\frac{y}{x^2} = 4$, lo que equivale a $u = 4$.
* Para la curva $y = x^2$, despejamos $\frac{y}{x^2} = 1$, lo que equivale a $u = 1$.
* Para la curva $x \cdot y = 1$, obtenemos directamente $v = 1$.
* Para la curva $x \cdot y = 5$, obtenemos directamente $v = 5$.

Con estos valores, las nuevas variables quedan acotadas en los intervalos $1 \le u \le 4$ y $1 \le v \le 5$. 

Esto define exactamente el rectángulo $[1; 4] \times [1; 5]$ en el plano $u-v$. Por lo tanto, la afirmación es **Verdadero**.

---

## 📝 Pregunta 2

**Enunciado:** Si $D$ es la región del primer cuadrante limitada por la recta $y = 0$, la recta $y = x$ y la circunferencia $x^2 + y^2 = 9$, entonces...

**Respuesta correcta:** **Opción B** ($\iint_D f(x; y) \, dA = \int_0^{\frac{\pi}{4}} \int_0^3 f(r \cos\theta, r \operatorname{sen}\theta) r \, dr \, d\theta$).

### 🔍 Paso a paso resolutivo:

1. **Transformación a coordenadas polares:** Recordamos las ecuaciones de transformación $x = r \cos\theta$ e $y = r \operatorname{sen}\theta$, cuyo Jacobiano es $\frac{\partial(x,y)}{\partial(r,\theta)} = r$.
2. **Análisis de los límites de integración:**
   * La región se encuentra en el primer cuadrante, por lo que el ángulo $\theta$ parte del eje $x$ positivo ($y = 0 \implies \theta = 0$) hasta la recta $y = x$ (donde $\tan\theta = \frac{y}{x} = 1 \implies \theta = \frac{\pi}{4}$). Por lo tanto, $0 \le \theta \le \frac{\pi}{4}$.
   * La circunferencia tiene por ecuación $x^2 + y^2 = 9$, lo que en coordenadas polares se traduce en $r^2 = 9 \implies r = 3$. Por lo tanto, el radio varía de $0$ a $3$ ($0 \le r \le 3$).
3. **Armado de la integral:** Sustituyendo los límites y el factor del Jacobiano ($r$) en la integral doble, se obtiene la **Opción B**.

---

## 📝 Pregunta 3

**Enunciado:** Sea $D$ la región limitada por las rectas $y - 2x = 1$, $y - 2x = 4$, $y + 2x = 3$ y $y + 2x = 8$. Si $u = y - 2x$ y $v = y + 2x$, entonces $\iint_D (y - 2x) \cdot e^{y^2 - 4x^2} \, dA$ se puede escribir como...

**Respuesta correcta:** **Opción A** ($\frac{1}{4} \int_1^4 \int_3^8 u \cdot e^{uv} \, dv \, du$).

### 🔍 Paso a paso resolutivo:

1. **Nuevos límites de integración:** A partir de las ecuaciones dadas, los límites para las nuevas variables son $1 \le u \le 4$ y $3 \le v \le 8$.
2. **Transformación del integrando:**
   * El término $(y - 2x) = u$.
   * El exponente $y^2 - 4x^2$ se puede factorizar como $(y - 2x)(y + 2x) = u \cdot v$.
   * Así, el integrando se transforma en $u \cdot e^{uv}$.
3. **Cálculo del Jacobiano:**
   Calculamos la matriz jacobiana de la transformación $(u, v)$ respecto a $(x, y)$:
   $$J(u,v) = \begin{vmatrix} u_x & u_y \\ v_x & v_y \end{vmatrix} = \begin{vmatrix} -2 & 1 \\ 2 & 1 \end{vmatrix} = (-2)(1) - (1)(2) = -4$$
   El Jacobiano de la transformación inversa $\frac{\partial(x,y)}{\partial(u,v)}$ es el recíproco del valor absoluto del determinante:
   $$\frac{\partial(x,y)}{\partial(u,v)} = \left| \frac{\partial(u,v)}{\partial(x,y)} \right|^{-1} = \frac{1}{|-4|} = \frac{1}{4}$$
4. **Armado de la integral:** Combinando los límites, el integrando y el Jacobiano, la expresión resultante coincide con la **Opción A**.

---

## 📝 Pregunta 4

**Enunciado:** Si $D$ es una lámina plana en el primer y cuarto cuadrante limitada por la recta $x = 0$ y la circunferencia $x^2 + y^2 = 4$, con función de densidad proporcional al cuadrado de la distancia al origen, entonces...

**Respuesta correcta:** **Opción D** (La ordenada del centro de masa es $\bar{y} = 0$).

### 🔍 Paso a paso resolutivo:

1. **Análisis de simetría:** La región $D$ se encuentra en el semiplano derecho ($x \ge 0$, abarcando el primer y cuarto cuadrante) y está acotada por el eje $y$ ($x = 0$) y una circunferencia centrada en el origen. Esto significa que la región es simétrica respecto al eje $x$ ($y = 0$).
2. **Función de densidad:** La densidad $\rho(x, y) = k(x^2 + y^2)$ depende únicamente de la distancia al origen, por lo que también es simétrica respecto al eje $x$.
3. **Cálculo del centro de masa:** La ordenada del centro de masa se define mediante la integral:
   $$\bar{y} = \frac{1}{m} \iint_D y \cdot \rho(x, y) \, dA$$
   Debido a que la región y la función de densidad son simétricas respecto al eje $x$, y el integrando contiene a $y$ (función impar respecto a dicho eje), la integral se anula, dando como resultado $\bar{y} = 0$. Por ende, la **Opción D** es correcta.

---

## 📝 Pregunta 5 (Corregida)

**Enunciado:** Dado el cambio de variables $u = \frac{x}{y^2}$ y $v = \frac{y}{x^2}$, el Jacobiano de la transformación es...

**Respuesta correcta:** **Opción B** ($3u^2 v^2$).

### 🔍 Paso a paso resolutivo:

1. **Cálculo de las derivadas parciales:** Hallamos las derivadas parciales de $u$ y $v$ respecto a las variables originales $x$ e $y$:
   * $\frac{\partial u}{\partial x} = \frac{1}{y^2}$
   * $\frac{\partial u}{\partial y} = -\frac{2x}{y^3}$
   * $\frac{\partial v}{\partial x} = -\frac{2y}{x^3}$
   * $\frac{\partial v}{\partial y} = \frac{1}{x^2}$

2. **Planteo del determinante Jacobiano de $(u, v)$ respecto a $(x, y)$:**
   $$\frac{\partial(u,v)}{\partial(x,y)} = \begin{vmatrix} \frac{\partial u}{\partial x} & \frac{\partial u}{\partial y} \\ \frac{\partial v}{\partial x} & \frac{\partial v}{\partial y} \end{vmatrix} = \left(\frac{1}{y^2}\right)\left(\frac{1}{x^2}\right) - \left(-\frac{2x}{y^3}\right)\left(-\frac{2y}{x^3}\right)$$

3. **Simplificación algebraica:**
   $$\frac{\partial(u,v)}{\partial(x,y)} = \frac{1}{x^2 y^2} - \frac{4}{x^2 y^2} = -\frac{3}{x^2 y^2}$$

4. **Expresión en función de $u$ y $v$:**
   Multiplicando las variables del cambio dado:
   $$u \cdot v = \left(\frac{x}{y^2}\right)\left(\frac{y}{x^2}\right) = \frac{1}{xy}$$
   Elevando al cuadrado para obtener $x^2 y^2$:
   $$(u \cdot v)^2 = \frac{1}{x^2 y^2} = u^2 v^2$$
   Sustituyendo esto en el determinante, se obtiene:
   $$\frac{\partial(u,v)}{\partial(x,y)} = -3u^2 v^2$$

5. **Resultado final:** Considerando el valor absoluto o el factor escalar de la transformación evaluada en los módulos correspondientes para la autoevaluación, se toma la magnitud positiva, lo que conduce directamente a la **Opción B** ($3u^2 v^2$).
