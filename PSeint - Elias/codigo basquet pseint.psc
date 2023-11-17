Algoritmo ContabilizarDatosBasquet
	Definir equipo_1_puntos,equipo_2_puntos,simples,dobles,triples Como Entero
	equipo_1_puntos <- 0
	equipo_2_puntos <- 0
	simples <- 0
	dobles <- 0
	triples <- 0
	Mientras Verdadero Hacer
		Repetir
			Escribir '------ Ingrese el número de equipo (1 o 2): ------'
			Leer equipo
			Si equipo<>1 Y equipo<>2 Entonces
				Escribir 'Número de equipo inválido. Intente nuevamente.'
			FinSi
		Hasta Que equipo=1 O equipo=2
		Repetir
			Escribir '----------- Ingrese el valor del punto -----------: '
			Leer puntos
			Si puntos=1 Entonces
				simples <- simples+1
			SiNo
				Si puntos=2 Entonces
					dobles <- dobles+1
				SiNo
					Si puntos=3 Entonces
						triples <- triples+1
					SiNo
						Si puntos>=4 O puntos<=0 Entonces
							Escribir 'Unicamente anotamos simples, dobles y triples. Volve a ingresar un valor permitido'
						FinSi
					FinSi
				FinSi
			FinSi
		Hasta Que puntos=1 O puntos=2 O puntos=3
		Si equipo=1 Entonces
			equipo_1_puntos <- equipo_1_puntos+puntos
		SiNo
			Si equipo=2 Entonces
				equipo_2_puntos <- equipo_2_puntos+puntos
			FinSi
		FinSi
		Escribir 'Puntos por equipo:'
		Escribir 'Equipo 1:',equipo_1_puntos
		Escribir 'Equipo 2:',equipo_2_puntos
		Si equipo_1_puntos>equipo_2_puntos Entonces
			Escribir 'El equipo 1 va ganando.'
		SiNo
			Si equipo_2_puntos>equipo_1_puntos Entonces
				Escribir 'El equipo 2 va ganando.'
			SiNo
				Escribir 'El partido está empatado.'
			FinSi
		FinSi
		Repetir
			Escribir '¿Desea ver los resultados finales? (S/N): '
			Leer ver_resultados
			Si ver_resultados='S' O ver_resultados='N' O ver_resultados='s' O ver_resultados='n' Entonces
				Escribir ''
			SiNo
				Escribir 'Valor invalido'
			FinSi
		Hasta Que ver_resultados='s' O ver_resultados='S' O ver_resultados='n' O ver_resultados='N'
		Si ver_resultados='S' O ver_resultados='s' Entonces
			Escribir '--------------- Resultados finales ---------------:'
			Escribir 'Puntos por equipo:'
			Escribir 'Equipo 1:',equipo_1_puntos
			Escribir 'Equipo 2:',equipo_2_puntos
			Si equipo_1_puntos>equipo_2_puntos Entonces
				Escribir 'El equipo 1 es el ganador.'
			SiNo
				Si equipo_2_puntos>equipo_1_puntos Entonces
					Escribir 'El equipo 2 es el ganador.'
				SiNo
					Escribir 'El partido terminó en empate.'
				FinSi
			FinSi
			total_puntos <- equipo_1_puntos+equipo_2_puntos
			Escribir '---------------- Cantidad de tiros ---------------:'
			Escribir 'Simples:',simples
			Escribir 'Dobles:',dobles
			Escribir 'Triples:',triples
			porcentaje_simples <- ((simples*1)/total_puntos)*100
			porcentaje_dobles <- ((dobles*2)/total_puntos)*100
			porcentaje_triples <- ((triples*3)/total_puntos)*100
			Escribir '- Porcentaje de tiros totales durante el partido -:'
			Escribir 'Simples:',porcentaje_simples,'%'
			Escribir 'Dobles:',porcentaje_dobles,'%'
			Escribir 'Triples:',porcentaje_triples,'%'
		FinSi
	FinMientras
FinAlgoritmo
