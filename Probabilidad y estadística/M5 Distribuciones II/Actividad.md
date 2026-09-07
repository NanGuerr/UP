# 📊 Actividad: Análisis Estadístico de Procesos de Backup

---

### **Enunciado 1**
> **"La probabilidad de que el próximo backup que se realice pese más de 600MB es mayor a 0,50 ¿es una afirmación verdadera o falsa?"**

* **Paso a paso resolutivo:**
    1. **Definición de la variable:** Definimos la variable aleatoria continua $X$ como el *"tamaño en MB de un backup diario"*.
    2. **Modelo de distribución:** El problema nos indica que $X$ sigue una **distribución normal** con una media ($\mu$) de $500$ MB y desvío estándar ($\sigma$) desconocido:
       $$X \sim N(500, \sigma)$$
    3. **Propiedad de simetría:** Una de las propiedades fundamentales de la distribución normal es su simetría respecto a la media. Esto implica que la mediana es exactamente igual a la media ($500$ MB) y que la probabilidad acumulada a cada lado de este valor central es exactamente $0,50$:
       $$P(X > 500) = 0,50$$
    4. **Comparación de intervalos:** Dado que $600$ MB es un valor mayor que la media ($600 > 500$), la probabilidad de que un backup pese *más* de $600$ MB representa solo una parte del área de la cola derecha (por encima de $500$ MB). Por lo tanto:
       $$P(X > 600) < P(X > 500) = 0,50$$
    5. **Conclusión:** La probabilidad de que un backup pese más de $600$ MB es **estrictamente menor a 0,50**. Por ende, la afirmación de que es *"mayor a 0,50"* es incorrecta.
* **Correspondencia correcta:** **c. falsa**

---

### **Enunciado 2**
> **"Si se debe calcular el tamaño del 60% de los backup mas pequeños, ¿qué debe calcularse?"**

* **Paso a paso resolutivo:**
    1. **Planteo del problema:** Estamos buscando un valor umbral de nuestra variable (llamémoslo $x_p$) que acumule a su izquierda una proporción de probabilidad equivalente al $0,60$ (o el $60\%$ de los datos de menor peso):
       $$P(X \le x_p) = 0,60$$
    2. **Definición de percentil:** Por definición, un percentil $P_k$ es el valor de la variable por debajo del cual se encuentra el $k\%$ de las observaciones. 
    3. **Identificación:** Al requerir el límite para el $60\%$ de los backups más pequeños, debemos buscar el valor de la variable que acumule exactamente esa proporción, lo cual corresponde al **Percentil 60**.
* **Correspondencia correcta:** **h. El percentil 60**

---

### **Enunciado 3**
> **"Se sabe que el 80% de los backups que se realizan por día son exitosos, ¿cuál es la probabilidad de que en 15 días menos de 4 backups no sean exitosos?"**

* **Paso a paso resolutivo:**
    1. **Identificación del modelo:** Contamos la cantidad de veces que ocurre un evento dicotómico (éxito/fracaso) a lo largo de una serie de observaciones independientes y de tamaño fijo (días). Esto corresponde a una **distribución binomial**.
    2. **Parámetros del modelo:**
        * **Número de ensayos ($n$):** $n = 15$ días.
        * **Definición de "éxito" para la variable:** Como queremos contar los backups que **no son exitosos**, nuestro "éxito matemático" será que ocurra un fallo.
        * **Probabilidad de éxito ($p$):** Si el $80\%$ ($0,80$) de los backups diarios son exitosos, la probabilidad de que un backup *no sea exitoso* (falle) es de:
            $$p = 1 - 0,80 = 0,20$$
    3. **Definición de la variable:** $Y \sim 	ext{Binomial}(n = 15, p = 0,20)$.
    4. **Planteo de la pregunta:** Queremos calcular la probabilidad de que ocurran *"menos de 4"* eventos no exitosos. Esto se traduce matemáticamente en una desigualdad estricta:
       $$P(Y < 4)$$
    5. **Nomenclatura del sistema:** Siguiendo el formato de las opciones brindadas por la cátedra para la distribución binomial:
       $$	ext{Pbi}(X < 	ext{valor} / n = 	ext{ensayos}, p = 	ext{probabilidad})$$
       Reemplazando con nuestros datos obtenemos: **Pbi(X < 4 / n = 15, p = 0.20)**.
* **Correspondencia correcta:** **g. Pbi(X < 4 / n = 15, p = 0.20)**

---

### **Enunciado 4**
> **"Si la cantidad de errores críticos en el proceso de backup ocurren en promedio a razón de 2 errores cada 3 semanas, si se quiere calcular la probabilidad de que en 12 semanas se produzcan 9 errores críticos, debe utilizarse la distribución..."**

* **Paso a paso resolutivo:**
    1. **Identificación del modelo:** Se realiza el conteo de eventos discretos ("errores críticos") en un intervalo continuo de tiempo (semanas). Al tratarse de un proceso de ocurrencias independientes en el tiempo, se modela mediante una **distribución de Poisson**.
    2. **Ajuste del parámetro de tasa ($\lambda$):** 
        * La tasa promedio original es de $2$ errores cada $3$ semanas.
        * Como el nuevo intervalo de análisis es de $12$ semanas, debemos adaptar la tasa promedio de manera proporcional:
            $$\lambda = 2 	ext{ errores} 	imes \left( rac{12 	ext{ semanas}}{3 	ext{ semanas}} 
ight)$$
            $$\lambda = 2 	imes 4 = 8 	ext{ errores en } 12 	ext{ semanas}$$
    3. **Modelado final:** Para calcular la probabilidad de que se produzcan exactamente 9 errores críticos en ese periodo de 12 semanas, utilizaremos la distribución de **Poisson con lambda = 8**.
* **Correspondencia correcta:** **f. Poisson con lambda= 8**
