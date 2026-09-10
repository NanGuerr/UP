# 📈 Guía Práctica para Enunciados con Ecuaciones Diferenciales



## 🧭 Introducción Teórica y Conceptos Clave

Para resolver y modelar problemas de la vida real mediante el cálculo, es fundamental comprender cómo se relacionan las frases comunes con el lenguaje matemático de las derivadas.

> 💡 **Nota Conceptual:** En matemáticas y física, términos como **velocidad de cambio**, **rapidez de cambio**, **razón de cambio** y **tasa de cambio** se representan universalmente mediante la derivada de una función respecto al tiempo o a otra variable independiente.

La definición formal de la derivada como límite de un cociente incremental es:

$$f'(x) = \lim_{\Delta x \to 0} \frac{f(x + \Delta x) - f(x)}{\Delta x}$$

Donde:

El numerador representa el **cambio en $f$**.
El denominador representa el **cambio en $x$**.



## 📝 1) Traducción de Enunciados a Ecuaciones Diferenciales

A continuación se presentan los ejercicios resueltos paso a paso con su respectiva modelación matemática adaptada para GitHub:

### 🌍 a) Crecimiento Poblacional Simple

**Enunciado:** La rapidez con que una población crece en un instante cualquiera es proporcional a la población presente en dicho instante.
**Procedimiento y Análisis:**
Definimos la variable dependiente de la población como $P$ y el tiempo como $t$.
La "rapidez con que una población crece" se traduce como la derivada de la población respecto al tiempo: $\frac{dP}{dt}$.
El término "es proporcional a" se expresa matemáticamente multiplicando por una constante de proporcionalidad $k$ ($k > 0$).


**Ecuación Diferencial Resultante:**

$$\frac{dP}{dt} = kP$$



### 🏙️ b) Crecimiento Poblacional con Capacidad de Carga (Modelo Logístico)

**Enunciado:** La población $P$ de una ciudad aumenta a una velocidad proporcional a la población presente y a la diferencia entre $200.000$ y dicha población.
**Procedimiento y Análisis:**
La velocidad de aumento de la población es $\frac{dP}{dt}$.
Es proporcional a dos factores combinados mediante un producto: la población presente ($P$) y la diferencia entre el límite superior y la población ($200.000 - P$).


**Ecuación Diferencial Resultante:**

$$\frac{dP}{dt} = kP(200000 - P)$$



### ☕ c) Ley de Enfriamiento de Newton

**Enunciado:** La razón de cambio de la temperatura $T$ de una taza de café en el instante $t$ es proporcional a la diferencia entre la temperatura del medio ambiente y la temperatura del café en dicho instante.
**Procedimiento y Análisis:**
La razón de cambio de la temperatura es la derivada $\frac{dT}{dt}$.
Sea $T_m$ la temperatura del medio ambiente. La diferencia respecto a la temperatura del café es $(T_m - T)$.


**Ecuación Diferencial Resultante:**

$$\frac{dT}{dt} = k(T_m - T)$$



### ⚛️ d) Desintegración Radiactiva

**Enunciado:** La velocidad de desintegración de una sustancia radiactiva es proporcional al número $N$ de átomos radiactivos presentes en cada instante.
**Procedimiento y Análisis:**
La velocidad de desintegración es la derivada del número de átomos respecto al tiempo: $\frac{dN}{dt}$. Al tratarse de una disminución, la constante suele considerarse negativa, o bien se denota de manera general con la constante de proporcionalidad $k$.


**Ecuación Diferencial Resultante:**

$$\frac{dN}{dt} = kN$$



### 📈 e) Pendiente de la Recta Tangente

**Enunciado:** La pendiente de la recta tangente a una curva en un punto $P(x; y)$ es el triple de la ordenada de dicho punto.
**Procedimiento y Análisis:**
Geométricamente, la pendiente de la recta tangente a una curva en cualquier punto $(x, y)$ es la derivada de $y$ respecto a $x$: $\frac{dy}{dx}$.
La "ordenada" de un punto corresponde a su coordenada en el eje vertical, es decir, $y$. El triple de la ordenada es $3y$.


**Ecuación Diferencial Resultante:**

$$\frac{dy}{dx} = 3y$$



> 🚀 **Conclusión del Laboratorio:** ¡Dominar la traducción de lenguaje natural a ecuaciones diferenciales te permite modelar desde dinámicas de poblaciones hasta sistemas físicos complejos! Sigue practicando y mucha suerte en tu aprendizaje.
