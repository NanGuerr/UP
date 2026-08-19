# 🧮 Resolución Paso a Paso de la Ecuación Diferencial ✨

Para resolver la ecuación diferencial ordinaria de primer orden $xy + y^2 \frac{dy}{dx} = 6x$, se aplica rigurosamente el método analítico de separación de variables. 🧠📐

---

## 🔄 Paso 1: Separación de variables

📌 **Dada la ecuación diferencial inicial:**

$$xy + y^2 \frac{dy}{dx} = 6x$$

🧩 **Reordenamiento algebraico:** 
Se aísla el término que contiene la derivada multiplicando toda la expresión por $dx$ y agrupando los términos correspondientes, lo que resulta en:
$$y^2 \, dy = (6x - xy) \, dx$$

✂️ **Factorización:** 
Se extrae factor común $x$ en el lado derecho de la igualdad:
$$y^2 \, dy = x(6 - y) \, dx$$

🗂️ **Agrupamiento de variables:** 
Se dividen los términos algebraicos para garantizar que todas las funciones dependientes de la variable $y$ queden agrupadas junto al diferencial $dy$, mientras que las expresiones dependientes de $x$ se sitúan junto al diferencial $dx$:
$$\frac{y^2}{6 - y} \, dy = x \, dx$$

---

## ⚖️ Paso 2: Integración de ambos miembros

♾️ Se plantea la integración indefinida en ambos lados de la ecuación previamente separada:

$$\int \frac{y^2}{6 - y} \, dy = \int x \, dx$$

➡️ **Evaluación del miembro derecho:**
La integral directa respecto a $x$ se resuelve aplicando la regla de la potencia:
$$\int x \, dx = \frac{1}{2}x^2$$

⬅️ **Evaluación del miembro izquierdo:**
Dado que el integrando es una función racional impropia (el grado del polinomio en el numerador es mayor que en el denominador), se realiza una división algebraica ➗ o un ajuste equivalente para descomponer la expresión:
$$\frac{y^2}{6 - y} = -y - 6 + \frac{36}{6 - y}$$

📉 Al integrar cada término resultante de forma individual respecto a $y$, se obtiene:
$$\int \left(-y - 6 + \frac{36}{6 - y}\right) dy = -\frac{y^2}{2} - 6y - 36 \ln\vert{}6 - y\vert{}$$

🔗 Igualando los resultados obtenidos en ambos lados de la expresión e incorporando la constante de integración arbitraria $C$, se establece la igualdad:
$$-\frac{y^2}{2} - 6y - 36 \ln\vert{}6 - y\vert{} = \frac{1}{2}x^2 + C$$

---

## 🧹 Paso 3: Simplificación de la solución

✖️ **Eliminación de fracciones y coeficientes negativos:** 
Se multiplica toda la ecuación por $-2$ con el propósito de simplificar los denominadores y optimizar la expresión: 🛠️
$$y^2 + 12y + 72 \ln\vert{}6 - y\vert{} = -x^2 + C_1$$
*(donde $C_1 = -2C$ representa una nueva constante arbitraria resultante de la reasignación escalar 🏷️).*

🏁 **Solución general implícita:** 
Se reordenan los términos trasladando $-x^2$ al miembro izquierdo para expresar la solución general definitiva de la ecuación diferencial: ✅
$$x^2 + y^2 + 12y + 72 \ln\vert{}6 - y\vert{} = C_1$$
