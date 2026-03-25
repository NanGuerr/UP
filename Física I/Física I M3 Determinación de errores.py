import numpy as np

# --- 1. DATOS ---
h = np.array([13.24, 13.54, 13.06, 13.72, 13.30, 13.08, 13.48, 12.96, 13.02, 13.10, 13.56, 12.94, 13.42, 13.06, 12.98])
D = np.array([25.66, 25.32, 25.72, 25.54, 25.88, 25.72, 25.12, 25.68, 25.76, 25.14, 25.64, 25.96, 25.72, 25.48, 25.44])
P = np.array([50.1, 49.9, 50.4, 49.9, 50.1, 49.8, 50.0, 50.4, 49.9, 49.9, 50.2, 49.9, 50.1, 50.3, 49.9])

n = 15
sigma_apc = 0.02 # mm
sigma_apb = 0.1  # g

# --- 2. FUNCIÓN DE CÁLCULO ---
def procesar_magnitud(datos, apreciacion):
    media = np.mean(datos)
    # Error estándar del promedio (la fórmula que usaste en A)
    error_est = np.sqrt(np.sum((datos - media)**2) / (n * (n - 1)))
    # Error combinado
    error_abs = np.sqrt(error_est**2 + apreciacion**2)
    return media, error_abs

# Aplicar la función
h_m, h_err = procesar_magnitud(h, sigma_apc)
D_m, D_err = procesar_magnitud(D, sigma_apc)
P_m, P_err = procesar_magnitud(P, sigma_apb)

# --- 3. PROPAGACIÓN ---
V_m = np.pi * (D_m / 2)**2 * h_m
# Derivadas parciales
dV_dD = np.pi * h_m * D_m / 2
dV_dh = np.pi * (D_m / 2)**2
V_err = np.sqrt((dV_dD * D_err)**2 + (dV_dh * h_err)**2)

# Peso específico (Densidad)
rho_m = (P_m / (V_m / 1000)) # g/cm^3
rho_err = rho_m * np.sqrt((P_err / P_m)**2 + (V_err / V_m)**2)

# --- 4. SALIDA ---
print(f"RESULTADOS FINALES")
print(f"Altura:   {h_m:.2f} ± {h_err:.2f} mm")
print(f"Diámetro: {D_m:.2f} ± {D_err:.2f} mm")
print(f"Masa:     {P_m:.2f} ± {P_err:.2f} g")
print(f"Densidad: {rho_m:.2f} ± {rho_err:.2f} g/cm^3")
