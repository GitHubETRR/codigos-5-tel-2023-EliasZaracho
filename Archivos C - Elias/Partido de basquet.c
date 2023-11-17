#include <stdio.h>

int main() {
    int equipo_1_puntos = 0;
    int equipo_2_puntos = 0;
    int simples = 0;
    int dobles = 0;
    int triples = 0;

    while (1) {
        int equipo;
        printf("Ingrese el número de equipo (1 o 2): ");
        scanf("%d", &equipo);

        if (equipo == 0) {
            break;
        }

        if (equipo != 1 && equipo != 2) {
            printf("Número de equipo inválido. Intente nuevamente.\n");
            continue;
        }

        int puntos;
        printf("Ingrese el valor del punto: ");
        scanf("%d", &puntos);

        if (puntos == 1) {
            simples += 1;
        } else if (puntos == 2) {
            dobles += 1;
        } else if (puntos == 3) {
            triples += 1;
        }

        if (equipo == 1) {
            equipo_1_puntos += puntos;
        } else if (equipo == 2) {
            equipo_2_puntos += puntos;
        }

        printf("Puntos por equipo:\n");
        printf("Equipo 1: %d\n", equipo_1_puntos);
        printf("Equipo 2: %d\n", equipo_2_puntos);

        if (equipo_1_puntos > equipo_2_puntos) {
            printf("El equipo 1 va ganando.\n");
        } else if (equipo_2_puntos > equipo_1_puntos) {
            printf("El equipo 2 va ganando.\n");
        } else {
            printf("El partido está empatado.\n");
        }
    }

    printf("---- Resultados finales ----\n");
    printf("Puntos por equipo:\n");
    printf("Equipo 1: %d\n", equipo_1_puntos);
    printf("Equipo 2: %d\n", equipo_2_puntos);

    if (equipo_1_puntos > equipo_2_puntos) {
        printf("El equipo 1 es el ganador.\n");
    } else if (equipo_2_puntos > equipo_1_puntos) {
        printf("El equipo 2 es el ganador.\n");
    } else {
        printf("El partido terminó en empate.\n");
    }

    int total_puntos = equipo_1_puntos + equipo_2_puntos;
    float porcentaje_simples = ((float)simples / total_puntos) * 100;
    float porcentaje_dobles = ((float)dobles / total_puntos) * 100;
    float porcentaje_triples = ((float)triples / total_puntos) * 100;

    printf("Cantidad de tiros:\n");
    printf("Simples: %d\n", simples);
    printf("Dobles: %d\n", dobles);
    printf("Triples: %d\n", triples);

    printf("Porcentaje de tiros:\n");
    printf("Simples: %.2f%%\n", porcentaje_simples);
    printf("Dobles: %.2f%%\n", porcentaje_dobles);
    printf("Triples: %.2f%%\n", porcentaje_triples);

    return 0;
}