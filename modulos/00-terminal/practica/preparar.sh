#!/usr/bin/env bash
# Crea el escenario del reto final del módulo 00 en ~/practica-terminal.
# Solo escribe dentro de esa carpeta. Si ya existe, la vuelve a crear desde cero.
set -euo pipefail

DIR="$HOME/practica-terminal"

rm -rf "$DIR"
mkdir -p "$DIR/descargas"
cd "$DIR/descargas"

# Archivos desordenados.
touch foto-playa.jpg foto-cumple.jpg foto-franc.jpg
touch informe.pdf factura-octubre.pdf
echo "leche, pan, huevos" > lista-compra.txt
echo "Aprender Go" > ideas.txt
touch cache1.tmp cache2.tmp cache3.tmp cache4.tmp

# Un log largo con errores mezclados. Siempre genera el mismo contenido.
for i in $(seq 1 300); do
  if (( i % 7 == 0 )); then
    echo "2026-11-20 linea $i ERROR no se pudo conectar con la base de datos"
  elif (( i % 5 == 0 )); then
    echo "2026-11-20 linea $i WARN respuesta lenta"
  else
    echo "2026-11-20 linea $i INFO peticion atendida"
  fi
done > ../registro.log

# Un archivo oculto con una palabra secreta, escondido varios niveles abajo.
mkdir -p ../archivo/2025/viejo
echo "pinguino" > ../archivo/2025/viejo/.secreto

# Un script sin permiso de ejecución.
printf '#!/usr/bin/env bash\necho "¡Reto superado, Bryan!"\n' > ../saludo.sh

echo "Escenario creado en $DIR"
echo "Lee RETO.md y empieza con: cd ~/practica-terminal"
