# Ideas de pruebas básicas

## 1) Prueba de humo
**Objetivo:** validar que el programa inicia.

- Comando: `bash scripts/run.sh`
- Esperado: aparece mensaje inicial y solicita dos números.

## 2) Prueba funcional de suma
**Objetivo:** verificar cálculo correcto.

- Entrada: `2` y `3`
- Esperado: `Resultado: 2.0 + 3.0 = 5.0`

## 3) Prueba de manejo de error
**Objetivo:** validar entradas inválidas.

- Entrada: `hola` y `4`
- Esperado: mensaje `Error: solo se permiten valores numéricos.`
- No esperado: traceback o cierre abrupto del script.

## 4) Prueba de límite simple
**Objetivo:** validar operación con cero.

- Entrada: `0` y `7`
- Esperado: `Resultado: 0.0 + 7.0 = 7.0`

## 5) Prueba de números negativos
**Objetivo:** comprobar signos mixtos.

- Entrada: `-2` y `5`
- Esperado: `Resultado: -2.0 + 5.0 = 3.0`
