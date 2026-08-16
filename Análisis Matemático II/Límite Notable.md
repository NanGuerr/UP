# 🥪 Límite Notable con el Teorema del Sándwich 

En esta guía explicamos paso a paso la demostración geométrica para hallar el límite notable:

$$\lim_{\theta \to 0} \frac{\sin\theta}{\theta} = 1$$

---

## ⭕ 1. Construcción Geométrica en el Círculo Unitario

Trabajamos sobre el **círculo unitario** (radio $r = 1$) en el intervalo para ángulos $-\frac{\pi}{2} < \theta < \frac{\pi}{2}$.

Consideramos tres áreas concéntricas/superpuestas en la figura:

1. **🔴 Triángulo Menor (Interior):**
   * Base = $1$
   * Altura = $|\sin\theta|$
   * **Área:** $\frac{1}{2} \cdot 1 \cdot |\sin\theta| = \frac{|\sin\theta|}{2}$

2. **🍕 Sector Circular (Intermedio):**
   * Ángulo central = $|\theta|$
   * Radio = $1$
   * **Área:** $\frac{|\theta|}{2\pi} \cdot \pi (1)^2 = \frac{|\theta|}{2}$

3. **🔵 Triángulo Mayor (Exterior):**
   * Base = $1$
   * Altura = $\text{opuesto} = |\tan\theta|$  *(ya que $\tan\theta = \frac{\text{opuesto}}{\text{adyacente}} = \frac{\text{opuesto}}{1}$)*
   * **Área:** $\frac{1}{2} \cdot 1 \cdot |\tan\theta| = \frac{|\tan\theta|}{2}$

---

## ⚖️ 2. Desigualdad Geométrica (El "Sándwich")

Observando el gráfico, el área del triángulo menor está dentro del sector circular, y este a su vez dentro del triángulo mayor:

$$\text{Área Triángulo Menor} \le \text{Área Sector Circular} \le \text{Área Triángulo Mayor}$$

$$\frac{|\sin\theta|}{2} \le \frac{|\theta|}{2} \le \frac{|\tan\theta|}{2}$$

---

## 🧮 3. Manipulación Algebraica

### 🔹 Paso A: Multiplicar por 2
Multiplicamos toda la desigualdad por $2$ para simplificar denominadores:

$$|\sin\theta| \le |\theta| \le |\tan\theta|$$

### 🔹 Paso B: Reescribir la Tangente
Expresamos $|\tan\theta|$ como $\frac{|\sin\theta|}{|\cos\theta|}$:

$$|\sin\theta| \le |\theta| \le \frac{|\sin\theta|}{|\cos\theta|}$$

### 🔹 Paso C: Dividir entre $|\sin\theta|$
Dividimos todos los términos entre $|\sin\theta|$ (asumiendo $\theta \neq 0$):

$$\frac{|\sin\theta|}{|\sin\theta|} \le \frac{|\theta|}{|\sin\theta|} \le \frac{|\sin\theta|}{|\cos\theta| \cdot |\sin\theta|}$$

$$1 \le \frac{|\theta|}{|\sin\theta|} \le \frac{1}{|\cos\theta|}$$

### 🔹 Paso D: Invertir las Fracciones
Al tomar el recíproco de todos los términos, **el sentido de las desigualdades se invierte**:

$$1 \ge \frac{|\sin\theta|}{|\theta|} \ge |\cos\theta|$$

*(O escrito de menor a mayor: $\cos\theta \le \frac{\sin\theta}{\theta} \le 1$ para $-\frac{\pi}{2} < \theta < \frac{\pi}{2}$)*.

---

## ⏳ 4. Aplicación del Límite (Teorema del Encajonamiento)

Aplicamos el límite cuando $\theta \to 0$ en los extremos de la desigualdad:

$$\lim_{\theta \to 0} (1) \ge \lim_{\theta \to 0} \frac{\sin\theta}{\theta} \ge \lim_{\theta \to 0} \cos\theta$$

Evaluando los límites conocidos:
* $\lim_{\theta \to 0} (1) = 1$
* $\lim_{\theta \to 0} \cos\theta = \cos(0) = 1$

Sustituyendo estos valores:

$$1 \ge \lim_{\theta \to 0} \frac{\sin\theta}{\theta} \ge 1$$

---

## 🎉 5. Conclusión

Por el **Teorema del Sándwich** (o del Apremio), la función $\frac{\sin\theta}{\theta}$ queda "atrapada" entre $1$ y $1$:

$${\lim_{\theta \to 0} \frac{\sin\theta}{\theta} = 1}$$

¡Q.E.D. (Queda Demostrado)! 🚀
