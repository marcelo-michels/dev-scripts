
# Testa velocidade de leitura do HD
sudo hdparm -t /dev/xvda1

# Mostra espaço em disco
df -h

# Tamanho dos arquivos dentro de uma pasta
ls -lSrh

# procura na maquina por arquivos maiores que 100MB
sudo find / -type f -size +100M -exec ls -lh {} \;

# Mostra uso de RAM de cada processo, ordenado pelos mais altos
ps -o pid,user,%mem,command ax | sort -b -k3 -r

# mostra uso de RAM de um processo especifico 
sudo pmap 917 | grep total

# procurar por um arquivo ou pasta
find / -name "arquivo_ou_pasta"

# Configurando o teclado keykron no linux (US int with dead keys)
setxkbmap us intl
