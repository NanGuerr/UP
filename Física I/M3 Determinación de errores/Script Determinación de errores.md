# 🧪 Script de Laboratorio

Con este código en Python puedes obtener los resultados preliminares del primer laboratorio de Física I. Solo debes sustituir los datos por el conjunto de datos proporcionados.

```python
""" # 🧪 Script de Laboratorio

Con este código en Python puedes obtener los resultados preliminares del primer laboratorio de Física I con la densidad calculada en kg/m^3.
 """

import numpy as np

# --- 1. DATOS ---
h = np.array([13.36, 13.24, 13.16, 13.24, 13.20, 13.08, 13.56, 12.94, 13.02, 13.36, 13.00, 13.10, 13.32, 13.06, 12.98])
D = np.array([25.40, 25.24, 25.72, 26.02, 25.88, 26.04, 25.08, 25.24, 25.34, 25.86, 25.46, 25.84, 25.78, 25.32, 25.90])
P = np.array([49.9, 50.4, 49.7, 50.3, 49.6, 49.9, 50.4, 49.6, 49.8, 50.3, 50.4, 50.2, 49.9, 50.3, 49.7])

n = 15
sigma_apc = 0.02  # mm
sigma_apb = 0.1   # g

# --- 2. FUNCIÓN DE CÁLCULO ---
def procesar_magnitud(datos, apreciacion):
    media = np.mean(datos)
    error_est = np.sqrt(np.sum((datos - media)**2) / (n * (n - 1)))
    error_abs = np.sqrt(error_est**2 + apreciacion**2)
    return media, error_abs

# Aplicamos la función
h_m, h_err = procesar_magnitud(h, sigma_apc)
D_m, D_err = procesar_magnitud(D, sigma_apc)
P_m, P_err = procesar_magnitud(P, sigma_apb)

# --- 3. PROPAGACIÓN Y CONVERSIÓN A SI ---
V_m = np.pi * (D_m / 2)**2 * h_m  # mm^3
# Derivadas parciales
dV_dD = np.pi * h_m * D_m / 2
dV_dh = np.pi * (D_m / 2)**2
V_err = np.sqrt((dV_dD * D_err)**2 + (dV_dh * h_err)**2)

# Conversión a unidades del SI (kg/m^3)
P_kg = P_m / 1000        # g -> kg
V_m3 = V_m / 1e9         # mm^3 -> m^3

rho_m = P_kg / V_m3      # kg/m^3
rho_err = rho_m * np.sqrt((P_err / P_m)**2 + (V_err / V_m)**2)

# --- 4. SALIDA PROFESIONAL ---
print("RESULTADOS FINALES")
print(f"Altura:   {h_m:.2f} ± {h_err:.2f} mm")
print(f"Diámetro: {D_m:.2f} ± {D_err:.2f} mm")
print(f"Masa:     {P_m:.2f} ± {P_err:.2f} g")
print(f"Densidad: {rho_m:.2f} ± {rho_err:.2f} kg/m^3")
```

# 📐 Resultados Obtenidos

```python

RESULTADOS FINALES
Altura:   13.17 ± 0.05 mm
Diámetro: 25.61 ± 0.09 mm
Masa:     50.03 ± 0.13 g
Densidad: 7372.60 ± 59.38 kg/m^3

```

