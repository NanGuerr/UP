# 🛠️ Guía Práctica y Recomendaciones para el Trabajo Práctico con FPGAs e ISE 💻

Este documento recopila la transcripción detallada y una guía descriptiva basada en la experiencia para encarar el trabajo práctico (TP) utilizando herramientas de diseño electrónico (EDA) y máquinas virtuales.



## 🖥️ 1. Entorno de Trabajo y Máquina Virtual

Para aquellos que están recién comenzando con el TP y nunca han trabajado con ISE (Xilinx ISE) antes:

* **Uso de Máquina Virtual:** Es altamente recomendable trabajar mediante una máquina virtual con el sistema operativo adecuado (por ejemplo, con el entorno `ovas` precargado). Instalarlo directamente de forma nativa en Windows suele presentar problemas de rutas y bloqueos a mitad del camino.


* **Activación por Terminal:** Para solucionar problemas de licencias o firmas de arquitectura (como los errores en Spartan-6), el método más rápido y sencillo es aplicar los comandos de activación a través de la terminal copiando y pegando los scripts provistos en las guías.





## 📁 2. Creación y Configuración del Nuevo Proyecto

Al iniciar el desarrollo en la herramienta ISE:

* **Orden de apertura:** Primero debes abrir la máquina virtual y luego ejecutar el archivo del proyecto; de esta forma, el programa se instalará y vinculará de manera automática haciendo solo clics sucesivos.


* **Especificaciones técnicas:** Al crear un nuevo proyecto, asegúrate de seleccionar los parámetros correctos:


* **Familia:** Spartan-6 (versión 1 recomendada por su estabilidad).


* **Lenguaje:** VHDL.


* **Simulador:** ISim (o la herramienta de simulación integrada para VHDL).




* **Módulo Principal (*Top Module*):** Define correctamente tu archivo principal (por ejemplo, el archivo correspondiente al TP) como el *Top Module* desde el inicio para evitar errores de compilación o búsqueda de esquemáticos erróneos.





## 🔬 3. Procedimiento para las Simulaciones (*Testbenches*)

Las simulaciones de los bancos de pruebas (*testbenches*) deben realizarse de forma individual para cada módulo o componente desarrollado:

1. **Selección del componente:** Debes posicionarte específicamente en cada componente o submódulo dentro del panel de fuentes (no en el *Top Module* global si vas a simular partes individuales).


2. **Herramienta de simulación:** Ve a las opciones superiores del árbol de herramientas y busca la sección de simulación (herramientas asociadas a `ISim` o vistas en formato gráfico RTL).


3. **Visualización de diagramas RTL:** Para obtener las capturas de los diagramas esquemáticos que pide la cátedra, utiliza la vista esquemática en red RTL de cada componente.


4. **Ampliación de la ventana de tiempo:**
* Por defecto, si configuras un rango acotado (por ejemplo, $1000\text{ ps}$), solo verás pequeños fragmentos o líneas verdes aisladas en los flancos.


* Para visualizar el transcurso del tiempo completo y detallar los flancos de subida y bajada, debes hacer clic en los íconos de zoom o lupa con la opción de **visualización completa** ubicados en el costado izquierdo del simulador.




5. **Capturas de pantalla:** Una vez expandida la simulación temporal de manera correcta y completa, procede a realizar las capturas individuales para cada uno de los submódulos y el archivo de reset.





## ⚠️ 4. Advertencias y Consejos Útiles 💡

* **Evita la generación artificial de imágenes:** No intentes generar diagramas o simulaciones mediante inteligencias artificiales de imágenes genéricas (como herramientas de diseño gráfico externo), ya que suelen cometer errores graves en los flancos y el sentido de las señales, lo cual es fácilmente detectado y penalizado en la revisión. Apóyate estrictamente en las herramientas EDA oficiales del entorno ISE.


* **Metodología modular:** Recuerda que los bancos de pruebas son individuales por cada módulo implementado. Si utilizaste múltiples bloques y un bloque de reset, tendrás que ejecutar y documentar la simulación tantas veces como componentes tenga tu arquitectura.



¡Mucho éxito con el desarrollo de tu trabajo práctico! 🚀✨
