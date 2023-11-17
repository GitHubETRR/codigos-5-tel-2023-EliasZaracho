Algoritmo consigna3
	Escribir "Comenzamos sumando dos números complejos en forma rectangular"
	Escribir "Ingrese la parte real de ambos numeros complejos"
	Leer R1
	Leer R2
	Escribir "Ingrese la parte imaginaria de ambos numeros complejos"
	Leer I1
	Leer I2
	Rfinal = R1+R2
	Ifinal = I1+I2
	Escribir "Ingresa el numero 1 si queres el resultado de forma polar o ingresar cualquier otro numero si queres que se muestre en forma binomica"
	Leer var
	Si var=1 Entonces
		modulo = RC(Rfinal^2+Ifinal^2)
		Escribir "Tu modulo es" , modulo
		argumento = Atan(Rfinal/Ifinal)*180/PI
		Escribir "Tu argumento es" , argumento
	SiNo
		Escribir "Tu parte real es" , Rfinal
		Escribir "Tu parte imaginaria es" , Ifinal
	FinSi
FinAlgoritmo
