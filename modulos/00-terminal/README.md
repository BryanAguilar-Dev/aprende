# 00 · Terminal y Linux

**Objetivo:** moverte por un sistema Linux, manejar archivos y entender lo que
ves, solo con el teclado. Es lo que usarás para hablar con Franc, compilar Go y
manejar Docker.

**Tiempo:** 6 lecciones de 20-30 minutos, más el reto final.

## Dónde practicar

| Opción | Cuándo usarla |
|--------|---------------|
| **Franc por SSH** (recomendada) | Es Linux de verdad y es donde trabajarás. Practica siempre dentro de tu carpeta personal (`~`), nunca en `/etc` ni en `/`. |
| **Git Bash** en Windows | Para las lecciones 01-05 si no tienes Franc a mano. Viene con Git para Windows. Los permisos (lección 06) no funcionan igual. |

## Lecciones

1. [Qué es la terminal](01-que-es-la-terminal.md)
2. [Moverse: `pwd`, `ls`, `cd`](02-moverse.md)
3. [Archivos y carpetas](03-archivos.md)
4. [Leer y buscar](04-leer-y-buscar.md)
5. [Tuberías y redirecciones](05-tuberias.md)
6. [Usuarios y permisos](06-permisos.md)
7. [Reto final](practica/RETO.md)

Después, el **hito**: [explorar Franc como `caratcore doctor`](hito.md).

## Chuleta

| Comando | Qué hace | Ejemplo |
|---------|----------|---------|
| `pwd` | Dice dónde estás | `pwd` |
| `ls` | Lista lo que hay | `ls -la` |
| `cd` | Cambia de carpeta | `cd proyectos`, `cd ..`, `cd ~` |
| `mkdir` | Crea carpeta | `mkdir -p a/b/c` |
| `touch` | Crea archivo vacío | `touch notas.txt` |
| `cp` | Copia | `cp a.txt b.txt`, `cp -r carpeta copia` |
| `mv` | Mueve o renombra | `mv viejo.txt nuevo.txt` |
| `rm` | Borra (¡sin papelera!) | `rm a.txt`, `rm -r carpeta` |
| `cat` | Muestra un archivo | `cat notas.txt` |
| `less` | Lee un archivo largo (`q` para salir) | `less registro.log` |
| `head` / `tail` | Primeras / últimas líneas | `tail -n 20 registro.log` |
| `grep` | Busca texto | `grep ERROR registro.log` |
| `find` | Busca archivos | `find . -name "*.go"` |
| `wc -l` | Cuenta líneas | `wc -l notas.txt` |
| `\|` | Pasa la salida a otro comando | `ls \| wc -l` |
| `>` / `>>` | Guarda la salida en un archivo (reemplaza / añade) | `ls > lista.txt` |
| `chmod` | Cambia permisos | `chmod +x script.sh` |
| `sudo` | Ejecuta como administrador | `sudo apt update` |
| `man` | Manual de un comando (`q` para salir) | `man ls` |

**Teclas que ahorran horas:** `Tab` autocompleta, `↑` repite comandos
anteriores, `Ctrl+C` cancela lo que se está ejecutando, `Ctrl+L` limpia la
pantalla.
