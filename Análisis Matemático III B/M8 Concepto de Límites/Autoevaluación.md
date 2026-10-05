### **Marco Teórico de Referencia**

1. **Definición de Continuidad:** Una función compleja $f(z)$ es continua en un punto $z_0$ del plano complejo si y sólo si $\lim_{z \to z_0} f(z) = f(z_0)$.


2. **Componentes Real e Imaginaria:** Escribiendo $f(x+iy) = u(x,y) + i\,v(x,y)$ y $z_0 = x_0 + i\,y_0$, la función $f(z)$ es continua en $z_0$ si y sólo si las funciones reales de dos variables $u(x,y)$ y $v(x,y)$ son continuas en el punto $(x_0, y_0)$ de $\mathbb{R}^2$.


3. **Propiedad de "0 por acotada":** Si $g(z)$ es una función acotada ($\vert{}g(z)\vert{} \le M$) y $\lim_{z \to z_0} f(z) = 0$, entonces el producto cumple que $\lim_{z \to z_0} [g(z) \cdot f(z)] = 0$.


4. **Criterio de Curvas o Trayectorias:** El límite doble en un punto existe y es L si y sólo si para *toda* curva parametrizada $\alpha(t)$ que pasa por dicho punto, el límite de la composición es L. Si al acercarse por dos curvas distintas se obtienen límites diferentes, el límite no existe y la función presenta una discontinuidad esencial en el origen.



---

### **Resolución y Verificación de los Ejercicios de la Guía / Autoevaluación**

#### **Pregunta 1**

Dada la función:


$$f(z) = \begin{cases} \frac{z + \vert{}z\vert{}^2}{\bar{z}} & z \neq 0 \\ 0 & z = 0 \end{cases}$$

* **Paso 1:** Analizar el comportamiento de la función fuera del origen y calcular el límite cuando $z \to 0$. Expresamos $z = x + iy$, donde $\vert{}z\vert{}^2 = x^2 + y^2$ y $\bar{z} = x - iy$.
* **Paso 2:** Aplicar el criterio de aproximación por distintas curvas que pasan por el origen:


* **Curva 1 ($z_1(t) = t + i \cdot 0 = t$, es decir, sobre el eje real):**

$$f(t) = \frac{t + t^2}{t} = \frac{t(1 + t)}{t} = 1 + t \implies \lim_{t \to 0} (1 + t) = 1$$


* **Curva 2 ($z_2(t) = 0 + i \cdot t = it$, es decir, sobre el eje imaginario):**

$$f(it) = \frac{it + t^2}{-it} = \frac{t^2 + it}{-it} = \frac{t(t + i)}{-it} = \frac{t + i}{-i} = i(t + i) = it - 1 \implies \lim_{t \to 0} (it - 1) = -1$$




* **Paso 3:** Como los límites obtenidos al acercarnos por las dos curvas son distintos ($1 \neq -1$), el límite $\lim_{z \to 0} f(z)$ **no existe**. Por lo tanto, la función no es continua en el origen y presenta una discontinuidad de tipo esencial.


* **Respuesta Verificada:** Opción **D** f(z) es continua en todo el plano complejo, salvo en el origen. Con las curvas* 

$z_1(t) = t$ y $z_2(t) = i \cdot t$

*se demuestra que tiene una discontinuidad esencial en el origen*).

---

#### **Pregunta 5**

Dada la función:


$$f(x+iy) = \begin{cases} \frac{3y^4 - 7y^2 x^2}{x^2 + y^2} + i \left(\frac{2x^3 - xy^2}{x^2 + y^2}\right) & (x,y) \neq (0,0) \\ 0 & (x,y) = (0,0) \end{cases}$$

* **Paso 1:** Identificar la parte real $u(x,y)$ y la parte imaginaria $v(x,y)$:


* Parte real: $u(x,y) = \frac{3y^4 - 7y^2 x^2}{x^2 + y^2} = y^2 \left(\frac{3y^2 - 7x^2}{x^2 + y^2}\right)$
* Parte imaginaria: $v(x,y) = \frac{2x^3 - xy^2}{x^2 + y^2} = x \left(\frac{2x^2 - y^2}{x^2 + y^2}\right)$


* **Paso 2:** Demostrar la acotación de los factores racionales:


* $\left\vert{}\frac{3y^2 - 7x^2}{x^2 + y^2}\right\vert{} \le \frac{3y^2}{x^2 + y^2} + \frac{7x^2}{x^2 + y^2} \le 3 + 7 = 10$ (función acotada).


* $\left\vert{}\frac{2x^2 - y^2}{x^2 + y^2}\right\vert{} \le \frac{2x^2}{x^2 + y^2} + \frac{y^2}{x^2 + y^2} \le 2 + 1 = 3$ (función acotada).




* **Paso 3:** Aplicar la propiedad de **"0 por acotada"**:


* Como $\lim_{(x,y) \to (0,0)} y^2 = 0$ y multiplica a una función acotada, el límite de la parte real es $0$.


* Como $\lim_{(x,y) \to (0,0)} x = 0$ y multiplica a una función acotada, el límite de la parte imaginaria es $0$.




* **Paso 4:** Concluir que $\lim_{z \to 0} f(z) = 0 + i0 = 0 = f(0)$, por lo que la función es continua en todo el plano.


* **Respuesta Verificada:** Opción **B** f(x+iy) *es continua en todo el plano complejo. En el origen, se demuestra que es continua con la propiedad de "0 por acotada"*).

---

#### **Pregunta 7**

Dada la función:


$$f(x+iy) = \begin{cases} \frac{5x^2 + 9y^2}{8x^2 + 2y^2} + i \cdot (y - 3x^2) & (x,y) \neq (0,0) \\ 0 & (x,y) = (0,0) \end{cases}$$

* **Paso 1:** Analizar la parte real $u(x,y) = \frac{5x^2 + 9y^2}{8x^2 + 2y^2}$ acercándose mediante rectas que pasan por el origen ($y = mx$):



$$u(x, mx) = \frac{5x^2 + 9(mx)^2}{8x^2 + 2(mx)^2} = \frac{5 + 9m^2}{8 + 2m^2}$$


* **Paso 2:** Evaluar para diferentes pendientes $m$:
* Si $m = 0$ ($y = 0$): el límite es $\frac{5}{8} = 0.625$.
* Si $m = 1$ ($y = x$): el límite es $\frac{5 + 9}{8 + 2} = \frac{14}{10} = 1.4$.


* **Paso 3:** Como el valor del límite depende de la dirección (la pendiente $m$) con la que nos acercamos al origen, el límite no existe, lo que indica una discontinuidad esencial en el origen.


* **Respuesta Verificada:** Opción **C** f(x+iy) *es continua en todo el plano complejo, salvo en el origen. Con las curvas*

$z_1(t) = t$ y $z_2(t) = i \cdot t$

*se demuestra que tiene una discontinuidad esencial en el origen*).

---

#### **Pregunta 9**

Dada la función:


$$f(z) = \begin{cases} \frac{z^2 + \vert{}z\vert{}^2}{\bar{z}} & z \neq 0 \\ 0 & z = 0 \end{cases}$$

* **Paso 1:** Reescribir algebraicamente el numerador y denominador utilizando propiedades del módulo y conjugado ($\vert{}z\vert{}^2 = z\bar{z}$):

$$f(z) = \frac{z^2 + z\bar{z}}{\bar{z}} = \frac{z(z + \bar{z})}{\bar{z}}$$


* Otra forma práctica es expresar $f(z) = \frac{z^2}{\bar{z}} + \frac{\vert{}z\vert{}^2}{\bar{z}} = \frac{z^2 \cdot z}{\vert{}z\vert{}^2} + z = \frac{z^3}{r^2} + z$.
* Usando coordenadas polares o acotación directa: notemos que $\vert{}f(z)\vert{} = \left\vert{}\frac{z^2 + \vert{}z\vert{}^2}{\bar{z}}\right\vert{} = \frac{\vert{}z\vert{} \vert{}z + \bar{z}\vert{}}{\vert{}z\vert{}} = \vert{}z + \bar{z}\vert{}$ (para $z \neq 0$). Más rigurosamente, sacando factor común o acotando:

$$f(z) = \frac{z^2 + \vert{}z\vert{}^2}{\bar{z}} = z \left(\frac{z}{\bar{z}} + 1\right)$$




* **Paso 2:** Dado que $\left\vert{}\frac{z}{\bar{z}}\right\vert{} = \frac{\vert{}z\vert{}}{\vert{}\vert{}\bar{z}\vert{}\vert{}} = 1$ (es una función acotada en módulo por $1$), al sumarle $1$ sigue estando acotada por $2$.
* **Paso 3:** Aplicar la propiedad de **"0 por acotada"**:

$$\lim_{z \to 0} f(z) = \lim_{z \to 0} \left[ z \cdot \left(\frac{z}{\bar{z}} + 1\right) \right] = 0 \cdot (\text{término acotado}) = 0$$


* **Paso 4:** Como $\lim_{z \to 0} f(z) = 0 = f(0)$, la función es continua en todo el plano complejo.


* **Respuesta Verificada:** Opción **B** f(z) *es continua en todo el plano complejo. En el origen se demuestra que es continua con la propiedad de "0 por acotada"*).

---

### **Verificación de Preguntas Teóricas Adicionales (Autoevaluación)**

* **Pregunta 2:** $$f(x+iy) = u(x,y) + i\,v(x,y)$$ es continua en $$z = z_0$$ si y sólo si $$u(x,y)$$ y $$v(x,y)$$ son continuas en $$(x_0, y_0)$$ 

**Verdadero** (Consecuencia directa del teorema de continuidad por componentes).


* **Pregunta 3:** Si $$\vert{}g(z)\vert{} \le M$$ y $$\lim_{z \to z_0} f(z) = L \neq 0$$, entonces $$\lim_{z \to z_0} [g(z) \cdot f(z)] = L$$* 
**Falso** (La propiedad de "0 por acotada" requiere estrictamente que el límite de $f(z)$ sea $0$, no un valor distinto de cero $L$).


* **Pregunta 4:** Si al acercarse por dos curvas distintas $$z_1(t)$$ y $$z_2(t)$$ que pasan por el origen, los límites son distintos, entonces no existe $$\lim_{z \to 0} f(z)$$ 
**Verdadero** (Principio fundamental de unicidad del límite y restricciones por trayectorias).


* **Pregunta 6:** Una función $$f(z) = p(z) + \vert{}z\vert{}$$ es continua en todo el plano complejo, donde $$p(z)$$ es un polinomio.
**Verdadero** (Los polinomios y la función módulo son continuas en todo $$\mathbb{C}$$, y la suma de funciones continuas es continua).


* **Pregunta 8:** Si al acercarse por todas las rectas posibles $$z(t) = at + i(bt)$$ el límite es 0 , entonces $$\lim_{z \to 0} f(z) = 0$$
**Falso** (Que el límite coincida a lo largo de todas las rectas no garantiza la existencia del límite doble en el plano, ya que trayectorias no rectilíneas —como parábolas— pueden arrojar resultados diferentes).
