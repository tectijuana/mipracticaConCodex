"""Ejemplo mínimo funcional para la actividad."""


def sumar(a: float, b: float) -> float:
    """Regresa la suma de dos números."""
    return a + b


def main() -> None:
    print("Microproyecto de ejemplo: suma en consola")
    try:
        a = float(input("Ingresa el primer número: "))
        b = float(input("Ingresa el segundo número: "))
    except ValueError:
        print("Error: solo se permiten valores numéricos.")
        return

    resultado = sumar(a, b)
    print(f"Resultado: {a} + {b} = {resultado}")


if __name__ == "__main__":
    main()
