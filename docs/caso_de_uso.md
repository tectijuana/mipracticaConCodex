# Caso de uso principal

## Nombre
Ejecutar herramienta en consola para procesar entradas locales.

## Actor principal
Estudiante o usuario local con acceso a terminal.

## Precondiciones
- Python 3 instalado.
- Repositorio clonado en máquina local.
- Permisos de ejecución en scripts (`chmod +x scripts/run.sh`).

## Flujo principal
1. El usuario abre terminal en la raíz del proyecto.
2. Ejecuta `bash scripts/run.sh`.
3. El sistema llama al archivo principal en `src/main.py`.
4. El programa solicita o usa datos de ejemplo.
5. El programa muestra resultados en consola.
6. El usuario valida salida esperada.

## Flujos alternos
### A1: Python no instalado
1. El script falla al invocar Python.
2. Se muestra mensaje de error.
3. El usuario instala Python 3 y reintenta.

### A2: Datos inválidos
1. El programa recibe un valor incorrecto.
2. Se muestra advertencia clara.
3. El programa termina sin romperse.

## Postcondiciones
- Se obtiene una salida clara en consola.
- El usuario identifica si el resultado fue exitoso o no.

## Criterios de aceptación
- El script de ejecución corre en menos de 5 segundos.
- El programa no usa internet ni servicios externos.
- Se maneja al menos un caso de error de entrada.
