# Función para mostrar el menú
def mostrar_menu():
    print("=== Bienvenido al Quiz ===")
    print("1. Iniciar Juego")
    print("2. Ver Instrucciones")
    print("3. Salir")
    opcion = input("Seleccione una opción: ")
    return opcion

# Función para mostrar instrucciones
def mostrar_instrucciones():
    print("\n=== Instrucciones ===")
    print("Responde a las preguntas de opción múltiple escribiendo la letra correspondiente (a, b, c, d).")
    print("Cada respuesta correcta sumará un punto a tu puntaje final.")
    print("Debes alcanzar un puntaje de 60% o más para aprobar el quiz.\n")

# Función para mostrar las preguntas y obtener respuestas
def iniciar_juego():
    preguntas = [
        {"pregunta": "¿Cuál es la capital de Francia?", "opciones": ["a) Berlín", "b) Madrid", "c) París", "d) Roma"], "respuesta": "c"},
        {"pregunta": "¿Cuántos continentes hay en el mundo?", "opciones": ["a) 5", "b) 6", "c) 7", "d) 8"], "respuesta": "c"},
        {"pregunta": "¿Cuál es el planeta más grande del sistema solar?", "opciones": ["a) Marte", "b) Júpiter", "c) Saturno", "d) Urano"], "respuesta": "b"},
        {"pregunta": "¿En qué año llegó el hombre a la luna?", "opciones": ["a) 1959", "b) 1969", "c) 1979", "d) 1989"], "respuesta": "b"},
        {"pregunta": "¿Cuál es el elemento químico más abundante en la atmósfera?", "opciones": ["a) Oxígeno", "b) Hidrógeno", "c) Nitrógeno", "d) Helio"], "respuesta": "c"},
        {"pregunta": "¿Qué instrumento mide la temperatura?", "opciones": ["a) Barómetro", "b) Termómetro", "c) Higrómetro", "d) Anemómetro"], "respuesta": "b"},
        {"pregunta": "¿Cuál es el idioma más hablado en el mundo?", "opciones": ["a) Español", "b) Inglés", "c) Chino mandarín", "d) Hindi"], "respuesta": "c"},
        {"pregunta": "¿Quién escribió 'Cien años de soledad'?", "opciones": ["a) Pablo Neruda", "b) Julio Cortázar", "c) Gabriel García Márquez", "d) Mario Vargas Llosa"], "respuesta": "c"},
        {"pregunta": "¿Cuál es el río más largo del mundo?", "opciones": ["a) Nilo", "b) Amazonas", "c) Yangtsé", "d) Misisipi"], "respuesta": "b"},
        {"pregunta": "¿Cuál es el símbolo químico del oro?", "opciones": ["a) Ag", "b) Au", "c) Fe", "d) Cu"], "respuesta": "b"}
    ]

    puntaje = 0
    for i, pregunta in enumerate(preguntas):
        print(f"\nPregunta {i + 1}: {pregunta['pregunta']}")
        for opcion in pregunta['opciones']:
            print(opcion)
        respuesta_usuario = input("Tu respuesta: ").lower()

        # Verificar la respuesta
        if respuesta_usuario == pregunta['respuesta']:
            print("¡Correcto!")
            puntaje += 1
        else:
            print(f"Incorrecto. La respuesta correcta era: {pregunta['respuesta']}")

    # Calcular porcentaje y mostrar resultados
    porcentaje = (puntaje / len(preguntas)) * 100
    print(f"\nTu puntaje final es: {puntaje} de {len(preguntas)} ({porcentaje:.2f}%)")
    if porcentaje >= 60:
        print("¡Felicidades, aprobaste el quiz!")
    else:
        print("Lo siento, no alcanzaste el puntaje mínimo para aprobar. ¡Inténtalo de nuevo!")

# Función principal para manejar la lógica del menú
def main():
    while True:
        opcion = mostrar_menu()
        if opcion == "1":
            iniciar_juego()
        elif opcion == "2":
            mostrar_instrucciones()
        elif opcion == "3":
            print("¡Gracias por jugar! Hasta la próxima.")
            break
        else:
            print("Opción no válida. Por favor, seleccione una opción correcta.")

# Iniciar el programa
if __name__ == "__main__":
    main()
