**ACTIVIDAD GRUPAL: PRUEBA DE HIPOTESIS PARA 1 POBLACIÓN.**

**Integrantes:**
LUIS FARAK NUÑES
NANCY G.

**1) Plantear la hipótesis alternativa ($H_1$), en función del problema y en términos de los parámetros dados:**

* **Hipótesis de investigación ($H_1$):** Si el tiempo medio de retraso en la entrega de los proyectos es inferior a 14 días, entonces los proyectos gestionados por la empresa tienen un retraso razonable.
* **Hipótesis nula ($H_0$):** $H_0: \mu \ge 14$ (El retraso medio es igual o superior a 14 días; los proyectos no tienen un retraso razonable).
* **Hipótesis alternativa ($H_1$):** $H_1 : \mu < 14$ (El retraso medio es estrictamente menor a 14 días; los proyectos tienen un retraso razonable).

**2) Calcular el valor p (p-value) indicando que probabilidad es la que se calcula, y tomar una decisión sobre si rechazar o no la hipótesis nula, asumiendo un riesgo del 10%.**

* **Estandarización de la distribución t de Student:**
$t_m = \frac{ \bar{x} - \mu_0}{\frac{s}{\sqrt{n}} } = \frac{12.4 - 14}{\frac{3.8}{\sqrt{18}}} = \frac{- 1.6 }{\frac{3.8}{4.24264} } = \frac{- 1.6}{0.89566}$
$t_m \approx - 1.7864$  Grados de libertad ($\nu = d f$): $n - 1 = 18 - 1 = 17$.
* $p_v = P ( t_{17} < - 1.7864 )$
* **Resultado en Jamovi:** $t = - 1.786$, $df = 17$, $p = 0.0459$.
* **CR:**  $p_v < \alpha$  Comparando los valores numéricos:  $0.0459 < 0.10 \implies$ Se rechaza la hipótesis nula ($H_0$). Se concluye que los proyectos gestionados por la empresa tienen un retraso razonable.

**3) Si se fija en un 0.10, la probabilidad de concluir que un proyecto tiene un retraso razonable, cuando, en realidad, no lo tiene; y en un 0.95 la probabilidad de concluir que tiene un retraso razonable, cuando, en realidad, lo tiene, y la media es 13 días:**

**a) El valor de $1-\alpha$ (nivel de confianza) es:**  $1 - 0.10 = 0.90$ (  $90 \%$ ).

**b) El valor de $\beta$ (probabilidad de cometer error tipo II) es:** Sabiendo que la potencia de la prueba es :
$1 - \beta = 0.95$ :  $\beta = 1 - 0.95 = 0.05$ (  $5 \%$ )
