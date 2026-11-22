# 05 · Tuberías y redirecciones

## La idea

Cada comando tiene una **entrada** y una **salida**. Normalmente la salida va a
la pantalla. Pero puedes conectarla a otro sitio:

```
              ┌──────┐   |   ┌──────┐   |   ┌───────┐
  archivo ──► │ grep │ ────► │ sort │ ────► │ wc -l │ ──► pantalla
              └──────┘       └──────┘       └───────┘
```

Es como una cadena de montaje: cada comando hace **una cosa pequeña** y le
pasa el resultado al siguiente. Esta idea (piezas pequeñas que se combinan)
también es la base de cómo se escribe buen código en Go.

## La tubería `|`

```
comando1 | comando2
```

La salida de `comando1` se convierte en la entrada de `comando2`.

```
ls | wc -l                         ¿cuántos archivos hay aquí?
grep ERROR app.log | wc -l         ¿cuántas líneas de error?
cat nombres.txt | sort             nombres ordenados
grep ERROR app.log | tail -n 5     los 5 últimos errores
```

## Comandos que brillan en tuberías

| Comando | Qué hace |
|---------|----------|
| `wc -l` | Cuenta líneas |
| `sort` | Ordena líneas (`-n` numérico, `-r` al revés) |
| `uniq` | Quita líneas repetidas seguidas (por eso va después de `sort`) |
| `uniq -c` | Cuenta cuántas veces se repite cada una |
| `head` / `tail` | Se queda con las primeras / últimas |

Ejemplo clásico: ¿qué palabra se repite más en una lista?

```
sort palabras.txt | uniq -c | sort -rn | head -n 3
```

## Redirecciones: guardar en archivos

```
comando > archivo     guarda la salida en el archivo (lo SOBRESCRIBE)
comando >> archivo    la añade al final (no borra lo que había)
```

```
ls > lista.txt
echo "primera línea" > notas.txt
echo "segunda línea" >> notas.txt
cat notas.txt
```

> ⚠️ `>` vacía el archivo antes de escribir. Si te equivocas de nombre,
> pierdes lo que tenía.

## Pruébalo

```
cd ~
mkdir practica-05 && cd practica-05
echo pera > frutas.txt
echo manzana >> frutas.txt
echo pera >> frutas.txt
echo kiwi >> frutas.txt
echo pera >> frutas.txt
cat frutas.txt
sort frutas.txt
sort frutas.txt | uniq -c
sort frutas.txt | uniq -c | sort -rn
grep -c pera frutas.txt
cd .. && rm -r practica-05
```

`&&` significa "si lo anterior salió bien, haz esto".

## Comprueba que lo has entendido

1. ¿Qué diferencia hay entre `echo hola > a.txt` y `echo hola >> a.txt`?
2. Escribe una tubería que cuente cuántos archivos `.go` hay bajo la carpeta
   actual (pista: `find` + `wc`).
3. ¿Por qué se pone `sort` antes de `uniq`?
