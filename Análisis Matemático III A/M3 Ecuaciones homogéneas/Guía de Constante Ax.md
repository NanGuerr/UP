# 📘 Guía El Rol de la Constante $A$ y Resolución Paso a Paso ⚙️

Cuando te enfrentas a ecuaciones diferenciales, es común toparte con expresiones como $A \cdot x$ o simplemente $Ax$. A continuación, desglosamos qué significa, de dónde proviene y cómo se desarrolla algebraicamente un ejercicio típico paso a paso. 🎯

---

## 🔍 1. ¿Qué es exactamente la constante $A$?

Cuando resuelves una ecuación diferencial mediante integración, obtienes una constante de integración que tradicionalmente llamamos $C$ 📐. Sin embargo, a lo largo del proceso algebraico es común aplicar funciones exponenciales ($e$), logaritmos naturales ($\ln$), multiplicaciones o divisiones 🔄.

* 💡 **Propiedad fundamental:** Por regla matemática, cuando aplicas la función exponencial $e$ a una constante ordinaria $e^C$, el resultado sigue siendo un número constante arbitrario. Para simplificar la escritura, los matemáticos y autores de libros renombran esa constante como $A$ (o $C_1$, $C_2$, etc.).
* 🎯 **Definición:** Por lo tanto, $A$ representa una constante arbitraria (un número real cualquiera que se define según las condiciones iniciales del problema) ⚖️.

---

## 📈 2. ¿A qué se refiere el término "$Ax$" en la solución?

En las soluciones de ecuaciones homogéneas (como las que ves en autoevaluaciones, por ejemplo: $\sqrt{\frac{x^2}{x^2-2xy-y^2}} = A \cdot x$), el término $Ax$ indica que la constante $A$ está multiplicando a la variable independiente $x$ dentro de la solución general de la ecuación 📊.

* ⚙️ **Diferencia clave:** A diferencia de las ecuaciones algebraicas comunes donde una constante está sola (ej. $y = 5$), en las ecuaciones diferenciales la constante suele quedar "atada" a operaciones algebraicas debido a cómo se separaron e integraron las variables 🛠️.

---

## 🛠️ 3. ¿Cómo se usa? (En la práctica)

* 📉 **Forma parte de la familia de curvas:** Una ecuación diferencial no tiene una sola respuesta, sino infinitas respuestas dependiendo del valor que tome $A$. Al graficarla, cada valor distinto de $A$ te da una curva diferente en el plano cartesiano.
* 🔍 **Para hallar una solución particular (si te dan condiciones iniciales):** Si en un problema te dieran un punto por el que pasa la curva (por ejemplo, que cuando $x = 1$, $y = 2$), usarías ese $Ax$ para despejar el valor exacto de la constante $A$.
* 🚀 **En el despeje algebraico:** No debes intentar "resolver" cuánto vale $x$ o $A$ a menos que te den datos iniciales; simplemente se deja expresado como parte de la solución implícita o explícita de la ecuación diferencial.

---

## 📝 4. Desarrollo Paso a Paso: De la Integral Logarítmica a la Solución con $A \cdot x$

Para pasar de la ecuación logarítmica inicial a la solución final con la raíz y la constante $A$, se sigue un procedimiento algebraico paso a paso aplicando propiedades de los logaritmos, exponenciales y el retorno a la variable original $u = y/x$ 🌀.

### **Paso 1: Eliminar el coeficiente $-1/2$ del logaritmo izquierdo**
Tenemos la ecuación:
$$-\frac{1}{2}\ln\vert{}1 - 2u - u^2\vert{} = \ln\vert{}x\vert{} + C$$

Multiplicamos toda la ecuación por $-2$ para despejar el logaritmo del lado izquierdo:
$$-2 \left( -\frac{1}{2}\ln\vert{}1 - 2u - u^2\vert{} \right) = -2(\ln\vert{}x\vert{} + C)$$
$$\ln\vert{}1 - 2u - u^2\vert{} = -2\ln\vert{}x\vert{} - 2C$$

### **Paso 2: Aplicar propiedades de los logaritmos**
Del lado derecho, el coeficiente $-2$ pasa como exponente del argumento de la propiedad de potencias de los logaritmos ($a\ln(b) = \ln(b^a)$):
$$\ln\vert{}1 - 2u - u^2\vert{} = \ln(x^{-2}) - 2C$$

Como $-2C$ sigue siendo una constante arbitraria, podemos renombrarla simplemente como otra constante, por ejemplo, $C_1$ (donde $C_1 = -2C$):
$$\ln\vert{}1 - 2u - u^2\vert{} = \ln(x^{-2}) + C_1$$

### **Paso 3: Aplicar la función exponencial ($e$) a ambos lados**
Para deshacernos del logaritmo natural, aplicamos la exponencial $e$ en toda la ecuación:
$$e^{\ln\vert{}1 - 2u - u^2\vert{}} = e^{\ln(x^{-2}) + C_1}$$

Por la propiedad de las potencias ($e^{a+b} = e^a \cdot e^b$):
$$\vert{}1 - 2u - u^2\vert{} = e^{C_1} \cdot e^{\ln(x^{-2})}$$

Como $e^{\ln(x^{-2})} = x^{-2}$ y definimos una nueva constante $A_1 = e^{C_1}$ (o simplemente $A$):
$$1 - 2u - u^2 = \frac{A_1}{x^2}$$

### **Paso 4: Retornar a las variables originales ($u = y/x$)**
Sustituimos $u = \frac{y}{x}$ en la ecuación:
$$1 - 2\left(\frac{y}{x}\right) - \left(\frac{y}{x}\right)^2 = \frac{A_1}{x^2}$$
$$1 - \frac{2y}{x} - \frac{y^2}{x^2} = \frac{A_1}{x^2}$$

Para limpiar las fracciones del lado izquierdo, multiplicamos toda la ecuación por $x^2$:
$$x^2 \left(1 - \frac{2y}{x} - \frac{y^2}{x^2}\right) = x^2 \left(\frac{A_1}{x^2}\right)$$
$$x^2 - 2xy - y^2 = A_1$$

### **Paso 5: Dar la forma de raíz que muestra el PDF**
Si invertimos ambos lados de la ecuación (es decir, elevamos a la potencia $-1$ o pasamos dividiendo) para que coincida con la estructura de la respuesta del documento:
$$\frac{1}{x^2 - 2xy - y^2} = \frac{1}{A_1}$$

Si sacamos raíz cuadrada en ambos lados (y ajustamos la constante de la derecha a una nueva constante genérica $A$):
$$\sqrt{\frac{1}{x^2 - 2xy - y^2}} = A \cdot \frac{1}{x} \quad \text{o bien} \quad \sqrt{\frac{x^2}{x^2 - 2xy - y^2}} = A \cdot x$$

🎉 **¡Y así es exactamente como se llega a la expresión final!**
