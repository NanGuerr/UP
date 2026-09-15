El cambio en el índice inicial de una sumatoria (\\(n=0\\), \\(n=1\\) o \\(n=2\\)) responde a dos motivos fundamentales: la **existencia de un término independiente o constante** en el desarrollo y la necesidad de **evitar indeterminaciones o divisiones por cero**.



### **1. Casos con \\(n = 0\\) (Serie geométrica, Exponencial, Seno, Coseno, Racional y Arcotangente)**

El índice \\(n=0\\) es la norma en las series de potencias generales de la forma \\(\sum_{n=0}^{\infty} a_n x^n\\). 

* **Presencia del término independiente**: Para \\(n=0\\), el término \\(a_0 x^0 = a_0\\) representa la constante o el valor que toma la función cuando \\(x=0\\).
* **Serie geométrica**: Se define como \\(\sum_{n=0}^{\infty} x^n = 1 + x + x^2 + \dots = \frac{1}{1-x}\\). El índice debe empezar en \\(n=0\\) para incluir el término inicial \\(x^0 = 1\\).
* **Exponencial, Seno y Coseno**: Provienen de la serie de Maclaurin \\(\sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n\\), la cual comienza en la derivada de orden cero \\(f^{(0)}(0) = f(0)\\). Como \\(e^0 = 1\\) y \\(\cos(0) = 1\\), estas funciones tienen un término constante no nulo en \\(n=0\\).
* **Racionales y Arcotangente**: La serie de \\(\frac{1}{1+x^2} = \sum_{n=0}^{\infty} (-1)^n x^{2n}\\) se obtiene sustituyendo en la serie geométrica y comienza en \\(n=0\\). Al integrar término a término para obtener la serie de \\(\operatorname{arctan}(x)\\), el término \\(n=0\\) genera la primera potencia \\(x^1\\).



### **2. Casos con \\(n = 1\\) (Serie del Logaritmo, Series \\(p\\) y Series de funciones)**

El índice cambia a \\(n=1\\) principalmente por dos razones matemáticas:

* **Evitar la división por cero en Series \\(p\\)**: Las series \\(p\\) tienen la forma \\(\sum_{n=1}^{\infty} \frac{1}{n^p}\\). Si el índice comenzara en \\(n=0\\), se obtendría \\(\frac{1}{0^p}\\), lo cual genera una división por cero no definida.
* **Integración y reindexación en la serie de \\(\ln(1+x)\\)**: La serie de Maclaurin de \\(\ln(1+x)\\) se obtiene al integrar término a término la serie geométrica \\(\frac{1}{1+t} = \sum_{n=0}^{\infty} (-1)^n t^n\\). La integración produce:
  \\[\ln(1+x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{n+1}}{n+1}\\]
  Para expresar la potencia como \\(x^k\\) en lugar de \\(x^{n+1}\\), se reindexa la suma haciendo \\(k = n+1\\). Como al inicio \\(n=0\\), el nuevo índice empieza en \\(k=1\\):
  \\[\ln(1+x) = \sum_{n=1}^{\infty} \frac{(-1)^{n-1} x^n}{n}\\]
  Además, dado que \\(\ln(1+0) = \ln(1) = 0\\), la función no posee término independiente \\(a_0\\), y el divisor \\(n\\) en el denominador impediría evaluar en \\(n=0\\).



### **3. Casos con \\(n = 2\\) (Series \\(p\\) con logaritmo)**

Las series numéricas del tipo \\(\sum_{n=2}^{\infty} \frac{1}{n^a \ln^b(n)}\\) requieren comenzar estrictamente en \\(n=2\\) para evitar la invalidez de la función logarítmica:

1. Si \\(n=0\\), \\(\ln(0)\\) no existe en los números reales.
2. Si \\(n=1\\), \\(\ln(1) = 0\\), lo que provocaría que el denominador sea cero (\\(1^a \cdot 0^b = 0\\)) e incurriría nuevamente en una división por cero.

Por lo tanto, el número \\(n=2\\) es el primer entero positivo para el cual tanto \\(n\\) como \\(\ln(n)\\) están bien definidos y son distintos de cero.



