#include <stdio.h>
#include <math.h>

int main() {
    double modulo, fase; //reciclamos codigo para hacer el punto 2
    double real, imag;

    // Solicitar al usuario que ingrese el módulo y la fase en radianes
    printf("Bienvenido usuario, disfruta del uso de esta magnifica calculadora")
    printf("Ingresa el modulo: ");
    scanf("%lf", &modulo);
    printf("Ingresa la fase (en radianes): ");
    scanf("%lf", &fase);

    // Calcular las partes real e imaginaria
    real = modulo * cos(fase);
    imag = modulo * sin(fase);

    // Imprimir el número complejo en formato rectangular
    printf("El número complejo en formato rectangular es: %lf + j%lf\n", real, imag);

    return 0;
}