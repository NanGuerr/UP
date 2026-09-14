# 📊 Propiedades de la Media, Varianza y Desvío Estándar

**Presentadora:** Patricia Arnal (Docente en la Universidad de Palermo) 🎓  
**Tema:** Aplicación de las propiedades algebraicas de la esperanza (media) y la varianza para una combinación lineal de variables aleatorias independientes. 📐



## 📋 1. Planteamiento del Problema y Datos Iniciales

Se define una nueva variable aleatoria $W$ a partir de la combinación de otras variables:

$$W = \left( \sum_{i=1}^{4} X_i \right) - 2Y + 6$$

### 📌 Datos conocidos del enunciado:
* **Media de $X_i$:** $\mu(X) = 8$ *(para cualquier $i \in \{1, 2, 3, 4\}$)*
* **Varianza de $X_i$:** $\sigma^2(X) = 5$ *(para cualquier $i \in \{1, 2, 3, 4\}$)*
* **Media de $Y$:** $\mu(Y) = 6$
* **Desvío estándar de $Y$:** $\sigma(Y) = 3$



## 🧮 2. Cálculo de la Media de $W$, $\mu(W)$

### 📝 Procedimiento explicativo:
1. **Distribución de la Esperanza / Media:** La esperanza matemática es un operador lineal, lo que significa que la media de una suma o resta es la suma o resta de sus respectivas medias.
2. **Constantes multiplicativas:** Salen multiplicando fuera del operador media: $\mu(c \cdot Y) = c \cdot \mu(Y)$.
3. **Constante aditiva:** La media de una constante fija es la misma constante: $\mu(c) = c$.
4. **Desglose de la sumatoria:** $\sum_{i=1}^{4} X_i = X_1 + X_2 + X_3 + X_4$.

### ⚙️ Desarrollo paso a paso:

$$\mu(W) = \mu\left( \left( \sum_{i=1}^{4} X_i \right) - 2Y + 6 \right)$$

$$\mu(W) = \mu(X_1 + X_2 + X_3 + X_4 - 2Y + 6)$$

$$\mu(W) = \mu(X_1) + \mu(X_2) + \mu(X_3) + \mu(X_4) - 2 \cdot \mu(Y) + \mu(6)$$

Sustituyendo los valores numéricos dados:

$$\mu(W) = 8 + 8 + 8 + 8 - 2 \cdot 6 + 6$$

$$\mu(W) = 4 \cdot 8 - 2 \cdot 6 + 6$$

$$\mu(W) = 32 - 12 + 6$$

$$\mu(W) = 26$$

✅ **Resultado:** La media de $W$ es **$26$**.



## 📉 3. Cálculo de la Varianza de $W$, $\sigma^2(W)$

### 📝 Procedimiento explicativo:
1. **Variables independientes:** Si las variables son independientes, la varianza de la suma o resta es la suma de las varianzas.
2. **Propiedad del signo negativo:** La varianza mide la dispersión y nunca es negativa. Por ende, la varianza de una diferencia es una suma de varianzas: $\text{Var}(A - B) = \text{Var}(A) + \text{Var}(B)$.
3. **Escalar o constante multiplicativa:** Al elevarse la diferencia al cuadrado en la definición de varianza, la constante sale elevada al cuadrado: $\sigma^2(c \cdot Y) = c^2 \cdot \sigma^2(Y)$.
4. **Constante aditiva:** Una constante pura no presenta dispersión; por lo tanto, su varianza es cero: $\sigma^2(c) = 0$.
5. **Relación entre desvío y varianza:** Como nos dan la desviación estándar de $Y$ ($\sigma(Y) = 3$), su varianza es $\sigma^2(Y) = (\sigma(Y))^2 = 3^2 = 9$.

### ⚙️ Desarrollo paso a paso:

$$\sigma^2(W) = \sigma^2\left( \left( \sum_{i=1}^{4} X_i \right) - 2Y + 6 \right)$$

$$\sigma^2(W) = \sigma^2(X_1 + X_2 + X_3 + X_4 - 2Y + 6)$$

$$\sigma^2(W) = \sigma^2(X_1) + \sigma^2(X_2) + \sigma^2(X_3) + \sigma^2(X_4) + \sigma^2(2Y) + \sigma^2(6)$$

$$\sigma^2(W) = \sigma^2(X_1) + \sigma^2(X_2) + \sigma^2(X_3) + \sigma^2(X_4) + 2^2 \cdot \sigma^2(Y) + 0$$

Sustituyendo los valores conocidos ($\sigma^2(X_i) = 5$ y $\sigma^2(Y) = 3^2$):

$$\sigma^2(W) = 5 + 5 + 5 + 5 + 2^2 \cdot 3^2 + 0$$

$$\sigma^2(W) = 4 \cdot 5 + 4 \cdot 9$$

$$\sigma^2(W) = 20 + 36$$

$$\sigma^2(W) = 56$$

✅ **Resultado:** La varianza de $W$ es **$56$**.



## 📏 4. Cálculo del Desvío Estándar de $W$, $\sigma(W)$

### 📝 Procedimiento explicativo:
El desvío estándar se define como la raíz cuadrada positiva de la varianza:

$$\sigma(W) = \sqrt{\sigma^2(W)}$$

### ⚙️ Desarrollo paso a paso:

$$\sigma(W) = \sqrt{56} \approx 7{,}483$$

✅ **Resultado:** El desvío estándar de $W$ es aproximadamente **$7{,}483$**.



## 📌 5. Resumen de Resultados

| Parámetro | Símbolo | Valor Calculado |
| :--- | :---: | :---: |
| **Media de $W$** | $\mu(W)$ | **$26$** |
| **Varianza de $W$** | $\sigma^2(W)$ | **$56$** |
| **Desvío Estándar de $W$** | $\sigma(W)$ | **$7{,}483$** |
