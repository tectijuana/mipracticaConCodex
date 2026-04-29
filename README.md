# Actividad: Diseño de una Práctica Temática Pequeña para GitHub Classroom

## Descripción general
En esta actividad vas a **diseñar y documentar** una propuesta de práctica temática pequeña que pueda implementarse en **ARM64 Assembly, C, Python o Bash**. El enfoque principal está en la planeación técnica, la claridad de la documentación y la organización del repositorio.

Esta actividad está pensada para publicarse en GitHub Classroom sin plantilla previa, por lo que este repositorio ya incluye la estructura base que deberás completar.

## Objetivo de aprendizaje
Al finalizar esta actividad, el estudiante será capaz de:

- Definir un problema concreto y acotado.
- Justificar la elección de lenguaje según el caso de uso.
- Diseñar la estructura de un repositorio limpio y mantenible.
- Documentar entradas, salidas, límites y riesgos técnicos.
- Planear pruebas mínimas sin depender de frameworks complejos.

## Lenguajes permitidos
Puedes elegir **uno** de los siguientes lenguajes como principal:

- ARM64 Assembly
- C
- Python
- Bash

> Nota: Si eliges ARM64 Assembly, tu propuesta debe ser **muy pequeña** (por ejemplo: calculadora básica, conversor simple o manejo mínimo de entrada/salida en consola).

## Reglas para mantener el proyecto pequeño
1. Enfócate en un solo caso de uso principal.
2. Limita el alcance a funcionalidades esenciales (1 a 3 funciones clave).
3. Evita frameworks, APIs externas, bases de datos, nube, Docker y dependencias complejas.
4. Usa entrada/salida por terminal y archivos locales simples (si aplica).
5. Prioriza documentación clara antes de escribir mucho código.

## Entregables esperados
1. `docs/propuesta.md` completo.
2. `docs/caso_de_uso.md` completo.
3. `docs/estructura_repositorio.md` revisado y ajustado a tu propuesta.
4. `docs/plan_de_pruebas.md` con casos de prueba mínimos.
5. Un prototipo opcional mínimo en `src/main.<ext>`.
6. Script de ejecución adaptado en `scripts/run.sh`.
7. Checklist final de pruebas/documentación en `tests/test_plan.md`.

## Instrucciones para el estudiante
1. Lee todo el repositorio antes de modificar archivos.
2. Define un tema pequeño y viable.
3. Completa primero `docs/propuesta.md`.
4. Después completa `docs/caso_de_uso.md` y `docs/plan_de_pruebas.md`.
5. Ajusta la estructura y nombres en `docs/estructura_repositorio.md` si tu propuesta lo requiere.
6. Opcionalmente implementa un prototipo mínimo en `src/`.
7. Asegúrate de que `scripts/run.sh` ejecute tu prototipo localmente.
8. Verifica la checklist de `tests/test_plan.md` antes de entregar.

## Ejemplos de temas posibles
- Mini Toolkit en ARM64
- Asistente de Estudio en Terminal
- Reporteador de Información del Sistema
- Organizador de Archivos
- Juego de Aprendizaje en Línea de Comandos

## Criterios generales de evaluación
- Claridad del problema y viabilidad del alcance.
- Coherencia entre caso de uso, entradas/salidas y criterios de éxito.
- Justificación técnica de lenguaje y decisiones de diseño.
- Calidad de la documentación y estructura del repositorio.
- Evidencia de pruebas mínimas y manejo de errores.

## Nota importante
En esta actividad, **primero se documenta y justifica la idea**; después, de forma opcional, se implementa un prototipo pequeño. La calidad de la planeación/documentación tiene prioridad sobre la cantidad de código.
