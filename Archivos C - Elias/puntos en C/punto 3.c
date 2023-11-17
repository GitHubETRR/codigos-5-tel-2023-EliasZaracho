#include <stdio.h>
#include <math.h>

int main() {
    double real1, imag1, real2, imag2, realResultado, imagResultado;
    double moduloResultado, faseResultado;
    char opcion; // El char lo voy a utilizar para almacenar un carácter tipo letra

    // Solicitar al usuario que ingrese los números complejos en formato rectangular
    printf("Bienvenido usuario, inventamos una calculadora de numeros complejos para que hacer tus deberes sea cada dia mas sencillo\n");
    printf("Ingresa la parte real del primer número complejo: ");
    scanf("%lf", &real1);
    printf("Ingresa la parte imaginaria del primer número complejo: ");
    scanf("%lf", &imag1);

    printf("Ingresa la parte real del segundo número complejo: ");
    scanf("%lf", &real2);
    printf("Ingresa la parte imaginaria del segundo número complejo: ");
    scanf("%lf", &imag2);

    // Sumar los números complejos en formato rectangular para obtener el resultado de estos y pasarlos a polar
    realResultado = real1 + real2;
    imagResultado = imag1 + imag2;

    // Preguntar al usuario si desea ver el resultado en formato polar o rectangular
    printf("¿Deseas ver el resultado en formato polar (p) o rectangular (r)? ");
    scanf(" %c", &opcion);

    if (opcion == 'p') {
        // Calcular el módulo y la fase del resultado
        moduloResultado = sqrt(realResultado * realResultado + imagResultado * imagResultado); //reciclamos codigo de puntos anteriores
        faseResultado = atan2(imagResultado, realResultado);
        printf("El resultado en formato polar es: %lf < %lf radianes\n", moduloResultado, faseResultado);
    } else if (opcion == 'r') {
        // Mostrar el resultado en formato rectangular
        printf("El resultado en formato rectangular es: %lf + j%lf\n", realResultado, imagResultado); //volvemos a reciclar y adaptar el código de punto 2
    } else {
        printf("Opción no válida. Debes ingresar 'p' o 'r'.\n"); //en caso de que el usuario escriba cualquier otro carácter
    }

    return 0;
}