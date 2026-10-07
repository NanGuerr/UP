# Funciones Holomorfas y Ecuaciones de Cauchy-Riemann



El estudio del análisis complejo de una variable abarca desde la topología del plano complejo hasta el comportamiento diferencial de las funciones holomorfas y analíticas. El presente documento sintetiza los principios teóricos fundamentales, teoremas de caracterización y métodos analíticos expuestos en la literatura teórica y práctica provista.

Los hallazgos y conceptos clave vertidos en este informe incluyen:

* **Equivalencia de Holomorfía y Analiticidad:** En subconjuntos abiertos del plano complejo (regiones), la propiedad de una función de ser derivable en el sentido complejo (holomorfa) es idéntica a la capacidad de admitir un desarrollo local en serie de Taylor (analítica). Además, la analiticidad en una región garantiza la derivabilidad infinita de la función.
* **Ecuaciones de Cauchy-Riemann (C-R):** Constituyen el criterio analítico central para evaluar la derivabilidad compleja de una función $f(z) = u(x,y) + i v(x,y)$.
* **Condición Necesaria:** Toda función analítica en una región $W$ satisface indispensablemente $u_x = v_y$ y $u_y = -v_x$ en $W$.
* **Condición Suficiente:** La satisfacción simultánea de las ecuaciones de Cauchy-Riemann junto con la continuidad de las derivadas parciales de primer orden ($u, v \in C^1$) en una región $W$ asegura que la función es analítica en dicha región.


* **Rigurosidad en Límites y Trayectorias:** El límite complejo en un punto $z_0$ exige convergencia hacia un único valor de $w_0$ de manera completamente independiente de la dirección o curva de aproximación en el plano $xy$.
* **Diferencia entre Continuidad y Derivabilidad:** A diferencia del cálculo real, la continuidad de las partes real e imaginaria no basta para asegurar la derivabilidad compleja.



## 🌐 1. Topología del Plano Complejo y Esfera de Riemann

### Definición de Región y Subconjuntos

El análisis de funciones complejas se desarrolla primordialmente sobre conjuntos abiertos denominados regiones.

* **Subconjunto Abierto:** Un conjunto $W \subset \mathbb{C}$ es abierto si todo punto $z_0 \in W$ admite un disco centrado en $z_0$ contenido completamente dentro de $W$.
* **Ejemplos de conjuntos abiertos:** Todo el plano complejo $\mathbb{C}$; el plano complejo salvo un punto o una recta; un semiplano que no incluya su recta borde.

### Propiedades del Módulo Complejo

El módulo de un número complejo $z = x + iy$ coincide con la norma euclídea en el plano real $\mathbb{R}^2$ ($\vert{}z\vert{} = \sqrt{x^2 + y^2}$). Satisface las siguientes propiedades fundamentales:

* $\vert{}z\vert{} \ge 0$
* $\vert{}z\vert{} = 0 \iff z = 0$
* $\vert{}z_1 z_2\vert{} = \vert{}z_1\vert{} \vert{}z_2\vert{}$
* **Desigualdad Triangular:** $\vert{}z_1 + z_2\vert{} \le \vert{}z_1\vert{} + \vert{}z_2\vert{}$



## 📈 2. Límites y Continuidad de Funciones Complejas

### Definición Formal de Límite y Unicidad

Sea $f$ una función definida en un entorno perforado $0 < \vert{}z - z_0\vert{} < \delta_0$ de $z_0$. El límite de $f(z)$ cuando $z \to z_0$ es $w_0$, denotado como $\lim_{z \to z_0} f(z) = w_0$, si y solo si:


$$\forall \varepsilon > 0, \exists \delta > 0 \quad \text{tal que} \quad \vert{}f(z) - w_0\vert{} < \varepsilon \quad \text{siempre que} \quad 0 < \vert{}z - z_0\vert{} < \delta$$

### Definición de Continuidad

Una función $f(z)$ es continua en $z_0$ si y solo si:


$$\lim_{z \to z_0} f(z) = f(z_0)$$



## ✍️ 3. Derivada Compleja, Holomorfía y Analiticidad

### Definición de Derivada Compleja

La derivada de $f$ en $z_0$, denotada por $f'(z_0)$ o $\frac{df}{dz}\Big\vert{}_{z_0}$, se define como:


$$f'(z_0) = \lim_{z \to z_0} \frac{f(z) - f(z_0)}{z - z_0} = \lim_{\Delta z \to 0} \frac{f(z_0 + \Delta z) - f(z_0)}{\Delta z}$$

### Reglas de Derivación

* **Constantes y potencias:** $\frac{d}{dz}(c) = 0$, $\frac{d}{dz}(z) = 1$, $\frac{d}{dz}(z^n) = n z^{n-1}$
* **Cociente:** $\frac{d}{dz}\left[\frac{f(z)}{g(z)}\right] = \frac{g(z)f'(z) - f(z)g'(z)}{[g(z)]^2}$ si $g(z) \neq 0$.



## 🧮 4. Las Ecuaciones de Cauchy-Riemann

Expresando $f(z) = u(x,y) + i v(x,y)$, la existencia de la derivada $f'(z_0)$ exige que se cumplan las ecuaciones de Cauchy-Riemann:

$$\begin{cases} \text{C-R 1:} & u_x = v_y \\ \text{C-R 2:} & u_y = -v_x \end{cases}$$

Cuando existe la derivada, la expresión funcional de $f'(z_0)$ en términos de sus derivadas parciales viene dada por:


$$f'(z_0) = u_x(x_0, y_0) + i v_x(x_0, y_0) = v_y(x_0, y_0) - i u_y(x_0, y_0)$$



## 📊 5. Casos de Estudio y Análisis Ejemplar

| Función $f(z)$ | Partes $u(x,y)$ y $v(x,y)$ | Derivadas Parciales de Primer Orden | Análisis de Cauchy-Riemann y Continuidad | Conclusión / Dominio de Analiticidad |
| --- | --- | --- | --- | --- |
| $f(z) = z^2$ | $u = x^2 - y^2$<br>

<br>$v = 2xy$ | $u_x = 2x, u_y = -2y$<br>

<br>$v_x = 2y, v_y = 2x$ | $u_x = v_y = 2x$<br>

<br>$u_y = -v_x = -2y$<br>

<br>Satisfechas en todo $\mathbb{C}$. | Analítica en todo el plano complejo $\mathbb{C}$. $f'(z) = 2z$. |
| $f(z) = \bar{z}$ | $u = x$<br>

<br>$v = -y$ | $u_x = 1, u_y = 0$<br>

<br>$v_x = 0, v_y = -1$ | $u_x = 1 \neq -1 = v_y$. C-R 1 falla en todas partes. | No es analítica en ninguna región. Continua en todo $\mathbb{C}$. |
| $f(z) = \text{Re } z$ | $u = x$<br>

<br>$v = 0$ | $u_x = 1, u_y = 0$<br>

<br>$v_x = 0, v_y = 0$ | $u_x = 1 \neq 0 = v_y$. Falla C-R 1 en todo punto. | No es analítica en ninguna región. Tampoco es derivable en punto alguno. |
| $f(z) = \frac{1}{z}$ | $u = \frac{x}{x^2+y^2}$<br>

<br>$v = \frac{-y}{x^2+y^2}$ | $u, v \in C^1$ para todo $(x,y) \neq (0,0)$. | Se satisfacen las ecuaciones de C-R fuera del origen. | Analítica en $\mathbb{C} \setminus \{0\}$. |
