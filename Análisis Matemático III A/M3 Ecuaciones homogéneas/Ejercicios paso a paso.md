# 📝 Ejercicios paso a paso: Ecuaciones Diferenciales Homogéneas ⚙️

### **🎯 Método General de Resolución**
Una ecuación diferencial ordinaria escrita en la forma $M(x,y)dx + N(x,y)dy = 0$ es **homogénea** si las funciones $M$ y $N$ son homogéneas del mismo grado $n$ 📐. El método estándar consiste en:
1. Verificar que $M(tx, ty) = t^n M(x,y)$ y $N(tx, ty) = t^n N(x,y)$ 🔍.
2. Aplicar la sustitución **$y = ux \implies dy = u\,dx + x\,du$** (o alternativamente en forma de derivada: **$y' = u + x u'$**) 🛠️.
3. Simplificar por $x^n$ para transformar la ecuación en una **ecuación de variables separables** en términos de $u$ y $x$ 📊.
4. Integrar ambos lados, retornar a las variables originales usando **$u = y/x$** y despejar para llegar a la solución 📈.

---

### **📚 Desarrollo Paso a Paso de los 10 Ejercicios**

#### **a) $(x^2 - y^2)dx + 3xy\,dy = 0$**
* **Respuesta del PDF:** $\left( rac{2y^2+x^2}{x^2} 
ight)^{3/4} = A \cdot rac{1}{x}$

**Paso a paso:**
1. **Homogeneidad:** $M(x,y) = x^2 - y^2$ (grado 2) y $N(x,y) = 3xy$ (grado 2). Es homogénea ⚖️.
2. **Sustitución:** $y = ux \implies dy = u\,dx + x\,du$:
   $$(x^2 - u^2x^2)dx + 3x(ux)(u\,dx + x\,du) = 0$$
3. **Simplificación:** Dividimos por $x^2$:
   $$(1 - u^2)dx + 3u^2 dx + 3ux\,du = 0$$
   $$(1 + 2u^2)dx + 3ux\,du = 0 \implies rac{dx}{x} = -rac{3u}{1 + 2u^2}du$$
4. **Integración:**
   $$\int rac{1}{x} dx = -rac{3}{2} \int rac{2u}{1 + 2u^2} du \implies \ln|x| + C = -rac{3}{4} \ln(1 + 2u^2)$$
   Multiplicando por $4$ y aplicando propiedades de logaritmos:
   $$4\ln|x| + 3\ln(1 + 2u^2) = C_1 \implies \ln\left( x^4 (1 + 2u^2)^3 
ight) = C_1$$
   $$x^4 (1 + 2u^2)^3 = C_2 \implies (1 + 2u^2)^3 = rac{C_2}{x^4}$$
   Aplicamos raíz cuarta a ambos lados:
   $$(1 + 2u^2)^{3/4} = rac{C_3}{x}$$
5. **Retorno a las variables originales ($u = y/x$):**
   $$\left( 1 + 2rac{y^2}{x^2} 
ight)^{3/4} = A \cdot rac{1}{x} \implies \mathbf{\left( rac{x^2 + 2y^2}{x^2} 
ight)^{3/4} = A \cdot rac{1}{x}}$$
   🎉 **¡Coincide perfectamente con el PDF de respuestas!**

---

#### **b) $rac{dy}{dx} = rac{2y}{x} - rac{y^2}{x^2}$**
* **Respuesta del PDF:** $e^{rac{y-x}{y}} = A \cdot rac{1}{x}$
* ⚠️ **Nota de discrepancia:** Hay un error en el enunciado del PDF. La respuesta del PDF corresponde a la ecuación $rac{dy}{dx} = rac{y}{x} - rac{y^2}{x^2}$ (sin el coeficiente $2$). Desarrollaremos **ambas** para que comprendas la diferencia.

**Resolución del Caso Real (lo que responde el PDF):**
Para la ecuación $rac{dy}{dx} = rac{y}{x} - rac{y^2}{x^2}$:
1. **Sustitución:** $y = ux \implies y' = u + x u'$:
   $$u + x rac{du}{dx} = u - u^2 \implies x rac{du}{dx} = -u^2$$
2. **Separación de variables e integración:**
   $$-rac{du}{u^2} = rac{dx}{x} \implies \int -u^{-2} du = \int rac{1}{x} dx \implies rac{1}{u} = \ln|x| + C$$
   Como $\ln(A \cdot rac{1}{x}) = \ln(A) - \ln(x)$, podemos reescribir la constante como:
   $$rac{1}{u} = -\ln\left( A \cdot rac{1}{x} 
ight) \implies -rac{1}{u} = \ln\left( A \cdot rac{1}{x} 
ight)$$
3. **Aplicando exponencial y volviendo a $u = y/x$ (lo que da $rac{1}{u} = rac{x}{y}$):**
   $$e^{-x/y} = A \cdot rac{1}{x} \implies e^{rac{y-x}{y}} = e^1 \cdot e^{-x/y} = \mathbf{A \cdot rac{1}{x}} 	ext{ (absorbiendo } e^1 	ext{ en } A\mathbf{)}$$

**Resolución si resuelves la ecuación escrita tal cual ($rac{dy}{dx} = rac{2y}{x} - rac{y^2}{x^2}$):**
1. **Sustitución:** $u + x u' = 2u - u^2 \implies x u' = u - u^2$.
2. **Separación e integración:**
   $$rac{du}{u(1-u)} = rac{dx}{x} \implies \int \left( rac{1}{u} + rac{1}{1-u} 
ight) du = \int rac{1}{x} dx \implies \ln|u| - \ln|1-u| = \ln|x| + C$$
   $$\ln\left| rac{u}{1-u} 
ight| = \ln|x| + C \implies rac{u}{1-u} = C_1 x$$
3. **Retorno a $u = y/x$:**
   $$rac{y/x}{1 - y/x} = C_1 x \implies rac{y}{x-y} = C_1 x \implies \mathbf{rac{x-y}{y} = A \cdot rac{1}{x}}$$

---

#### **c) $(2x^3 + y^3) dx - 3xy^2 dy = 0$**
* **Respuesta del PDF:** $\left( rac{x^3}{2x^3-y^3} 
ight)^{1/6} = A \cdot rac{1}{x}$
* ⚠️ **Nota de discrepancia:** La respuesta del PDF tiene un error de signos/coeficientes. Corresponde matemáticamente a la ecuación original $(4x^3 - 3y^3)dx + xy^2 dy = 0$. Veamos la resolución correcta de la ecuación planteada:

**Paso a paso de la ecuación planteada:**
1. **Sustitución:** $y = ux \implies dy = u\,dx + x\,du$:
   $$(2x^3 + u^3 x^3)dx - 3x(u^2 x^2)(u\,dx + x\,du) = 0$$
2. **Simplificación:** Dividimos por $x^3$:
   $$(2 + u^3)dx - 3u^3 dx - 3u^2 x\,du = 0 \implies 2(1 - u^3)dx = 3u^2 x\,du$$
3. **Separación e integración:**
   $$rac{dx}{x} = rac{3u^2}{2(1 - u^3)} du \implies \int rac{1}{x} dx = -rac{1}{2} \int rac{-3u^2}{1 - u^3} du$$
   $$\ln|x| + C = -rac{1}{2} \ln|1 - u^3| \implies 2\ln|x| + \ln|1 - u^3| = C_1$$
   $$\ln\left( x^2 |1 - u^3| 
ight) = C_1 \implies x^2 (1 - u^3) = C_2$$
4. **Retorno a $u = y/x$:**
   $$x^2 \left( 1 - rac{y^3}{x^3} 
ight) = C_2 \implies x^2 \left( rac{x^3 - y^3}{x^3} 
ight) = C_2 \implies \mathbf{rac{x^3 - y^3}{x} = C_2}$$
   💡 *Esta es la solución analítica exacta para la ecuación del enunciado.*

---

#### **d) $x^2 rac{dy}{dx} = x^2 + 3xy + y^2$**
* **Respuesta del PDF:** $e^{rac{x}{x+y}} \cdot x = A$

**Paso a paso:**
1. **Sustitución:** $y = ux \implies y' = u + x u'$:
   $$x^2 \left( u + x rac{du}{dx} 
ight) = x^2 + 3x(ux) + u^2 x^2 \implies u + x rac{du}{dx} = 1 + 3u + u^2$$
2. **Separación de variables:**
   $$x rac{du}{dx} = 1 + 2u + u^2 \implies x rac{du}{dx} = (u + 1)^2 \implies rac{du}{(u+1)^2} = rac{dx}{x}$$
3. **Integración:**
   $$\int (u+1)^{-2} du = \int rac{1}{x} dx \implies -rac{1}{u+1} = \ln|x| + C$$
4. **Ajuste algebraico:**
   Reemplazamos $u = y/x \implies rac{1}{u+1} = rac{1}{y/x + 1} = rac{x}{x+y}$:
   $$-rac{x}{x+y} = \ln|x| + C \implies rac{x}{x+y} = -\ln|x| - C = \ln\left( rac{1}{x} 
ight) + C_1$$
   Aplicando exponencial a ambos lados:
   $$e^{rac{x}{x+y}} = e^{C_1} \cdot rac{1}{x} \implies \mathbf{e^{rac{x}{x+y}} \cdot x = A}$$
   🎉 **¡Coincide perfectamente con el PDF de respuestas!**

---

#### **e) $rac{dy}{dx} = rac{2x-3y}{4y+3x}$**
* **Respuesta del PDF:** $rac{1}{\sqrt{2x^2-6xy-4y^2}} = A$

**Paso a paso:**
1. **Sustitución:** $y = ux \implies y' = u + x u'$:
   $$u + x rac{du}{dx} = rac{2 - 3u}{4u + 3} \implies x rac{du}{dx} = rac{2 - 3u - u(4u+3)}{4u+3} = rac{2 - 6u - 4u^2}{4u+3}$$
2. **Separación de variables:**
   $$rac{4u + 3}{2 - 6u - 4u^2} du = rac{dx}{x}$$
3. **Integración:**
   Notamos que la derivada de $w = 2 - 6u - 4u^2$ es $dw = (-6 - 8u)du = -2(4u+3)du$.
   $$-rac{1}{2} \int rac{-2(4u+3)}{2 - 6u - 4u^2} du = \int rac{1}{x} dx \implies -rac{1}{2} \ln|2 - 6u - 4u^2| = \ln|x| + C$$
   Multiplicando por $-2$:
   $$\ln|2 - 6u - 4u^2| = -2\ln|x| + C_1 \implies \ln|2 - 6u - 4u^2| = \ln\left( rac{1}{x^2} 
ight) + C_1$$
   Aplicando exponencial:
   $$2 - 6u - 4u^2 = rac{C_2}{x^2}$$
4. **Retorno a $u = y/x$:**
   $$2 - 6rac{y}{x} - 4rac{y^2}{x^2} = rac{C_2}{x^2}$$
   Multiplicamos todo por $x^2$:
   $$2x^2 - 6xy - 4y^2 = C_2$$
   Tomando el recíproco de la raíz en ambos lados para coincidir con el PDF:
   $$\mathbf{rac{1}{\sqrt{2x^2 - 6xy - 4y^2}} = A}$$
   🎉 **¡Coincide perfectamente con el PDF de respuestas!**

---

#### **f) $(x - y) \cdot y' + 3y - 4x = 0$**
* **Respuesta del PDF:** $e^{rac{x}{y-2x}} = A \cdot (y - 2x)$

**Paso a paso:**
1. **Sustitución:** Despejamos $y' = rac{4x - 3y}{x - y}$. Usando $y = ux \implies y' = u + xu'$:
   $$u + x rac{du}{dx} = rac{4 - 3u}{1 - u} \implies x rac{du}{dx} = rac{4 - 3u - u(1 - u)}{1 - u} = rac{u^2 - 4u + 4}{1 - u}$$
   Notamos el trinomio cuadrado perfecto: $u^2 - 4u + 4 = (u-2)^2$.
2. **Separación de variables:**
   $$rac{1-u}{(u-2)^2} du = rac{dx}{x}$$
3. **Integración:**
   Hacemos sustitución simple en la izquierda: $v = u - 2 \implies u = v + 2 \implies du = dv$:
   $$\int rac{1 - (v+2)}{v^2} dv = \int rac{-v-1}{v^2} dv = \int \left(-rac{1}{v} - v^{-2}
ight) dv = -\ln|v| + rac{1}{v}$$
   Volviendo a $u$:
   $$-\ln|u - 2| + rac{1}{u-2} = \ln|x| + C \implies rac{1}{u-2} = \ln|x(u-2)| + C$$
4. **Retorno a $u = y/x$:**
   $$u - 2 = rac{y - 2x}{x} \quad 	ext{y} \quad x(u-2) = y-2x$$
   $$rac{x}{y-2x} = \ln|y-2x| + C \implies \mathbf{e^{rac{x}{y-2x}} = A \cdot (y-2x)}$$
   🎉 **¡Coincide perfectamente con el PDF de respuestas!**

---

#### **g) $y' = rac{x-y}{x+y}$**
* **Respuesta del PDF:** $\left( rac{x^2}{x^2-2xy-y^2} 
ight)^{1/2} = A \cdot x$

**Paso a paso:**
1. **Sustitución:** $y = ux \implies y' = u + x u'$:
   $$u + x rac{du}{dx} = rac{1 - u}{1 + u} \implies x rac{du}{dx} = rac{1 - 2u - u^2}{1 + u}$$
2. **Separación de variables e integración:**
   $$rac{u+1}{1 - 2u - u^2} du = rac{dx}{x} \implies -rac{1}{2} \ln|1 - 2u - u^2| = \ln|x| + C$$
   $$\ln|1 - 2u - u^2| = -2\ln|x| + C_1 = \ln\left(rac{1}{x^2}
ight) + C_1 \implies 1 - 2u - u^2 = rac{C_2}{x^2}$$
3. **Retorno a $u = y/x$:**
   $$1 - 2rac{y}{x} - rac{y^2}{x^2} = rac{C_2}{x^2}$$
   Multiplicando por $x^2$:
   $$x^2 - 2xy - y^2 = C_2 \implies rac{x^2 - 2xy - y^2}{x^2} = rac{C_2}{x^2}$$
   Tomando el recíproco y la raíz cuadrada:
   $$\mathbf{\left( rac{x^2}{x^2-2xy-y^2} 
ight)^{1/2} = A \cdot x}$$
   🎉 **¡Coincide perfectamente con el PDF de respuestas!**

---

#### **h) $y' = rac{x+y}{2x}$**
* **Respuesta del PDF:** $\left( rac{x}{2y-x} 
ight)^{1/2} = A \cdot x$
* ⚠️ **Nota de discrepancia:** Aquí hay un error de arrastre algebraico en la constante del denominador del PDF de respuestas. El término correcto es $(y-x)^2$ en lugar de $2y-x$.

**Paso a paso correcto:**
1. **Sustitución:** $y = ux \implies y' = u + xu'$:
   $$u + x rac{du}{dx} = rac{1 + u}{2} \implies x rac{du}{dx} = rac{1 - u}{2}$$
2. **Separación de variables e integración:**
   $$rac{2}{1 - u} du = rac{dx}{x} \implies -2\ln|1-u| = \ln|x| + C \implies (1-u)^{-2} = C_1 x$$
3. **Retorno a $u = y/x$:**
   $$rac{1}{(1 - y/x)^2} = C_1 x \implies rac{x^2}{(x-y)^2} = C_1 x \implies rac{x}{(x-y)^2} = C_1$$
   Aplicando la raíz cuadrada para darle el formato del PDF:
   $$\mathbf{\left( rac{x}{(x-y)^2} 
ight)^{1/2} = A}$$
   *(El término del PDF $2y-x$ no satisface la ecuación diferencial original, el correcto es $x-y$)* 💡.

---

#### **i) $y' = rac{xy}{x^2-y^2}$**
* **Respuesta del PDF:** $e^{-rac{x^2}{2y^2}} = y$

**Paso a paso:**
1. **Sustitución:** $y = ux \implies y' = u + xu'$:
   $$u + x rac{du}{dx} = rac{u}{1 - u^2} \implies x rac{du}{dx} = rac{u^3}{1-u^2}$$
2. **Separación de variables e integración:**
   $$rac{1-u^2}{u^3} du = rac{dx}{x} \implies \int \left( u^{-3} - rac{1}{u} 
ight) du = \int rac{1}{x} dx$$
   $$-rac{1}{2u^2} - \ln|u| = \ln|x| + C \implies -rac{1}{2u^2} = \ln|ux| + C$$
3. **Retorno a $u = y/x$ (donde $ux = y$):**
   $$-rac{x^2}{2y^2} = \ln|y| + C$$
   Aplicando exponencial a ambos lados (y absorbiendo la constante):
   $$\mathbf{e^{-rac{x^2}{2y^2}} = y}$$
   🎉 **¡Coincide perfectamente con el PDF de respuestas!**

---

#### **j) $x + y rac{dy}{dx} = 2y$**
* **Respuesta del PDF:** $-rac{x^2}{(y-x)^2} + \ln \left| rac{y-x}{x} 
ight| = \ln \left| rac{1}{x} 
ight| + C$
* ⚠️ **Nota de discrepancia:** El autor cometió un error algebraico al final de la integración de la variable $u$, elevando erróneamente al cuadrado el término lineal en el PDF de respuestas. El término correcto es $-rac{x}{y-x}$ (lineal) y no cuadrático.

**Paso a paso de la resolución exacta:**
1. **Sustitución:** Despejamos $y' = rac{2y-x}{y}$. Con $y = ux \implies y' = u + xu'$:
   $$u + x rac{du}{dx} = rac{2u-1}{u} \implies x rac{du}{dx} = rac{2u - 1 - u^2}{u} = -rac{(u-1)^2}{u}$$
2. **Separación de variables e integración:**
   $$rac{u}{(u-1)^2} du = -rac{dx}{x}$$
   Para integrar la izquierda, hacemos $v = u - 1 \implies u = v + 1$:
   $$\int rac{v+1}{v^2} dv = \int \left(rac{1}{v} + v^{-2}
ight) dv = \ln|v| - rac{1}{v}$$
   Volviendo a $u$:
   $$\ln|u-1| - rac{1}{u-1} = -\ln|x| + C \implies -rac{1}{u-1} + \ln|u-1| = \ln\left| rac{1}{x} 
ight| + C$$
3. **Retorno a $u = y/x$ (donde $u-1 = rac{y-x}{x}$):**
   $$\mathbf{-rac{x}{y-x} + \ln\left| rac{y-x}{x} 
ight| = \ln\left| rac{1}{x} 
ight| + C}$$
   *(En el PDF de respuestas se escribió por error $-rac{x^2}{(y-x)^2}$, pero la derivada matemática demuestra que la solución correcta es lineal)* 💡.

---

### **📊 Resumen de Validación para tu Estudio**

| Ejercicio | ¿Coincide el PDF? | Detalle a tener en cuenta |
| :--- | :---: | :--- |
| **a** | Sí ✅ | ¡Perfecto para practicar! |
| **b** | Discrepancia ⚠️ | El enunciado tiene un $2$ de más, o a la respuesta le falta. |
| **c** | Discrepancia ⚠️ | Error en signos/coeficientes de la respuesta. |
| **d** | Sí ✅ | ¡Perfecto para practicar! |
| **e** | Sí ✅ | ¡Perfecto para practicar! |
| **f** | Sí ✅ | ¡Perfecto para practicar! |
| **g** | Sí ✅ | ¡Perfecto para practicar! |
| **h** | Discrepancia ⚠️ | El denominador correcto es $y-x$, no $2y-x$. |
| **i** | Sí ✅ | ¡Perfecto para practicar! |
| **j** | Discrepancia ⚠️ | El primer término es $-rac{x}{y-x}$ y no cuadrático. |
