Algoritmo Consigna5
	Escribir 'Calculadora de impedancia capacitiva'
	Escribir 'Indique el modulo de la tension'
	Leer mt
	Escribir 'Ingrese su angulo'
	Leer at
	Escribir 'Indique el modulo de la corriente'
	Leer mi
	Escribir 'Ingrese su angulo'
	Leer ai
	rt = mt*COS(at)
	Jt = mt*SEN(at)
	ri = mi*COS(ai)
	Ji = mi*SEN(ai)
	J = Jt-Ji
	r = rt/ri
	Escribir 'Su parte real es ', r
	Escribir 'Su parte imaginaria es ', J
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
