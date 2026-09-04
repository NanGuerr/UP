# 📝 Examen de Física - Resolución Detallada y Procedimientos 🚀


## ⚖️ Pregunta 1: Medición Experimental y Propagación de Errores en un Prisma

### Enunciado ❓
Bravario, "en sus años mozos" de estudiante de corte y confección, midió 4 veces con una regla escolar los tres lados de un prisma recto de plata ($\text{densidad} = 10.5 \text{ g/cm}^3$):
* Lado 1: $\{2.12, 2.13, 2.13, 2.12\} \text{ en cm}$
* Lado 2: $\{7.33, 7.32, 7.32, 7.35\} \text{ en cm}$
* Lado 3: $\{6.33, 6.34, 6.32, 6.31\} \text{ en cm}$

Dar una correcta expresión para el peso del mismo.

### Procedimiento y Resolución ✍️
1. **Calcular el valor promedio ($\bar{L}$) de cada lado:**
   * **Lado 1:** 
     $$\bar{L}_1 = \frac{2.12 + 2.13 + 2.13 + 2.12}{4} = \frac{8.50}{4} = 2.125 \text{ cm}$$
   * **Lado 2:** 
     $$\bar{L}_2 = \frac{7.33 + 7.32 + 7.32 + 7.35}{4} = \frac{29.32}{4} = 7.33 \text{ cm}$$
   * **Lado 3:** 
     $$\bar{L}_3 = \frac{6.33 + 6.34 + 6.32 + 6.31}{4} = \frac{25.30}{4} = 6.325 \text{ cm}$$

2. **Calcular el volumen promedio del prisma ($V$):**
   El volumen de un prisma rectangular se calcula como el producto de sus tres dimensiones:
   $$V = L_1 \times L_2 \times L_3$$
   $$V = (2.125) \times (7.33) \times (6.325) \approx 98.577 \text{ cm}^3$$

3. **Calcular la masa (o peso físico) del prisma:**
   Usando la definición de densidad ($\delta = \frac{m}{V}$), despejamos la masa $m$:
   $$m = \delta \times V$$
   $$m = 10.5 \text{ g/cm}^3 \times 98.577 \text{ cm}^3 \approx 1035.06 \text{ g}$$

### Resultado Final 🎯
La expresión estimada para el peso (masa) del prisma de plata es de aproximadamente **$1035.06 \text{ g}$** (o $1.035 \text{ kg}$), considerando los valores medios de las mediciones experimentales. 📏✨



## 🎯 Pregunta 2: Choque Inelástico y Conservación de la Energía

### Enunciado ❓
Bravario dispara una bala de Magnum 357 de $10 \text{ g}$ que se mueve horizontalmente a $400 \text{ m/s}$ se incrusta en un bloque de $5 \text{ kg}$ que se halla en reposo, suspendido de una cuerda inextensible de masa despreciable de $50 \text{ cm}$ de largo. 
Determinar con qué rapidez se moverá el sistema bloque + proyectil incrustado, luego del choque. Hallar también hasta qué altura máxima se elevará el conjunto.

### Procedimiento y Resolución ✍️
1. **Identificar los datos del problema:**
   * Masa de la bala: $m_1 = 10 \text{ g} = 0.01 \text{ kg}$
   * Velocidad inicial de la bala: $v_1 = 400 \text{ m/s}$
   * Masa del bloque: $m_2 = 5 \text{ kg}$
   * Velocidad inicial del bloque: $v_2 = 0 \text{ m/s}$
   * Longitud de la cuerda: $L = 50 \text{ cm} = 0.5 \text{ m}$

2. **Aplicar la Conservación del Momento Lineal (para el choque inelástico):**
   Durante el impacto, la cantidad de movimiento del sistema se conserva:
   $$m_1 v_1 + m_2 v_2 = (m_1 + m_2) v_f$$
   Sustituimos los valores:
   $$(0.01 \text{ kg})(400 \text{ m/s}) + (5 \text{ kg})(0) = (0.01 + 5) v_f$$
   $$4 = (5.01) v_f$$
   $$v_f = \frac{4}{5.01} \approx 0.798 \text{ m/s}$$

3. **Aplicar la Conservación de la Energía Mecánica (después del choque):**
   Una vez que la bala está incrustada, la energía cinética inicial del conjunto se transforma íntegramente en energía potencial gravitatoria en el punto de altura máxima ($h_{max}$):
   $$\frac{1}{2} (m_1 + m_2) v_f^2 = (m_1 + m_2) g h_{max}$$
   Simplificamos las masas:
   $$\frac{1}{2} v_f^2 = g h_{max}$$
   Despejamos la altura máxima $h_{max}$ (asumiendo $g = 9.8 \text{ m/s}^2$):
   $$h_{max} = \frac{v_f^2}{2g} = \frac{(0.798)^2}{2 \times 9.8} = \frac{0.637}{19.6} \approx 0.0325 \text{ m} = 3.25 \text{ cm}$$

### Resultados Finales 🎯
* **Rapidez del sistema post-choque:** $v_f \approx 0.798 \text{ m/s}$ 🚀
* **Altura máxima alcanzada:** $h_{max} \approx 3.25 \text{ cm}$ 📈



## 🛰️ Pregunta 3: Satélites Geoestacionarios de Bravario

### Enunciado ❓
Bravario, en sus tiempos mozos de estudiante de ingeniería aeroespacial (antes de dedicarse definitivamente a corte y confección), trabajaba en la Comisión de Investigaciones Espaciales de Cracovia. Se ocupaba de los satélites geoestacionarios, que están siempre fijos en la vertical respecto a un cierto punto de la Tierra (por ejemplo sobre el ecuador, acompañando el giro de la Tierra).
¿A qué altura se encuentran los satélites geoestacionarios estudiados por Bravario?
* Radio y masa de la Tierra: $R_T = 6.360 \text{ km}$, $M_T = 6 \times 10^{24} \text{ kg}$

### Procedimiento y Resolución ✍️
1. **Analizar las condiciones de un satélite geoestacionario:**
   * El periodo orbital ($T$) del satélite debe ser exactamente igual al periodo de rotación de la Tierra sobre su propio eje: 
     $$T = 24 \text{ horas} = 24 \times 3600 \text{ s} = 86400 \text{ s}$$
   * La fuerza gravitacional actúa como la fuerza centrípeta que mantiene al satélite en órbita circular:
     $$F_g = F_c \implies \frac{G M_T m}{r^2} = m \omega^2 r = m \left(\frac{2\pi}{T}\right)^2 r$$

2. **Despejar el radio orbital total ($r$):**
   $$r^3 = \frac{G M_T T^2}{4\pi^2}$$
   Donde:
   * $G = 6.674 \times 10^{-11} \text{ N}\cdot\text{m}^2/\text{kg}^2$ (Constante de gravitación universal)
   * $M_T = 6 \times 10^{24} \text{ kg}$
   * $T = 86400 \text{ s}$

   Sustituimos los valores numéricos:
   $$r^3 = \frac{(6.674 \times 10^{-11})(6 \times 10^{24})(86400)^2}{4 \pi^2}$$
   $$r^3 = \frac{(6.674 \times 10^{-11})(6 \times 10^{24})(7.46496 \times 10^9)}{39.4784}$$
   $$r^3 = \frac{2.989 \times 10^{24}}{39.4784} \approx 7.571 \times 10^{22} \text{ m}^3$$
   Calculamos la raíz cúbica:
   $$r = \sqrt[3]{7.571 \times 10^{22}} \approx 42,300,000 \text{ m} = 42,300 \text{ km}$$

3. **Calcular la altura sobre la superficie terrestre ($h$):**
   Sabemos que $r = R_T + h$, por lo tanto:
   $$h = r - R_T = 42,300 \text{ km} - 6,360 \text{ km} = 35,940 \text{ km}$$

### Resultado Final 🎯
Los satélites geoestacionarios se encuentran a una altura de **$35,940 \text{ km}$** sobre la superficie de la Tierra. 🌍🛰️



## 🎢 Pregunta 4: Dinámica y Energía en una Montaña Rusa

### Enunciado ❓
Bravario va a una montaña rusa. El carrito mostrado en la figura se desliza por un camino de cuestas y pendientes. Consideraremos que hay fuerzas de rozamiento sólo en las zonas AB y EF y que en el resto del recorrido son despreciables.
Calcular:
* a) Módulo de la velocidad en B.
* b) Módulo de la velocidad en D.
* c) Sabiendo que en F se detiene, la distancia EF.
* d) El trabajo del peso en el tramo CD.
* Datos: $m = 2 \text{ kg}$; $v_A = 5 \text{ m/s}$; $h_A = 3 \text{ m}$; $h_D = 1 \text{ m}$; $d_{AB} = 2 \text{ m}$; $\text{froz}_{AB} = 5 \text{ N}$; $\text{froz}_{EF} = 10 \text{ N}$.

### Procedimiento y Resolución ✍️
1. **Inciso a) Módulo de la velocidad en B ($v_B$):**
   Aplicamos el teorema de trabajo y energía entre A y B (donde actúa la fuerza de rozamiento):
   $$E_{cA} + E_{pA} - W_{froz, AB} = E_{cB}$$
   $$\frac{1}{2} m v_A^2 + m g h_A - (froz_{AB} \times d_{AB}) = \frac{1}{2} m v_B^2$$
   Sustituyendo valores ($m=2$, $v_A=5$, $h_A=3$, $froz_{AB}=5$, $d_{AB}=2$, $g=9.8$):
   $$\frac{1}{2}(2)(5^2) + (2)(9.8)(3) - (5 \times 2) = \frac{1}{2}(2) v_B^2$$
   $$25 + 58.8 - 10 = v_B^2$$
   $$v_B^2 = 73.8 \implies v_B = \sqrt{73.8} \approx 8.59 \text{ m/s}$$

2. **Inciso b) Módulo de la velocidad en D ($v_D$):**
   Entre B y D no hay rozamiento, por lo tanto se conserva la energía mecánica:
   $$E_{cB} + E_{pB} = E_{cD} + E_{pD}$$
   $$\frac{1}{2} m v_B^2 + 0 = \frac{1}{2} m v_D^2 + m g h_D$$
   Como $h_B = 0$ (tomando como referencia el nivel del suelo inferior):
   $$73.8 = v_D^2 + 2(9.8)(1)$$
   $$73.8 = v_D^2 + 19.6 \implies v_D^2 = 54.2 \implies v_D = \sqrt{54.2} \approx 7.36 \text{ m/s}$$

3. **Inciso c) Distancia EF sabiendo que en F se detiene ($v_F = 0$):**
   Analizamos la energía desde el punto D hasta F, teniendo en cuenta la pérdida de energía por rozamiento en EF ($froz_{EF} = 10 \text{ N}$):
   $$E_{cD} + E_{pD} - W_{froz, EF} = E_{cF}$$
   Como $h_D = 1 \text{ m}$ y en F el carrito se detiene ($E_{cF} = 0$ y $h_F = 0$):
   $$\frac{1}{2} m v_D^2 + m g h_D - (froz_{EF} \times d_{EF}) = 0$$
   Ya sabemos que $\frac{1}{2} m v_D^2 + m g h_D = E_{total} = E_{cB} = 73.8 \text{ J}$ (o sumando energías explícitamente: $\frac{1}{2}(2)(54.2) + 2(9.8)(1) = 54.2 + 19.6 = 73.8$):
   $$73.8 - (10 \times d_{EF}) = 0$$
   $$10 \cdot d_{EF} = 73.8 \implies d_{EF} = 7.38 \text{ m}$$

4. **Inciso d) El trabajo del peso en el tramo CD ($W_{peso, CD}$):**
   El trabajo de la fuerza peso depende únicamente de la diferencia de altura inicial y final del tramo:
   $$W_{peso} = -\Delta E_p = - m g (h_D - h_C)$$
   Tomando $h_C = 0$ (suelo) y $h_D = 1 \text{ m}$:
   $$W_{peso, CD} = - (2 \text{ kg})(9.8 \text{ m/s}^2)(1 \text{ m} - 0 \text{ m}) = -19.6 \text{ J}$$

### Resultados Finales 🎯
* **a) Velocidad en B:** $v_B \approx 8.59 \text{ m/s}$ ⚡
* **b) Velocidad en D:** $v_D \approx 7.36 \text{ m/s}$ 🎢
* **c) Distancia EF:** $d_{EF} = 7.38 \text{ m}$ 🛑
* **d) Trabajo del peso en CD:** $W_{peso} = -19.6 \text{ J}$ 📉

---
*Documento generado automáticamente para estudio y práctica de Física Aplicada.* ✨
