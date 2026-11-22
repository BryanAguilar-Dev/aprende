# 04 · Leer y buscar

## Leer archivos

| Comando | Úsalo cuando |
|---------|--------------|
| `cat archivo` | Es corto y lo quieres ver entero |
| `less archivo` | Es largo. Flechas para moverte, `/palabra` para buscar, `q` para salir |
| `head archivo` | Solo quieres las primeras 10 líneas (`-n 20` para 20) |
| `tail archivo` | Solo las últimas. Ideal para logs |
| `tail -f archivo` | Ver un log en vivo mientras se escribe (`Ctrl+C` para salir) |

## Buscar texto dentro de archivos: `grep`

```
grep palabra archivo
```

Imprime **solo las líneas** que contienen la palabra.

```
$ grep ERROR registro.log
2026-11-20 10:02 ERROR no se pudo conectar
2026-11-20 10:15 ERROR disco lleno
```

Opciones que usarás siempre:

```
grep -i error archivo     sin distinguir mayúsculas (Error, ERROR, error)
grep -n error archivo     con número de línea
grep -c error archivo     solo cuenta cuántas líneas coinciden
grep -r func carpeta/     busca en todos los archivos de la carpeta
grep -v DEBUG archivo     al revés: las líneas que NO contienen DEBUG
```

`grep -rn` es tu mejor amigo para entender código ajeno: "¿dónde se usa esta
función?".

## Buscar archivos por nombre: `find`

```
find dónde -name "patrón"
```

```
find . -name "*.go"            todos los .go desde aquí hacia abajo
find ~ -name "notas*"          en tu carpeta personal
find . -type d                 solo carpetas
```

`grep` busca **dentro** de los archivos; `find` busca **los archivos**.

## Pruébalo

Franc tiene un archivo que describe su sistema operativo. CaratCore lo lee
(está en `internal/osrelease/osrelease.go`):

```
cat /etc/os-release
grep PRETTY_NAME /etc/os-release
```

Y uno con la memoria. `caratcore doctor` lo lee para saber cuánta RAM hay:

```
head -n 3 /proc/meminfo
```

Busca en tu carpeta personal:

```
find ~ -name "*.txt"
```

## Comprueba que lo has entendido

1. Tienes un log de 50.000 líneas. ¿Qué comando usas para ver solo las 20
   últimas?
2. ¿Cómo encontrarías todas las líneas con "warning" (en mayúsculas o
   minúsculas) en `app.log`, con su número de línea?
3. ¿Qué usarías para encontrar dónde está un archivo llamado `compose.yaml`
   en tu carpeta personal: `grep` o `find`?
