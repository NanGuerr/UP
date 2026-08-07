> [!IMPORTANT]
> ### *"Diseña cada paso con lógica y la certeza de que estás construyendo una versión superior del hardware de tu futuro."*

<p align="center">
  <a href="#-2-estructura-analítica-del-contenido">
    <img src="https://img.shields.io/badge/Contenidos-0059b3?style=for-the-badge&logo=gitbook&logoColor=white" alt="Contenidos">
  </a>
  <a href="#-4-sistema-de-evaluación-y-requisitos-de-aprobación">
    <img src="https://img.shields.io/badge/Evaluación-4a4a4a?style=for-the-badge&logo=googlesheets&logoColor=white" alt="Evaluación">
  </a>
  <a href="#-5-recursos-bibliográficos">
    <img src="https://img.shields.io/badge/Bibliografía-28a745?style=for-the-badge&logo=readthedocs&logoColor=white" alt="Bibliografía">
  </a>
</p>

<p align="center">
  <img src="https://github.com/NanGuerr/UP/blob/main/Sistemas%20Digitales%20II/Banner.png?raw=true" width="80%">
</p>

![HDL](https://img.shields.io/badge/HDL-00599C?style=flat&logo=code&logoColor=white)
![Tecnología Implementación](https://img.shields.io/badge/Tecnología_Implementación-6A1B9A?style=flat&logo=microchip&logoColor=white)
![Fundamentos Hardware](https://img.shields.io/badge/Fundamentos_Hardware-333333?style=flat&logo=cpu&logoColor=white)
![Diseño Avanzado](https://img.shields.io/badge/Diseño_Avanzado-28a745?style=flat&logo=sketch&logoColor=white)
![Validación y Pruebas](https://img.shields.io/badge/Validación_y_Pruebas-dc3545?style=flat&logo=check-all&logoColor=white)

> **🎯 Objetivo del repositorio:** 
> Material de estudio enfocado en álgebra lineal, teoría de números y espacios vectoriales, diseñado específicamente para aplicar estos conocimientos a la resolución de problemas reales en diversas áreas de la computación y las telecomunicaciones.


# 📊 Programa Académico: Sistemas Digitales II 💻

---

## 📝 Resumen Ejecutivo
La asignatura **Sistemas Digitales II**, correspondiente al plan de Ingeniería en Telecomunicaciones (ITC2022) de la Facultad de Ingeniería, se centra en el diseño, modelización e implementación de sistemas digitales avanzados mediante el uso de lenguajes de descripción de hardware (**HDL**), específicamente **VHDL**. El núcleo del curso es la aplicación de esta tecnología en dispositivos **FPGA** (*Field Programmable Gate Array*), orientados a soluciones en equipos de radiocomunicaciones y procesamiento digital de señales. 📡

El programa se estructura en una carga horaria total de **68 horas**, complementadas con **102 horas de estudio autónomo**. La metodología pedagógica es a distancia, mediada por la plataforma **Blackboard**, y prioriza un enfoque práctico y colaborativo donde la evaluación recae principalmente en la resolución de problemas reales, el diseño de circuitos y la defensa oral de un proyecto integrador final. 🎓

---

## 🎯 1. Objetivos y Competencias Centrales
El curso está diseñado para que los estudiantes desarrollen capacidades técnicas específicas integradas en el marco de la ingeniería en telecomunicaciones:

* ⚙️ **Dominio Técnico:** Descripción y utilización de bloques básicos de construcción de sistemas digitales y manejo experto del lenguaje VHDL.
* 🛠️ **Diseño e Implementación:** Empleo de herramientas de software para el diseño, simulación y análisis de alternativas tecnológicas en circuitos lógicos programables.
* 💡 **Innovación Tecnológica:** Capacidad para generar desarrollos innovadores, como subsistemas para procesamiento digital de señales y protocolos de comunicación.
* 🔍 **Resolución de Problemas:** Identificación y formulación de soluciones a problemas de ingeniería mediante circuitos reconfigurables.

---

## 🗂️ 2. Estructura Analítica del Contenido
El contenido se divide en cinco unidades fundamentales que llevan al estudiante desde los conceptos físicos del hardware hasta la implementación de sistemas complejos:

### ⚡ Unidad 1: Hardware Digital
* 📐 **Fundamentos:** Estudio de tensiones como variables lógicas, niveles lógicos y tiempos de propagación.
* 🔌 **Familias Lógicas:** Análisis de tecnologías **TTL** y **CMOS**.
* 🧩 **Tecnología FPGA:** Introducción a la arquitectura de las FPGAs para la industria, con énfasis en la familia Spartan-6 de Xilinx y sus bloques lógicos configurables (CLB).

### 🖥️ Unidad 2: Lenguajes Descriptivos de Hardware (VHDL)
* 📝 **Conceptos Básicos:** Definición de módulos, entidades, arquitecturas, identificadores y palabras reservadas.
* 🔄 **Flujo de Diseño:** Diferenciación entre diseño estructurado, por comportamiento y modelos condicionales.
* 📚 **Organización:** Uso de bibliotecas, instancias, señales internas y palabras binarias.

### 🔀 Unidad 3: Circuitos Combinatorios
* ⚙️ **Implementación:** Diseño de compuertas, codificadores y decodificadores.
* 🎛️ **Lógica de Control:** Aplicación de estructuras condicionales como `Case`, `With...select` e `If...then`.

### 🔄 Unidad 4: Circuitos Realimentados y Secuenciales
* 💾 **Elementos de Memoria:** Descripción de Flip-Flops y registros.
* 📐 **Sistemas Complejos:** Diseño de contadores, funciones aritméticas simples y máquinas de estado finitas (**FSM**).
* 📈 **Metodologías Avanzadas:** Uso de cartas ASM (*Algorithmic State Machine*) para controladores digitales.

### 🧪 Unidad 5: Simulación y Verificación
* ✔️ **Validación:** Modelado de simulación y creación de vectores de verificación (*testbenches*).
* 🛠️ **Herramientas:** Uso del simulador **ISIM** para la verificación de circuitos combinatorios y secuenciales.

---

## 🌐 3. Metodología de Enseñanza y Herramientas
El modelo pedagógico es centrado en el estudiante, fomentando el aprendizaje autónomo y colaborativo a través de:

* 🏫 **Entorno Virtual:** Uso de la plataforma Blackboard para foros de debate, clases sincrónicas y entrega de actividades.
* 💻 **Herramientas de Desarrollo:** Instalación y uso del entorno **ISE 14.7 Web Pack** de Xilinx.
* 📊 **Simulación Avanzada:** Prácticas orientadas a *testbenches* generalizados y análisis de retardos de conexión.
* ☁️ **Implementación:** Prácticas en placas de desarrollo FPGA físicas, o entornos en la nube (**AWS**).

---

## 📊 4. Sistema de Evaluación y Requisitos de Aprobación
La evaluación es continua y se basa en evidencias de aprendizaje que demuestran competencias prácticas.

### 📋 Ponderación de la Cursada
| Actividad 📝 | Peso en la Calificación 📈 |
| :--- | :--- |
| **Actividades Prácticas:** Resolución de ejercicios y diseño en VHDL por módulo. | 40% |
| **Concepto y Participación:** Interacción en foros de debate y curso. | 5% |
| **Exámenes Parciales:** Evaluación asincrónica de conceptos y códigos VHDL. | 55% |

### 🚀 Proceso de Finalización
* 📝 **Examen Parcial (Semana 9):** Incluye preguntas de opción múltiple, verdadero/falso y análisis de código.
* 🎤 **Trabajo Práctico Integrador (Semana 15):** Defensa oral sincrónica donde el alumno debe justificar su diseño, la descripción en VHDL y los resultados de síntesis.
* 🎓 **Examen Final:** Consta de una instancia asincrónica filmada y una evaluación oral sincrónica frente al profesor. La nota mínima de aprobación es **4 (cuatro)**.

---

## 📚 5. Recursos Bibliográficos

### 📖 Bibliografía Obligatoria Principal
* 📘 Maxinez, D.G. y Alcalá Jara, J. (2003): *VHDL, El arte de Programar Sistemas Digitales*. (Enfoque en lógica programable y diseño secuencial).
* 📗 Tocci, R. J. y Widmer, N. S. (2003): *Sistemas Digitales: principios y aplicaciones*. (Conceptos introductorios y familias lógicas).
* 📙 Fernández Gómez, S. et al. (2002): *Diseño de sistemas digitales con VHDL*. (Especializado en análisis y simulación).

### 🔍 Bibliografía de Profundización y Técnica
* ⚙️ **Xilinx Inc.:** Guías de usuario para Spartan-6 y guías de síntesis (XST).
* 🔬 **Pedroni, V.:** Textos especializados en simulación con *testbenches* y máquinas de estado en hardware (MIT Press).
* 📡 **Texas Instruments & Analog Devices:** Reportes de aplicación sobre estándares lógicos, interfaces de bajo voltaje y hojas de datos.

<p align="center">
  <a href="#🗂️-2-estructura-analítica-del-contenido">
    <img src="https://img.shields.io/badge/Contenidos-0059b3?style=for-the-badge&logo=gitbook&logoColor=white" alt="Contenidos">
  </a>
  <a href="#📊-4-sistema-de-evaluación-y-requisitos-de-aprobación">
    <img src="https://img.shields.io/badge/Evaluación-4a4a4a?style=for-the-badge&logo=googlesheets&logoColor=white" alt="Evaluación">
  </a>
</p>

