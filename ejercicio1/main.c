#include "ejercicios.h"

int main(void){
    //char* str = "hello world";
    //printf("string %s\n", str);
    //printf("longitud en c %d\n", strlen(str));
    
    //char* a = "apple";
    //char* b = "apricot";
    //printf("el resultado esperado es -1, obtenido %d\n", strCmp(a,b));

    char a = 'a';
    char* s = "anitalavalatina";
    printf("el resultado esperado es 6, obtenido %d\n", countChars(s,a));
    return 0;
}