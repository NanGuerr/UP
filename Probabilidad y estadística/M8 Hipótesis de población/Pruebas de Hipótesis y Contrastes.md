# 📊 Conceptos Generales de Pruebas de Hipótesis y Contrastes Estadísticos

## 🔍 ¿Qué es una prueba de hipótesis?
La técnica estadística conocida como prueba, test o ensayo de hipótesis se utiliza en investigaciones científicas con el objetivo de poner a prueba teorías de los más diversos campos de estudio. Su importancia radica en que, a partir de datos muestrales o experimentales, es posible generalizar o inferir las conclusiones a la población, mensurando los posibles errores de decisión a través de probabilidades.

Concretamente se trata de una técnica con la que se pone a prueba una suposición o conjetura acerca de alguna característica de una o más variables medidas en una o más poblaciones. Así, entre otros, los supuestos pueden realizarse sobre:
* La tendencia central de una variable (promedio poblacional $\mu$).
* La variabilidad (varianza poblacional $\sigma^2$).
* El porcentaje de individuos que poseen cierto atributo (proporción poblacional $p$).
* La asociación de variables.
* La distribución de probabilidad que sigue una variable.



## 📝 Definiciones Fundamentales

* **Hipótesis:** Es un enunciado provisorio respecto de un hecho o fenómeno que no se podrá descartar o rechazar si no existen suficientes razones que lo refuten.
* **Hipótesis de investigación ($H_i$):** Expresa la solución tentativa a un problema objeto de estudio del investigador y suele expresarse como interrogante o frase condicional del estilo $\text{"Si }\dots\text{, entonces }\dots\text{"}$.
* **Hipótesis estadística:** Es un enunciado provisorio referente a uno o más parámetros de una población o grupo de poblaciones, planteado debido a la incertidumbre sobre sus valores reales.



## ⚙️ Elementos de una Prueba de Hipótesis

Una prueba de hipótesis consta de los siguientes elementos principales:
1. **$H_0$ (Hipótesis nula):** Afirma la ausencia de efecto para determinada acción o tratamiento; es la base para tomar decisiones que impliquen una acción si se decide rechazarla.
2. **$H_1$ (Hipótesis alternativa):** Es la hipótesis de investigación en la cual se formula lo que se desea demostrar para tomar la acción correspondiente.
3. **Estadístico de prueba:** Valor único calculado a partir de los valores de una muestra de $n$ mediciones para tomar la decisión.
4. **Región de rechazo y valor crítico:** Conjunto de valores para los cuales se rechaza la hipótesis nula, delimitados por el valor crítico.



## ⚠️ Tipos de Errores y Potencia de la Prueba

La validez de una prueba se mide mediante las probabilidades de cometer errores de tipo I o de tipo II ($\alpha$ y $\beta$), las cuales se definen formalmente de la siguiente manera:
* $P(\text{cometer el error tipo I}) = \alpha = P\left(\text{Rechazar } H_0 \Big/ H_0 \text{ es verdadera}\right)$.
* $P(\text{cometer el error tipo II}) = \beta = P\left(\text{No rechazar } H_0 \Big/ H_0 \text{ es falsa}\right)$.
* $P(\text{tomar la decisión correcta}) = 1 - \beta = P\left(\text{Rechazar } H_0 \Big/ H_0 \text{ es falsa}\right)$, a esta probabilidad se la denomina **potencia de la prueba**.



## 🏭 Ejemplos Prácticos de Aplicación

### 1. Ejemplo de Compra de Maquinaria
Una empresa debe decidir la compra de maquinaria para aumentar su nivel medio de producción a $\mu = \text{200 unidades}$:
* $H_0: \mu = 200$ (no compro, porque no aumentó la producción).
* $H_1: \mu > 200$ (compro, porque aumenta mi producción).

### 2. Ejemplo de Concesión de Fotocopiadora
Si se venden por lo menos $1000$ fotocopias diarias, sería rentable alquilar el negocio:
* $H_0: \mu \le 1000$, no hacemos nada.
* $H_1: \mu > 1000$, alquilamos la fotocopiadora.

### 3. Ejemplo de Control Ambiental y Contaminación de un Río
Vecinos denuncian a una industria por contaminar un río ante el Organismo de Control de Medio Ambiente (OCMA). Como organismo de control, se antepone la seguridad de las personas, partiendo de la base de que la industria contamina ($H_0$) y buscando pruebas de que no lo está haciendo:
* $H_0: \text{contamina (entonces clausurar)}$.
* $H_1: \text{no contamina (entonces no clausurar)}$.
