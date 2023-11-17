#include <stdio.h>
#include <string.h> //le pedi ayuda a leo e intruduci una nueva libreria
#include <math.h>
#define PI 3.14159265358979323846
 
float pedirVariable(const char *variable) { //le pido al usuario un caracter de tipo float que almaceno para usar desp en la variable val
    float val;
    printf("Inserte la %s: ", variable);
    scanf("%f", &val);
    return val;
}
// definimos si el componenete es un capacitor o un inductor
void resultado(float real, float img, float freq) { //defino una funcion "resultado" que toma los valores real, imaginario y frecuencia
    char comp[14];
    if (img < 0 && img != 0) {              //creamos las situaciones para definir de que elemento hablamos
        img = -1 / (2 * PI * freq * img);
        strcpy(comp, "Capacitor (F)");
    } else if (img > 0) {
        img = img / (2 * PI * freq);
        strcpy(comp, "Inductor (H)");
    }

    printf("\nResistor (Ω): %.6f", real);           //printeamos el valor del resistor y el resultado de la comparacion
    if (img != 0) printf("\n%s: %.6f", comp, img);
}

int main() {
    printf("Bienvenido usuario, creamos un programa capaz de definir la resistencia y el tipo de elemento usado en tu circuito, espero te sea util\n\n");

    float real = pedirVariable("parte real de la impedancia"); 
    float img = pedirVariable("parte imaginaria de la impedancia");
    float freq = pedirVariable("frecuencia del circuito");

    resultado(real, img, freq);

    return 0;
}