# 📚 Demostración por Inducción Matemática 📐

Para demostrar que la proposición $2^n \ge n + 1$ es cierta para todo entero $n > 0$ (es decir, para todo $n \in \mathbb{N}$), aplicamos el principio de inducción matemática a través de los cuatro pasos estructurados en el apunte de la materia:



## 🔹 Paso 1: Base inductiva 🏁

* **Qué estamos haciendo:** Evaluamos la propiedad para el menor valor entero que admite el enunciado. Dado que se pide para todo $n > 0$, el primer entero positivo es $n = 1$.
* **Por qué lo hacemos:** Queremos asegurar que la proposición tiene un punto de partida válido, es decir, que la "cadena" de afirmaciones comienza con un eslabón verdadero.

**Verificación:**  
Reemplazamos $n = 1$ en la proposición:
$$2^1 \ge 1 + 1$$
$$2 \ge 2$$

Dado que $2$ es igual a $2$, la desigualdad se cumple. Por lo tanto, la base inductiva es verdadera. ✅



## 🔹 Paso 2: Hipótesis inductiva 💡

* **Qué estamos haciendo:** Suponemos provisionalmente que la proposición es válida para un valor entero genérico cualquiera $n = k$, tal que $k \ge 1$.
* **Por qué lo hacemos:** Este supuesto representa nuestra "hipótesis de trabajo". Al escribirla de manera explícita, la convertimos en la herramienta algebraica clave que nos permitirá dar el salto hacia el siguiente número entero.

**Expresión:**  
Suponemos como verdadera la afirmación para $k$:
$$2^k \ge k + 1 \quad \text{(Hipótesis Inductiva)}$$



## 🔹 Paso 3: Tesis inductiva 🎯

* **Qué estamos haciendo:** Planteamos cómo se estructuraría matemáticamente la propiedad para el caso siguiente, es decir, para $n = k + 1$.
* **Por qué lo hacemos:** La tesis define con total claridad la meta matemática a la que debemos llegar en el siguiente paso mediante deducciones lógicas.

**Expresión:**  
Queremos probar que:
$$2^{k+1} \ge (k + 1) + 1 \implies \mathbf{2^{k+1} \ge k + 2} \quad \text{(Tesis)}$$



## 🔹 Paso 4: Demostración ⚙️

* **Qué estamos haciendo:** Partimos del primer miembro (izquierdo) de la tesis, aplicamos propiedades algebraicas y nuestra hipótesis inductiva para llegar de manera justificada al segundo miembro (derecho).
* **Por qué lo hacemos:** Es la prueba concluyente de que si la propiedad se cumple para un paso $k$, se propaga inevitablemente al caso $k+1$.

**Desarrollo formal:**  
Partimos del miembro izquierdo de nuestra tesis:
$$2^{k+1}$$

Aplicamos propiedades de la potenciación para descomponer la potencia:
$$2^{k+1} = 2 \cdot 2^k = 2^k + 2^k$$

Usamos la Hipótesis Inductiva (Paso 2), que nos asegura que $2^k \ge k + 1$. Al sustituir el primer término por una cantidad menor o igual, obtenemos la desigualdad:
$$2^k + 2^k \ge (k + 1) + 2^k$$

Dado que estamos trabajando dentro de los enteros positivos (donde $k \ge 1$), analizamos el segundo término $2^k$. Como $k \ge 1$, se tiene que $2^k \ge 2^1 = 2$. Y como $2 \ge 1$, es completamente seguro afirmar que:
$$2^k \ge 1$$

Reemplazamos ese segundo término $2^k$ por el valor más chico posible que puede tomar (el $1$), manteniendo la dirección de la desigualdad:
$$(k + 1) + 2^k \ge (k + 1) + 1 = k + 2$$

Por transitividad de las desigualdades, conectamos los extremos:
$$2^{k+1} \ge k + 2$$

Llegamos exactamente al miembro derecho de la tesis planteada en el Paso 3. La demostración por inducción matemática queda completada con éxito para todo entero positivo. 🎉
