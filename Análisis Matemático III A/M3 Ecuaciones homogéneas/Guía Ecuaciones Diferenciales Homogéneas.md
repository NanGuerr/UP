# 📘 Guía Técnica: Ecuaciones Diferenciales Homogéneas

Este documento presenta una síntesis exhaustiva sobre las ecuaciones diferenciales homogéneas, abordando desde sus fundamentos teóricos y definiciones hasta los métodos de resolución y aplicaciones prácticas documentadas en las fuentes de la Universidad de Palermo y la bibliografía de D.G. Zill. 🎯



## 🚀 Resumen Ejecutivo

El análisis de las ecuaciones diferenciales revela que, si bien las ecuaciones de variables separables pueden resolverse mediante integración directa, la mayoría de los problemas planteados no presentan esta estructura inicialmente. 📈 No obstante, existe una clase crítica denominada **ecuaciones diferenciales homogéneas** que permite una simplificación mediante un cambio de variables. 🔄

El principio fundamental radica en que una sustitución adecuada —específicamente $y = u \cdot x$— transforma una ecuación diferencial homogénea en una de variables separables. 🛠️ Este proceso requiere primero la validación de la homogeneidad de la función, ya sea verificando que sea de grado cero o que los componentes $M(x, y)$ y $N(x, y)$ posean el mismo grado. ⚖️



## 1. 🧩 Fundamentos de las Funciones Homogéneas

Antes de abordar las ecuaciones diferenciales, es imperativo comprender el concepto de función homogénea. 📐

### Definición Matemática
Una función $z = f(x, y)$ se clasifica como homogénea de grado $n$ si y solo si para todo número real $t$ se verifica la siguiente identidad: 
$$f(tx, ty) = t^n \cdot f(x, y)$$

### Ejemplos de Grados de Homogeneidad
Las fuentes proporcionan ejemplos específicos para ilustrar esta propiedad: 📊

| Función $f(x, y)$ | Demostración con factor $t$ | Grado ($n$) |
| :--- | :--- | :---: |
| $f(x, y) = x^4 - xy^3$ | $f(tx, ty) = (tx)^4 - (tx)(ty)^3 = t^4(x^4 - xy^3)$ | **4** 📈 |
| $f(x, y) = rac{1}{3x+2y}$ | $f(tx, ty) = rac{1}{3tx+2ty} = t^{-1} \cdot rac{1}{3x+2y}$ | **-1** 📉 |



## 2. 🔍 Definición de Ecuaciones Diferenciales Homogéneas

Una ecuación diferencial de primer orden se considera homogénea bajo dos criterios equivalentes: 💡

* **Forma de derivada:** $rac{dy}{dx} = f(x, y)$, donde $f$ es una función homogénea de grado cero. Esto implica que $f(x, y) = f(tx, ty)$, o que la función no depende de las variables $x$ e $y$ por separado, sino de la razón $rac{y}{x}$ o $rac{x}{y}$. 📐
* **Forma diferencial:** $M(x, y)dx + N(x, y)dy = 0$, donde tanto $M$ como $N$ son funciones homogéneas del mismo grado. ⚖️



## 3. 🛠️ Metodología de Resolución: El Cambio de Variable

La técnica estándar para resolver estas ecuaciones es la sustitución, la cual permite simplificar la estructura de la ecuación original para convertirla en una de variables separables. ⚙️

### Procedimiento de Sustitución
Se utiliza la variable auxiliar $u$, definida por la relación clave: 🗝️

* $y = u \cdot x$
* $dy = u \, dx + x \, du$
* $rac{y}{x} = u$

Al aplicar este cambio, la ecuación diferencial resultante puede ser resuelta mediante integración directa tras la separación de sus nuevas variables ($u$ y $x$). 🌊



## 4. 📝 Análisis de Casos Prácticos

### Ejemplo 1: Ecuación en forma de derivada
* **Ecuación:** $rac{dy}{dx} = rac{y^2 + 2xy}{x^2}$
* **Verificación:** Se comprueba que el lado derecho es una función homogénea de grado 0 mediante la introducción del factor $t$, el cual se cancela en el numerador y denominador. 🔍
* **Sustitución y Operación:**
  * Se aplica $u + x rac{du}{dx} = rac{(ux)^2 + 2x(ux)}{x^2}$. ⚙️
  * Tras simplificar $x^2$, la ecuación se reduce a $x rac{du}{dx} = u^2$. 📉
  * Separación de variables: $rac{1}{u^2} du = rac{1}{x} dx$. 📊
  * Integración: $-rac{1}{u} = \ln|x| + C$. 🌀
* **🎉 Solución Final:** Volviendo a $u = rac{y}{x}$, la solución explícita es: 
  $$y = -rac{x}{\ln|x| + C}$$

### Ejemplo 2: Ecuación en forma diferencial
* **Ecuación:** $(2x - y) dx + (4x + y) dy = 0$
* **Verificación:** 🕵️‍♂️
  * $M(x, y) = 2x - y$ (homogénea de grado 1). 📏
  * $N(x, y) = 4x + y$ (homogénea de grado 1). 📏
  * Ambas tienen el mismo grado, por lo que la ecuación es homogénea. ✅
* **Sustitución:** Se reemplaza $y$ y $dy$ en la ecuación original. 🛠️
* **Resolución mediante Fracciones Simples:** El proceso requiere integrar $\int rac{4+u}{2+3u+u^2} du$. Mediante el método de fracciones simples se determinan los coeficientes $A = -2$ y $B = 3$. 📐
* **🎉 Solución Implícita:** Tras integrar y simplificar términos algebraicos y logarítmicos, se llega a la solución: 
  $$rac{(y + x)^3}{(y + 2x)^2} = A$$ 
  *(Nota: Se utiliza $A$ como la constante resultante tras aplicar la función exponencial).* ⚡



## 5. 📌 Observaciones Finales y Bibliografía

Es fundamental notar que no siempre será posible despejar la variable $y$ para obtener una función explícita de $x$. 📉 En muchos casos, la solución se presentará de forma implícita. 🔒

### Bibliografía Obligatoria 📚
* **Zill, D.G.** (2015). *Ecuaciones Diferenciales con aplicaciones de modelado*. (10° ed.). Cengage Learning. (pp. 68-70). 📖
* **Material de Cátedra:** *Apunte Ecuaciones diferenciales homogéneas*, Universidad de Palermo. 🏫
