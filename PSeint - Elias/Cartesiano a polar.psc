Algoritmo prueba
	Escribir "Buenos días! Esta aplicacion te sirve para realizar la conversion carteciana - polar"
	Escribir "Escribí el valor de tu numero real"
	Leer x
	Escribir "Escribí el valor de tu número imaginario" 
	Leer b
	modulo = RC(x^2+b^2)
	a = ATAN(b/x)
	grados = a*180/PI
	Escribir "La expreción polar de tu calculo es:"
	Escribir modulo "e^j" grados
FinAlgoritmo
