# Plantilla de Plan de Pruebas

## 1) Objetivo del plan de pruebas
Describe qué validarás del proyecto (funcionamiento básico, manejo de errores y cumplimiento del alcance).

## 2) Casos de prueba
Completa la tabla con pruebas mínimas.

| ID | Descripción | Entrada | Resultado esperado | Resultado obtenido | Estado (OK/Falla) |
|---|---|---|---|---|---|
| CP-01 | | | | | |
| CP-02 | | | | | |
| CP-03 | | | | | |

## 3) Pruebas manuales
Describe pruebas ejecutadas manualmente en terminal.

- Prueba manual 1:
- Prueba manual 2:

## 4) Pruebas con errores
Incluye casos inválidos o incompletos.

- Error esperado 1:
- Error esperado 2:

## 5) Pruebas mínimas por lenguaje (elige según tu proyecto)

### Si usas Python
- Ejecución de `src/main.py` con entrada válida.
- Ejecución con entrada inválida y mensaje claro.

### Si usas C
- Compilación sin errores críticos.
- Ejecución del binario con caso válido e inválido.

### Si usas Bash
- Ejecución de script con permisos correctos.
- Validación de argumentos requeridos.

### Si usas ARM64 Assembly
- Ensamble y enlace mínimos exitosos.
- Ejecución de un caso simple de entrada/salida.

> No se requiere framework de testing. Las pruebas pueden documentarse manualmente.

## 6) Criterios para considerar la práctica terminada
Marca cuando cumplas todo:

- [ ] La propuesta está completa y coherente.
- [ ] El caso de uso está documentado paso a paso.
- [ ] Hay al menos 3 casos de prueba documentados.
- [ ] Se probó al menos un caso de error.
- [ ] El script `scripts/run.sh` refleja la forma real de ejecución.
- [ ] El alcance se mantiene pequeño y viable.
