Algoritmo Consigna4
	Escribir 'Calculador de resistencia y capacitancia/inductancia'
	Escribir 'Ingrese su parte real'
	Leer r
	Escribir 'Ingrese su parte imaginaria'
	Leer J
	Escribir 'Ingrese la frecuencia de trabajo'
	Leer F
	w <- (2*PI)*F
	Si J<=0 Entonces
		ca <- -1/w*J
		Si ca=0 Entonces
			Escribir 'No hay capacitancia'
		SiNo
			Escribir 'El valor del capacitor es ',ca
		FinSi
	SiNo
		ci <- (w*J)
		Si ci=0 Entonces
			Escribir 'No hay inductancia'
		SiNo
			Escribir 'El valor de inductancia es ',ci
		FinSi
	FinSi
	Escribir 'El valor de la resistencia es ',r
FinAlgoritmo
