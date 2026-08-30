# 📘 Autoevaluación de Ecuaciones Diferenciales Exactas y Factor Integrante 📐

A continuación se presenta el desarrollo analítico y detallado de cada una de las preguntas de la autoevaluación, optimizado para GitHub. 🚀

---

## ❓ Pregunta 1
**📝 Enunciado:** Para que la ecuación $e^{k^{2}x}\sin(4y)dx + e^{k^{2}x}\cos(4y)dy=0$ sea exacta, debe ser:

**💡 Desarrollo:**
Una ecuación de la forma $M(x,y)dx + N(x,y)dy = 0$ es exacta si se cumple el criterio de Euler, es decir, sus derivadas parciales cruzadas son iguales: $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$.

1. 🔍 **Identificamos las funciones $M$ y $N$:**
   - $M(x,y) = e^{k^{2}x}\sin(4y)$
   - $N(x,y) = e^{k^{2}x}\cos(4y)$
   
2. 🧮 **Calculamos las derivadas parciales cruzadas:**
   - Derivada parcial de $M$ respecto a $y$ (tratamos a $x$ como constante): 
     $$
     \frac{\partial M}{\partial y} = e^{k^{2}x} \cdot 4\cos(4y) = 4e^{k^{2}x}\cos(4y)
     $$
   - Derivada parcial de $N$ respecto a $x$ (tratamos a $y$ como constante): 
     $$
     \frac{\partial N}{\partial x} = k^{2}e^{k^{2}x}\cos(4y)
     $$
   
3. ⚖️ **Igualamos ambas expresiones** ($\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$):
   $$
   4e^{k^{2}x}\cos(4y) = k^{2}e^{k^{2}x}\cos(4y)
   $$
   
   Como $e^{k^{2}x}\cos(4y)$ no es uniformemente cero, podemos dividir ambos lados entre esta expresión:
   $$
   4 = k^2
   $$
   $$
   k = \pm \sqrt{4}
   $$
   $$
   k = 2 \text{ o } k = -2
   $$

**✅ Respuesta correcta:** $k=2 \lor k=-2$.

---

## ❓ Pregunta 2
**📝 Enunciado:** Siempre es posible encontrar un factor integrante que transforme una ecuación diferencial que no es exacta en otra que sí lo sea.

**💡 Desarrollo:**
De acuerdo con el teorema de existencia para ecuaciones diferenciales ordinarias de primer orden, toda ecuación de la forma $M(x,y)dx + N(x,y)dy = 0$ que posea una familia general de soluciones $F(x,y)=C$ (siendo $M$ y $N$ funciones continuas con derivadas parciales continuas), admite matemáticamente un factor integrante $\mu(x,y)$. Aunque en la práctica operativa puede resultar sumamente complejo determinar la expresión analítica de dicho factor para ecuaciones arbitrarias, desde el punto de vista teórico su existencia siempre está garantizada. 🧠✨

**✅ Respuesta correcta:** Verdadero.

---

## ❓ Pregunta 3
**📝 Enunciado:** La ecuación diferencial $(y+xy+\sin y)dx + (x+\cos y)dy=0$

**💡 Desarrollo:**
1. 🔍 **Identificamos $M$ y $N$:**
   - $M(x,y) = y + xy + \sin y$
   - $N(x,y) = x + \cos y$
   
2. 🧮 **Calculamos las derivadas parciales para comprobar si es exacta:**
   - $\frac{\partial M}{\partial y} = 1 + x + \cos y$
   - $\frac{\partial N}{\partial x} = 1$
   
   Como $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$, la ecuación **no es exacta**. 🚫

3. 🕵️‍♂️ **Buscamos un factor integrante** analizando si depende exclusivamente de $x$ o de $y$.
   Evaluamos la expresión dependiente de $x$:
   $$
   P(x) = \frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N}
   $$
   
   Sustituyendo los valores obtenidos:
   $$
   P(x) = \frac{(1 + x + \cos y) - 1}{x + \cos y} = \frac{x + \cos y}{x + \cos y} = 1
   $$
   
   Como el resultado es $1$ (una constante, que se asume función de $x$ y no depende de $y$), la ecuación admite un factor integrante que depende **solo de $x$**. 🎯
   
4. ⚙️ **Calculamos dicho factor integrante $\mu(x)$:**
   $$
   \mu(x) = e^{\int P(x) dx} = e^{\int 1 dx} = e^x
   $$

**✅ Respuestas correctas a seleccionar:** 
- No es exacta, pero admite un factor integrante que depende solo de $x$.
- El factor integrante es $\mu(x)=e^{x}$.

---

## ❓ Pregunta 4
**📝 Enunciado:** Una ecuación diferencial que no es exacta puede admitir:

**💡 Desarrollo:**
Si una ecuación diferencial admite un factor integrante $\mu(x,y)$ tal que multiplicándola se vuelve exacta y tiene una solución de la forma $F(x,y) = C$, existe una propiedad matemática que establece lo siguiente: 
Si $\mu(x,y)$ es un factor integrante, entonces la expresión $\mu(x,y) \cdot G(F(x,y))$ también es un factor integrante para cualquier función derivable $G$. Dado que existe una infinidad de funciones $G$ que podemos escoger, se concluye que, de admitir un factor integrante, la ecuación admite una cantidad infinita de ellos. ♾️

**✅ Respuesta correcta:** Un número infinito de factores integrantes.

---

## ❓ Pregunta 5
**📝 Enunciado:** Que una ecuación diferencial $M(x;y)dx+N(x;y)dy=0$ sea exacta significa que:

**💡 Desarrollo:**
La definición formal de una ecuación diferencial exacta es que la expresión diferencial $M(x,y)dx + N(x,y)dy$ corresponde exactamente a la diferencial total ($dF$) de una función potencial $F(x,y)$. 📖
Recordemos que la diferencial total de una función de dos variables $F(x,y)$ se define como:
$$
dF = \frac{\partial F}{\partial x}dx + \frac{\partial F}{\partial y}dy
$$

Al igualar ambas expresiones ($Mdx + Ndy = dF$), se concluye que:
$$
M(x,y) = \frac{\partial F}{\partial x}
$$
$$
N(x,y) = \frac{\partial F}{\partial y}
$$

Por lo tanto, la exactitud implica directamente que $M$ y $N$ provienen de las derivadas parciales de una misma función de dos variables. 🎯

**✅ Respuesta correcta:** Las funciones $M$ y $N$ son las derivadas parciales con respecto a $x$ y a $y$ respectivamente de alguna función de dos variables $F(x;y)$.
