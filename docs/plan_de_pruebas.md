# Plan de pruebas

## Estrategia
La validación será documental y, si existe implementación posterior, también manual desde terminal en un entorno ARM como Raspbian o Ubuntu ARM en AWS Academy. Las pruebas deben cubrir:
- viabilidad del alcance,
- coherencia entre objetivo y lenguaje elegido,
- claridad de los mensajes y del flujo esperado,
- capacidad de ejecutar una versión mínima si se implementa,
- manejo básico de error o restricción de alcance.

## Casos de prueba
| Entrada | Esperado | Éxito |
|---|---|---|
| Propuesta de 3 a 5 funciones | Alcance pequeño y justificable | Sí |
| Lenguaje principal definido | Coherencia con el entorno ARM o soporte mínimo | Sí |
| Idea con dependencias pesadas | Rechazo o recorte del alcance | Sí |
| Estructura con docs completos | Repositorio listo para revisión | Sí |
| Implementación opcional agregada | Código pequeño, sin frameworks | Sí |
| Plan de pruebas documentado | Casos claros y verificables | Sí |

## Criterio de verificación
Una prueba se considera exitosa si:
- la propuesta es viable y está bien delimitada,
- el lenguaje elegido corresponde al alcance,
- el repositorio incluye documentación completa,
- los casos de prueba pueden usarse después para validar una implementación.

## Observación técnica
Si se usa `scripts/run.sh`, el script debe limitarse a compilar o ejecutar una versión mínima, sin agregar dependencias externas.
