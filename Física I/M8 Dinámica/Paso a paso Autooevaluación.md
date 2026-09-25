# 📝 Paso a paso: Autoevaluación de Dinámica

Fundamentada en los principios de las Leyes de Newton y las ecuaciones de la dinámica. 

Adicionalmente, he generado y publicado el informe formal en PDF titulado **`resolucion-autoevaluacion-dinamica.pdf`**, el cual ya se encuentra disponible para su descarga en tu panel de **Estudio**.

---

## ⏱️ Pregunta 1: Aceleración y Velocidad bajo Fuerza Constante

* **Enunciado:** La velocidad que adquiere luego de $5\text{ s}$ un cuerpo de $M = 5\text{ kg}$ inicialmente en reposo al que se le aplica una fuerza de $10\text{ N}$ es.
* **Pasos de resolución:**
  1. **🚀 Aceleración del sistema:** Aplicamos la **Segunda Ley de Newton** ($\sum F = M \cdot a$) para hallar la aceleración constante que experimenta la masa:
     $$a = \frac{F}{M} = \frac{10\text{ N}}{5\text{ kg}} = \mathbf{2\text{ m/s}^2}$$
  2. **📈 Velocidad adquirida (MRUV):** Empleamos la ecuación horaria de la velocidad considerando que el cuerpo parte del reposo ($v_0 = 0\text{ m/s}$):
     $$v(t) = v_0 + a \cdot t = 0 + (2\text{ m/s}^2) \cdot (5\text{ s}) = \mathbf{10\text{ m/s}}$$
* **Respuesta Correcta:** **Opción A ($10\text{ m/s}$)**.

---

## 📐 Pregunta 2: Cuerpos Vinculados en Plano Inclinado a Velocidad Constante

* **Enunciado:** En el sistema, el cuerpo A ($m_A = 60\text{ kg}$) asciende por un plano inclinado a $30^\circ$ sin rozamiento. El cuerpo B ($m_B = 40\text{ kg}$) se encuentra sobre una superficie horizontal ($g = 10\text{ m/s}^2$). Hallar la fuerza $F$ aplicada sobre B para que el sistema se mueva con velocidad constante y la tensión $T$ de la cuerda.
* **Pasos de resolución:**
  1. **⚖️ Condición de velocidad constante:** Al ser la velocidad constante, la aceleración del sistema es nula ($a = 0\text{ m/s}^2$). Por la Primera Ley de Newton, la suma de fuerzas en la dirección del movimiento para cada cuerpo debe ser igual a cero ($\sum F = 0$).
  2. **🏔️ Análisis del Cuerpo A (sobre el plano inclinado $\alpha = 30^\circ$):**
     * Descomponemos la fuerza peso paralela a la rampa:
       $$P_{Ax} = m_A \cdot g \cdot \sin(30^\circ) = 60\text{ kg} \cdot 10\text{ m/s}^2 \cdot 0.5 = \mathbf{300\text{ N}}$$
     * Planteamos el equilibrio sobre el plano inclinado (sentido ascendente positivo):
       $$\sum F_{Ax} = T - P_{Ax} = m_A \cdot a = 0 \implies \mathbf{T = 300\text{ N}}$$
  3. **📦 Análisis del Cuerpo B (superficie horizontal):**
     * Planteamos el equilibrio horizontal entre la fuerza ejercida $F$ y la tensión de la cuerda $T$:
       $$\sum F_{Bx} = F - T = m_B \cdot a = 0 \implies \mathbf{F = T = 300\text{ N}}$$
* **Respuesta Correcta:** **Opción B ($F = 300\text{ N}, T = 300\text{ N}$)**.

---

## 🛗 Pregunta 3: Balanza en un Ascensor Acelerado hacia Abajo (Peso Aparente)

* **Enunciado:** Un pasajero viaja en ascensor parado sobre una balanza. El ascensor baja con una aceleración $a$. Si con el ascensor detenido la balanza marca $P$, con el ascensor bajando marcará.
* **Pasos de resolución:**
  1. **⚖️ Concepto de peso aparente:** La balanza no mide el peso gravitatorio real ($P = m \cdot g$), sino la fuerza normal $N$ que ejerce su superficie sobre los pies del pasajero.
  2. **⬇️ Segunda Ley de Newton (eje vertical hacia abajo positivo):**
     * Fuerzas actuantes: Peso real $P = m \cdot g$ (hacia abajo) y Normal $N$ (hacia arriba).
     * Ecuación de movimiento:
       $$\sum F_y = m \cdot g - N = m \cdot a$$
  3. **🔍 Despeje del peso aparente ($N$):**
     $$N = m \cdot g - m \cdot a = \mathbf{P - m \cdot a}$$
     Como el término $m \cdot a$ es positivo, la fuerza normal resultante es estrictamente menor que el peso $P$ registrado en reposo.
* **Respuesta Correcta:** **Opción B (Menos que P)**.
