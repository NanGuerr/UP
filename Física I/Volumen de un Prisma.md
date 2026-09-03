# 🧊 Análisis de Error para el Volumen de un Prisma

## 📝 1. Transcripción de las Fórmulas

Para el Prisma:

$$V = a b h$$

$$\sigma_v = \sqrt{\left(\frac{\partial V}{\partial a}\right)^2 \sigma_a^2 + \left(\frac{\partial V}{\partial b}\right)^2 \sigma_b^2 + \left(\frac{\partial V}{\partial h}\right)^2 \sigma_h^2}$$

* Derivadas parciales resueltas:
  * $\frac{\partial V}{\partial a} = bh$
  * $\frac{\partial V}{\partial b} = ah$
  * $\frac{\partial V}{\partial h} = ab$

* Desviaciones estándar o errores de medición dados:
  * $\sigma_a = \sigma_b = \sigma_h = 0,1\text{ mm}$

---

## 📐 2. Ejemplo de Uso Práctico

Imaginemos que tenemos un prisma rectangular con las siguientes dimensiones medidas y sus respectivas incertidumbres:

*   Lado $a = 50\text{ mm}$ (con un error $\sigma_a = 0,1\text{ mm}$)
*   Lado $b = 30\text{ mm}$ (con un error $\sigma_b = 0,1\text{ mm}$)
*   Altura $h = 20\text{ mm}$ (con un error $\sigma_h = 0,1\text{ mm}$)

### 🔢 Paso a paso del cálculo:

1. **Calcular el Volumen Nominal ($V$):**
   $$V = a \cdot b \cdot h = 50 \times 30 \times 20 = 30000\text{ mm}^3$$

2. **Calcular las derivadas parciales evaluadas:**
   * $\frac{\partial V}{\partial a} = b \cdot h = 30 \times 20 = 600$
   * $\frac{\partial V}{\partial b} = a \cdot h = 50 \times 20 = 1000$
   * $\frac{\partial V}{\partial h} = a \cdot b = 50 \times 30 = 1500$

3. **Aplicar la fórmula de propagación de errores ($\sigma_v$):**
   $$\sigma_v = \sqrt{(600)^2 (0,1)^2 + (1000)^2 (0,1)^2 + (1500)^2 (0,1)^2}$$
   $$\sigma_v = \sqrt{(360000 \times 0,01) + (1000000 \times 0,01) + (2250000 \times 0,01)}$$
   $$\sigma_v = \sqrt{3600 + 10000 + 22500} = \sqrt{36100} \approx 190\text{ mm}^3$$

### ✅ Resultado Final:
El volumen del prisma es $V = 30000 \pm 190\text{ mm}^3$.
