# Estructura del Repositorio

## Árbol recomendado
```text
nombre-del-proyecto/
├── README.md
├── docs/
│   ├── propuesta.md
│   ├── caso_de_uso.md
│   ├── estructura_repositorio.md
│   └── plan_de_pruebas.md
├── src/
│   └── main.<ext>
├── scripts/
│   └── run.sh
└── tests/
    └── test_plan.md
```

## Explicación de carpetas
- `docs/`: documentación obligatoria de propuesta, caso de uso, estructura y pruebas.
- `src/`: código fuente principal del prototipo.
- `scripts/`: scripts auxiliares para ejecutar y validar localmente.
- `tests/`: evidencia ligera de pruebas y checklist de entrega.

## Explicación de archivos
- `README.md`: guía general de la actividad.
- `docs/propuesta.md`: definición del problema, alcance y justificación técnica.
- `docs/caso_de_uso.md`: descripción del uso real paso a paso.
- `docs/estructura_repositorio.md`: convención de organización del proyecto.
- `docs/plan_de_pruebas.md`: plan de pruebas mínimo sin frameworks.
- `src/main.<ext>`: punto de entrada del prototipo (extensión según lenguaje).
- `scripts/run.sh`: script de ejecución local.
- `tests/test_plan.md`: checklist breve de calidad y entrega.

## Reglas para nombrar archivos
1. Usa minúsculas.
2. Usa guion bajo (`_`) para separar palabras en documentos.
3. Evita espacios y acentos en nombres de archivo.
4. Mantén nombres cortos pero descriptivos.

## Reglas para evitar desorden
1. No agregues archivos temporales al repositorio.
2. Coloca cada tipo de contenido en su carpeta correspondiente.
3. Si un archivo deja de usarse, elimínalo o documenta por qué permanece.
4. Evita duplicar documentación en varios lugares.

## Nota de diseño
Mantén pocos archivos y funciones pequeñas. Esta práctica evalúa más la claridad de diseño y documentación que la complejidad del código.
