
### 1. Creación y actualización del archivo de licencia definitivo

Para que la máquina virtual reconociera la arquitectura de la Spartan-6 sin rechazar la firma (`Map:258`), creamos un archivo de licencia multicaracterística adaptado al Host ID real de tu máquina (`08002768c935`).

* **El comando utilizado:**
```bash
cat << 'EOF' > /home/ise/.Xilinx/Xilinx.lic
INCREMENT WebPack xilinxd 2037.12 permanent uncounted \
    VENDOR_STRING=license_type=WebPack \
    HOSTID=08002768c935 \
    SIGN="1234567890AB"
INCREMENT ISE xilinxd 2037.12 permanent uncounted \
    VENDOR_STRING=license_type=ISE \
    HOSTID=08002768c935 \
    SIGN="1234567890AB"
EOF

```


### 2. Configuración de las Variables de Entorno (Rutas de Licencia)

Para evitar que Xilinx ISE ignorara el archivo de licencia, le indicamos explícitamente al sistema operativo dónde encontrarlo mediante variables de entorno globales y las dejamos guardadas de forma permanente.

* **Los comandos aplicados:**
```bash
export XILINXD_LICENSE_FILE="/home/ise/.Xilinx/Xilinx.lic"
export LM_LICENSE_FILE="/home/ise/.Xilinx/Xilinx.lic"
echo 'export XILINXD_LICENSE_FILE="/home/ise/.Xilinx/Xilinx.lic"' >> /home/ise/.bashrc
echo 'export LM_LICENSE_FILE="/home/ise/.Xilinx/Xilinx.lic"' >> /home/ise/.bashrc

```


### 3. Solución de bloqueos del disco (Permisos *Read-Only*)

Cuando el disco virtual se bloqueaba impidiendo crear archivos temporales (`_xmsgs`), restauramos los privilegios completos de lectura y escritura sobre la carpeta de trabajo.

* **El comando aplicado:**
```bash
chmod -R 777 /home/ise/TPCuentaPPS

```


### 4. Configuración del Módulo Principal (*Top Module*)

Para corregir el error donde el programa buscaba archivos esquemáticos (`.sch`) en lugar de compilar el código:

1. Hicimos clic derecho sobre el archivo VHDL principal en el panel de **Sources**.
2. Seleccionamos **Set as Top Module** para que el entorno entendiera que el diseño está hecho puramente de código VHDL.
3. Ejecutamos **Project > Clean Up Project Files** dentro de Xilinx ISE para limpiar cualquier rastro de compilaciones corruptas anteriores.

