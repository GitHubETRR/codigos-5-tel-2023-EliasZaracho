#include <stdio.h>
#include <math.h> //la biblioteca "math.h" es para usar la función sqrt (para calcular la raíz cuadrada) y la función atan2 (para calcular el ángulo).

int main() {
    double real, imag; //utilizo double para ahorrarme variables, la desventaja es que ocupan mas espacio d sistema que un float convencional pero son mas precisos los double
    double modulo, fase;

    // Solicitar al usuario que ingrese la parte real e imaginaria
    printf("Bienvenido usuario, disfrute del uso de esta compleja calculadora")
    printf("Ingresa la parte real: "); //%lf se usa para las variables double, es para poder ingresar un valor con mayor precision
    scanf("%lf", &real);
    printf("Ingresa la parte imaginaria: ");
    scanf("%lf", &imag);

    // Calcular el módulo usando la fórmula sqrt(real^2 + imag^2)
    modulo = sqrt(real * real + imag * imag); //sqrt raiz cuadrada

    // Calcular la fase usando la función atan2
    fase = atan2(imag, real); //atan2 angulo

    // Imprimir el resultado
    printf("El modulo es: %lf\n", modulo);
    printf("La fase es: %lf radianes\n", fase);

    return 0;
}