# 📐 Ecuaciones Diferenciales: Exactas vs. Factor Integrante

Comprender la diferencia entre una **Ecuación Diferencial Exacta** y una que requiere un **Factor Integrante** es fundamental. Básicamente, el segundo método es el "rescate" o "plan de contingencia" cuando la ecuación no cumple las condiciones ideales desde el principio. 🛟



## 🎯 1. Ecuaciones Diferenciales Exactas (La situación ideal)
Una ecuación de la forma $M(x,y)dx + N(x,y)dy = 0$ es **exacta** si proviene directamente de la diferencial total de una función $F(x,y) = C$.

*   **⚖️ Condición principal:** Cumple la condición de simetría desde el inicio:
    $$\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$$
*   **🚀 Método de resolución directo:**
    1. Se integra $M$ respecto a $x$ (o $N$ respecto a $y$) para construir la función $F(x,y)$.
    2. Se deriva ese resultado parcial respecto a la otra variable.
    3. Se iguala a la función contraria para hallar la constante dependiente que faltaba ($g(y)$ o $h(x)$).
    4. Se iguala la función final a una constante general $C$.



## 🛠️ 2. Resolución con Factor Integrante (El plan de contingencia)
¿Qué pasa si tienes $M(x,y)dx + N(x,y)dy = 0$ pero **NO** es exacta? Aquí entra al rescate el factor integrante $\mu$ (mu).

*   **🚫 Condición inicial:** Las derivadas cruzadas NO son iguales:
    $$\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$$
*   **🪄 El truco mágico (Factor Integrante):** Consiste en buscar una función multiplicadora $\mu$ que, al multiplicar a toda la ecuación original, "fuerce" a que esta se vuelva exacta.
    *   *Si depende solo de $x$:* Si $\frac{M_y - N_x}{N} = p(x) \implies \mu(x) = e^{\int p(x) dx}$
    *   *Si depende solo de $y$:* Si $\frac{N_x - M_y}{M} = q(y) \implies \mu(y) = e^{\int q(y) dy}$
*   **🚧 Pasos adicionales de resolución:**
    1. Calcular las derivadas y demostrar que **NO** es exacta.
    2. Calcular el factor integrante $\mu(x)$ o $\mu(y)$.
    3. Multiplicar toda la ecuación original por $\mu$: $\mu M dx + \mu N dy = 0$.
    4. Verificar que la **nueva** ecuación ahora sí cumple que la derivada de la nueva $M$ es igual a la nueva $N$.
    5. A partir de aquí, **se resuelve exactamente igual que el método del punto 1**.



## 📊 Resumen Comparativo Rápido

| Característica | 🟢 Ecuación Exacta | 🔴 Factor Integrante |
| :--- | :--- | :--- |
| **Prueba de simetría** | $M'_y = N'_x$ ✅ | $M'_y \neq N'_x$ ❌ |
| **Paso inicial** | Se empieza a integrar inmediatamente. | Hay que calcular la función $\mu$ y multiplicar toda la ecuación. |
| **Relación** | Es el objetivo final a resolver. | Es el paso previo para *convertir* la ecuación en una "Exacta". |
| **Analogía** | 🗝️ La llave encaja perfectamente en la cerradura desde el inicio. | 🛢️ Necesitas lubricar y ajustar la cerradura antes de usar la llave. |
