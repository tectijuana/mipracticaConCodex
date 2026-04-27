# Práctica Temática: Propuesta Documentada de Mini Proyecto de Sistemas

## 1) Título de la práctica
**Diseño de Propuesta Técnica para una Práctica Pequeña en Terminal (ARM64, C, Python o Bash)**

---

## 2) Descripción general
En esta actividad **no vas a construir un proyecto grande**; primero vas a diseñar una propuesta sólida y bien documentada para una práctica temática pequeña.

Tu propuesta debe enfocarse en:
- documentar claramente el problema y el caso de uso,
- justificar decisiones técnicas,
- plantear una estructura de repositorio ordenada,
- definir un plan de pruebas básico y realista.

### Lenguajes permitidos (elige uno como principal)
- **ARM64 Assembly**
- **C**
- **Python**
- **Bash**

> **Importante:** Si eliges **ARM64 Assembly**, se recomienda únicamente para programas **muy pequeños** (por ejemplo: operaciones básicas, manipulación simple de cadenas, flujo de control mínimo), debido al tiempo y complejidad de desarrollo.

La prioridad de esta práctica es la **documentación y planeación** antes de escribir mucho código.

---

## 3) Objetivo de aprendizaje
Al finalizar, serás capaz de:
1. Formular una propuesta técnica clara para un mini proyecto de sistemas.
2. Delimitar alcance realista (pequeño, implementable, sin dependencias complejas).
3. Documentar caso de uso, arquitectura simple del repositorio y estrategia de pruebas.
4. Comunicar decisiones técnicas de manera profesional en un repositorio tipo GitHub Classroom.

---

## 4) Restricciones del proyecto (obligatorias)
Para mantener la práctica accesible con herramientas gratuitas (Codex u otras IAs con límite), tu proyecto propuesto debe cumplir:

- Ser **pequeño** y acotado.
- Ejecutarse en **terminal** o entorno local sencillo.
- Evitar frameworks pesados.
- No usar APIs pagadas.
- No usar bases de datos complejas.
- No usar servicios en la nube.
- No usar contenedores (Docker, etc.).
- Evitar instalaciones largas o dependencias difíciles.

---

## 5) Entregables del estudiante (mínimos obligatorios)
Tu repositorio debe incluir, como mínimo:

- `README.md`
- `docs/propuesta.md`
- `docs/caso_de_uso.md`
- `docs/estructura_repositorio.md`
- `docs/plan_de_pruebas.md`

Opcionales (si aplica a tu propuesta):
- `src/`
- `scripts/`
- `tests/`

---

## 6) Estructura recomendada del repositorio
Usa esta estructura mínima como base:

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

> `<ext>` depende del lenguaje elegido: `s` (ARM64), `c`, `py` o `sh`.

---

## 7) Instrucciones de llenado por archivo

### `README.md`
Debe incluir:
1. **Nombre del proyecto**.
2. **Resumen en 5–8 líneas**.
3. **Lenguaje principal** y justificación breve.
4. **Alcance** (qué sí incluye / qué no incluye).
5. **Cómo ejecutar** (si ya tienes prototipo).
6. **Estatus**: propuesta / en desarrollo / prototipo.

---

### `docs/propuesta.md`
Incluye estas secciones:
1. **Tema elegido**.
2. **Problema que resuelve**.
3. **Usuario objetivo** (quién lo usaría).
4. **Objetivo funcional principal**.
5. **Lista de funcionalidades mínimas (3 a 5)**.
6. **Fuera de alcance (no lo vas a hacer)**.
7. **Lenguaje elegido y por qué**.
8. **Riesgos técnicos y mitigaciones**.
9. **Cronograma corto** (3 a 5 hitos).

---

### `docs/caso_de_uso.md`
Incluye:
1. **Contexto del caso** (situación realista).
2. **Actor principal**.
3. **Precondiciones**.
4. **Flujo principal de uso** (paso a paso).
5. **Flujos alternos** (errores o entradas inválidas).
6. **Resultado esperado**.
7. **Criterios de aceptación** (medibles y claros).

---

### `docs/estructura_repositorio.md`
Explica:
1. Árbol del repositorio (actual o planeado).
2. Propósito de cada carpeta/archivo.
3. Convenciones de nombres.
4. Estrategia de crecimiento controlado (cómo evitar que el proyecto se haga grande).

---

### `docs/plan_de_pruebas.md`
Incluye:
1. **Objetivo de pruebas**.
2. **Casos de prueba mínimos (al menos 6)**.
3. Para cada caso:
   - ID
   - Entrada
   - Pasos
   - Salida esperada
   - Criterio de éxito
4. **Pruebas de error** (entradas inválidas).
5. **Limitaciones conocidas**.

---

## 8) Temáticas sugeridas (elige una o propón otra similar)
- **Mini Toolkit en ARM64**
- **Asistente de Estudio en Terminal**
- **Reporteador de Información del Sistema**
- **Organizador de Archivos**
- **Juego de Aprendizaje en Línea de Comandos**

> Puedes proponer otra temática, siempre que respete el alcance pequeño y las restricciones.

---

## 9) Rúbrica de evaluación (100 puntos)

1. **Claridad de la propuesta (25 pts)**
   - Problema, objetivo y alcance están bien definidos.

2. **Calidad del caso de uso (20 pts)**
   - Flujo principal y alternos son coherentes.

3. **Diseño documental del repositorio (20 pts)**
   - Estructura clara, ordenada y justificable.

4. **Plan de pruebas (20 pts)**
   - Casos relevantes, medibles y alineados al objetivo.

5. **Viabilidad técnica y enfoque pequeño (15 pts)**
   - Proyecto realista para implementar en poco tiempo.

---

## 10) Criterios de aceptación para calificar como “entrega completa”
Tu entrega se considera completa si:

- Incluye todos los archivos obligatorios.
- Cada documento tiene contenido sustancial (no solo encabezados).
- El proyecto está claramente delimitado como mini práctica.
- El lenguaje principal está justificado.
- El plan de pruebas es verificable.

---

## 11) Plantilla breve (copia y pega)

### `docs/propuesta.md`
```markdown
# Propuesta del Proyecto

## Tema

## Problema a resolver

## Usuario objetivo

## Objetivo funcional

## Funcionalidades mínimas (3 a 5)
1.
2.
3.

## Fuera de alcance
- 

## Lenguaje principal y justificación

## Riesgos y mitigación

## Cronograma breve
- Hito 1:
- Hito 2:
- Hito 3:
```

### `docs/caso_de_uso.md`
```markdown
# Caso de Uso Principal

## Contexto

## Actor principal

## Precondiciones

## Flujo principal
1.
2.
3.

## Flujos alternos
- A1:
- A2:

## Resultado esperado

## Criterios de aceptación
- 
```

### `docs/estructura_repositorio.md`
```markdown
# Estructura del Repositorio

## Árbol propuesto

## Propósito por carpeta/archivo

## Convenciones de nombres

## Estrategia de crecimiento controlado
```

### `docs/plan_de_pruebas.md`
```markdown
# Plan de Pruebas

## Objetivo

## Casos de prueba
| ID | Entrada | Pasos | Salida esperada | Criterio de éxito |
|----|---------|-------|-----------------|-------------------|
| CP-01 | | | | |
| CP-02 | | | | |
| CP-03 | | | | |
| CP-04 | | | | |
| CP-05 | | | | |
| CP-06 | | | | |

## Pruebas de error

## Limitaciones conocidas
```

---

## 12) Recomendaciones finales del instructor
- Piensa primero en **utilidad real + alcance pequeño**.
- Si dudas entre dos ideas, elige la más simple de probar en terminal.
- Documentación clara vale más que promesas grandes difíciles de implementar.
- Un buen proyecto pequeño y bien explicado supera uno ambicioso e incompleto.
