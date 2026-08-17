# Resumen de Series y Criterios de Convergencia

A continuación se presenta una tabla resumen con las definiciones, fórmulas y criterios de convergencia para los conceptos solicitados:

| Concepto / Criterio | Definición / Fórmula General | Condiciones de Convergencia / Notas |
| :--- | :--- | :--- |
| **Serie de Taylor** | Representación de una función como una suma infinita de términos calculados a partir de sus derivadas en un punto $a$:<br><br> $f(x) = \sum_{n=0}^{\infty} rac{f^{(n)}(a)}{n!} (x - a)^n$ | Converge a la función exacta si el límite del término complementario (error de truncamiento $R_n(x)$) es cero cuando $n 	o \infty$. Requiere que las derivadas $n$-ésimas estén acotadas en un intervalo. |
| **Serie de Maclaurin** | Es un caso particular de la serie de Taylor donde el centro de la serie es exactamente $a = 0$:<br><br> $f(x) = \sum_{n=0}^{\infty} rac{f^{(n)}(0)}{n!} x^n$ | La serie de Taylor de $f(x)$ es equivalente a la serie de Maclaurin de la función $f(x+a)$. Sus condiciones de convergencia son análogas a las de Taylor centradas en cero. |
| **Criterio de d'Alembert (Cociente)** | Método para determinar la convergencia absoluta de una serie evaluando el límite del cociente entre un término y su anterior:<br><br> $\lim_{n 	o \infty} \left| rac{u_{n+1}}{u_n} 
ight| = L$ | - Si **$L < 1$**: La serie converge.<br>- Si **$L > 1$**: La serie diverge.<br>- Si **$L = 1$**: El criterio no es concluyente y no permite decidir sobre la convergencia. |
| **Criterio de Leibniz** | Criterio utilizado exclusivamente para analizar la convergencia de **series alternadas** (aquellas cuyos términos cambian de signo consecutivamente, ej. $(-1)^n$). | Para que la serie converja, sus términos deben cumplir dos condiciones estrictas:<br>1. Alternar de signo.<br>2. Decrecer monótonamente en valor absoluto hacia cero ($\lim_{n 	o \infty} |u_n| = 0$). |
| **Serie Geométrica** | Es una serie de potencias de la forma:<br><br> $\sum_{n=0}^{\infty} x^n$ | Converge a la suma $rac{1}{1-x}$ exclusivamente en el intervalo abierto **$(-1, 1)$** (es decir, $|x| < 1$). Presenta convergencia puntual y absoluta en ese intervalo. |
| **Serie p** | Es una serie de la forma:<br><br> $\sum_{n=1}^{\infty} rac{1}{n^p}$ | - Si **$p > 1$**: La serie converge.<br>- Si **$p \le 1$**: La serie diverge (el caso $p=1$ es la serie armónica, que es divergente). Se suele usar como serie de comparación para analizar los bordes de intervalos. |

---
*Nota: El nombre "Lambert" que a veces surge en el estudio de series suele ser una confusión común con "d'Alembert" para el criterio del cociente, o bien refiere a la función W de Lambert, la cual no es un criterio de convergencia de series.*
