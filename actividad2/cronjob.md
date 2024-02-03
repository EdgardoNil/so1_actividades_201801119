# Actividad 2 - CRONJOB

La siguiente configuración de cronjob se encarga de ejecutar el script `script.sh` ubicado en la ruta específica cada 5 minutos:

```bash
*/5 * * * * /Documentos/so1_actividades_201801119/actividad2/script.sh
```

- **Minutos (Campo 1):** */5 indica "cada 5 minutos."
- **Horas (Campo 2):** * significa "cualquier hora."
- **Día del mes (Campo 3):** * significa "cualquier día del mes."
- **Mes (Campo 4):** * significa "cualquier mes."
- **Día de la semana (Campo 5):** * significa "cualquier día de la semana."

En resumen, el script se ejecutará automáticamente cada 5 minutos, independientemente de la hora, día del mes, mes o día de la semana.