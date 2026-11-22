# Hoja de ruta

Marca `[x]` al terminar. No hace falta ir rápido: hace falta no saltarse pasos.

```
 00 Terminal ──► 01 Git ──► 02 Go básico ──► 03 Go medio ──► 04 Tests
                                                               │
      08 Servidor ◄── 07 Docker ◄── 06 SQLite ◄── 05 Web ◄─────┘
```

Los módulos 00-04 son la base común. Del 05 al 08 se aplican directamente a
Finanzas (web + SQLite + Docker) y a Franc. CaratCore usa sobre todo 02-04 y 07.

---

## 00 · Terminal y Linux
Moverte, manejar archivos y entender el sistema sin ratón.

- [ ] 01 Qué es la terminal
- [ ] 02 Moverse: `pwd`, `ls`, `cd`, rutas
- [ ] 03 Archivos y carpetas: `mkdir`, `cp`, `mv`, `rm`
- [ ] 04 Leer y buscar: `cat`, `less`, `grep`, `find`
- [ ] 05 Tuberías y redirecciones: `|`, `>`, `wc`, `sort`
- [ ] 06 Usuarios y permisos: `ls -l`, `chmod`, `sudo`
- [ ] Reto final (`comprobar.sh` en verde)
- [ ] **Hito:** explorar Franc como lo hace `caratcore doctor`

## 01 · Git y GitHub
Guardar versiones de tu código y colaborar.

- [ ] Qué es un repositorio y un commit
- [ ] `status`, `add`, `commit`, `log`, `diff`
- [ ] Ramas y fusiones
- [ ] Remotos: `clone`, `pull`, `push`
- [ ] Pull requests en GitHub
- [ ] **Hito:** leer el historial de CaratCore y entender tres commits

## 02 · Go básico
- [ ] Instalar Go y el primer programa
- [ ] Variables, tipos y constantes
- [ ] `if`, `for`, `switch`
- [ ] Funciones y varios valores de retorno
- [ ] Slices y maps
- [ ] Strings y el paquete `strings`
- [ ] **Hito:** leer `cmd/caratcore/main.go` y explicar qué hace

## 03 · Go intermedio
- [ ] Structs y métodos
- [ ] Errores: `error`, `if err != nil`
- [ ] Paquetes e imports (`internal/`)
- [ ] Punteros (con dibujos)
- [ ] Interfaces
- [ ] Leer y escribir archivos
- [ ] **Hito:** leer `internal/osrelease` de CaratCore y explicar cada función

## 04 · Tests en Go
- [ ] `go test` y tu primer test
- [ ] Tests de tabla
- [ ] Simular el sistema en tests (cómo lo hace `internal/doctor`)
- [ ] **Hito:** añadir un caso de test a CaratCore

## 05 · Web en Go
- [ ] Cómo funciona HTTP (petición y respuesta)
- [ ] `net/http`: tu primer servidor
- [ ] Rutas y formularios
- [ ] Plantillas HTML (`html/template`)
- [ ] **Hito (Finanzas):** por concretar cuando veamos su código

## 06 · SQL y SQLite
- [ ] Qué es una base de datos y una tabla
- [ ] SQL: `SELECT`, `INSERT`, `UPDATE`, `DELETE`
- [ ] Usar SQLite desde Go
- [ ] **Hito (Finanzas):** por concretar cuando veamos su código

## 07 · Docker
- [ ] Imagen frente a contenedor
- [ ] `docker run`, `ps`, `logs`, `stop`
- [ ] Dockerfile: empaquetar un programa Go
- [ ] Docker Compose
- [ ] Volúmenes: dónde viven los datos
- [ ] **Hito:** entender cómo CaratCore despliega AdGuard Home y Uptime Kuma

## 08 · Servidor
- [ ] SSH: claves y `~/.ssh/config`
- [ ] Copiar archivos: `scp`
- [ ] Servicios con `systemd`
- [ ] Redes: IP, puertos, Tailscale
- [ ] Copias de seguridad
- [ ] **Hito:** desplegar tú solo una nueva versión de Finanzas en Franc

---

## Proyecto final
Construir tu propia app de aprendizaje en Go + SQLite + Docker, desplegada en
Franc. Usa todo lo anterior y es la misma arquitectura que Finanzas.
