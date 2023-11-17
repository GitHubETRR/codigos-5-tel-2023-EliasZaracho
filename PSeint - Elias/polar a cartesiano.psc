Algoritmo sin_titulo
	Escribir 'Que tal? Acá podes convertir tus vectores de polar a binomica'
	Escribir 'Inserta tu modulo'
	Leer m
	Escribir 'Inserta tu angulo en grados'
	Leer a
	x <- m*COS(a*PI/180)
	j <- m*SEN(a*PI/180)
	Escribir 'La representación binomica de tu vector es:'
	Escribir x,'+j',j
FinAlgoritmo
