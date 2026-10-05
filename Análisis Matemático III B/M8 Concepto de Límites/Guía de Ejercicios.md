# 📚 Lím. y Continuidad de Funciones de Variable Compleja

Este documento presenta la resolución paso a paso de la guía de ejercicios de límite y continuidad de funciones de variable compleja, aplicando la metodología y teoremas del apunte teórico y verificando cada resultado con las respuestas oficiales.



## 🎯 Marco Teórico y Herramientas Utilizadas 🛠️

Para abordar estos ejercicios se emplean los siguientes principios fundamentales:

* **Definición de Continuidad:** Una función $f(z)$ es continua en $z_0$ si y solo si existe $f(z_0)$, existe $\lim_{z \to z_0} f(z)$ y se cumple que $\lim_{z \to z_0} f(z) = f(z_0)$.
* **Continuidad por Partes Real e Imaginaria:** Si $f(x+iy) = u(x,y) + i \cdot v(x,y)$, entonces $f$ es continua en $z_0 = x_0 + i y_0$ si y solo si sus componentes reales $u(x,y)$ y $v(x,y)$ son continuas en $\left(x_0, y_0\right)$.
* **No Existencia de Límite (Trayectorias/Curvas):** Si al acercarse a $z_0$ por dos curvas distintas $\alpha_1(t)$ y $\alpha_2(t)$ se obtienen valores de límite diferentes, entonces no existe el límite doble y la función presenta una discontinuidad esencial.
* **Propiedad «0 por Acotada»:** Si $\lim_{z \to z_0} g(z) = 0$ y $|h(z)| \le M$ (función acotada en un entorno de $z_0$), entonces $\lim_{z \to z_0} \left[ g(z) \cdot h(z) \right] = 0$.
* **Acotaciones en $\mathbb{R}^{2}$:** Para cualquier $\left(x,y\right) \neq \left(0,0\right)$, se verifica que $0 \le \frac{x^2}{x^2+y^2} \le 1$, $0 \le \frac{y^2}{x^2+y^2} \le 1$ y $\left|\frac{xy}{x^2+y^2}\right| \le \frac{1}{2}$.



## 📝 Ejercicio 1 🔢

### Enunciado
Analizar la continuidad en todo el plano complejo de la función:

$$ f(z) = \begin{cases} \frac{\bar{z}}{z} & \text{si } z \neq 0 \\ 0 & \text{si } z = 0 \end{cases} $$

### Resolución Paso a Paso ⚙️

1. **Fuera del origen ($z \neq 0$):**
   La función es un cociente entre dos funciones continuas en todo el plano complejo ($\bar{z}$ y $z$). Dado que el denominador solo se anula en $z = 0$, la función $f(z)$ es continua en todo el plano complejo sin el origen $\left(\mathbb{C} \setminus \{0\}\right)$.

2. **En el origen ($z = 0$):**
   Evaluamos la existencia de $\lim_{z \to 0} \frac{\bar{z}}{z}$ analizando el comportamiento del límite sobre dos curvas distintas que pasan por el origen:
* **Curva 1 (Eje real):** $\alpha_1(t) = t + i0 = t$ con $t \in \mathbb{R}$ y $t \to 0$.

$$ \lim_{t \to 0} f\left(\alpha_1(t)\right) = \lim_{t \to 0} \frac{\bar{t}}{t} = \lim_{t \to 0} \frac{t}{t} = 1 $$
   
* **Curva 2 (Eje imaginario):** $\alpha_2(t) = 0 + it = it$ con $t \in \mathbb{R}$ y $t \to 0$.

$$ \lim_{t \to 0} f\left(\alpha_2(t)\right) = \lim_{t \to 0} \frac{\overline{it}}{it} = \lim_{t \to 0} \frac{-it}{it} = -1 $$

3. **Conclusión 📌**
   Como los límites por ambas trayectorias son distintos ($1 \neq -1$), no existe $\lim_{z \to 0} f(z)$. Por lo tanto, $f(z)$ no es continua en $z = 0$ y presenta una discontinuidad esencial.

* **Verificación de resultado:** Coincide plenamente con la respuesta oficial: $f(z)$ es continua en $\mathbb{C} \setminus \{0\}$ y tiene una discontinuidad esencial en $z = 0$.



## 📝 Ejercicio 2 🔢

### Enunciado
Analizar la continuidad en todo el plano complejo de la función:

$$ f(z) = \begin{cases} \frac{\bar{z}^{2}}{z} & \text{si } z \neq 0 \\ 0 & \text{si } z = 0 \end{cases} $$

### Resolución Paso a Paso ⚙️

1. **Fuera del origen ($z \neq 0$):**
   Al ser un cociente de funciones continuas cuyo denominador no se anula para $z \neq 0$, la función es continua en $\mathbb{C} \setminus \{0\}$.

2. **En el origen ($z = 0$):**
   Para $z \neq 0$, reescribimos la expresión factorizando el término $\bar{z}$:

$$ f(z) = \frac{\bar{z}^{2}}{z} = \bar{z} \cdot \left(\frac{\bar{z}}{z}\right)$$

Analizamos cada factor en el límite $z \to 0$:
   * Por un lado,
$\left|\frac{\bar{z}}{z}\right| = \frac{|\bar{z}|}{|z|} = \frac{|z|}{|z|} = 1$, lo que demuestra que el factor $\left(\frac{\bar{z}}{z}\right)$ está acotado.
   * Por otro lado, $\lim_{z \to 0} \bar{z} = 0$.

4. **Aplicación de la propiedad «0 por acotada» 🔍**
   Dado que es el producto de una función que tiende a 0 por una función acotada, se cumple que:

$$ \lim_{z \to 0} f(z) = \lim_{z \to 0} \left[ \bar{z} \cdot \frac{\bar{z}}{z} \right] = 0 $$

6. **Conclusión 📌**
   Como $\lim_{z \to 0} f(z) = 0 = f(0)$, la función también es continua en $z = 0$.

* **Verificación de resultado:** Coincide plenamente con la respuesta oficial: $f(z)$ es continua en todo el plano complejo.



## 📝 Ejercicio 3 🔢

### Enunciado
Analizar la continuidad en todo el plano complejo de la función:

$$ f(x+iy) = \begin{cases} \frac{7x^{2} + 4y^{2}}{3x^{2} + 5y^{2}} + i\left(3x - y\right) & \text{si } \left(x,y\right) \neq \left(0,0\right) \\ 0 & \text{si } \left(x,y\right) = \left(0,0\right) \end{cases} $$

### Resolución Paso a Paso ⚙️

1. **Fuera del origen**

$$\left(x,y\right) \neq \left(0,0\right)$$

   Identificamos la parte real
   $u\left(x,y\right) = \frac{7x^{2} + 4y^{2}}{3x^{2} + 5y^{2}}$
   y la parte imaginaria $v\left(x,y\right) = 3x - y$.
   * $v\left(x,y\right)$ es un polinomio de grado 1, continuo en todo $\mathbb{R}^{2}$.
   * $u\left(x,y\right)$ es un cociente de polinomios reales cuyo denominador $3x^{2} + 5y^{2}$ solo se anula cuando $x = 0$ e $y = 0$.
   Por lo tanto, ambas componentes son continuas fuera del origen, lo que garantiza que $f(z)$ es continua en $\mathbb{C} \setminus \{0\}$.

3. **En el origen:**

$$\left(x,y\right) = \left(0,0\right)$$

   Analizamos la existencia del límite de la parte real $u\left(x,y\right)$ al aproximarse al origen por distintas curvas:
* **Curva 1 (Sobre el eje $x$):** $\alpha_1(t) = (t, 0)$ con $t \to 0$.

$$ \lim_{t \to 0} u(t, 0) = \lim_{t \to 0} \frac{7t^{2} + 4(0)^{2}}{3t^{2} + 5(0)^{2}} = \lim_{t \to 0} \frac{7t^{2}}{3t^{2}} = \frac{7}{3} $$

* **Curva 2 (Sobre el eje $y$):** $\alpha_2(t) = (0, t)$ con $t \to 0$.

$$ \lim_{t \to 0} u(0, t) = \lim_{t \to 0} \frac{7(0)^{2} + 4t^{2}}{3(0)^{2} + 5t^{2}} = \lim_{t \to 0} \frac{4t^{2}}{5t^{2}} = \frac{4}{5} $$

5. **Conclusión 📌**
   Como los límites por ambas trayectorias son diferentes ($\frac{7}{3} \neq \frac{4}{5}$), no existe $\lim_{\left(x,y\right)\to\left(0,0\right)} u\left(x,y\right)$ y en consecuencia no existe $\lim_{z \to 0} f(z)$. Por ende, $f(z)$ no es continua en $z = 0$ y presenta una discontinuidad esencial.

* **Verificación de resultado:** Coincide plenamente con la respuesta oficial: $f(z)$ es continua en $\mathbb{C} \setminus \{0\}$ y tiene una discontinuidad esencial en $z = 0$.



## 📝 Ejercicio 4 🔢

### Enunciado
Analizar la continuidad en todo el plano complejo de la función:

$$ f(x+iy) = \begin{cases} \left( \frac{2y^{3} - 5yx^{2} - xy^{2}}{x^{2} + y^{2}} \right) + i \left( \frac{2x^{3} - 7x^{2}y}{x^{2} + y^{2}} \right) & \text{si } \left(x,y\right) \neq \left(0,0\right) \\ 0 & \text{si } \left(x,y\right) = \left(0,0\right) \end{cases} $$

### Resolución Paso a Paso ⚙️

1. **Fuera del origen ($\left(x,y\right) \neq \left(0,0\right)$):**
   Las funciones $u\left(x,y\right) = \frac{2y^{3} - 5yx^{2} - xy^{2}}{x^{2} + y^{2}}$ y $v\left(x,y\right) = \frac{2x^{3} - 7x^{2}y}{x^{2} + y^{2}}$ son cocientes de polinomios reales cuyo denominador $x^{2} + y^{2}$ es estrictamente positivo fuera del origen. Por ende, $f(z)$ es continua en $\mathbb{C} \setminus \{0\}$.

2. **En el origen ($\left(x,y\right) = \left(0,0\right)$):**
   Analizamos los límites de $u\left(x,y\right)$ y $v\left(x,y\right)$ aplicando la propiedad «0 por acotada»:
   * **Límite de la parte real $u\left(x,y\right)$:**
Factorizamos $y$ en el numerador:

$$ u\left(x,y\right) = y \cdot \left[ 2 \left(\frac{y^{2}}{x^{2}+y^{2}}\right) - 5 \left(\frac{x^{2}}{x^{2}+y^{2}}\right) - \left(\frac{xy}{x^{2}+y^{2}}\right) \right] $$

Utilizando las acotaciones 

$0 \le \frac{x^{2}}{x^{2}+y^{2}} \le 1$, $0 \le \frac{y^{2}}{x^{2}+y^{2}} \le 1$ y $\left|\frac{xy}{x^{2}+y^{2}}\right| \le \frac{1}{2}$

el término entre corchetes está acotado:

$$ \left| 2 \left(\frac{y^{2}}{x^{2}+y^{2}}\right) - 5 \left(\frac{x^{2}}{x^{2}+y^{2}}\right) - \left(\frac{xy}{x^{2}+y^{2}}\right) \right| \le 2(1) + 5(1) + \frac{1}{2} = \frac{15}{2} $$

Como $\lim_{\left(x,y\right)\to\left(0,0\right)} y = 0$ y el factor entre corchetes está acotado, por la propiedad «0 por acotada»:

$$ \lim_{\left(x,y\right)\to\left(0,0\right)} u\left(x,y\right) = 0 $$

   * **Límite de la parte imaginaria $v\left(x,y\right)$:**
     Factorizamos $x$ en el numerador:

$$ v\left(x,y\right) = x \cdot \left[ 2 \left(\frac{x^{2}}{x^{2}+y^{2}}\right) - 7 \left(\frac{xy}{x^{2}+y^{2}}\right) \right] $$
     
De manera análoga, el término entre corchetes está acotado por $2(1) + 7\left(\frac{1}{2}\right) = \frac{11}{2}$.
Como $\lim_{\left(x,y\right)\to\left(0,0\right)} x = 0$, por la propiedad «0 por acotada»:

$$\lim_{\left(x,y\right)\to\left(0,0\right)} v\left(x,y\right) = 0$$

3. **Conclusión 📌**

Dado que 
$$\lim_{z \to 0} f(z) = 0 + i0 = 0 = f\left(0,0\right)$$

la función también es continua en $z = 0$. Por consiguiente, $f(z)$ es continua en todo $\mathbb{C}$.

* **Verificación de resultado:** Coincide plenamente con la respuesta oficial: $f(z)$ es continua en todo el plano complejo.
