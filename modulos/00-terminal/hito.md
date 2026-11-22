# Hito · Explorar Franc como lo hace `caratcore doctor`

`caratcore doctor` mira el servidor y te dice si está listo. No hace magia:
lee archivos del sistema y ejecuta comandos. En este hito vas a hacer tú, a
mano, el trabajo de `doctor`.

## 1. Haz el diagnóstico a mano

Conéctate a Franc y averigua cada dato. Algunos comandos son nuevos: están
explicados en la tabla.

| Qué comprobar | Cómo | Pista |
|---------------|------|-------|
| Sistema operativo y versión | `/etc/os-release` | Lección 04: leer archivos |
| Número de CPUs | `nproc` | Comando nuevo: imprime cuántos procesadores ve el sistema |
| Memoria total y disponible | líneas `MemTotal` y `MemAvailable` de `/proc/meminfo` | Lección 04: `grep` |
| Espacio libre en `/` | `df -h /` | Comando nuevo: *disk free*; `-h` da tamaños legibles. Mira la columna `Disp` (disponible) |
| ¿Estás en el grupo `sudo`? | `id` o `/etc/group` | Lección 06 |
| ¿Está Docker instalado? | `docker --version` | Si responde `orden no encontrada`, no está instalado |

Nota: `/proc/meminfo` dice `kB`, pero en realidad cuenta en KiB (1 KiB son
1024 bytes). 1 GiB son 1.048.576 KiB, así que divide entre un millón para
tener una idea aproximada.

**Guarda los resultados** en un archivo usando lo que aprendiste en la
lección 05. Por ejemplo:

```
echo "CPUs:" >> ~/franc.txt
nproc >> ~/franc.txt
```

Al final, `cat ~/franc.txt` debe mostrar los 6 datos. (En el módulo 01
aprenderás a subirlo a tus apuntes del repositorio.)

## 2. Compara con `doctor`

Si tienes CaratCore compilado en Franc, ejecútalo:

```
./caratcore doctor
```

Comprueba que las líneas `Platform`, `CPU`, `Memory`, `Disk` y `Privileges`
coinciden con lo que has encontrado tú.

## 3. Mira cómo lo hace el código

No hace falta entender Go todavía. Dentro de tu copia de CaratCore, busca con
`grep -n` las rutas que has usado:

```
grep -n "/proc/meminfo" internal/doctor/system.go
grep -n "/etc/group" internal/doctor/doctor.go
grep -n "os-release" internal/osrelease/osrelease.go
```

Fíjate en el comentario encima de `parseMeminfo` en `system.go`: explica por
qué `doctor` lee `/proc/meminfo` y no la salida del comando `free`.
¿Lo entiendes? Añade la explicación, con tus palabras, a `~/franc.txt`.

## Hecho cuando

- [ ] `~/franc.txt` tiene los 6 datos.
- [ ] Sabes explicar de dónde saca `doctor` la memoria y el sistema operativo.

Marca el hito en [la página](https://claude.ai/artifact/FZN7QVUfAzsVnbArzpYCAq). Has terminado el módulo 00. 🎉
