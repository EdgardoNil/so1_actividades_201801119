

```c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

int main() {
    pid_t pid;
    pthread_t tid;

    pid = fork();

    if (pid == 0) {
        /* Child process */
        fork();
        pthread_create(&tid, NULL, some_function, NULL);
        fork();
    }

    pthread_exit(NULL);
    return 0;
}
```

a) ¿Cuántos procesos únicos son creados?
- Se crea un proceso inicial al ejecutar el programa.
- Luego, se crea un nuevo proceso hijo con la primera llamada a `fork()`.
- En el bloque del hijo (`if (pid == 0)`), se realiza otra llamada a `fork()`, creando así un tercer proceso hijo.
- Finalmente, dentro del mismo bloque del hijo, se realiza una tercera llamada a `fork()`, creando un cuarto proceso hijo.

**Hay un total de 4 procesos únicos creados.**

b) ¿Cuántos hilos únicos son creados?
- Se crea un hilo dentro del bloque del hijo (`if (pid == 0)`) con la llamada a `pthread_create()`.

**Por lo tanto, hay un total de 1 hilo único creado.**