Algoritmo QuizInteractivo
    // Funci�n para mostrar el men� y retornar la opci�n seleccionada
Funcion mostrar_menu() : cadena
        Escribir "=== Bienvenido al Quiz ==="
        Escribir "1. Iniciar Juego"
        Escribir "2. Ver Instrucciones"
        Escribir "3. Salir"
        Escribir "Seleccione una opci�n: "
        Leer opcion
        Retornar opcion
FinFuncion

// Funci�n para mostrar las instrucciones del juego
SubProceso mostrar_instrucciones()
	Escribir ""
	Escribir "=== Instrucciones ==="
	Escribir "Responde a las preguntas de opci�n m�ltiple escribiendo la letra correspondiente (a, b, c, d)."
	Escribir "Cada respuesta correcta sumar� un punto a tu puntaje final."
	Escribir "Debes alcanzar un puntaje de 60% o m�s para aprobar el quiz."
	Escribir ""
FinSubProceso

// Funci�n para iniciar el juego y gestionar las preguntas y respuestas
SubProceso iniciar_juego()
	Definir preguntas Como Lista
	Definir puntaje, i Como Entero
	Definir porcentaje Como Real
	preguntas <- [
{"pregunta": "�Cu�l es la capital de Francia?", "opciones": ["a) Berl�n", "b) Madrid", "c) Par�s", "d) Roma"], "respuesta": "c"},
		{"pregunta": "�Cu�ntos continentes hay en el mundo?", "opciones": ["a) 5", "b) 6", "c) 7", "d) 8"], "respuesta": "c"},
				{"pregunta": "�Cu�l es el planeta m�s grande del sistema solar?", "opciones": ["a) Marte", "b) J�piter", "c) Saturno", "d) Urano"], "respuesta": "b"},
						{"pregunta": "�Cu�l fue la primer pel�cula de Disney?", "opciones": ["a) frozen", "b) blanca nieves", "c) la bella durmiente", "d) moana"], "respuesta": "b"},
								{"pregunta": "�Cu�l es el elemento qu�mico m�s abundante en la atm�sfera?", "opciones": ["a) Ox�geno", "b) Hidr�geno", "c) Nitr�geno", "d) Helio"], "respuesta": "c"},
										{"pregunta": "�Qu� instrumento mide la temperatura?", "opciones": ["a) Bar�metro", "b) Term�metro", "c) Higr�metro", "d) Anem�metro"], "respuesta": "b"},
												{"pregunta": "�Cu�l es el idioma m�s hablado en el mundo?", "opciones": ["a) Espa�ol", "b) Ingl�s", "c) Chino mandar�n", "d) Hindi"], "respuesta": "c"},
														{"pregunta": "�Qui�n escribi� 'Cien a�os de soledad'?", "opciones": ["a) Pablo Neruda", "b) Julio Cort�zar", "c) Gabriel Garc�a M�rquez", "d) Mario Vargas Llosa"], "respuesta": "c"},
																{"pregunta": "�Cu�l es el r�o m�s largo del mundo?", "opciones": ["a) Nilo", "b) Amazonas", "c) Yangts�", "d) Misisipi"], "respuesta": "b"},
																		{"pregunta": "�Cu�l es el s�mbolo qu�mico del oro?", "opciones": ["a) Ag", "b) Au", "c) Fe", "d) Cu"], "respuesta": "b"}
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
																							Escribir "�Correcto!"
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
																						Escribir "�Felicidades, aprobaste el quiz!"
																					Sino
																						Escribir "Lo siento, no alcanzaste el puntaje m�nimo para aprobar. �Int�ntalo nuevamente!"
																					FinSi
FinSubProceso

// Funci�n principal para manejar la l�gica del men�
SubProceso main()
	Definir opcion Como Cadena
	Mientras Verdadero Hacer
		opcion <- mostrar_menu()
		Si opcion = "1" Entonces
			iniciar_juego()
            SinoSi opcion = "2" Entonces
			mostrar_instrucciones()
            SinoSi opcion = "3" Entonces
			Escribir "�Gracias por jugar! Hasta la pr�xima."
			Salir
		Sino
			Escribir "Opci�n no v�lida. Por favor, seleccione una opci�n correcta."
		FinSi
	FinMientras
FinSubProceso

    // Inicializar el programa
    main()
FinAlgoritmo
