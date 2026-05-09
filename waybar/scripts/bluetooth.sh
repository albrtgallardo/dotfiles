#!/bin/bash

# Verificar si Bluetooth está encendido
if bluetoothctl show | grep -q "Powered: yes"; then
    # Verificar si hay dispositivos conectados
    if bluetoothctl info | grep -q "Connected: yes"; then
        # Contar cuántos dispositivos están conectados
        devices=$(bluetoothctl devices Connected | cut -d ' ' -f 2-)
        count=$(echo "$devices" | wc -l)

        # Icono con conexión
        echo "{\"text\": \"\", \"tooltip\": \"Conectado a:\n$devices\"}"
    else
        # Icono encendido pero sin conexión
        echo "{\"text\": \"\", \"tooltip\": \"Bluetooth encendido\nSin dispositivos conectados\"}"
    fi
else
    # Icono apagado
    echo "{\"text\": \"\", \"tooltip\": \"Bluetooth apagado\"}"
fi

