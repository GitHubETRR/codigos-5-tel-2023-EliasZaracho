Algoritmo prueba
	Escribir "Buenos d�as! Esta aplicacion te sirve para realizar la conversion carteciana - polar"
	Escribir "Escrib� el valor de tu numero real"
	Leer x
	Escribir "Escrib� el valor de tu n�mero imaginario" 
	Leer b
	modulo = RC(x^2+b^2)
	a = ATAN(b/x)
	grados = a*180/PI
	Escribir "La expreci�n polar de tu calculo es:"
	Escribir modulo "e^j" grados
FinAlgoritmo
