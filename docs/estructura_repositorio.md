# Estructura recomendada del repositorio

## Árbol de directorios
```text
nombre-del-proyecto/
├── README.md
├── docs/
│   ├── propuesta.md
│   ├── caso_de_uso.md
│   ├── estructura_repositorio.md
│   └── plan_de_pruebas.md
├── src/
│   └── main.py
├── scripts/
│   └── run.sh
└── tests/
    └── test_plan.md
```

## Convenciones
- `docs/`: documentación de diseño y planeación.
- `src/`: código fuente ejecutable.
- `scripts/`: automatización de ejecución local.
- `tests/`: planeación y evidencia de pruebas.

## Regla de mantenibilidad
Cada cambio en `src/` debe reflejarse en:
1. Casos de uso (`docs/caso_de_uso.md`), y
2. Plan de pruebas (`docs/plan_de_pruebas.md` o `tests/test_plan.md`).

## Buenas prácticas mínimas
- Nombres de archivo claros y en minúsculas.
- Mensajes de consola comprensibles para usuarios principiantes.
- Dependencias reducidas al mínimo (ideal: librería estándar).
