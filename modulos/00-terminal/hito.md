# Hito · Explorar Franc como lo hace `caratcore doctor`

`caratcore doctor` mira el servidor y te dice si está listo. No hace magia:
lee archivos del sistema y ejecuta comandos que **tú ya sabes usar**. En este
hito vas a hacer tú, a mano, el trabajo de `doctor`.

## 1. Haz el diagnóstico a mano

Conéctate a Franc y averigua cada dato. Apunta el comando que usaste y el
resultado en `apuntes/franc.md`.

| Qué comprobar | Dónde mirar | De qué lección |
|---------------|-------------|----------------|
| Sistema operativo y versión | `/etc/os-release` | 04 |
| Número de CPUs | el comando `nproc` | 01 |
| Memoria total y disponible | líneas `MemTotal` y `MemAvailable` de `/proc/meminfo` | 04 |
| Espacio libre en `/` | el comando `df -h /` | 01 |
| ¿Estás en el grupo `sudo`? | `id` o `/etc/group` | 06 |
| ¿Está Docker instalado? | `docker --version` | 01 |

Nota: `/proc/meminfo` da los valores en kB. 1 GB son aproximadamente
1.000.000 kB.

## 2. Compara con `doctor`

Si tienes CaratCore compilado en Franc, ejecútalo:

```
./caratcore doctor
```

Comprueba que las líneas `Platform`, `CPU`, `Memory`, `Disk` y `Privileges`
coinciden con lo que has encontrado tú.

## 3. Mira cómo lo hace el código

No hace falta entender Go todavía. Abre estos archivos en CaratCore y busca
con `grep -n` las rutas que has usado:

```
grep -n "/proc/meminfo" internal/doctor/system.go
grep -n "/etc/group" internal/doctor/doctor.go
grep -n "os-release" internal/osrelease/osrelease.go
```

Fíjate en el comentario encima de `parseMeminfo` en `system.go`: explica por
qué `doctor` lee `/proc/meminfo` y no la salida del comando `free`.
¿Lo entiendes? Escríbelo con tus palabras en tus apuntes.

## Hecho cuando

- [ ] `apuntes/franc.md` tiene los 6 datos y el comando de cada uno.
- [ ] Sabes explicar de dónde saca `doctor` la memoria y el sistema operativo.

Marca el hito en [`ruta.md`](../../ruta.md). Has terminado el módulo 00. 🎉
