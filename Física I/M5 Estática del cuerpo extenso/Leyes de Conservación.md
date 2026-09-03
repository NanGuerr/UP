# 📚 Estática del Cuerpo Extenso y Leyes de Conservación

## 🎯 Resumen Ejecutivo

Este documento sintetiza los principios fundamentales de la estática de cuerpos extensos y las leyes de conservación del momento lineal y angular. El análisis parte de la premisa de que, a diferencia de los puntos materiales, los cuerpos extensos poseen dimensiones donde el punto de aplicación de las fuerzas es crítico, dando lugar a movimientos de rotación además de traslación.

Los pilares de este estudio incluyen la hipótesis del cuerpo rígido, donde las distancias internas permanecen constantes, y la definición del momento de una fuerza (torque) como magnitud que cuantifica el efecto de rotación. Para alcanzar el equilibrio estático, se determina que un cuerpo debe cumplir simultáneamente la anulación de la resultante de fuerzas y la anulación del momento resultante. Asimismo, se examina la eficiencia de las máquinas simples para multiplicar fuerzas y las leyes de conservación que rigen sistemas aislados, demostrando cómo variables como el momento de inercia y la velocidad angular se interrelacionan para mantener la constancia del momento angular.



## 🏗️ 1. Estática del Cuerpo Extenso y el Concepto de Momento

El estudio de los cuerpos extensos requiere un tratamiento más avanzado que el de los objetos puntuales, ya que las fuerzas aplicadas no suelen ser concurrentes ni coplanares.

### 🧱 1.1 Hipótesis del Cuerpo Rígido
Se define como aquel que no experimenta deformaciones bajo la acción de fuerzas externas; es decir, la distancia relativa entre dos puntos cualesquiera permanece invariable. Bajo esta hipótesis, las fuerzas pueden trasladarse a lo largo de su recta de acción sin modificar los efectos producidos.

### 🔄 1.2 Momento de una Fuerza (Torque)
Es la magnitud que mide la capacidad de una fuerza para producir rotación respecto a un punto.

* **Definición matemática:** El módulo del momento ($|M_F|$) es el producto de la intensidad de la fuerza por la distancia (brazo) al punto, multiplicado por el seno del ángulo entre ambos:
$$|M_F| = |F| \cdot |d| \cdot 	ext{sen}( lpha)$$
* **Unidades:** Newton-metro ($N \cdot m$) en SIMELA y Kilogramo-fuerza metro ($Kgf \cdot m$) en el sistema técnico.
* **Convención de signos:**
  * 🕒 Giro horario: Momento negativo ($-$).
  * 🔄 Giro antihorario: Momento positivo ($+$).

### ⚖️ 1.3 Teorema de Varignon
Establece que el momento de la resultante de un sistema de fuerzas respecto a un punto dado es igual a la suma algebraica (o vectorial en el espacio) de los momentos de las fuerzas individuales respecto al mismo punto.



## ⚖️ 2. Sistemas Especiales y Condiciones de Equilibrio

### 🔄 2.1 La Cupla o Par de Fuerzas
Es un sistema constituido por dos fuerzas paralelas de igual módulo, pero sentidos opuestos y distintas rectas de acción.

* **Efecto:** La suma de fuerzas es cero ($\sum F = 0$), por lo que no hay traslación.
* **Rotación:** El momento resultante es constante e independiente del punto de origen utilizado, resultando en $|F| \cdot d$.

### 🛑 2.2 Requisitos para el Equilibrio Estático
Para que un cuerpo rígido se mantenga en reposo absoluto, deben cumplirse dos condiciones simultáneas:

1. **Equilibrio de Traslación:** La suma vectorial de todas las fuerzas aplicadas debe ser nula ($\sum F = 0$).
2. **Equilibrio de Rotación:** La suma algebraica de los momentos de todas las fuerzas respecto a cualquier punto debe ser cero ($\sum M_o = 0$).



## 🏛️ 3. Vínculos, Apoyos y Centros de Gravedad

Los vínculos restringen los grados de libertad de un cuerpo (en el plano existen tres: dos de traslación y uno de rotación).

| Tipo de Vínculo | Grados Restringidos | Posibilidades de Movimiento | Reacciones Generadas |
| :--- | :---: | :--- | :--- |
| 🧱 **Empotramiento** | 3 | Ninguna | Un momento y una fuerza en cualquier dirección. |
| 📍 **Apoyo Fijo** | 2 | Solo giro alrededor del apoyo. | Una fuerza en cualquier dirección que pasa por el apoyo. |
| 🛹 **Apoyo Móvil** | 1 | Traslación paralela al plano y rotación. | Una fuerza normal al plano de deslizamiento. |

### 📍 3.1 Centro de Gravedad (C.G.) y Centro de Masa (C.M.)
* **Centro de Gravedad:** Punto de aplicación de la resultante de todas las fuerzas gravitatorias que actúan sobre las porciones del cuerpo.
* **Centro de Masa:** Punto que permanece en reposo o se mueve con velocidad constante en ausencia de fuerzas externas.
* **Coincidencia:** Ambos puntos coinciden si el tamaño del cuerpo es tal que la intensidad de la gravedad no varía de un punto a otro.



## ⚙️ 4. Máquinas Simples

Son dispositivos diseñados para multiplicar la fuerza necesaria para mover o levantar objetos pesados.

* 🕹️ **Palanca:** Barra rígida con un punto fijo ($A$). Se rige por la condición: $|P| \cdot B_P = |F| \cdot B_F$.
  * **Primer género:** Apoyo entre Peso ($P$) y Fuerza ($F$) (ej. balanza).
  * **Segundo género:** $P$ entre apoyo y $F$ (ej. carretilla).
  * **Tercer género:** $F$ entre $P$ y apoyo (ej. caña de pescar).
* 🛞 **Poleas:**
  * **Polea Fija:** No ahorra esfuerzo ($|P| = |F|$), pero ofrece comodidad de dirección.
  * **Polea Móvil:** Ahorra la mitad del esfuerzo ($|F| = |P|/2$), pero el eje se mueve.
  * **Aparejos (Factorial/Potencial):** Combinaciones de poleas que reducen el esfuerzo según la fórmula $|F| = |P|/2^n$ (potencial) o $|F| = |P|/2n$ (factorial).
* 🔄 **Torno:** Cilindro de radio $R$ con manivela $L$. La fuerza se reduce según la relación $|F| = |P| \cdot R/L$.
* 📐 **Plano Inclinado:** Permite ganar altura con una fuerza menor al peso total: $|F| = |P| \cdot 	ext{sen}( lpha)$. Dado que el seno es $\le 1$, la fuerza siempre es menor o igual al peso.



## 🚀 5. Dinámica y Conservación del Momento

### 🚂 5.1 Conservación del Momento Lineal
En sistemas aislados (sin fuerzas externas), el momento lineal total se conserva. Un caso destacado es la colisión perfectamente inelástica, donde los cuerpos quedan unidos tras el impacto, moviéndose con la velocidad del centro de masas. En este proceso, la energía cinética final es siempre menor que la inicial.

### ⛸️ 5.2 Conservación del Momento Angular
Si el momento externo resultante respecto a un punto es cero, el momento angular total ($L$) del sistema respecto a ese punto es constante ($L = 	ext{constante}$).

* **Relación fundamental:** $L = I \cdot \omega$ (donde $I$ es el momento de inercia y $\omega$ la velocidad angular).
* **Efecto del Momento de Inercia:** Si un cuerpo reduce su momento de inercia (ej. un patinador encogiendo los brazos o estudiantes moviéndose al centro de un tiovivo), su velocidad angular debe aumentar para que $L$ permanezca constante.

> 💬 *"La ley de conservación del momento angular es una ley fundamental de la naturaleza... Incluso a la escala microscópica de la física atómica y nuclear... el momento angular de un sistema aislado permanece constante en el tiempo".*
