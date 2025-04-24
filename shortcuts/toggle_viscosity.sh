#!/bin/bash

# Verifica se o Viscosity está em execução
if pgrep -x "Viscosity" > /dev/null; then
    # Se estiver rodando, encerra o aplicativo
    osascript -e 'quit app "Viscosity"'
    echo "Viscosity foi encerrado"
else
    # Se não estiver rodando, abre o aplicativo
    open -a Viscosity
    echo "Viscosity foi iniciado"
fi
