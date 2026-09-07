# 📝 Resolución Paso a Paso de Probabilidad (Parte I)

Este documento presenta la resolución detallada, justificada y paso a paso de cada una de las preguntas de la **Autoevaluación de Distribuciones de Probabilidad (Parte I)**.

---

## ❓ Pregunta 1
**Enunciado:** Sea $X$ una variable aleatoria discreta con distribución binomial, la función de distribución de probabilidad es asimétrica negativa cuando $n > 20$.
*   🔲 Verdadero
*   ☑️ **Falsa**

### 💡 Explicación paso a paso:
*   **Concepto clave:** La asimetría de una distribución binomial no depende del número de ensayos $n$ ni de que este sea mayor a 20. 
*   La forma de la distribución binomial depende exclusivamente del parámetro de probabilidad de éxito $p$:
    *   Si $p < 0.5$, la distribución presenta **asimetría positiva** (sesgada a la derecha).
    *   Si $p > 0.5$, la distribución presenta **asimetría negativa** (sesgada a la izquierda).
    *   Si $p = 0.5$, la distribución es completamente **simétrica**.
*   **Conclusión:** La afirmación es **falsa** porque la asimetría es gobernada por $p$, no por el tamaño de la muestra $n$.

---

## ❓ Pregunta 2
**Enunciado:** A un inversionista se le presenta una oportunidad de inversión que requiere un desembolso inicial de \$10 000. Las probabilidades de que, al cabo de un año, la inversión se transforme en \$30 000, \$15 000 o \$10 000 son de 0,30; 0,40 y 0,30, respectivamente. ¿Cuál es la ganancia media del inversionista?
*   **Respuesta:** **8000**

### 💡 Explicación paso a paso:
1.  **Definir los valores finales y sus probabilidades:**
    *   Valor final 1 ($V_1$) = \$30 000 con probabilidad $P_1 = 0.30$
    *   Valor final 2 ($V_2$) = \$15 000 con probabilidad $P_2 = 0.40$
    *   Valor final 3 ($V_3$) = \$10 000 con probabilidad $P_3 = 0.30$
2.  **Calcular el valor final esperado $E(V)$:**
    $$E(V) = (30000 \cdot 0.30) + (15000 \cdot 0.40) + (10000 \cdot 0.30)$$
    $$E(V) = 9000 + 6000 + 3000 = 18000$$
3.  **Calcular la ganancia media neta:**
    La ganancia neta se obtiene restando el desembolso inicial (\$10 000) al valor final esperado:

   $$ext{Ganancia Media} = E(V) - extInversión Inicial$$

   $$ext{Ganancia Media} = 18000 - 10000 = {8000}$$

---

## ❓ Pregunta 3
**Enunciado:** El valor esperado de una variable aleatoria es el valor medio después de un número grande de experimentos.
*   ☑️ **Verdadero**
*   🔲 Falso

### 💡 Explicación paso a paso:
*   **Concepto estadístico:** Por definición y en virtud de la **Ley de los Grandes Números**, el valor esperado $E(X)$ (o esperanza matemática) representa el promedio teórico a largo plazo que se esperaría obtener si el experimento aleatorio se repitiera una cantidad muy grande de veces.
*   **Conclusión:** La afirmación es **verdadera**.

---

## ❓ Pregunta 4
**Enunciado:** En una caja hay bolitas de color rojo y verde. Se extraen dos bolitas al azar, con reposición, y se registra $X$: cantidad de bolitas rojas. Se puede decir que $X$ sigue una distribución binomial.
*   ☑️ **Verdadero**
*   🔲 Falso

### 💡 Explicación paso a paso:
*   **Verificación de condiciones de la Distribución Binomial:**
    1.  *Número fijo de ensayos ($n$):* Se extraen 2 bolitas ($n = 2$).
    2.  *Dos resultados posibles:* Cada extracción puede ser "éxito" (bolita roja) o "fracaso" (bolita verde).
    3.  *Independencia y probabilidad constante:* Como las extracciones son **con reposición**, la composición de la caja no cambia, por lo que la probabilidad de éxito $p$ se mantiene constante en cada ensayo y los eventos son independientes.
*   **Conclusión:** Cumple rigurosamente todas las condiciones, por lo que la afirmación es **verdadera**.

---

## ❓ Pregunta 5
**Enunciado:** ¿Cuál de los siguientes dominios o recorridos corresponden a una variable aleatoria discreta? *(Seleccione las opciones correctas)*
*   ☑️ $R_x = \{-2; -1; 0; 1.5; 2; 3.6; 4; 5; 7\}$
*   🔲 $R = (3; 4)$ *(Intervalo continuo)*
*   ☑️
$R_x = \{-3/4; 2; 7/2\}$
*   ☑️ $R_x = \{3; 4\}$

### 💡 Explicación paso a paso:
*   **Definición de recorrido discreto:** Una variable aleatoria es discreta si su conjunto de valores posibles (recorrido) es un conjunto **numerable** (finito o infinito contable), es decir, sus valores están separados por "saltos" y no forman un intervalo continuo de números reales.
*   **Análisis de las opciones:**
    *   $R_x = \{-2; -1; 0; 1.5; 2; 3.6; 4; 5; 7\}$: Conjunto finito y numerable de valores aislados. **Es discreta**.
    *   $R = (3; 4)$: Representa un intervalo abierto continuo de números reales (infinitos valores reales sin separación). **Es continua (Incorrecto para discreta)**.
    *   $R_x = \{-rac{3}{4}; 2; rac{7}{2}\}$: Conjunto finito de valores fraccionarios aislados. **Es discreta**.
    *   $R_x = \{3; 4\}$: Conjunto finito de valores enteros aislados. **Es discreta**.

---

## ❓ Pregunta 6
**Enunciado:** ¿Qué condiciones deben verificarse para que una variable aleatoria siga una distribución binomial? *(Seleccione hasta 5 opciones)*
*   ☑️ Deben existir parámetros $n$ y $p$.
*   ☑️ El experimento debe repetirse $n$ veces.
*   🔲 La probabilidad de éxito debe variar con cada ensayo. *(Falso: debe ser constante)*
*   🔲 La variable aleatoria debe ser continua. *(Falso: es discreta)*
*   ☑️ Las repeticiones deben ser independientes.

### 💡 Explicación paso a paso:
*   Para que una variable aleatoria siga una **Distribución Binomial**, se deben cumplir los siguientes requisitos fundamentales:
    1.  El experimento consta de $n$ ensayos idénticos y repetidos.
    2.  Cada ensayo tiene únicamente dos resultados posibles mutuamente excluyentes (*éxito* y *fracaso*).
    3.  La probabilidad de éxito ($p$) permanece constante en cada ensayo.
    4.  Los ensayos son independientes entre sí.
    5.  Se define mediante los parámetros $n$ (número de ensayos) y $p$ (probabilidad de éxito).

---

## ❓ Pregunta 7
**Enunciado:** Completar la siguiente tabla de la distribución de probabilidad de la variable aleatoria $X$, sabiendo que $P(X = 3) = 0.12$ y $E(X) = 3.16$:

| $X$ | $P(X)$ |
| :---: | :---: |
| **0** | *[Completar: 0,53]* |
| **3** | $0,12$ |
| **8** | *[Completar: 0,35]* |

### 💡 Resolución paso a paso del sistema de ecuaciones:

Definamos las probabilidades incógnitas:
*   $P(X = 0) = p_0$
*   $P(X = 3) = 0.12$
*   $P(X = 8) = p_8$

Aplicamos las dos propiedades fundamentales de las distribuciones de probabilidad discreta:

1.  **La suma total de probabilidades debe ser igual a 1:**
    $$p_0 + 0.12 + p_8 = 1$$
    $$p_0 + p_8 = 1 - 0.12$$
    $$\mathbf{p_0 + p_8 = 0.88} \quad 	ext{--- (Ecuación 1)}$$

2.  **La esperanza matemática (valor esperado) es igual a 3.16:**
    $$E(X) = \sum [X \cdot P(X)] = 3.16$$
    $$(0 \cdot p_0) + (3 \cdot 0.12) + (8 \cdot p_8) = 3.16$$
    $$0 + 0.36 + 8p_8 = 3.16$$
    $$8p_8 = 3.16 - 0.36$$
    $$8p_8 = 2.80$$
    $$p_8 = rac{2.80}{8}$$
    $$\mathbf{p_8 = 0.35}$$

3.  **Sustituir $p_8$ en la Ecuación 1 para hallar $p_0$:**
    $$p_0 + 0.35 = 0.88$$
    $$p_0 = 0.88 - 0.35$$
    $$\mathbf{p_0 = 0.53}$$

### 📋 Tabla Completada:
| $X$ | $P(X)$ |
| :---: | :---: |
| **0** | **0,53** |
| **3** | **0,12** |
| **8** | **0,35** |

Verificación: 
$$0.53 + 0.12 + 0.35 = 1.00$$ y $$0(0.53) + 3(0.12) + 8(0.35) = 0 + 0.36 + 2.80 = 3.16$$
