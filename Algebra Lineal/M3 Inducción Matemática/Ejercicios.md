# 📚 Ejercicios de Inducción Matemática ✏️

Contiene seis ejercicios distintos de inducción matemática, con la demostración formal paso a paso para cada uno de ellos siguiendo rigurosamente la metodología de cuatro pasos explicada en el apunte de la materia:



## Ejercicio 1:
$2 + 4 + 6 + \dots + 2n = n(n+1)$ para todo $n \in \mathbb{N}$

* **Paso 1: Base inductiva ($n=1$):**
  Miembro izquierdo (primer término): $2(1) = 2$
  Miembro derecho: $1(1+1) = 1(2) = 2$
  Como $2 = 2$, la base inductiva es verdadera. ✅

* **Paso 2: Hipótesis inductiva ($n=k$):**
  Supongamos que la fórmula se cumple para un entero $k \ge 1$:
  $$2 + 4 + 6 + \dots + 2k = k(k+1)$$ 💡

* **Paso 3: Tesis inductiva ($n=k+1$):**
  Debemos demostrar que la fórmula se cumple para $k+1$:
  $$2 + 4 + 6 + \dots + 2k + 2(k+1) = (k+1)(k+2)$$ 🎯

* **Paso 4: Demostración:**
  Partimos del miembro izquierdo de la tesis y asociamos usando la hipótesis inductiva:
  $$\underbrace{2 + 4 + 6 + \dots + 2k}_{\text{Hipótesis Inductiva}} + 2(k+1)$$
  Sustituimos la hipótesis:
  $$= k(k+1) + 2(k+1)$$
  Extraemos factor común $(k+1)$:
  $$= (k+1)(k+2)$$
  Llegamos al miembro derecho de la tesis. Queda demostrado. 🎉



## Ejercicio 2:
$2 + 5 + 8 + \dots + (3n-1) = \frac{n(3n+1)}{2}$ para todo $n \in \mathbb{N}$

* **Paso 1: Base inductiva ($n=1$):**
  Miembro izquierdo: $3(1)-1 = 2$
  Miembro derecho: $\frac{1(3(1)+1)}{2} = \frac{4}{2} = 2$
  Como $2 = 2$, la base es verdadera. ✅

* **Paso 2: Hipótesis inductiva ($n=k$):**
  Supongamos que la fórmula es válida para $k$:
  $$2 + 5 + 8 + \dots + (3k-1) = \frac{k(3k+1)}{2}$$ 💡

* **Paso 3: Tesis inductiva ($n=k+1$):**
  Queremos probar que:
  $$2 + 5 + 8 + \dots + (3k-1) + [3(k+1)-1] = \frac{(k+1)[3(k+1)+1]}{2} \implies \frac{(k+1)(3k+4)}{2}$$ 🎯

* **Paso 4: Demostración:**
  Partimos del miembro izquierdo de la tesis y sustituimos la hipótesis inductiva:
  $$\underbrace{2 + 5 + 8 + \dots + (3k-1)}_{\text{Hipótesis Inductiva}} + (3k+2)$$
  $$= \frac{k(3k+1)}{2} + (3k+2)$$
  Colocamos todo bajo un común denominador 2:
  $$= \frac{k(3k+1) + 2(3k+2)}{2}$$
  $$= \frac{3k^2 + k + 6k + 4}{2} = \frac{3k^2 + 7k + 4}{2}$$
  Factorizando la ecuación cuadrática $3k^2 + 7k + 4$, obtenemos $(k+1)(3k+4)$. Por lo tanto:
  $$= \frac{(k+1)(3k+4)}{2}$$
  Llegamos al miembro derecho de la tesis. Queda demostrado. 🎉



## Ejercicio 3:
$1 + 3 + 5 + \dots + (2n-1) = n^2$ para todo $n \in \mathbb{N}$

* **Paso 1: Base inductiva ($n=1$):**
  Miembro izquierdo: $2(1)-1 = 1$
  Miembro derecho: $1^2 = 1$
  Como $1 = 1$, la base es verdadera. ✅

* **Paso 2: Hipótesis inductiva ($n=k$):**
  Supongamos válido para $k$:
  $$1 + 3 + 5 + \dots + (2k-1) = k^2$$ 💡

* **Paso 3: Tesis inductiva ($n=k+1$):**
  Queremos probar que:
  $$1 + 3 + 5 + \dots + (2k-1) + [2(k+1)-1] = (k+1)^2 \implies 1 + 3 + \dots + (2k-1) + (2k+1) = (k+1)^2$$ 🎯

* **Paso 4: Demostración:**
  Partimos del miembro izquierdo de la tesis y aplicamos la hipótesis inductiva:
  $$\underbrace{1 + 3 + 5 + \dots + (2k-1)}_{\text{Hipótesis Inductiva}} + (2k+1)$$
  $$= k^2 + 2k + 1$$
  Por el trinomio cuadrado perfecto sabemos que:
  $$= (k+1)^2$$
  Llegamos al miembro derecho de la tesis. Queda demostrado. 🎉



## Ejercicio 4:
$\left(\frac{1}{2}\right)^n < \frac{1}{n}$ para todo $n \in \mathbb{N}$

* **Paso 1: Base inductiva ($n=1$):**
  Miembro izquierdo: $\left(\frac{1}{2}\right)^1 = 1/2$
  Miembro derecho: $1/1 = 1$
  Como $1/2 < 1$, la base es verdadera. ✅

* **Paso 2: Hipótesis inductiva ($n=k$):**
  Supongamos que para un entero $k \ge 1$:
  $$\left(\frac{1}{2}\right)^k < \frac{1}{k}$$ 💡

* **Paso 3: Tesis inductiva ($n=k+1$):**
  Queremos demostrar que:
  $$\left(\frac{1}{2}\right)^{k+1} < \frac{1}{k+1}$$ 🎯

* **Paso 4: Demostración:**
  Partimos de la izquierda y aplicamos propiedades algebraicas y la hipótesis de inducción:
  $$\left(\frac{1}{2}\right)^{k+1} = \left(\frac{1}{2}\right)^k \cdot \frac{1}{2}$$
  Por hipótesis inductiva, como $\left(\frac{1}{2}\right)^k < \frac{1}{k}$:
  $$\left(\frac{1}{2}\right)^{k+1} < \frac{1}{k} \cdot \frac{1}{2} = \frac{1}{2k}$$
  Ahora, dado que $k \ge 1$, sabemos que $k + 1 \le 2k$ (sumar 1 es menor o igual que duplicar $k$). Al ser ambos términos positivos, invertir la desigualdad cambia su sentido:
  $$\frac{1}{2k} \le \frac{1}{k+1}$$
  Encadenando ambas desigualdades obtenemos:
  $$\left(\frac{1}{2}\right)^{k+1} < \frac{1}{2k} \le \frac{1}{k+1} \implies \left(\frac{1}{2}\right)^{k+1} < \frac{1}{k+1}$$
  Queda demostrado. 🎉



## Ejercicio 5:
$2^n < n!$ para todo $n > 4$ (con $n! = 1 \cdot 2 \cdots n$)

* **Paso 1: Base inductiva ($n=5$):**
  Miembro izquierdo: $2^5 = 32$
  Miembro derecho: $5! = 120$
  Como $32 < 120$, se cumple para el primer caso entero ($n=5$). ✅

* **Paso 2: Hipótesis inductiva ($n=k$ con $k \ge 5$):**
  Supongamos que es cierta para $k$:
  $$2^k < k!$$ 💡

* **Paso 3: Tesis inductiva ($n=k+1$):**
  Queremos probar que:
  $$2^{k+1} < (k+1)!$$ 🎯

* **Paso 4: Demostración:**
  Partimos del miembro izquierdo y aplicamos la hipótesis inductiva:
  $$2^{k+1} = 2 \cdot 2^k < 2 \cdot k!$$
  Como asumimos que $k \ge 5$, es evidente que $2 < k+1$. Multiplicando ambos lados por el valor positivo $k!$ obtenemos:
  $$2 \cdot k! < (k+1) \cdot k!$$
  Por definición de factorial, $(k+1) \cdot k! = (k+1)!$. Por transitividad:
  $$2^{k+1} < 2 \cdot k! < (k+1)! \implies 2^{k+1} < (k+1)!$$
  Queda demostrado. 🎉



## Ejercicio 6:
$1 + 2 + 4 + 8 + \dots + 2^n = 2^{n+1} - 1$ para todo $n \in \mathbb{N}_0$

* **Paso 1: Base inductiva ($n=1$):**
  Miembro izquierdo: $1 + 2^1 = 3$ (la suma de potencias de 2 desde $2^0$ hasta $2^1$)
  Miembro derecho: $2^{1+1} - 1 = 4 - 1 = 3$
  Como $3 = 3$, la base inductiva es verdadera. ✅

* **Paso 2: Hipótesis inductiva ($n=k$):**
  Supongamos que se cumple para $k$:
  $$1 + 2 + 4 + \dots + 2^k = 2^{k+1} - 1$$ 💡

* **Paso 3: Tesis inductiva ($n=k+1$):**
  Queremos probar que:
  $$1 + 2 + 4 + \dots + 2^k + 2^{k+1} = 2^{k+2} - 1$$ 🎯

* **Paso 4: Demostración:**
  Partimos de la izquierda y usamos la hipótesis inductiva:
  $$\underbrace{1 + 2 + 4 + \dots + 2^k}_{\text{Hipótesis Inductiva}} + 2^{k+1}$$
  $$= (2^{k+1} - 1) + 2^{k+1}$$
  Asociamos los términos semejantes:
  $$= 2^{k+1} + 2^{k+1} - 1$$
  $$= 2 \cdot (2^{k+1}) - 1$$
  $$= 2^{k+2} - 1$$
  Llegamos al miembro derecho de la tesis. Queda demostrado. 🎉

