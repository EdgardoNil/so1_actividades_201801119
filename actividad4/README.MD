 Primero, crea dos archivos llamados `server.sh` y `client.sh`.

### server.sh

```bash
#!/bin/bash

# Nombre del Named Pipe para el servidor
PIPE_SERVER=server_pipe

# Crear el Named Pipe si no existe
if [ ! -p $PIPE_SERVER ]; then
    mkfifo $PIPE_SERVER
fi

# Limpiar el Named Pipe antes de iniciar
echo "Server: Esperando conexión..."
echo > $PIPE_SERVER

# Bucle principal del servidor
while true; do
    if read line <$PIPE_SERVER; then
        echo "Cliente dice: $line"
    fi
done
```

### client.sh

```bash
#!/bin/bash

# Nombre del Named Pipe para el cliente
PIPE_CLIENT=client_pipe

# Crear el Named Pipe si no existe
if [ ! -p $PIPE_CLIENT ]; then
    mkfifo $PIPE_CLIENT
fi

# Bucle principal del cliente
while true; do
    read -p "Tú: " message
    echo "$message" > $PIPE_CLIENT
done
```


# Chat básico con Named Pipes en Bash


## Instrucciones de uso

1. Ejecuta el script `server.sh` en una terminal para iniciar el servidor.

    ```bash
    ./server.sh
    ```

2. Ejecuta el script `client.sh` en otra terminal para iniciar el cliente.

    ```bash
    ./client.sh
    ```

3. Escribe mensajes en la terminal del cliente y presiona Enter para enviarlos al servidor.

    ```bash
    Tú: Hola, ¿cómo estás?
    ```

4. El servidor mostrará los mensajes recibidos.

    ```bash
    Server: Cliente dice: Hola, ¿cómo estás?
    ```

