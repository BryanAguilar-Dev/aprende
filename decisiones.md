# Decisiones

Cada decisión relevante del proyecto, con su motivo. Las nuevas van al final.

## D1 · El progreso se guarda en `localStorage` (2026-11-22)
Las casillas de la página se guardan en el navegador. `ruta.md` queda como
temario, sin casillas, para no tener dos sitios con el progreso.

- A favor: marcar es un clic.
- En contra: solo existe en ese navegador y ese dispositivo; se pierde si se
  borran los datos del navegador o si la página cambia de dirección (por
  ejemplo, de claude.ai a GitHub Pages). Claude no puede verlo.
- Alternativa descartada por ahora: `ruta.md` como fuente de verdad, con commit
  y push al marcar cada paso.

## D2 · El simulador avisa de lo que no sabe hacer (2026-11-22)
El simulador es un entrenador del módulo 00, no un bash completo. Cuando
recibe una opción o un comando que no simula, lo dice y manda a probarlo en
Franc, en vez de dar un resultado falso. Respeta dueños y permisos: `bryan` no
puede tocar lo que es de `root`, como en Franc.

No se amplía para cubrir otros módulos: la corrección de los módulos siguientes
será real (`comprobar.sh` en Franc y `go test`).

## D3 · La ruta está duplicada en `ruta.md` y en la página (2026-11-22)
Pendiente de resolver en la fase 2 (una sola fuente). Mientras tanto, cualquier
cambio del temario se hace en los dos sitios.
