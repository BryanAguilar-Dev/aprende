# 01 · Qué es la terminal

## La idea

Un ordenador se puede manejar de dos formas:

```
  Con ratón (interfaz gráfica)          Con teclado (terminal)
  ┌──────────────────────────┐          ┌──────────────────────────┐
  │  📁 Documentos           │          │ bryan@franc:~$ ls        │
  │  📁 Descargas            │          │ Documentos  Descargas    │
  │  🖱 doble clic para abrir │          │ bryan@franc:~$ _         │
  └──────────────────────────┘          └──────────────────────────┘
```

Las dos hacen lo mismo: ver carpetas, abrir archivos, ejecutar programas. La
terminal es **más rápida, se puede automatizar y funciona a distancia**. Franc
no tiene pantalla conectada: solo puedes hablar con él por terminal, a través
de SSH.

## Las piezas

- **Terminal:** la ventana donde escribes.
- **Shell:** el programa que lee lo que escribes y lo ejecuta. En Linux suele
  ser `bash`.
- **Comando:** una orden. Por ejemplo, `ls`.
- **Prompt:** el texto que aparece antes del cursor. Te da información:

```
bryan@franc:~/proyectos$
  │     │    │         └─ $ = usuario normal  (# = administrador, ¡cuidado!)
  │     │    └─ carpeta actual (~ es tu carpeta personal)
  │     └─ nombre de la máquina
  └─ tu usuario
```

## La forma de un comando

```
ls   -l   /home
│    │    └─ argumento: sobre qué actúa
│    └─ opción: cómo lo hace (empiezan por -)
└─ comando: qué hace
```

## Pruébalo

Conéctate a Franc (o abre Git Bash) y escribe, pulsando Enter después de cada
línea:

```
whoami
hostname
date
echo hola
```

`echo` repite lo que le digas. Parece inútil, pero lo usarás mucho en scripts.

Ahora prueba un comando que no existe:

```
holaquetal
```

Verás `command not found`. **Equivocarse en la terminal es normal y no rompe
nada.** Lee el error: casi siempre dice qué ha pasado.

## Comprueba que lo has entendido

1. En `ana@servidor:/var/log$`, ¿quién es el usuario y en qué carpeta está?
2. En `grep -i error registro.log`, ¿cuál es el comando, la opción y el
   argumento?
3. ¿Por qué Franc se maneja por terminal y no con ratón?

Cuando tengas las respuestas, marca la lección en [la página](https://claude.ai/artifact/FZN7QVUfAzsVnbArzpYCAq).
