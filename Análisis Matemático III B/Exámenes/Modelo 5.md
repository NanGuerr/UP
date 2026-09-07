# 📚 Resumen de Análisis Matemático III b: Series y Funciones 📐



## 📌 1. Series Finitas e Infinitas Fundamentales ♾️

### 📝 Serie Geométrica
Para un número real o complejo $q$ tal que $|q| < 1$:
$$\sum_{n=0}^{\infty} q^n = rac{1}{1-q}$$



### 📝 Serie P ($p$-series)
$$\sum_{n=1}^{\infty} rac{1}{n^p}$$

* **Convergencia:** Si $p > 1 \implies 	ext{Converge (CV)}$
* **Divergencia:** Si $p \le 1 \implies 	ext{Diverge (DV)}$



## 📌 2. Series de Maclaurin Fundamentales 🎯

Desarrollos en serie de potencias centrados en $a = 0$:

1. **Función Exponencial:**
   $$e^x = \sum_{n=0}^{\infty} rac{x^n}{n!} = 1 + x + rac{x^2}{2!} + rac{x^3}{3!} + \dots \quad orall x \in \mathbb{R}$$

2. **Función Seno:**
   $$\{sen}(x) = \sum_{n=0}^{\infty} rac{(-1)^n}{(2n+1)!} x^{2n+1} = x - rac{x^3}{3!} + rac{x^5}{5!} - \dots \quad orall x \in \mathbb{R}$$

3. **Función Coseno:**
   $$\cos(x) = \sum_{n=0}^{\infty} rac{(-1)^n}{(2n)!} x^{2n} = 1 - rac{x^2}{2!} + rac{x^4}{4!} - \dots \quad orall x \in \mathbb{R}$$



## 📌 3. Criterios de Convergencia de Series 🧪

### 📝 Criterio del Cociente / D'Alembert
Dada la serie $\sum a_n$, calculamos el límite:
$$L = \lim_{n 	o \infty} \left| rac{a_{n+1}}{a_n} 
ight|$$

* Si $L < 1 \implies$ La serie **converge absolutamente**.
* Si $L > 1 \implies$ La serie **diverge**.
* Si $L = 1 \implies$ El criterio **no es concluyente**.



### 📝 Criterio de la Raíz / Cauchy
$$L = \lim_{n 	o \infty} \sqrt[n]{|a_n|}$$

* Conclusión idéntica al criterio del cociente. *Nota útil:* $\lim_{n 	o \infty} \sqrt[n]{n} = 1$.



### 📝 Criterio de Comparación por Límite
Dadas dos series de términos positivos $\sum a_n$ y $\sum b_n$:
$$L = \lim_{n 	o \infty} rac{a_n}{b_n}$$

Si $0 < L < \infty$, entonces ambas series tienen el mismo comportamiento:
$$\sum a_n 	ext{ converge} \iff \sum b_n 	ext{ converge}$$

> **Ejemplo de aplicación:**  
> Analizar la convergencia de $\sum_{n=1}^{\infty} rac{1}{\sqrt{n^2 + 2}}$.  
> Para $n$ grande: $a_n = rac{1}{\sqrt{n^2+2}} \sim rac{1}{\sqrt{n^2}} = rac{1}{n} = b_n$.  
> Como la serie armónica $\sum rac{1}{n}$ diverge ($p = 1$), por comparación por límite la serie original **diverge**.



### 📝 Criterio de Leibniz (Series Alternadas)
Para una serie de la forma $\sum_{n=0}^{\infty} (-1)^n a_n$ con $a_n > 0$:

1. $\lim_{n 	o \infty} a_n = 0$
2. $a_{n+1} \le a_n$ ($\{a_n\}$ es decreciente)

Si se cumplen ambas condiciones, la serie **converge**.



## 📌 4. Serie de Taylor y Propiedades Trigonométricas 📐

### 📝 Desarrollo de Taylor centrado en $x = a$
$$f(x) = \sum_{n=0}^{\infty} rac{f^{(n)}(a)}{n!} (x-a)^n$$

*Estrategia de centrado:* Reescribir $x$ como $(x-a) + a$.



### 📝 Identidades y Valores Trigonométricos Clave
* $\cos(a + b) = \cos(a)\cos(b) - \{sen}(a)\{sen}(b)$
* $\{sen}(a + b) = \{sen}(a)\cos(b) + \cos(a)\{sen}(b)$
* $\cos(n\pi) = (-1)^n$
* $\{sen}(n\pi) = 0$
* $\cos(\pi) = -1$



## 📌 5. Series Trigonométricas de Fourier 🌊

### 📝 Serie Completa de Fourier en $[-L, L]$
$$f(x) \sim rac{a_0}{2} + \sum_{n=1}^{\infty} \left[ a_n \cos\left(rac{n\pi}{L} x
ight) + b_n \{sen}\left(rac{n\pi}{L} x
ight) 
ight]$$

**Fórmulas de los Coeficientes:**
* $$a_0 = rac{1}{L} \int_{-L}^{L} f(x) \, dx$$
* $$a_n = rac{1}{L} \int_{-L}^{L} f(x) \cos\left(rac{n\pi}{L} x
ight) dx$$
* $$b_n = rac{1}{L} \int_{-L}^{L} f(x) \{sen}\left(rac{n\pi}{L} x
ight) dx$$



### 📝 Desarrollos de Medio Intervalo (Seno / Coseno)
Para una función definida en $[0, L]$:

* **Serie de Cosenos (Extensión Par):**
  $$f(x) \sim rac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(rac{n\pi}{L} x
ight)$$
  $$a_0 = rac{2}{L} \int_{0}^{L} f(x) \, dx, \quad a_n = rac{2}{L} \int_{0}^{L} f(x) \cos\left(rac{n\pi}{L} x
ight) dx$$

* **Serie de Senos (Extensión Impar):**
  $$f(x) \sim \sum_{n=1}^{\infty} b_n \{sen}\left(rac{n\pi}{L} x
ight)$$
  $$b_n = rac{2}{L} \int_{0}^{L} f(x) \{sen}\left(rac{n\pi}{L} x
ight) dx$$



### 📝 Operaciones con Series de Fourier

1. **Diferenciación Término a Término:**
   $$rac{d}{dx} \left[ rac{a_0}{2} + \sum_{n=1}^{\infty} \left( a_n \cos\left(rac{n\pi}{L} x
ight) + b_n \{sen}\left(rac{n\pi}{L} x
ight) 
ight) 
ight] = \sum_{n=1}^{\infty} \left[ \left(rac{n\pi}{L}
ight) b_n \cos\left(rac{n\pi}{L} x
ight) - \left(rac{n\pi}{L}
ight) a_n \{sen}\left(rac{n\pi}{L} x
ight) 
ight]$$

2. **Integración Término a Término:**
   $$\int_c^d f(x) \, dx = \sum_{n=1}^{\infty} \left[ rac{L}{n\pi} a_n \{sen}\left(rac{n\pi}{L} x
ight) - rac{L}{n\pi} b_n \cos\left(rac{n\pi}{L} x
ight) 
ight]_c^d$$



## 📌 6. Tabla de Integrales Indefinidas Útiles 📖

### 📝 Integrales con Coseno
* $$\int \cos(ax) \, dx = rac{\{sen}(ax)}{a}$$
* $$\int x \cos(ax) \, dx = rac{\cos(ax)}{a^2} + rac{x \{sen}(ax)}{a}$$
* $$\int x^2 \cos(ax) \, dx = rac{2x}{a^2} \cos(ax) + \left(rac{x^2}{a} - rac{2}{a^3}
ight) \{sen}(ax)$$
* $$\int x^3 \cos(ax) \, dx = \left(rac{3x^2}{a^2} - rac{6}{a^4}
ight) \cos(ax) + \left(rac{x^3}{a} - rac{6x}{a^3}
ight) \{sen}(ax)$$



### 📝 Integrales con Seno
* $$\int \{sen}(ax) \, dx = -rac{\cos(ax)}{a}$$
* $$\int x \{sen}(ax) \, dx = rac{\{sen}(ax)}{a^2} - rac{x \cos(ax)}{a}$$
* $$\int x^2 \{sen}(ax) \, dx = rac{2x}{a^2} \{sen}(ax) + \left(rac{2}{a^3} - rac{x^2}{a}
ight) \cos(ax)$$
* $$\int x^3 \{sen}(ax) \, dx = \left(rac{3x^2}{a^2} - rac{6}{a^4}
ight) \{sen}(ax) + \left(rac{6x}{a^3} - rac{x^3}{a}
ight) \cos(ax)$$
* $$\int \{sen}^2(ax) \, dx = rac{x}{2} - rac{\{sen}(2ax)}{4a}$$
* $$\int x \{sen}^2(ax) \, dx = rac{x^2}{4} - rac{x \{sen}(2ax)}{4a} - rac{\cos(2ax)}{8a^2}$$
* $$\int \{sen}^3(ax) \, dx = -rac{\cos(ax)}{a} + rac{\cos^3(ax)}{3a}$$
* $$\int \{sen}^4(ax) \, dx = rac{3x}{8} - rac{\{sen}(2ax)}{4a} + rac{\{sen}(4ax)}{32a}$$
