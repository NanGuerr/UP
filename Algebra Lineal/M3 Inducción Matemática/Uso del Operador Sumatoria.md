# 🧮 Uso del Operador Sumatoria ($\sum$)

Saber cuándo y cómo usar el operador sumatoria ($\sum$) en la inducción matemática depende de la forma del problema y de un mecanismo algebraico clave en el Paso 4 (Demostración). ⚙️



## 1. ❓ ¿Cuándo se usa la sumatoria?

Usas el símbolo de sumatoria $\sum$ cuando el ejercicio consiste en demostrar la igualdad de una suma iterativa de términos (una serie) frente a una **fórmula cerrada** (un resultado directo). 🎯

* **Suma expandida:** 
  $$1 + 2 + 3 + \dots + n = \frac{n(n+1)}{2}$$

* **Suma compacta (con sumatoria):** 
  $$\sum_{j=1}^{n} j = \frac{n(n+1)}{2}$$

Ambas formas dicen lo mismo, pero la notación $\sum$ te permite manipular sumas extensas con mucho más rigor algebraico sin depender de los tres puntos ($\dots$). 💡



## 2. 📝 ¿Cómo se usa en cada paso de la inducción?

Supongamos que queremos probar $\sum_{j=1}^{n} a_j = F(n)$, donde $a_j$ es la regla del término y $F(n)$ es la fórmula resultado.

### 🔹 Paso 1: Base Inductiva ($n = 1$) 🏁
Reemplazas $n=1$ como límite superior de la sumatoria. Esto reduce la sumatoria a evaluar únicamente el primer término ($j=1$):

$$\sum_{j=1}^{1} a_j = a_1$$

Luego verificas que $a_1 = F(1)$. ✅



### 🔹 Paso 2: Hipótesis Inductiva ($n = k$) 💡
Escribes la sumatoria hasta el término $k$ y asumes que es igual a la fórmula:

$$\sum_{j=1}^{k} a_j = F(k) \quad \text{(Tu herramienta de trabajo)}$$



### 🔹 Paso 3: Tesis Inductiva ($n = k + 1$) 🎯
Planteas la sumatoria extendida hasta $k+1$ y la fórmula evaluada en $k+1$:

$$\sum_{j=1}^{k+1} a_j = F(k+1) \quad \text{(Tu meta)}$$



### 🔹 Paso 4: Demostración (El truco principal) 🔑
El secreto para resolver la sumatoria en la demostración es **separar el último término** de la sumatoria ($j = k+1$):

1. **Descompones la sumatoria:**
   $$\sum_{j=1}^{k+1} a_j = \left( \sum_{j=1}^{k} a_j \right) + a_{k+1}$$

2. **Sustituyes la Hipótesis Inductiva:**  
   Reemplazas el bloque $\sum_{j=1}^{k} a_j$ por su equivalente $F(k)$ según el Paso 2:
   $$= F(k) + a_{k+1}$$

3. **Operas algebraicamente:**  
   Sumas los términos (usualmente buscando un denominador común o factorizando) hasta llegar exactamente a $F(k+1)$. 🛠️



## ⚡ Ejemplo rápido: Suma de Cuadrados

Demostrar que:

$$\sum_{j=1}^{n} j^2 = \frac{n(n+1)(2n+1)}{6}$$

En el Paso 4, comienzas con el miembro izquierdo de la tesis: $\sum_{j=1}^{k+1} j^2$.

1. **Separas el último término ($j = k+1$):**
   $$\sum_{j=1}^{k+1} j^2 = \left(\sum_{j=1}^{k} j^2\right) + (k+1)^2$$

2. **Sustituyes por la hipótesis:**
   $$= \frac{k(k+1)(2k+1)}{6} + (k+1)^2$$

3. **Operación final:**  
   De ahí en adelante, solo factorizas y agrupas hasta que te quede:
   $$\frac{(k+1)((k+1)+1)(2(k+1)+1)}{6}$$

🎉 ¡La demostración queda completada!


