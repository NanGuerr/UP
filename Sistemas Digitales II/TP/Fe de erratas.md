# Fe de Erratas y Ajustes Técnicos — Proyecto VHDL

Este documento recopila las desviaciones, errores de modelado y ajustes necesarios detectados en la implementación actual y en el banco de pruebas principal (`PF_SS2_tb.vhd`), con el fin de alinearlos estrictamente con las especificaciones de la consigna oficial.



### 1. Frecuencia de Reloj Principal

* **Error detectado:** El módulo principal y el testbench definen una frecuencia de 10 MHz (mediante `clk_in_period := 100 ns`), lo cual incumple el requisito de la consigna oficial.
* **Corrección:** Modificar la constante del período en las declaraciones iniciales para operar a **100 MHz**.
> `constant clk_in_period : time := 10 ns;`



### 2. Modelado de la Señal GPS

* **Error detectado:** El testbench inyecta un pulso GPS irreal con un período de 1 microsegundo (5 ns en alto y 995 ns en bajo). La especificación oficial exige un período exacto de **1 segundo** con un pulso activo de **10 microsegundos**.
* **Corrección:** Actualizar el proceso de estímulos (`stim_proc`) para reflejar la temporización real:
```vhdl
for i in 0 to 4 loop
    gps <= '1';
    wait for 10 us;
    gps <= '0';
    wait for 999990 us; -- Completa el segundo exacto
end loop;

```



### 3. Ventana de Simulación Insuficiente

* **Error detectado:** La simulación finaliza con una espera de tan solo 20 ms. Dado que el LED testigo conmuta cada 250 ms, la simulación se aborta antes de validar correctamente este indicador y los desbordamientos.
* **Corrección:** Extender la ventana de tiempo al final de la simulación:
> `wait for 300 ms;`



### 4. Lógica de Validación del Módulo Comparador

* **Error detectado:** En `PF_SS2_tb.vhd`, la señal `cmp_en` se habilita simultáneamente con la inyección del valor coincidente, omitiendo la comprobación del registro de memoria (latch) que debe retener el valor cuando el módulo se deshabilita.
* **Corrección:** Separar la fase de registro de datos de la fase de estímulo dinámico:
```vhdl
cmp_in <= "0011"; 
cmp_en <= '1';
wait for clk_in_period; 
cmp_en <= '0'; -- Retiene el valor "0011"
cmp_in <= "0000"; -- Limpia el bus para evitar falsos positivos

```



### 5. Cobertura de Pruebas Unitarias (Testbenches)

* **Observación metodológica:** Aunque la consigna exige un testbench unitario por cada bloque funcional, el grupo no generó el archivo independiente `Acondicionador_tb.vhd`, validando este bloque directamente de manera integrada en el *Top Module*.
* **Corrección:** Si la cátedra lo exige estrictamente de forma individual, se recomienda separar dicho banco de pruebas o documentar explícitamente su integración en el informe técnico.
