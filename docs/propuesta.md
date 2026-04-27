# Propuesta

## Problema
Muchos estudiantes tienen ideas de proyecto, pero no las aterrizan antes de empezar a programar. Eso termina en alcances demasiado grandes, entregas improvisadas y poca claridad sobre qué se va a construir y cómo se va a validar.

## Justificación
Esta actividad obliga a planear primero y escribir código después. El estudiante debe proponer una práctica pequeña que pueda ejecutarse más adelante en un entorno ARM real, como Raspbian o Ubuntu ARM en AWS Academy. Si el equipo decide implementar, ARM64 Assembly se recomienda solo para ejercicios muy cortos; también se puede elegir C, Bash u otro lenguaje simple según el alcance.

## Alcance
La propuesta debe definir de 3 a 5 funcionalidades pequeñas, por ejemplo:
1. Capturar datos desde terminal.
2. Procesar una operación simple.
3. Presentar un resultado legible.
4. Validar entrada básica.
5. Registrar un plan de pruebas manuales.

La implementación de código es opcional y no forma parte de la entrega mínima.

## Arquitectura
- **Capa principal:** documentación del proyecto en Markdown.
- **Lenguaje previsto:** ARM64 Assembly, C, Bash u otro lenguaje pequeño, definido por el estudiante.
- **Entorno objetivo:** Raspbian o Ubuntu ARM en AWS Academy.
- **Capa opcional mínima:** `src/` y `scripts/` solo si el equipo decide implementar una versión funcional.
- **Dependencias:** ninguna dependencia pesada.

Flujo general de trabajo:
1. Se define la idea.
2. Se justifica por qué es pequeña y viable.
3. Se describe la estructura del repositorio.
4. Se redacta un caso de uso.
5. Se prepara un plan de pruebas para el futuro.

## Riesgos
- Elegir una idea demasiado grande para el tiempo disponible.
- Mezclar documentación con implementación sin dejar clara la prioridad.
- Proponer un lenguaje que no corresponda al entorno objetivo.
- No considerar que el despliegue final será en ARM.
- Redactar un plan de pruebas que no se pueda ejecutar después.

La mitigación principal es delimitar bien el alcance, decidir el lenguaje desde el inicio y dejar la implementación como una extensión opcional.
