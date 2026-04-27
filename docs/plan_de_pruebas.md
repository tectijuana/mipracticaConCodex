# Plan de pruebas de la actividad

## Objetivo
Validar que el microproyecto cumple su funcionalidad principal, maneja errores comunes y se puede ejecutar localmente.

## Alcance
- Pruebas funcionales básicas.
- Pruebas de entradas inválidas.
- Prueba de ejecución por script.

## Entorno
- Sistema operativo: Linux/macOS/WSL (o equivalente).
- Runtime: Python 3.x.
- Sin conexión obligatoria a internet.

## Casos de prueba mínimos
| ID | Tipo | Entrada | Resultado esperado |
|---|---|---|---|
| CP-01 | Funcional | Ejecución normal | Mensaje de bienvenida y resultado correcto |
| CP-02 | Error | Texto no numérico | Mensaje de validación sin traceback |
| CP-03 | Borde | Número cero | Resultado correcto para límite inferior |
| CP-04 | Script | `bash scripts/run.sh` | Lanza correctamente `src/main.py` |

## Criterios de aprobación
- 100% de casos críticos (`CP-01`, `CP-04`) exitosos.
- Casos de error controlados sin cierre abrupto.

## Evidencia
Registrar en cada entrega:
- Fecha de ejecución.
- Comando usado.
- Salida observada (copiada en texto).
