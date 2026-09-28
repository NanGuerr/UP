# 📚 Preguntas para el Examen Oral

*Ejemplos brindados en la clase de consulta*


### 1. ¿Qué es una ecuación diferencial de primer orden?

Una ecuación diferencial de primer orden es una ecuación donde aparece la primera derivada de la función, pero no derivadas de orden superior. Describe la relación entre una función y su tasa de cambio. 📈

### 2. ¿Qué condición se tiene que cumplir para que una ecuación diferencial sea exacta?

Para que una ecuación diferencial sea exacta tiene que ser de la forma $M(x,y)\,dx + N(x,y)\,dy = 0$ y las derivadas parciales cruzadas de $M$ y $N$ tienen que ser iguales ($\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$). ⚖️

### 3. ¿Qué condición se tiene que cumplir para que una ecuación diferencial sea homogénea?

Que las funciones $M$ y $N$ sean ambas homogéneas y del mismo grado. Una función homogénea es aquella que al reemplazar $(x, y)$ por $(tx, ty)$ queda multiplicada por un factor $t^n$, es decir, $f(tx, ty) = t^n \cdot f(x, y)$, donde $n$ es el grado. 🔄

### 4. ¿Cuál es la solución general de una ecuación diferencial de primer orden? ¿En qué se diferencia de una solución particular?

La solución general de una ecuación diferencial de primer orden incluye una constante $C$, y la solución particular se obtiene dándole un valor específico a esa constante $C$. 🎯

### 5. ¿Por qué es necesario cambiar el orden de integración en una integral?

Porque a veces el orden dado hace difícil o imposible integrar, y al cambiarlo se simplifica la región o el cálculo del integrando. 🔀

### 6. ¿Qué relación hay entre un campo vectorial conservativo y la integral de trayectoria?

En un campo conservativo, la integral de trayectoria no depende del camino recorrido sino solo de los puntos inicial y final, porque el campo proviene del gradiente de una función potencial. 🌀

### 7. Si integro sobre una región circular, ¿qué tipo de cambio de variables me conviene tomar?

Conviene usar un cambio a coordenadas polares, porque transforma la región circular en un rectángulo y simplifica la integral. ⭕

### 8. ¿Por qué factor tenés que multiplicar cuando hacés un cambio de variable y cómo se calcula ese factor?

Al hacer un cambio de variable hay que multiplicar por el factor jacobiano, que es el determinante de la matriz de derivadas parciales del cambio de variables. Ese valor es el factor que ajusta el área en la nueva integral:


$$J = \det \begin{pmatrix} \frac{\partial x}{\partial u} & \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial u} & \frac{\partial y}{\partial v} \end{pmatrix}$$


📐

### 9. ¿Se puede dar una región y preguntar si es de tipo 1 o de tipo 2?

* **Región de tipo 1:** Una región plana $D$ es de tipo 1 si se encuentra entre las gráficas de dos funciones continuas de $x$. 📉
* **Región de tipo 2:** Una región plana $D$ es de tipo 2 si se encuentra entre las gráficas de dos funciones continuas de $y$. 📈

### 10. ¿Cómo se calcula el área de una región con integrales dobles?

El área de una región $D$ se obtiene planteando una integral doble donde el integrando es $1$. Entonces la integral solo "suma" áreas diferenciales dentro de $D$. Después se describe la región como tipo 1 o tipo 2 y se arma la integral iterada correspondiente para poder calcularla. 🧮

### 11. ¿De qué variables depende el gráfico de una integral doble de tipo 2?

En una integral doble de tipo 2, el gráfico depende de la variable $y$, porque es $x$ quien queda acotado entre funciones de $y$. 📊

### 12. Si tengo una ecuación diferencial no exacta, ¿cómo la transformo en exacta?

Multiplico toda la ecuación por un factor integrante, que es una función tal que, después de multiplicar, se cumpla la condición de exactitud (que las derivadas cruzadas de $M$ y $N$ sean iguales). ✖️

### 13. ¿Cómo me doy cuenta de que un factor integrante depende de $x$?

El factor integrante depende solo de $x$ cuando, al analizar la ecuación, la expresión que uso para buscarlo queda escrita únicamente en función de $x$. Si en esa expresión no aparece $y$, entonces el factor integrante es una función exclusiva de $x$. 🔍

### 14. Cuando hago un cambio de variable, ¿con qué objetivo lo hago?

Hago un cambio de variable para simplificar la integral, ya sea porque la región es complicada o porque el integrando se vuelve más fácil de manejar en las nuevas variables. ✨

### 15. ¿Cómo se calcula la longitud de una curva en $\mathbb{R}^3$?

La longitud se calcula integrando la norma del vector derivada que mide cuánto "avanza" la curva en el espacio a medida que cambia el parámetro. La norma del vector derivada es la raíz de la suma de los cuadrados de las derivadas de $x$, $y$ y $z$:


$$L = \int_{a}^{b} \left\Vert{} \mathbf{r}'(t) \right\Vert{} dt = \int_{a}^{b} \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2 + \left(\frac{dz}{dt}\right)^2} dt$$


📏

### 16. ¿Qué representa la derivada del vector posición de una curva?

Representa el vector velocidad de la curva: indica hacia dónde se mueve y a qué ritmo cambia la posición en cada punto del recorrido. 🚀

### 17. ¿Cuál es el significado físico del vector tangente a una función vectorial?

Representa la velocidad instantánea de un punto que recorre la curva: indica la dirección en la que se mueve y qué tan rápido lo hace en ese instante. ⏱️

### 18. ¿Cuál es el significado geométrico de una matriz jacobiana?

Geométricamente, la matriz jacobiana describe cómo se deforma una pequeña región cuando paso del sistema de variables original al nuevo, indicando cómo un rectángulo muy chico en $(u,v)$ se transforma en un paralelogramo en $(x,y)$. 🔲

### 19. Integrales de primer, segundo y tercer orden: explicación y diferencias

* **Integral de primer orden:**
Es la integral simple $\int f(x)\,dx$. Suma valores sobre un intervalo y geométricamente representa el área bajo la curva. 📉
* **Integral de segundo orden:**
Es la integral doble $\iint_{D} f(x,y)\,dA$. Suma valores sobre una región del plano y geométricamente representa un volumen bajo la superficie $z = f(x,y)$. 🧊
* **Integral de tercer orden:**
Es la integral triple $\iiint_{E} f(x,y,z)\,dV$. Suma valores en un volumen del espacio y geométricamente representa "masa", "carga" o el valor acumulado dentro de un sólido tridimensional. 🪐
* **Diferencias principales:**
Radican en la dimensión del dominio (intervalo 1D, región plana 2D o volumen 3D) y el elemento diferencial que se emplea ($dx$, $dA$, $dV$). ⚖️
