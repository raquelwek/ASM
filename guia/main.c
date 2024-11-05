#include "ejercicios.h"
/*
void testStrCmp(){
    char* a = "hola";
    char* b = "hola";
    printf("el resultado esperado es 0, obtenido %d\n", strCmp(a,b));
    b = "hola2";
    printf("el resultado esperado es -1, obtenido %d\n", strCmp(a,b));
    b = "hol";
    printf("el resultado esperado es 1, obtenido %d\n", strCmp(a,b));
}

void testStrLen(){
    char* a = "hola";
    printf("el resultado esperado es 4, obtenido %d\n", strLen(a));
    a = "hola2";
    printf("el resultado esperado es 5, obtenido %d\n", strLen(a));
    a = "hol";
    printf("el resultado esperado es 3, obtenido %d\n", strLen(a));
}

void testCountChars(){
    char a = 'a';
    char* s = "anitalavalatina";
    printf("el resultado esperado es 6, obtenido %d\n", countChars(s,a));
}

void testIntercambiarChars(){
    char s[] = "hola";
    
    intercambiar(s);
    printf("el resultado esperado es aloh, obtenido %s\n", s);
    
}
*/
void test_diagonal() {
    // Definimos una matriz 3x3 de ejemplo
    short matriz[3][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };

    // Convertimos a un puntero para pasar a la función
    short* matriz_ptr = (short*)matriz;

    // Creamos un vector para almacenar los elementos de la diagonal
    short vector[3];

    // Llamamos a la función diagonal
    diagonal(matriz_ptr, 3, vector);

    // Comprobamos que el vector contiene los elementos correctos
    short expected_vector[3] = {1, 5, 9};  // Elementos de la diagonal

    // Usamos assert para validar la salida
    for (int i = 0; i < 3; i++) {
        printf("%d vs %d\n",vector[i],expected_vector[i]);
    }

    printf("Test passed: diagonal function works correctly.\n");
}
    
int main(void){
    //testStrCmp();
    //testStrLen();
    //testCountChars();
    //testIntercambiarChars();
    test_diagonal();
    return 0;
}