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
*/
void testIntercambiarChars(){
    char* s = "hola";
    
    intercambiar(s);
    printf("el resultado esperado es aloh, obtenido %s\n", s);
    
}
    
int main(void){
    //testStrCmp();
    //testStrLen();
    //testCountChars();
    testIntercambiarChars();
    return 0;
}