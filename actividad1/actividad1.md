# Conceptos de Sistemas Operativos

## Tipos de Kernel y sus diferencias

### Monolítico

Un kernel monolítico es un diseño de kernel en el que todas las funciones del sistema operativo se ejecutan en el espacio de kernel. Esto implica que todas las tareas, desde la gestión de memoria hasta la administración de dispositivos, se llevan a cabo en el mismo espacio de memoria. Algunas características clave incluyen:

- **Rendimiento:** Debido a que todas las funciones operan en el mismo espacio, el rendimiento suele ser mayor.
- **Modularidad:** Sin embargo, la modularidad es limitada, ya que todas las funciones están fuertemente acopladas.
- **Estabilidad:** Un fallo en una parte del kernel puede afectar a todo el sistema.

*Fuente: [Wikipedia - Monolithic Kernel](https://en.wikipedia.org/wiki/Monolithic_kernel)*

### Microkernel

Contrastando con el kernel monolítico, el kernel microkernel implementa solo funciones esenciales en el espacio de kernel, trasladando servicios no esenciales al espacio de usuario. Algunas características destacadas son:

- **Modularidad:** Mayor modularidad y flexibilidad al trasladar servicios al espacio de usuario.
- **Rendimiento:** Sin embargo, este enfoque puede afectar el rendimiento debido a la necesidad de comunicación entre los componentes en el espacio de usuario.
- **Estabilidad:** Mayor estabilidad, ya que los fallos en componentes no esenciales no afectan al núcleo esencial.

*Fuente: [Wikipedia - Microkernel](https://en.wikipedia.org/wiki/Microkernel)*

### Híbrido

Los kernels híbridos buscan combinar lo mejor de ambos mundos, incorporando características tanto de kernels monolíticos como de microkernels. Algunas características clave son:

- **Rendimiento y modularidad:** Ofrece un equilibrio entre el rendimiento de un kernel monolítico y la modularidad de un microkernel.
- **Flexibilidad:** Permite ejecutar algunas funciones críticas en el espacio de kernel y otras en el espacio de usuario.

*Fuente: [Techopedia - Hybrid Kernel](https://www.techopedia.com/definition/31536/hybrid-kernel)*

## User vs Kernel Mode

### Modo Usuario

El modo usuario es el nivel de privilegio en el que operan las aplicaciones y procesos. Algunas características importantes son:

- **Acceso limitado:** Las aplicaciones tienen acceso limitado a instrucciones y recursos privilegiados.
- **Seguridad:** Mayor seguridad, ya que las aplicaciones no pueden alterar directamente el funcionamiento del sistema.

*Fuente: [GeeksforGeeks - User Mode and Kernel Mode](https://www.geeksforgeeks.org/user-mode-and-kernel-mode-in-operating-system/)*

### Modo Kernel

En contraste, el modo kernel es el nivel de privilegio en el que el sistema operativo tiene acceso completo al hardware. Algunas características clave incluyen:

- **Acceso completo:** El sistema operativo puede ejecutar instrucciones privilegiadas y acceder a todos los recursos del sistema.
- **Operaciones críticas:** Capacidad para realizar operaciones críticas y cambiar la configuración del hardware.

*Fuente: [Computer Hope - Kernel](https://www.computerhope.com/jargon/k/kernel.htm)*

## Interruptions vs Traps

### Interrupciones

Las interrupciones son eventos que rompen la secuencia normal de ejecución del programa y requieren atención del sistema operativo. Algunos puntos relevantes son:

- **Origen:** Pueden ser generadas por hardware (como interrupciones de temporizador) o por software.
- **Manejo:** Requieren un mecanismo eficiente de manejo para responder a eventos externos.

*Fuente: [Studytonight - Interrupts in OS](https://www.studytonight.com/operating-system/interrupts-in-os)*

### Traps

Las trampas son eventos generados intencionalmente por el software en tiempo de ejecución, generalmente para manejar condiciones de error o eventos específicos. Algunos aspectos a considerar son:

- **Generación intencional:** Se generan deliberadamente dentro del programa para manejar excepciones y errores.
- **Uso:** Comúnmente utilizadas para realizar llamadas al sistema y gestionar interrupciones específicas.

*Fuente: [TutorialsPoint - Traps and System Calls](https://www.tutorialspoint.com/operating_system/os_system_calls.htm)*
