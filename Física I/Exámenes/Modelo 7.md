 📝 Exámenes de Física 1 

# 📄 PARTE 1: Examen Parcial (Tema 2)

## 🔄 Ejercicio 1: Dinámica de Movimiento Circular y Tensión en Varilla

### Enunciado ❓
Dos masas $m_1$ y $m_2$ se encuentran sujetas a los extremos de una varilla que gira sobre el punto $A$. La distancia del punto $A$ a la masa $m_2$ es $L_2 = 1\text{ m}$. Sabiendo que la masa $m_2$ es el doble de la masa $m_1$ ($m_2 = 2m_1$); que la tensión en la varilla en el punto $2$ (asociada a $m_2$) es $4$ veces la tensión en el punto $1$ ($T_2 = 4T_1$); y que todo el sistema rota con la misma velocidad angular $\omega$, calcule la longitud $L_1$.

### Procedimiento y Resolución ✍️
1. **Analizar el diagrama de fuerzas centrípetas para cada masa:**
   * Para la masa $m_1$ situada a una distancia $L_1$ del eje de giro $A$:
     $$T_1 = m_1 \cdot \omega^2 \cdot L_1$$
   * Para la masa $m_2$ situada a una distancia $L_2$ del eje de giro $A$:
     $$T_2 = m_2 \cdot \omega^2 \cdot L_2$$

2. **Plantear las relaciones dadas por el enunciado:**
   * $m_2 = 2m_1$
   * $T_2 = 4T_1$
   * $L_2 = 1\text{ m}$

3. **Sustituir las relaciones en las ecuaciones de fuerza centrípeta:**
   Dividimos la ecuación de $T_2$ entre la de $T_1$:
   $$\frac{T_2}{T_1} = \frac{m_2 \cdot \omega^2 \cdot L_2}{m_1 \cdot \omega^2 \cdot L_1}$$

   Como $\omega$ es la misma para ambas masas, se cancela:
   $$\frac{T_2}{T_1} = \frac{m_2 \cdot L_2}{m_1 \cdot L_1}$$

4. **Reemplazar los valores conocidos:**
   Sabemos que $\frac{T_2}{T_1} = 4$ y $\frac{m_2}{m_1} = 2$:
   $$4 = \frac{2 \cdot (1\text{ m})}{L_1}$$
   $$4 \cdot L_1 = 2$$
   $$L_1 = \frac{2}{4} = 0.5\text{ m}$$

### Resultado Final 🎯
La longitud de la varilla en el tramo $L_1$ es **$0.5\text{ m}$** (o $50\text{ cm}$). 📏✨



## 🏔️ Ejercicio 2: Trabajo y Energía - Lanzamiento Horizontal

### Enunciado ❓
Se lanza horizontalmente una bola de masa $m = 0.1\text{ kg}$ desde una terraza de $10\text{ m}$ de altura, con una velocidad inicial de $1\text{ m/s}$. Calcule mediante consideraciones energéticas:
* a) La velocidad con que la bola golpea el suelo.
* b) La altura a la que se encuentra cuando su velocidad es de $5\text{ m/s}$.
* c) La velocidad que tiene cuando se encuentra a $5\text{ metros}$ de altura.

### Procedimiento y Resolución ✍️
Por conservación de la energía mecánica (asumiendo rozamiento despreciable y $g = 9.8\text{ m/s}^2$):
$$E_{mec(inicial)} = E_{mec(final)}$$
$$\frac{1}{2} m v_0^2 + m g h_0 = \frac{1}{2} m v_f^2 + m g h_f$$
Como la masa $m$ está en todos los términos, se simplifica:
$$\frac{1}{2} v_0^2 + g h_0 = \frac{1}{2} v_f^2 + g h_f$$

#### a) Velocidad con que la bola golpea el suelo ($h_f = 0$):
$$\frac{1}{2} (1)^2 + (9.8)(10) = \frac{1}{2} v_f^2 + 0$$
$$0.5 + 98 = \frac{1}{2} v_f^2$$
$$98.5 = \frac{1}{2} v_f^2 \implies v_f^2 = 197 \implies v_f = \sqrt{197} \approx 14.04\text{ m/s}$$

#### b) Altura a la que se encuentra cuando $v = 5\text{ m/s}$ ($h_f$):
$$\frac{1}{2} (1)^2 + (9.8)(10) = \frac{1}{2} (5)^2 + (9.8) h_f$$
$$98.5 = 12.5 + 9.8 h_f$$
$$98.5 - 12.5 = 9.8 h_f \implies 86 = 9.8 h_f$$
$$h_f = \frac{86}{9.8} \approx 8.78\text{ m}$$

#### c) Velocidad cuando se encuentra a $5\text{ metros}$ de altura ($h_f = 5\text{ m}$):
$$\frac{1}{2} (1)^2 + (9.8)(10) = \frac{1}{2} v_f^2 + (9.8)(5)$$
$$98.5 = \frac{1}{2} v_f^2 + 49$$
$$98.5 - 49 = \frac{1}{2} v_f^2 \implies 49.5 = \frac{1}{2} v_f^2$$
$$v_f^2 = 99 \implies v_f = \sqrt{99} \approx 9.95\text{ m/s}$$

### Resultados Finales 🎯
* **a) Velocidad al golpear el suelo:** $14.04\text{ m/s}$ 🚀
* **b) Altura a $v = 5\text{ m/s}$:** $8.78\text{ m}$ 🏔️
* **c) Velocidad a $5\text{ m}$ de altura:** $9.95\text{ m/s}$ ⚡



## 🚂 Ejercicio 3: Conservación del Momento Lineal - Choque Inelástico

### Enunciado ❓
Un trineo de masa $m_1 = 10\text{ kg}$ se desplaza sobre el hielo a cierta velocidad. Le cae encima un paquete de masa $m_2$. El conjunto continúa moviéndose en la misma dirección pero la velocidad disminuye a $\frac{1}{4}$ de la velocidad original. Calcule la masa del paquete ($m_2$).

### Procedimiento y Resolución ✍️
1. **Plantear la conservación del momento lineal:**
   El choque es completamente inelástico (los cuerpos quedan unidos).
   $$P_{inicial} = P_{final}$$
   $$m_1 \cdot v_1 + m_2 \cdot v_2 = (m_1 + m_2) \cdot v_f$$

2. **Sustituir las condiciones del problema:**
   * El paquete cae encima, por lo que su velocidad horizontal inicial es cero ($v_2 = 0$).
   * La velocidad final del conjunto se reduce a una cuarta parte de la velocidad original del trineo: $v_f = \frac{1}{4} v_1$.
   
   Sustituyendo en la ecuación:
   $$m_1 \cdot v_1 + 0 = (m_1 + m_2) \cdot \left(\frac{1}{4} v_1\right)$$

3. **Resolver algebraicamente:**
   Cancelamos la velocidad $v_1$ en ambos lados de la ecuación:
   $$m_1 = (m_1 + m_2) \cdot \frac{1}{4}$$
   Multiplicamos por 4:
   $$4m_1 = m_1 + m_2$$
   Despejamos la masa del paquete $m_2$:
   $$m_2 = 4m_1 - m_1 = 3m_1$$

4. **Sustituir el valor de $m_1 = 10\text{ kg}$:**
   $$m_2 = 3 \times 10\text{ kg} = 30\text{ kg}$$

### Resultado Final 🎯
La masa del paquete es **$30\text{ kg}$**. 📦✨




# 📄 PARTE 2: Examen Parcial (Tema 1 - Gira Verticalmente)

## 🎡 Ejercicio 1: Dinámica de Movimiento Circular Vertical

### Enunciado ❓
Un cilindro de masa $m$ puede deslizar libremente y sin roce insertado en una varilla de longitud $R$, que tiene un tope en su extremo. Se hace girar la varilla con una frecuencia de $60\text{ rpm}$ en un plano vertical. Sabiendo que la fuerza que ejerce el tope sobre el cilindro en los puntos $A$ y $B$ de la figura es $F_A = 50\text{ N}$ y $F_B = 95\text{ N}$, calcular:
* a) La masa $m$ del cilindro.
* b) La longitud $R$ de la varilla.

### Procedimiento y Resolución ✍️
1. **Analizar los datos y frecuencias:**
   * Frecuencia: $f = 60\text{ rpm} = \frac{60}{60} = 1\text{ Hz}$
   * Velocidad angular: $\omega = 2 \pi f = 2 \pi (1) = 2\pi \approx 6.283\text{ rad/s}$
   * En el punto superior ($A$), el cilindro tiende a alejarse hacia el tope (hacia afuera), por lo que la fuerza centrípeta y el peso actúan conjuntamente o el tope equilibra el exceso. Planteando la ecuación de fuerzas radiales en A:
     $$F_A + P = m \cdot \omega^2 \cdot R \implies 50 + m \cdot g = m \cdot \omega^2 \cdot R$$
   * En el punto inferior ($B$), el cilindro se encuentra en la posición más baja, donde la fuerza del tope $F_B$ actúa hacia arriba contrarrestando el peso y sumándose a la fuerza centrípeta:
     $$F_B - P = m \cdot \omega^2 \cdot R \implies 95 - m \cdot g = m \cdot \omega^2 \cdot R$$

2. **Relacionar ambas ecuaciones:**
   Dado que el término centrífugo $m \cdot \omega^2 \cdot R$ es el mismo en ambos puntos para un radio constante:
   $$50 + m \cdot g = 95 - m \cdot g$$
   $$2m \cdot g = 95 - 50 = 45$$
   Tomando $g = 9.8\text{ m/s}^2$ (o $10\text{ m/s}^2$ para simplificar cálculos académicos estándar):
   Si usamos $g = 10\text{ m/s}^2$:
   $$2m \cdot 10 = 45 \implies 20m = 45 \implies m = \frac{45}{20} = 2.25\text{ kg}$$
   *(Si usamos $g = 9.8\text{ m/s}^2$: $m = \frac{45}{19.6} \approx 2.296\text{ kg}$).*

3. **b) Calcular la longitud $R$ de la varilla:**
   Sustituimos el valor de $m$ en la ecuación del punto B ($95 - m \cdot g = m \cdot \omega^2 \cdot R$):
   $$95 - (2.25 \times 10) = 2.25 \cdot (6.283)^2 \cdot R$$
   $$95 - 22.5 = 2.25 \cdot 39.478 \cdot R$$
   $$72.5 = 88.825 \cdot R$$
   $$R = \frac{72.5}{88.825} \approx 0.816\text{ m}$$

### Resultados Finales 🎯
* **a) Masa del cilindro:** $2.25\text{ kg}$ ⚖️
* **b) Longitud de la varilla:** $0.816\text{ m}$ (o $81.6\text{ cm}$) 📏



## 🏔️ Ejercicio 2: Trabajo y Energía - Tiro Vertical

### Enunciado ❓
Se lanza verticalmente hacia arriba una pelota de masa $0.1\text{ kg}$ con una velocidad inicial de $10\text{ m/seg}$. Calcule mediante consideraciones energéticas:
* a) La altura máxima a la que llega la pelota.
* b) La velocidad de la pelota cuando se encuentra a $2\text{ metros}$ de altura.
* c) La altura de la pelota cuando su velocidad es de $5\text{ m/seg}$.

### Procedimiento y Resolución ✍️
Aplicamos conservación de la energía mecánica (tomando $y_0 = 0$ en el suelo, $v_0 = 10\text{ m/s}$, $g = 9.8\text{ m/s}^2$):
$$E_{mec} = \frac{1}{2} m v_0^2 + m g y_0 = \frac{1}{2}(0.1)(10)^2 + 0 = 0.5(100) = 5\text{ J}$$

#### a) Altura máxima ($v = 0$):
$$E_{mec} = m g y_{max} \implies 5 = (0.1)(9.8) y_{max}$$
$$5 = 0.98 y_{max} \implies y_{max} = \frac{5}{0.98} \approx 5.10\text{ m}$$

#### b) Velocidad a $2\text{ metros}$ de altura ($y = 2\text{ m}$):
$$E_{mec} = \frac{1}{2} m v^2 + m g y$$
$$5 = \frac{1}{2}(0.1) v^2 + (0.1)(9.8)(2)$$
$$5 = 0.05 v^2 + 1.96$$
$$5 - 1.96 = 0.05 v^2 \implies 3.04 = 0.05 v^2$$
$$v^2 = \frac{3.04}{0.05} = 60.8 \implies v = \sqrt{60.8} \approx 7.80\text{ m/s}$$

#### c) Altura cuando la velocidad es $v = 5\text{ m/s}$ ($y$):
$$5 = \frac{1}{2}(0.1)(5)^2 + (0.1)(9.8) y$$
$$5 = 0.05(25) + 0.98 y$$
$$5 = 1.25 + 0.98 y$$
$$5 - 1.25 = 0.98 y \implies 3.75 = 0.98 y$$
$$y = \frac{3.75}{0.98} \approx 3.83\text{ m}$$

### Resultados Finales 🎯
* **a) Altura máxima:** $5.10\text{ m}$ 🏔️
* **b) Velocidad a $2\text{ m}$ de altura:** $7.80\text{ m/s}$ ⚡
* **c) Altura a $v = 5\text{ m/s}$:** $3.83\text{ m}$ 📈



## 🚂 Ejercicio 3: Conservación del Momento Lineal - Colisión Inelástica de Vagones

### Enunciado ❓
Un vagón de ferrocarril de masa $M_1 = 1000\text{ kg}$ se desplaza sobre un riel hacia la derecha a cierta velocidad. Golpea a un segundo vagón de masa $M_2$ que se encuentra en reposo. Ambos vagones quedan enganchados. Determinar la masa del segundo vagón si el conjunto continúa moviéndose en la misma dirección pero con una velocidad igual a la mitad de la velocidad que traía el primer vagón.

### Procedimiento y Resolución ✍️
1. **Plantear la conservación del momento lineal:**
   $$P_{inicial} = P_{final}$$
   $$M_1 \cdot v_1 + M_2 \cdot v_2 = (M_1 + M_2) \cdot v_f$$

2. **Sustituir los datos del problema:**
   * $M_1 = 1000\text{ kg}$
   * $v_2 = 0$ (el segundo vagón está en reposo)
   * $v_f = \frac{1}{2} v_1$ (la velocidad final es la mitad de la original)

   Sustituyendo:
   $$1000 \cdot v_1 + 0 = (1000 + M_2) \cdot \left(\frac{1}{2} v_1\right)$$

3. **Resolver algebraicamente:**
   Cancelamos $v_1$ en ambos miembros:
   $$1000 = (1000 + M_2) \cdot \frac{1}{2}$$
   Multiplicamos por 2:
   $$2000 = 1000 + M_2$$
   Despejamos la masa $M_2$:
   $$M_2 = 2000 - 1000 = 1000\text{ kg}$$

### Resultado Final 🎯
La masa del segundo vagón ($M_2$) es **$1000\text{ kg}$**. 🚂✨


*Documento generado automáticamente para estudio y práctica de Física 1.* ✨
