#!/usr/bin/env bash
# Comprueba el reto final del módulo 00. Solo lee ~/practica-terminal.
set -uo pipefail

DIR="$HOME/practica-terminal"
bien=0
total=0

ok()  { echo "  ✔ $1"; bien=$((bien + 1)); total=$((total + 1)); }
mal() { echo "  ✘ $1"; echo "      pista: $2"; total=$((total + 1)); }

if [ ! -d "$DIR" ]; then
  echo "No existe $DIR. Ejecuta primero preparar.sh."
  exit 1
fi
cd "$DIR"

echo "Comprobando $DIR"
echo

# 1. Fotos en fotos/
if [ -d fotos ] && [ "$(ls fotos/*.jpg 2>/dev/null | wc -l)" -eq 3 ] \
   && [ "$(ls descargas/*.jpg 2>/dev/null | wc -l)" -eq 0 ]; then
  ok "1. Las 3 fotos están en fotos/"
else
  mal "1. Las 3 fotos deberían estar en fotos/ (y ninguna en descargas/)" \
      "lección 03: mkdir y mv con el comodín *.jpg"
fi

# 2. Documentos en documentos/
if [ -d documentos ] && [ "$(ls documentos/*.pdf documentos/*.txt 2>/dev/null | wc -l)" -eq 4 ] \
   && [ "$(ls descargas/*.pdf descargas/*.txt 2>/dev/null | wc -l)" -eq 0 ]; then
  ok "2. Los 2 .pdf y los 2 .txt están en documentos/"
else
  mal "2. Los .pdf y .txt deberían estar en documentos/" \
      "lección 03: puedes usar varios comodines en un mismo mv"
fi

# 3. Sin temporales
if [ "$(find . -name '*.tmp' | wc -l)" -eq 0 ]; then
  ok "3. No queda ningún .tmp"
else
  mal "3. Aún quedan archivos .tmp" "lección 03: prueba primero con ls y luego con rm"
fi

# 4. descargas/ borrada
if [ ! -e descargas ]; then
  ok "4. La carpeta descargas/ ya no existe"
else
  mal "4. descargas/ debería estar borrada (cuando esté vacía)" \
      "lección 03: rmdir borra carpetas vacías"
fi

# 5. Número de errores
esperado=$(grep -c ERROR registro.log 2>/dev/null || echo "?")
if [ -f errores.txt ] && [ "$(tr -d '[:space:]' < errores.txt)" = "$esperado" ]; then
  ok "5. errores.txt tiene el número correcto de líneas con ERROR"
else
  mal "5. errores.txt debería contener solo el número de líneas con ERROR" \
      "lecciones 04 y 05: grep, wc o grep -c, y la redirección >"
fi

# 6. Últimos 3 errores
if [ -f ultimos-errores.txt ] && diff -q <(grep ERROR registro.log | tail -n 3) ultimos-errores.txt >/dev/null; then
  ok "6. ultimos-errores.txt tiene los 3 últimos errores"
else
  mal "6. ultimos-errores.txt debería tener las 3 últimas líneas con ERROR" \
      "lección 05: una tubería de dos comandos y >"
fi

# 7. Palabra secreta
if [ -f palabra.txt ] && [ "$(tr -d '[:space:]' < palabra.txt)" = "pinguino" ]; then
  ok "7. Has encontrado la palabra secreta"
else
  mal "7. palabra.txt debería contener la palabra del archivo oculto" \
      "lección 04: find busca por nombre; los ocultos empiezan por punto"
fi

# 8. Script ejecutable
if [ -x saludo.sh ]; then
  ok "8. saludo.sh es ejecutable"
else
  mal "8. saludo.sh debería tener permiso de ejecución" "lección 06: chmod"
fi

echo
echo "Resultado: $bien de $total"
if [ "$bien" -eq "$total" ]; then
  echo
  ./saludo.sh
  echo "Marca el reto en la página. Siguiente: el hito del módulo."
  exit 0
fi
exit 1
