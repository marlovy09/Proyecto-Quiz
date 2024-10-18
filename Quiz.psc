Algoritmo Quiz


    // Variables
    Definir opcion_menu, puntaje, porcentaje Como Entero
    Definir respuesta Como Caracter
	
    // Men� principal
    SubProceso mostrar_menu()
        Escribir "Bienvenido al Quiz!"
        Escribir "1. Iniciar Juego"
        Escribir "2. Ver Instrucciones"
        Escribir "3. Salir"
        Leer opcion_menu
FinSubProceso

// Mostrar Instrucciones
SubProceso mostrar_instrucciones()
	Escribir "Instrucciones:"
	Escribir "Responde las preguntas con a, b, c, d."
	Escribir "Cada respuesta correcta suma un punto."
	Escribir "Necesitas al menos 60% para aprobar."
FinSubProceso

// L�gica del juego: iniciar el quiz
SubProceso iniciar_juego()
	puntaje = 0
	
	// Preguntas y Respuestas
	Escribir "Pregunta 1: �Cu�l es la capital de Francia?"
	Escribir "a) Madrid"
	Escribir "b) Berl�n"
	Escribir "c) Par�s"
	Escribir "d) Roma"
	Leer respuesta
	Si respuesta = "c" Entonces
		puntaje = puntaje + 1
	Sino
		Escribir "Incorrecto, la respuesta correcta era: c"
	FinSi
	
	Escribir "Pregunta 2: �Cu�l es la capital de Espa�a?"
	Escribir "a) Madrid"
	Escribir "b) Berl�n"
	Escribir "c) Par�s"
	Escribir "d) Roma"
	Leer respuesta
	Si respuesta = "a" Entonces
		puntaje = puntaje + 1
	Sino
		Escribir "Incorrecto, la respuesta correcta era: a"
	FinSi
	
	// Calculando el porcentaje
	porcentaje = (puntaje / 2) * 100
	
	// Mensaje de aprobaci�n o desaprobaci�n
	Si porcentaje >= 60 Entonces
		Escribir "�Felicidades, aprobaste el quiz!"
	Sino
		Escribir "Lo siento, no alcanzaste el puntaje m�nimo para aprobar."
	FinSi
FinSubProceso

// Programa principal
mostrar_menu()

Seg�n opcion_menu Hacer
Caso 1:
	iniciar_juego()
Caso 2:
	mostrar_instrucciones()
Caso 3:
	Escribir "Gracias por jugar!"
FinSeg�n
FinAlgoritmo

