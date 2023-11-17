Algoritmo Consigna_1
	Escribir 'Calculadora de modulo y angulo de un numero complejo'
	Escribir 'Ingrese la parte real'
	Leer real
	Escribir 'Ingrese la parte imaginaria'
	Leer imaginaria
	M <- RAIZ (real*real) + (imaginaria*imaginaria)
	A = ATAN (imaginaria/real)
	Escribir "Su modulo es: " , A
	Escribir "Su angulo es: " , M
FinAlgoritmo
