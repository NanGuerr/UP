# 📝 Resolución Detallada de Ecuaciones Diferenciales

> **📅 Fecha de la clase:** 04 de Septiembre, 2026
> **📘 Tema:** Ecuaciones Diferenciales Ordinarias (EDO), Ecuaciones Homogéneas y Aplicaciones (Ley de Enfriamiento de Newton).

---

## ⚙️ 1. Ecuaciones Diferenciales Lineales de Primer Orden

La forma estándar de una ecuación diferencial lineal de primer orden es:


$$y' + P(x)y = Q(x)$$

**Problema planteado:**


$$y' + 2xy = 2xe^{-x^2}$$

### 🔍 Procedimiento: Método del Factor Integrante

Para resolver esta ecuación, multiplicamos ambos miembros por un factor integrante $\mu(x)$ que nos permita transformar el lado izquierdo en la derivada de un producto. El factor integrante se define como:


$$\mu(x) = e^{\int P(x) dx}$$

Dado que $P(x) = 2x$, calculamos:


$$\mu(x) = e^{\int 2x dx} = e^{x^2}$$

Multiplicamos toda la ecuación original por este factor:


$$e^{x^2}y' + e^{x^2}(2x)y = e^{x^2}(2xe^{-x^2})$$

El lado izquierdo se agrupa como la derivada exacta de un producto, y en el lado derecho los exponentes se cancelan ($x^2 - x^2 = 0$, por lo que $e^0 = 1$):


$$\frac{d}{dx} \left( e^{x^2}y \right) = 2x$$

Para despejar, integramos ambos lados con respecto a $x$:


$$\int d\left( e^{x^2}y \right) = \int 2x dx$$

$$e^{x^2}y = x^2 + K$$

Finalmente, despejamos $y$ para obtener la **solución general**:


$$y = \frac{x^2 + K}{e^{x^2}}$$

---

## 🔄 2. Ecuaciones Diferenciales Homogéneas

**Problema planteado:**


$$(4x + y)y' = y - 2x$$

Reescribimos la expresión separando la derivada $\frac{dy}{dx}$:


$$\frac{dy}{dx} = \frac{y - 2x}{4x + y}$$

### 🛠️ Procedimiento: Sustitución Homogénea

Aplicamos el cambio de variable $y = ux$. Derivando implícitamente respecto a $x$, obtenemos:


$$\frac{dy}{dx} = u + x\frac{du}{dx}$$

Sustituimos $y$ y $\frac{dy}{dx}$ en nuestra ecuación:


$$u + x\frac{du}{dx} = \frac{ux - 2x}{4x + ux}$$

Factorizamos y cancelamos la variable $x$ en el lado derecho:


$$u + x\frac{du}{dx} = \frac{x(u - 2)}{x(4 + u)} = \frac{u - 2}{4 + u}$$

Despejamos el término con la derivada, pasando $u$ a restar:


$$x\frac{du}{dx} = \frac{u - 2}{4 + u} - u$$

$$x\frac{du}{dx} = \frac{u - 2 - u(4 + u)}{4 + u} = \frac{u - 2 - 4u - u^2}{4 + u}$$

$$x\frac{du}{dx} = \frac{-u^2 - 3u - 2}{4 + u}$$

Separamos las variables para integrar (multiplicando por un signo negativo por comodidad):


$$-\frac{4 + u}{u^2 + 3u + 2} du = \frac{dx}{x}$$

### 🧩 Integración por Fracciones Parciales

El denominador se factoriza como $(u + 1)(u + 2)$. Planteamos las fracciones parciales:


$$\frac{u + 4}{(u + 1)(u + 2)} = \frac{A}{u + 1} + \frac{B}{u + 2}$$

$$u + 4 = A(u + 2) + B(u + 1)$$

* Evaluando en $u = -1$: $3 = A(1) \implies A = 3$
* Evaluando en $u = -2$: $2 = B(-1) \implies B = -2$

Sustituimos los valores en la integral:


$$-\left( \int \frac{3}{u + 1} du - \int \frac{2}{u + 2} du \right) = \int \frac{1}{x} dx$$

$$-3\ln\vert{}u + 1\vert{} + 2\ln\vert{}u + 2\vert{} = \ln\vert{}x\vert{} + C$$

Aplicando propiedades de los logaritmos:


$$\ln\left( \vert{}u + 1\vert{}^{-3} \cdot \vert{}u + 2\vert{}^2 \right) = \ln\vert{}x\vert{} + C$$

$$(u + 1)^{-3}(u + 2)^2 = x \cdot K$$

Regresamos a la variable original sustituyendo $u = \frac{y}{x}$ para obtener la **solución implícita**:


$$\left(\frac{y}{x} + 1\right)^{-3} \left(\frac{y}{x} + 2\right)^2 = x \cdot K$$

---

## 🌡️ 3. Aplicación Práctica: Ley de Enfriamiento de Newton

> 📉 *La velocidad de enfriamiento de un cuerpo es proporcional a la diferencia entre la temperatura del cuerpo ($T$) y la temperatura constante del medio ambiente ($M$).*
> 
> $$\frac{dT}{dt} = k(T - M)$$
> 
> 

### 🕵️‍♂️ Enunciado del Caso Forense

Se halló a un ejecutivo asesinado en su casa.

* Hora del hallazgo ($t = 0$): **23:00 hrs**.
* Temperatura del cuerpo al hallazgo: **$31^\circ\text{C}$**.
* Temperatura una hora después ($t = 1$): **$30^\circ\text{C}$**.
* Temperatura constante de la habitación: $M = \mathbf{22^\circ\text{C}}$.
* Temperatura normal de un ser humano vivo: **$37^\circ\text{C}$**.
**Objetivo:** Determinar a qué hora se cometió el asesinato.

### 🔢 Planteamiento y Resolución

La EDO es de variables separables:


$$\frac{dT}{T - 22} = k dt$$

Integramos ambos lados:


$$\int \frac{dT}{T - 22} = \int k dt \implies \ln\vert{}T - 22\vert{} = kt + C$$

$$T - 22 = e^{kt+C} = Ae^{kt}$$

$$T(t) = 22 + Ae^{kt}$$

**Paso 1: Hallar la constante $A$**
Evaluamos en $t = 0$ (23:00 hrs) donde $T = 31$:


$$31 = 22 + Ae^{k(0)} \implies 31 = 22 + A \implies A = 9$$

$$T(t) = 22 + 9e^{kt}$$

**Paso 2: Hallar la constante de decaimiento $k$**
Evaluamos en $t = 1$ (24:00 hrs) donde $T = 30$:


$$30 = 22 + 9e^{k(1)} \implies 8 = 9e^k \implies e^k = \frac{8}{9}$$

$$k = \ln\left(\frac{8}{9}\right) \approx -0.118$$

**Paso 3: Calcular la hora de la muerte ($t$)**
Buscamos el tiempo en el que la temperatura corporal era de $37^\circ\text{C}$:


$$37 = 22 + 9e^{-0.118t}$$

$$15 = 9e^{-0.118t} \implies \frac{15}{9} = e^{-0.118t}$$

$$\ln\left(\frac{15}{9}\right) = -0.118t$$

$$t = \frac{\ln(1.6667)}{-0.118} \approx -4.3 \text{ horas}$$

### ⏰ Conclusión Forense

Un valor de $t = -4.3$ significa que la muerte ocurrió $4.3$ horas antes del hallazgo a las 23:00 hrs.
$0.3$ horas equivalen aproximadamente a $20$ minutos ($-4 \text{ horas y } 20 \text{ minutos}$).
Restando este tiempo a las 23:00 hrs, el asesinato ocurrió aproximadamente a las **18:40 hrs**.
