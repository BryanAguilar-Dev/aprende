# 03 · Archivos y carpetas

## Crear

```
mkdir practica            crea una carpeta
mkdir -p a/b/c            crea la cadena entera (sin -p falla si "a" no existe)
touch notas.txt           crea un archivo vacío
```

## Copiar, mover y renombrar

```
cp origen destino
mv origen destino
```

`mv` sirve para dos cosas, según el destino:

```
mv notas.txt apuntes.txt     → renombra (mismo sitio, otro nombre)
mv notas.txt docs/           → mueve (otra carpeta, mismo nombre)
```

Para copiar una carpeta entera, `cp` necesita `-r` (recursivo: "con todo lo
que tiene dentro"):

```
cp -r proyecto copia-proyecto
```

## Borrar

```
rm notas.txt              borra un archivo
rm -r carpeta             borra una carpeta y todo su contenido
rmdir carpeta             borra una carpeta solo si está vacía
```

> ⚠️ **`rm` no tiene papelera.** Lo borrado no vuelve. Antes de un `rm`,
> haz `ls` con la misma ruta para ver qué vas a borrar. Usa `rm -i` si
> quieres que te pregunte antes de cada archivo.

## Comodines

El asterisco `*` significa "cualquier cosa":

```
ls *.txt          todos los que terminan en .txt
mv *.jpg fotos/   mueve todas las fotos a fotos/
rm *.tmp          borra todos los .tmp
```

La shell sustituye `*.txt` por la lista real de archivos **antes** de ejecutar
el comando. Por eso puedes probar primero con `ls *.tmp` y, si la lista es la
que esperas, cambiar `ls` por `rm`.

## Pruébalo

```
cd ~
mkdir -p practica-03/docs
cd practica-03
touch a.txt b.txt c.tmp
ls
mv a.txt docs/
cp b.txt docs/copia-b.txt
ls docs
ls *.tmp
rm *.tmp
ls
cd ..
rm -r practica-03
```

Antes de cada línea, intenta adivinar qué va a pasar. Después, compruébalo con
`ls`.

## Comprueba que lo has entendido

1. ¿Cómo renombrarías `informe.pdf` a `informe-2026.pdf`?
2. ¿Por qué `cp carpeta copia` falla y `cp -r carpeta copia` no?
3. ¿Qué harías antes de ejecutar `rm *.log` para no llevarte un susto?
