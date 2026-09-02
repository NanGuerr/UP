# 🛡️ Guía Docente: Anticipación y Detección de Fraude Académico en Blackboard y LockDown Browser

Como maestra, es muy importante anticiparse a estos métodos para garantizar la equidad de la evaluación. La respuesta corta es depende de la tecnología específica que uses junto con Blackboard, pero en términos generales **LockDown Browser** por sí solo **NO** puede detectar hardware externo conectado a otros dispositivos ni sombras sutiles, aunque el sistema de grabación (**proctoring**) sí puede levantar alertas visuales y de comportamiento.



## 💻 1. Detección frente a escenarios específicos

### 🔍 ¿Detecta un celular usado como doble teclado/mouse (KVM switches o software)?
* **A nivel de software en la computadora:** LockDown Browser bloquea por completo la computadora donde se está realizando el examen (impide usar otras aplicaciones, atajos como Alt+Tab, capturas de pantalla). Sin embargo, si un alumno conecta un dispositivo físico externo o un adaptador de red/Bluetooth externo a la PC para manipularla, el navegador bloquea las funciones de control ajenas, pero no puede ver ni certificar si hay un teléfono emulando un teclado o un mouse a través de una red local o hardware intermediario si este simula ser un periférico estándar admitido por el sistema operativo.  
* **A nivel de red de la institución:** Si el alumno está en la red de la universidad, los cortafuegos avanzados a veces detectan tráfico de dispositivos extraños, pero desde casa esto es invisible para Blackboard.

### 👥 ¿Detecta sombras con aspecto de smartphone o el uso del celular?
Aquí entra en juego el sistema de **proctoring** (vigilancia), que suele ser Respondus Monitor u otras herramientas integradas con Blackboard:  
* **Sombras o reflejos:** Las inteligencias artificiales de monitoreo web no detectan sombras abstractas por sí solas. No tienen la capacidad de interpretar una sombra en la pared como un teléfono.
* **El reflejo en los ojos o lentes:** Lo que sí hacen las IA de proctoring (y los reportes posteriores que tú como docente puedes revisar) es señalar movimientos oculares sospechosos. Si el alumno mira constantemente hacia abajo (donde usualmente se oculta el celular) o hacia un lado, el sistema marcará **banderas rojas (suspicious flags)** por desviar la mirada de la pantalla.  
* **Si el celular entra en el campo de visión de la cámara web:** La IA o la grabación de video captarán el brillo azul de la pantalla del teléfono reflejado en la cara del alumno, o sus manos manipulando un objeto fuera del teclado principal.  



## 🛠️ 2. ¿Cómo puedes prevenirlo de forma efectiva?

Si te preocupa que los alumnos utilicen dispositivos secundarios o estrategias de este tipo, te recomiendo implementar las siguientes medidas dentro de Blackboard:

1. **Exigir una segunda cámara (Second Camera):** Herramientas como Respondus Monitor permiten activar la opción de una segunda cámara. Esto obliga al alumno a conectar su teléfono celular a un atril o a un costado de la habitación, apuntando hacia su perfil, sus manos, el escritorio y la pantalla de la computadora principal durante todo el examen. Si usan un celular oculto, este requisito los delatará de inmediato porque el teléfono oficial estará ocupado como cámara de vigilancia.  
2. **Preguntas aleatorias y de respuesta aplicada:** Configura el examen en Blackboard con un banco de preguntas donde a cada alumno le toque un orden distinto y reactivos que exijan razonamiento o resolución de problemas propios, donde buscar la respuesta en internet o en un celular tome más tiempo del disponible.
3. **Límite de tiempo estricto:** Ajusta el tiempo por pregunta o un tiempo total muy ajustado. Quien depende de un segundo dispositivo para buscar o copiar respuestas suele quedarse sin tiempo debido al esfuerzo de ocultarlo y consultarlo.



## 👁️ 3. Clasificación de actitudes y movimientos sospechosos

Para ayudarte a identificar con mayor precisión cualquier intento de trampa o comportamiento irregular durante la revisión de los videos de proctoring en Blackboard, aquí tienes una lista detallada clasificada por categorías:

### 1️⃣ Movimientos oculares y de la cabeza
* **Mirada lateral constante:** Girar la cabeza o los ojos repetidamente hacia un lado específico (izquierda, derecha o hacia abajo), lo que suele indicar la presencia de un dispositivo oculto, notas físicas o una segunda persona.
* **Pestañeo o enfoque fijo prolongado:** Mantener la vista fija en un punto fuera de la pantalla durante varios segundos, leyendo información externa.
* **Cambios bruscos de foco:** Alternar la mirada rápidamente entre la pantalla principal y un punto inferior (típicamente las piernas o el escritorio, donde se suele apoyar el celular).
* **Movimientos de labios:** Mover los labios o murmurar en silencio, lo que puede indicar que está leyendo en voz alta para que una herramienta de IA le responda, o hablando con alguien más en la habitación.

### 2️⃣ Expresiones faciales y reflejos
* **Cambios de iluminación en el rostro:** Destellos de luz azul o blanca provenientes de una pantalla secundaria (como la de un celular o una tablet) reflejados en la cara, los lentes o las córneas del alumno.
* **Reacciones tardías o ausentes:** Tener una expresión completamente estática mientras lee una pregunta compleja, o por el contrario, mostrar gestos de tipeo/búsqueda rápida en las manos sin que se refleje actividad en la pantalla principal.

### 3️⃣ Movimientos corporales y de las manos
* **Manos fuera del campo de visión:** Mantener ambas manos ocultas debajo del escritorio o a los lados del teclado de manera prolongada.
* **Manipulación de objetos:** Gestos repetitivos de deslizar el dedo, sostener un objeto pequeño por debajo de la mesa o tantear los bolsillos y alrededores.
* **Posturas corporales rígidas o antinaturales:** Inclinar el torso excesivamente hacia adelante o hacia atrás para evitar que la cámara capte las manos o un dispositivo auxiliar.

### 4️⃣ Factores ambientales y auditivos
* **Voces de fondo o susurros:** Sonidos tenues de otra persona hablando, dictando respuestas o dando indicaciones en la habitación.
* **Ruidos de interacción física:** Clics sutiles que no corresponden al teclado principal de la computadora (por ejemplo, el sonido táctil de un celular o el paso de hojas de papel).
* **Ausencia injustificada:** Levantarse repentinamente o desaparecer del encuadre de la cámara web, aunque sea por unos segundos.



## 📊 4. Cómo revisar los reportes de Proctors sin perder horas

Revisar el video completo de 44 alumnos (que podría durar entre una y dos horas por cada uno) es una tarea imposible de hacer a detalle. Afortunadamente, las plataformas de proctoring están diseñadas para ahorrarte ese trabajo mediante reportes automatizados:

1. **Revisa el "Semáforo" o Índice de Riesgo (Risk Score):**
   * 🟢 **Alumnos en verde:** Cumplieron con todo sin anomalías. No necesitas ver sus videos.
   * 🟡/🔴 **Alumnos en amarillo/rojo:** El software detectó "banderas rojas" (flags). Solo debes revisar los videos de este grupo reducido.
2. **Usa las "Banderas de Tiempo" (Timeline Flags):** La plataforma te muestra una línea de tiempo con marcas o alertas en momentos exactos (por ejemplo, en el minuto 14:32). Al hacer clic en la marca, el video salta directo al segundo exacto donde ocurrió algo inusual.
3. **Ordena por las alertas más frecuentes:** Filtra para ver directamente cuáles alumnos tuvieron la alerta de "Mirada fuera de pantalla" o "Dispositivo externo/segunda persona".

### ⚙️ ¿Qué hacer si usas Blackboard básico sin un proctoring automatizado?
* **Revisa los registros de actividad (Item Analysis / User Activity):** Blackboard te muestra el tiempo exacto que tardó cada alumno en responder y su ritmo. Si alguien terminó un examen de 50 preguntas en 4 minutos con un puntaje perfecto, es una señal de alerta absoluta.
* **Muestreo aleatorio o por sospecha:** Haz una revisión rápida en cámara rápida ($2\times$ o $4\times$) de los videos de aquellos alumnos cuyas calificaciones contrasten demasiado con su desempeño habitual.



## 📝 5. Guía anti-flags para los alumnos

Para evitar falsas alarmas provocadas por la alta sensibilidad de las herramientas, comparte este decálogo con tus estudiantes antes de la evaluación:

1. **Preparación del espacio y la iluminación:**
   * **Iluminación frontal:** Sentarse de frente a una ventana o lámpara. A contraluz, la cámara capta una silueta oscura y se marca error de "rostro no detectado".
   * **Espacio despejado:** Escritorio libre de libros, apuntes y dispositivos ajenos al examen.
2. **Postura y comportamiento frente a la cámara:**
   * **Mirada al frente:** Intentar mantener la vista general hacia el monitor.
   * **Cero compañía:** Nadie más puede estar en la habitación.
   * **No hablar en voz alta:** Evitar murmurar las preguntas.
3. **Uso estricto de dispositivos y periféricos:**
   * **Laptop y teclado único:** Usar exclusivamente la computadora principal con su teclado o un mouse convencional.
   * **Prohibido el celular:** Debe estar apagado y guardado fuera del alcance, salvo que la plataforma requiera una segunda cámara oficial.
4. **Pasos durante el "Check-in" inicial:**
   * **Mostrar el entorno con calma:** Hacerlo de forma lenta y pausada durante la grabación del entorno.
   * **Rostro bien centrado:** Quitarse gorras, lentes oscuros o capuchas para el reconocimiento facial.



## ⌨️ 6. Evidencia de tecleo sin actividad en pantalla

Si escuchas que un alumno está escribiendo en un teclado pero en la pantalla de Blackboard no se refleja ninguna actividad, letras o respuestas, estás ante una clara evidencia de que está interactuando con un dispositivo externo.

* **El audio ambiental (Micrófono de Respondus Monitor):** El tecleo físico (mecánico o táctil) produce un sonido rítmico (clic-clic-clic) que se filtra en el audio. Si escuchas esto pero la pantalla está estática, hay una discrepancia total.
* **La postura y el enfoque visual:** Su cabeza se inclina hacia abajo o hacia un costado de manera sostenida y sus ojos se mueven leyendo algo fuera del monitor principal.
* **El reporte de actividad de Blackboard:** Si el alumno genera ruido de escritura durante 30 o 40 segundos seguidos, pero en Blackboard pasan 5 minutos sin que se seleccione una opción, se confirma la trampa.



## 👁️‍🗨️ 7. Parpadeo, hojas de borrador y falsas alarmas

Para responder directamente a tus dudas: el parpadeo normal **NO** genera ninguna alerta, y sobre el hecho de escribir en una hoja (borrador/desarrollo), hay consideraciones importantes:

1. **¿El parpadeo genera flags?:** No. Los sistemas de Inteligencia Artificial ignoran por completo el parpadeo natural. Solo se considera anomalía si el alumno cierra los ojos por varios segundos o baja la cabeza por completo.
2. **¿Qué pasa si miran hacia abajo para escribir en una hoja?:** La IA puede interpretarlo como conducta sospechosa.
   * **La solución:** Ajusta la sensibilidad de Respondus Monitor a modo **Relajado (Relaxed)**, diseñado específicamente para exámenes que permiten apuntes o papel.
   * **Muestra la hoja en blanco:** Indícales al inicio que muestren sus hojas totalmente en blanco a la cámara.



## 👤 8. Clasificación de perfiles de riesgo y prevención

Clasificar previamente a los alumnos para identificar quiénes son más propensos a incurrir en deshonestidad académica es una estrategia preventiva muy útil:

1. **Indicadores de rendimiento y del historial académico:**
   * **Incongruencia repentina en las calificaciones:** Alumnos de bajo desempeño que obtienen calificaciones perfectas repentinamente sin respaldo de participación.
   * **Baja participación o desconexión:** Estudiantes con apatía general por la materia y falta de compromiso.
2. **Factores psicológicos y de presión personal:**
   * **Ansiedad extrema ante la calificación:** Pánico desmedido a reprobar debido a la presión familiar, becas o promedios.
   * **Actitud ambigua ante las normas:** Alumnos que minimizan el acto de copiarse diciendo que "todo el mundo lo hace".
3. **Factores técnicos y de destreza digital:**
   * **Dominio avanzado de la tecnología con fines evasivos:** Alumnos con perfiles muy técnicos (informática) que intentan conocer los límites de los sistemas de seguridad.

### 🛡️ ¿Cómo usar esta clasificación de forma preventiva?
* **Crea evaluaciones personalizadas o adaptativas:** Utiliza bancos amplios de preguntas aleatorias para neutralizar los grupos de mensajería.
* **Enfoca los exámenes hacia la aplicación y no hacia la memoria:** Exige analizar casos prácticos, justificar respuestas o resolver problemas inéditos.
* **Establece tutorías de seguimiento cercano:** Acércate de forma empática a los alumnos rezagados o con alta ansiedad para quitarles el miedo a la materia y reducir su necesidad de fraude.
