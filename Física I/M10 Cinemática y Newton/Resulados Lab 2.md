A continuación, se detallan las mediciones consolidadas de las cuatro experiencias realizadas, manteniendo como constantes geométricas del sistema la longitud de la rampa ($L = 50 \text{ m}$), el ángulo de inclinación ($\beta = 30^\circ$) y las propiedades del objeto esférico (masa de $1 \text{ kg}$, radio de $2 \text{ m}$, distribución uniforme).

### 📋 Cuadro Resumen de Resultados Cinemáticos

| Experiencia | Vel. Inicial $v_0$ | Gravedad $g$ | Fricción $\mu$ | Aceleración $a$ | Vel. Final $v_f$ | Tiempo $t$ |
| :---------: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Exp. 1 (Tierra)** | $0 \text{ m/s}$ | $10.00 \text{ m/s}^2$ | $0.520$ | $3.571 \text{ m/s}^2$ | $18.90 \text{ m/s}$ | $5.16 \text{ s}$ |
| **Exp. 2 (Tierra)** | $22.64 \text{ m/s}$ | $10.00 \text{ m/s}^2$ | $0.520$ | $3.571 \text{ m/s}^2$ | $19.90 \text{ m/s}$ | $3.61 \text{ s}$ |
| **Exp. 3 (Tierra)** | $0 \text{ m/s}$ | $10.00 \text{ m/s}^2$ | $0.200$ | $3.270 \text{ m/s}^2$ | $18.08 \text{ m/s}$ | $5.53 \text{ s}$ |
| **Exp. 4a (Marte)** | $0 \text{ m/s}$ | $3.728 \text{ m/s}^2$ | $0.000$ | $1.864 \text{ m/s}^2$ | $13.65 \text{ m/s}$ | $7.32 \text{ s}$ |
| **Exp. 4b (Luna)** | $0 \text{ m/s}$ | $1.625 \text{ m/s}^2$ | $0.000$ | $0.8125 \text{ m/s}^2$ | $9.01 \text{ m/s}$ | $11.09 \text{ s}$ |

---

### 🔍 Desglose Específico por Experiencia

* **Experiencia 1: Entorno Terrestre Estándar**
* **Variables de entrada:** $g = 10 \text{ m/s}^2$, $v_0 = 0 \text{ m/s}$ (reposo), $\mu = 0.520$.
* **Mediciones:** El sistema registra una aceleración constante de $3.571 \text{ m/s}^2$ (rodadura pura). El tiempo de tránsito abarca $5.16 \text{ s}$ en el eje cartesiano, alcanzando una velocidad de impacto en la base de $18.90 \text{ m/s}$.


* **Experiencia 2: Alteración de la Velocidad Inicial**
* **Variables de entrada:** $g = 10 \text{ m/s}^2$, $v_0 = 22.64 \text{ m/s}$, $\mu = 0.520$.
* **Mediciones:** La aceleración permanece idéntica ($3.571 \text{ m/s}^2$) al no depender del estado cinemático previo. La alta velocidad de partida reduce drásticamente el tiempo de recorrido a $1.92 \text{ s}$ e incrementa la velocidad de llegada a $29.49 \text{ m/s}$.


* **Experiencia 3: Variación del Coeficiente de Fricción**
* **Variables de entrada:** $g = 10 \text{ m/s}^2$, $v_0 = 0 \text{ m/s}$, $\mu = 0.200$.
* **Mediciones (Simulador de Rodadura):** Como la fricción de $0.200$ sigue siendo suficiente para evitar el patinaje ($\mu > 0.165$), la esfera mantiene la rodadura perfecta, replicando exactamente las mediciones de la Experiencia 1 ($a = 3.571 \text{ m/s}^2$, $v_f = 18.90 \text{ m/s}$, $t = 5.16 \text{ s}$).
* **Mediciones (Modelo Teórico PDF):** Si se asume como bloque deslizante disipativo, la aceleración cae a $3.27 \text{ m/s}^2$, resultando en una velocidad de $18.08 \text{ m/s}$ y un tiempo de $5.53 \text{ s}$.


* **Experiencia 4: Alteración del Campo Gravitatorio**
* **Variables de entrada (Marte):** $g = 3.728 \text{ m/s}^2$, $v_0 = 0 \text{ m/s}$, $\mu = 0$ (deslizamiento sin fricción).
* **Mediciones (Marte):** La disminución de la gravedad reduce la aceleración a $1.864 \text{ m/s}^2$, lo que prolonga el tiempo de caída a $7.32 \text{ s}$ y genera una velocidad final de $13.65 \text{ m/s}$.
* **Variables de entrada (Luna):** $g = 1.625 \text{ m/s}^2$, $v_0 = 0 \text{ m/s}$, $\mu = 0$.
* **Mediciones (Luna):** Con la gravedad más baja de las pruebas, la aceleración se desploma a $0.8125 \text{ m/s}^2$. El objeto tarda $11.09 \text{ s}$ en descender, impactando la base a tan solo $9.01 \text{ m/s}$.
