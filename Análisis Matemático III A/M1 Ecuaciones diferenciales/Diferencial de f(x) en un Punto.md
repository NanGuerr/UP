
# 📈 El Diferencial de una Función en un Punto

Resumen de la definición, interpretación geométrica y propiedades del diferencial de una función $y=f(x)$.

---

## 1. Definición Matemática 🧮

El **diferencial** de una función $y=f(x)$ en un punto dado, respecto a un incremento $\Delta x$ de la variable independiente, se define como el producto de la derivada de la función por dicho incremento:

$$dy = df = f'(x) \cdot \Delta x$$ 

### 📝 Ejemplo Práctico
Si tenemos la función $f(x) = x^2 + 4x$, su diferencial es:
$$df = (x^2 + 4x)' \cdot \Delta x = (2x + 4) \cdot \Delta x$$

### 💡 Observación Clave
Si la función es la identidad $y = f(x) = x$, entonces:
$$dy = df = d(x) = 1 \cdot \Delta x$$ 
Esto permite asumir que el diferencial de la variable independiente coincide con su incremento: **$dx = \Delta x$**. Por lo tanto, la fórmula general se puede reformular como:
$$dy = df = f'(x) \cdot dx$$ 

---

## 2. Interpretación Geométrica 📐

El diferencial tiene una representación visual específica en el gráfico de una función:


* **Segmento $\overline{PS}$**: Representa el incremento en la variable independiente $\Delta x$.
* **Segmento $\overline{RS}$**: Representa el diferencial ($df$ o $dy$). Es el incremento en la **ordenada de la recta tangente** al pasar de $x$ a $x + \Delta x$.
* **Comparación**: Mientras que el incremento real de la función ($\Delta f$) es la distancia hasta la curva, el diferencial ($df$) es la distancia hasta la recta tangente.

**Relación con la pendiente:**
Sabemos que la pendiente de la recta tangente ($m_t$) es la derivada $f'(x)$. Geométricamente:
$$m_t = \frac{\overline{RS}}{\overline{PS}} = f'(x) \implies \overline{RS} = f'(x) \cdot \overline{PS}$$ 

---

## 3. Propiedades Algebraicas 🛠️

Dado que el diferencial es el producto de la derivada por un incremento, este **hereda las propiedades algebraicas** de la derivada[cite: 125]. Si $k$ es una constante, y $u, v$ son funciones de $x$:

* **Constante:** $d(k) = 0$ 
* **Suma o Resta:** $d(u \pm v) = du \pm dv$ 
* **Producto:** $d(u \cdot v) = v \, du + u \, dv$ 

---

