# Reto final · Módulo 00

Alguien ha dejado una carpeta hecha un desastre. Ordénala usando solo la
terminal. Un script te dirá si lo has conseguido.

## 1. Prepara el escenario

Primero, lleva esta carpeta `practica/` a Franc. Desde la terminal de Windows,
dentro de tu copia de `aprende`:

```
scp -r modulos/00-terminal/practica TU_USUARIO@FRANC:~/
```

Usa el mismo usuario y dirección que pones en `ssh`. (`scp` es "copiar por
SSH"; lo verás en el módulo 08.)

Después, en Franc:

```
bash ~/practica/preparar.sh
cd ~/practica-terminal
```

Puedes repetir `preparar.sh` cuando quieras para empezar de cero.

## 2. Lo que te encuentras

```
practica-terminal/
├── descargas/        ← fotos, pdf, txt y basura mezclados
├── archivo/          ← en algún sitio de aquí dentro hay un archivo oculto
├── registro.log      ← un log de 300 líneas
└── saludo.sh         ← un script que no se puede ejecutar
```

Explóralo antes de tocar nada: `ls -la`, `cd`, `cat`, `less`.

## 3. Las tareas

Todo se hace dentro de `~/practica-terminal`:

1. Crea `fotos/` y mueve ahí todos los `.jpg`.
2. Crea `documentos/` y mueve ahí todos los `.pdf` y `.txt` de `descargas/`.
3. Borra todos los archivos `.tmp`.
4. Cuando `descargas/` esté vacía, bórrala.
5. Guarda en `errores.txt` **solo el número** de líneas de `registro.log` que
   contienen `ERROR`.
6. Guarda en `ultimos-errores.txt` las **3 últimas** líneas con `ERROR`.
7. Encuentra el archivo oculto dentro de `archivo/`, lee la palabra que
   contiene y guárdala en `palabra.txt`.
8. Haz que `saludo.sh` se pueda ejecutar.

## 4. Comprueba

```
bash ~/practica/comprobar.sh
```

Cada tarea sale con ✔ o ✘. Si sale ✘, lee la pista y vuelve a intentarlo.
Cuando estén las 8, el script te saluda.

**Regla:** no mires dentro de `comprobar.sh` hasta terminar. 😉
