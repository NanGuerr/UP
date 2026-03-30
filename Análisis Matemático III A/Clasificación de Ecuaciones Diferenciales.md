# 📘 Guía de Clasificación de Ecuaciones Diferenciales (ED)

Resumen de los conceptos fundamentales del **Módulo 1** sobre la identificación y resolución de ecuaciones diferenciales.

---

## 1. Clasificación por Orden y Grado 🔍

Dada la ecuación: 
$$y''' + 2(y')^2 + 3y = 5$$

### 📏 Determinar el Orden
El **orden** es la mayor derivada presente.
* Tenemos $y'''$ (tercera) y $y'$ (primera).
* **Conclusión:** Es de **orden 3**. ✅ (Opción A).

### 📐 Determinar el Grado
El **grado** es la potencia a la que está elevada la derivada de mayor orden.
* La derivada mayor ($y'''$) está elevada a la **potencia 1**.
* **Nota:** El exponente $2$ en $(y')^2$ no afecta el grado porque no es la derivada mayor.
* **Conclusión:** Es de **grado 1**. ✅ (Opción C).

---

## 2. Verificación de Soluciones: El método de $e^{mx}$ 🧬

Para hallar $m$ en la función $f(x) = e^{mx}$ para la ecuación:
$$y'' - 4y' + 4y = 0$$

### 🛤️ Paso a paso:
1. **Derivar:** * $y = e^{mx}$
   * $y' = m \cdot e^{mx}$
   * $y'' = m^2 \cdot e^{mx}$
2. **Sustituir:** $(m^2 \cdot e^{mx}) - 4(m \cdot e^{mx}) + 4(e^{mx}) = 0$
3. **Factorizar:** $e^{mx} \cdot (m^2 - 4m + 4) = 0$
4. **Resolver el trinomio:** $(m - 2)^2 = 0 \implies \mathbf{m = 2}$ 🎯

---

## 3. Ecuaciones en Derivadas Parciales (EDP) 🌐

Dada la ecuación: 
$$z_{x}^{'} - z_{xy}^{''} + z = 0$$

* **Tipo:** Es una **EDP** porque $z$ depende de varias variables ($x, y$) y presenta derivadas parciales. 🧩
* **Orden:** Es de **orden 2** debido al término $z_{xy}^{''}$ (segunda derivada mixta). 🔝
* **Falso:** No es una ecuación "Ordinaria de orden 1". ❌

---

## 4. Análisis de la Solución de la Circunferencia ⭕

¿Es $x^2 + y^2 = 4$ solución de $y' = -\frac{x}{y}$?

1. **Derivación implícita:** $2x + 2y \cdot y' = 0$ ➡️ $y' = -x/y$. **¡Si es solución!**
2. **Clasificación:** Es una **Solución Particular** 📍 porque la constante ya tiene un valor definido ($C=4$). 
   * *(La solución general sería $x^2 + y^2 = C$)*.

---

## 5. El Caso Especial: ¿Cuándo NO se puede establecer el grado? ⚠️

Analicemos esta variante:
$$x \cdot y''' + 2xy \cdot y'' + 3xy = 5x^3$$

Aunque la derivada mayor ($y'''$) tiene potencia 1, existe un detalle técnico crítico:

1. **El Problema:** El término $2x \cdot \mathbf{y \cdot y''}$ presenta un producto entre la función desconocida $y$ y su derivada $y''$. 🚫
2. **Regla de Rigurosidad:** Para definir el "Grado", la ecuación debe ser un polinomio puro respecto a sus derivadas. Los productos entre $y$ y sus derivadas rompen esta estructura. 💔
3. **Conclusión Técnica:** En exámenes rigurosos, se marca que **"No se puede establecer el grado"** debido a la no linealidad provocada por el producto de la variable dependiente y sus derivadas.

---

### 💡 Resumen Rápido para el Examen
* **Orden:** La derivada más alta. ⭐
* **Grado:** El exponente de esa derivada más alta (si es polinómica). 🎓
* **Tipo:** Ordinaria (1 variable indep.) vs. Parcial (2+ variables indep.). 🗺️
