# 02 · Moverse: `pwd`, `ls`, `cd`

## La idea

En Linux todo cuelga de una sola raíz, `/`. Es un árbol:

```
/                      ← la raíz
├── etc/               ← configuración del sistema
├── home/
│   └── bryan/         ← tu carpeta personal (~)
│       ├── finanzas/
│       └── notas.txt
├── proc/              ← información en vivo del sistema
├── tmp/               ← archivos temporales
└── var/
    └── log/           ← registros (logs)
```

Siempre estás **en algún sitio** del árbol, igual que en una carpeta abierta
en Windows.

## Los tres comandos

| Comando | Pregunta que responde |
|---------|-----------------------|
| `pwd` | ¿Dónde estoy? |
| `ls` | ¿Qué hay aquí? |
| `cd ruta` | Llévame a otro sitio |

```
$ pwd
/home/bryan
$ ls
finanzas  notas.txt
$ cd finanzas
$ pwd
/home/bryan/finanzas
```

## Rutas absolutas y relativas

- **Absoluta:** empieza por `/`, es la dirección completa desde la raíz.
  Funciona estés donde estés: `cd /var/log`.
- **Relativa:** parte de donde estás ahora: `cd finanzas`.

Atajos:

| Atajo | Significa |
|-------|-----------|
| `.` | aquí mismo |
| `..` | la carpeta de arriba (el padre) |
| `~` | tu carpeta personal |
| `cd` sin nada | volver a `~` |
| `cd -` | volver a la carpeta anterior |

```
Estás en /home/bryan/finanzas

cd ..         →  /home/bryan
cd ../..      →  /home
cd ~/finanzas →  /home/bryan/finanzas  (desde cualquier sitio)
```

## Opciones útiles de `ls`

```
ls -l      lista larga: permisos, dueño, tamaño, fecha
ls -a      muestra también los ocultos (empiezan por punto: .bashrc)
ls -la     las dos cosas
ls -lh     tamaños legibles (4.0K, 12M)
```

## Pruébalo

```
cd /
ls
cd etc
pwd
cd ..
cd var/log
ls
cd
pwd
ls -la
```

Usa `Tab`: escribe `cd /va` y pulsa Tab. La shell completa `/var/`. Si hay
varias opciones, pulsa Tab dos veces y te las enseña.

## Comprueba que lo has entendido

1. Estás en `/home/bryan/finanzas/datos`. ¿Dónde acabas con `cd ../..`?
2. ¿Qué diferencia hay entre `cd log` y `cd /log`?
3. ¿Qué comando usarías para ver los archivos ocultos de tu carpeta personal?
