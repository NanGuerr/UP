La resolución analítica de ecuaciones diferenciales ordinarias (EDO) de primer orden exige identificar la estructura algebraica para aplicar el método de integración correspondiente.

## 📘 Conceptos Básicos y Soluciones

* **Clasificación**: El orden de una EDO corresponde a la derivada de mayor nivel (ejemplo, $y''$ es de segundo orden), mientras que su grado es el exponente al que está elevada dicha derivada.
* **Solución General**: Representa una familia de curvas paramétricas dependientes de constantes arbitrarias, como $y = \ln(Cx)$.
* **Solución Particular**: Se aísla al evaluar una condición o problema de valor inicial específico, determinando el valor exacto de la constante para un punto $y(x_0) = y_0$.

## 🧮 Ecuaciones Separables y Homogéneas

* **Variables Separables**: Responden a la forma diferencial $f(x)dx + g(y)dy = 0$. Su resolución consiste en agrupar algebraicamente las variables idénticas a cada lado de la igualdad e integrar directamente ambos miembros para obtener una solución implícita $G(y) = F(x) + C$.
* **Homogéneas**: Poseen la estructura $\frac{dy}{dx} = f(x, y)$, donde $f$ depende exclusivamente de la proporción $\frac{y}{x}$. Se resuelven aplicando la sustitución $y = u \cdot x$ y $dy = u dx + x du$. Este cambio de variable convierte la expresión en una EDO separable; tras integrar, se restituye la variable original $u = \frac{y}{x}$.

## ⚖️ Ecuaciones Exactas y Factor Integrante

* **Criterio de Exactitud**: Una expresión $M(x, y)dx + N(x, y)dy = 0$ es exacta si proviene de una función de dos variables y cumple la simetría de derivadas cruzadas $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$. Se integra $M$ respecto a $x$ para hallar $F(x, y)$, derivando luego este resultado respecto a $y$ e igualándolo a $N$ para despejar la función restante dependiente de $y$.
* **Factor Integrante**: Si la ecuación carece de exactitud, se fuerza multiplicándola por un factor $\mu$. Si el cociente analítico $\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N}$ depende únicamente de $x$, el factor se calcula como $\mu(x) = e^{\int P(x)dx}$, transformando el sistema en uno exacto.

## 📈 Ecuaciones Diferenciales Lineales

* **Estructura Canónica**: Se organizan bajo la forma estándar $y' + P(x)y = Q(x)$.
* **Variación de Parámetros**: Se halla primero la solución de la ecuación homogénea asociada $y' + P(x)y = 0$. Luego, se asume que la constante de integración se comporta como una variable $L(x)$, planteando la solución particular $y_p = L(x) \cdot e^{-\int P(x)dx}$. Al sustituir esta propuesta en la ecuación original, se despeja $L(x)$ para armar la solución general unificada:

$$y = K \cdot e^{-\int P(x)dx} + e^{-\int P(x)dx} \int Q(x) e^{\int P(x)dx} dx$$
