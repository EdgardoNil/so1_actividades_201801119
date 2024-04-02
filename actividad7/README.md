# Completely Fair Scheduler (CFS) de Linux

El Completely Fair Scheduler (CFS) es un algoritmo de planificación de procesos utilizado en el kernel de Linux. Su objetivo principal es distribuir justamente el tiempo de CPU entre los procesos en ejecución, proporcionando un entorno equitativo y eficiente para la ejecución de múltiples tareas en un sistema operativo.

## Características principales:

1. **Equidad de asignación de CPU**: El CFS busca proporcionar a cada proceso una cantidad justa de tiempo de CPU en función de su prioridad y el estado del sistema. Esto evita que un proceso monopolice la CPU y garantiza un rendimiento equitativo para todos los procesos en ejecución.

2. **Modelo de planificación basado en prioridades dinámicas**: A diferencia de los sistemas de planificación más tradicionales que utilizan una asignación estática de prioridades, el CFS asigna prioridades dinámicamente según las necesidades del sistema y la carga de trabajo actual. Esto permite una adaptación más eficiente a los cambios en la carga del sistema y las prioridades de los procesos.

3. **Planificación basada en el tiempo de ejecución**: El CFS utiliza el concepto de tiempo de ejecución virtual para realizar la planificación. Cada proceso tiene asociado un tiempo de ejecución virtual que representa la cantidad de tiempo de CPU que ha consumido. El proceso con el menor tiempo de ejecución virtual es seleccionado para su ejecución en un momento dado.

4. **Resolución de la invasión de prioridades**: El CFS está diseñado para evitar problemas de inversión de prioridades, donde procesos de baja prioridad pueden ser bloqueados por procesos de alta prioridad. Utiliza técnicas como el ajuste del tiempo de ejecución para garantizar que los procesos de alta prioridad no monopolizan la CPU indefinidamente, permitiendo que los procesos de baja prioridad también se ejecuten.

## Funcionamiento:

El funcionamiento del CFS se basa en el concepto de "tiempo de ejecución virtual" y una estructura de datos conocida como árbol rojo-negro.

1. **Tiempo de ejecución virtual (VRuntime)**: Cada proceso tiene asociado un valor de tiempo de ejecución virtual que representa la cantidad de tiempo de CPU que ha utilizado hasta el momento. Este valor se utiliza para comparar la "justicia" entre los procesos. Cuando un proceso se ejecuta, su tiempo de ejecución virtual aumenta.

2. **Estructura de datos de árbol rojo-negro**: El CFS utiliza un árbol rojo-negro para mantener un seguimiento eficiente de los procesos en ejecución y sus respectivos tiempos de ejecución virtual. Este árbol permite una búsqueda rápida del proceso con el menor tiempo de ejecución virtual, lo que facilita la selección del próximo proceso a ejecutar.

3. **Selección del próximo proceso**: En cada paso de la planificación, el CFS selecciona el proceso con el menor tiempo de ejecución virtual para su ejecución. Esto garantiza que los procesos se ejecuten de manera equitativa y que ningún proceso monopolice la CPU durante largos períodos de tiempo.

4. **Ajuste del tiempo de ejecución**: Después de que un proceso se ejecuta durante un cierto período de tiempo, su tiempo de ejecución virtual se ajusta para reflejar el tiempo transcurrido. Esto garantiza que los procesos de baja prioridad eventualmente obtengan la oportunidad de ejecutarse, incluso si hay procesos de alta prioridad en ejecución.

En resumen, el Completely Fair Scheduler (CFS) de Linux es un algoritmo de planificación de procesos diseñado para proporcionar una asignación justa y equitativa del tiempo de CPU entre los procesos en ejecución. Utiliza el tiempo de ejecución virtual y una estructura de datos de árbol rojo-negro para garantizar una planificación eficiente y equilibrada en función de las prioridades dinámicas de los procesos y la carga del sistema.