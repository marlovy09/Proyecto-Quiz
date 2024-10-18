Algoritmo QuizInteractivo
    // Función para mostrar el menú y retornar la opción seleccionada
Funcion mostrar_menu() : cadena
        Escribir "=== Bienvenido al Quiz ==="
        Escribir "1. Iniciar Juego"
        Escribir "2. Ver Instrucciones"
        Escribir "3. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
        Retornar opcion
FinFuncion

// Función para mostrar las instrucciones del juego
SubProceso mostrar_instrucciones()
	Escribir ""
	Escribir "=== Instrucciones ==="
	Escribir "Responde a las preguntas de opción múltiple escribiendo la letra correspondiente (a, b, c, d)."
	Escribir "Cada respuesta correcta sumará un punto a tu puntaje final."
	Escribir "Debes alcanzar un puntaje de 60% o más para aprobar el quiz."
	Escribir ""
FinSubProceso

// Función para iniciar el juego y gestionar las preguntas y respuestas
SubProceso iniciar_juego()
	Definir preguntas Como Lista
	Definir puntaje, i Como Entero
	Definir porcentaje Como Real
	preguntas <- [
{"pregunta": "¿Cuál es la capital de Francia?", "opciones": ["a) Berlín", "b) Madrid", "c) París", "d) Roma"], "respuesta": "c"},
		{"pregunta": "¿Cuántos continentes hay en el mundo?", "opciones": ["a) 5", "b) 6", "c) 7", "d) 8"], "respuesta": "c"},
				{"pregunta": "¿Cuál es el planeta más grande del sistema solar?", "opciones": ["a) Marte", "b) Júpiter", "c) Saturno", "d) Urano"], "respuesta": "b"},
						{"pregunta": "¿Cuál fue la primer película de Disney?", "opciones": ["a) frozen", "b) blanca nieves", "c) la bella durmiente", "d) moana"], "respuesta": "b"},
								{"pregunta": "¿Cuál es el elemento químico más abundante en la atmósfera?", "opciones": ["a) Oxígeno", "b) Hidrógeno", "c) Nitrógeno", "d) Helio"], "respuesta": "c"},
										{"pregunta": "¿Qué instrumento mide la temperatura?", "opciones": ["a) Barómetro", "b) Termómetro", "c) Higrómetro", "d) Anemómetro"], "respuesta": "b"},
												{"pregunta": "¿Cuál es el idioma más hablado en el mundo?", "opciones": ["a) Español", "b) Inglés", "c) Chino mandarín", "d) Hindi"], "respuesta": "c"},
														{"pregunta": "¿Quién escribió 'Cien años de soledad'?", "opciones": ["a) Pablo Neruda", "b) Julio Cortázar", "c) Gabriel García Márquez", "d) Mario Vargas Llosa"], "respuesta": "c"},
																{"pregunta": "¿Cuál es el río más largo del mundo?", "opciones": ["a) Nilo", "b) Amazonas", "c) Yangtsé", "d) Misisipi"], "respuesta": "b"},
																		{"pregunta": "¿Cuál es el símbolo químico del oro?", "opciones": ["a) Ag", "b) Au", "c) Fe", "d) Cu"], "respuesta": "b"}
																					]
																					
																					puntaje <- 0
																					Para i <- 0 Hasta Largo(preguntas) - 1 Hacer
																						Escribir ""
																						Escribir "Pregunta ", i + 1, ": ", preguntas[i]["pregunta"]
																						Para cada opcion en preguntas[i]["opciones"] Hacer
																							Escribir opcion
																						FinPara
																						Escribir "Tu respuesta: "
																						Leer respuesta_usuario
																						respuesta_usuario <- minusculas(respuesta_usuario)
																						
																						// Verificar la respuesta
																						Si respuesta_usuario = preguntas[i]["respuesta"] Entonces
																							Escribir "¡Correcto!"
																							puntaje <- puntaje + 1
																						Sino
																							Escribir "Incorrecto. La respuesta correcta era: ", preguntas[i]["respuesta"]
																						FinSi
																					FinPara
																					
																					// Calcular el porcentaje y mostrar resultados
																					porcentaje <- (puntaje / Largo(preguntas)) * 100
																					Escribir ""
																					Escribir "Tu puntaje final es: ", puntaje, " de ", Largo(preguntas), " (", porcentaje, "%)"
																					Si porcentaje >= 60 Entonces
																						Escribir "¡Felicidades, aprobaste el quiz!"
																					Sino
																						Escribir "Lo siento, no alcanzaste el puntaje mínimo para aprobar. ¡Inténtalo nuevamente!"
																					FinSi
FinSubProceso

// Función principal para manejar la lógica del menú
SubProceso main()
	Definir opcion Como Cadena
	Mientras Verdadero Hacer
		opcion <- mostrar_menu()
		Si opcion = "1" Entonces
			iniciar_juego()
            SinoSi opcion = "2" Entonces
			mostrar_instrucciones()
            SinoSi opcion = "3" Entonces
			Escribir "¡Gracias por jugar! Hasta la próxima."
			Salir
		Sino
			Escribir "Opción no válida. Por favor, seleccione una opción correcta."
		FinSi
	FinMientras
FinSubProceso

    // Inicializar el programa
    main()
FinAlgoritmo
