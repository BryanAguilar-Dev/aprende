# 06 · Usuarios y permisos

> Esta lección se hace en **Franc** (Linux). En Git Bash los permisos no
> funcionan igual.

## La idea

Linux es multiusuario. Cada archivo tiene un **dueño**, un **grupo** y unos
**permisos** que dicen quién puede hacer qué.

Hay un usuario especial, **root**, el administrador, que puede hacerlo todo.
Por eso no se trabaja como root: un error se convierte en desastre.

## Leer permisos con `ls -l`

```
$ ls -l
-rwxr-xr-- 1 bryan docker 1024 nov 20 10:00 script.sh
│└┬┘└┬┘└┬┘   └─┬─┘ └──┬─┘
│ │  │  │      │      └─ grupo
│ │  │  │      └─ dueño
│ │  │  └─ resto del mundo: r--  (solo leer)
│ │  └─ grupo:              r-x  (leer y ejecutar)
│ └─ dueño:                 rwx  (todo)
└─ tipo: - archivo, d carpeta
```

| Letra | En un archivo | En una carpeta |
|-------|---------------|----------------|
| `r` | leerlo | ver qué hay dentro (`ls`) |
| `w` | modificarlo | crear o borrar cosas dentro |
| `x` | ejecutarlo como programa | entrar en ella (`cd`) |
| `-` | no tiene ese permiso | |

## Cambiar permisos: `chmod`

```
chmod +x script.sh        lo hace ejecutable para todos
chmod u+x script.sh       solo para el dueño (u = user)
chmod o-r secreto.txt     quita la lectura al resto (o = others)
```

Verás también números, como `chmod 755` o `chmod 600`. Cada cifra es la
suma de r=4, w=2 y x=1, para dueño, grupo y resto:

```
7 = 4+2+1 = rwx      5 = 4+1 = r-x      6 = 4+2 = rw-      0 = ---
755 → rwxr-xr-x          600 → rw-------  (típico de claves SSH)
```

Para ejecutar un script de la carpeta actual se escribe `./script.sh`. El `./`
le dice a la shell "está aquí", porque por seguridad no busca programas en la
carpeta actual.

## Usuarios, grupos y `sudo`

```
whoami          tu usuario
id              tu usuario y tus grupos
groups          solo tus grupos
```

`sudo comando` ejecuta **un** comando como root, si tu usuario tiene permiso.
En Debian, eso lo da pertenecer al grupo `sudo`.

**Conexión con CaratCore:** `caratcore doctor` comprueba si estás en el grupo
`sudo` leyendo `/etc/group` (mira `inSudoGroup` en
`internal/doctor/doctor.go`). Puedes hacer lo mismo a mano:

```
grep sudo /etc/group
```

Los grupos también explican por qué a veces `docker ps` dice "permission
denied": hay que estar en el grupo `docker` o usar `sudo`.

## Pruébalo

```
cd ~
mkdir practica-06 && cd practica-06
echo 'echo "¡Funciono!"' > hola.sh
ls -l hola.sh
./hola.sh                 ← falla: Permission denied
chmod u+x hola.sh
ls -l hola.sh             ← fíjate en la x nueva
./hola.sh
id
cd .. && rm -r practica-06
```

## Comprueba que lo has entendido

1. Traduce `-rw-r-----` a palabras.
2. ¿Qué número de `chmod` corresponde a `rwxr-x---`?
3. ¿Por qué no es buena idea trabajar siempre como root?
