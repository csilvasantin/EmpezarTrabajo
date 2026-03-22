# EmpezarTrabajo

Repositorio de arranque para empezar una sesion de trabajo de forma consistente.

## 1 2 3 basico

1. ejecutar `start_work.sh`;
2. abrir `onboarding` y pedir `haz onboarding`;
3. cerrar siempre con HTML y una URL publica de GitHub Pages, usando `Nomeacuerd0` solo como barrera ligera si hace falta.

## Objetivo

Evitar que cada sesion empiece desde cero.

Este repo actua como puerta de entrada rapida para:

1. comprobar GitHub CLI;
2. asegurar autenticacion valida;
3. clonar o actualizar `onboarding`;
4. sincronizar los repos de trabajo mas habituales;
5. recordar que la IA debe hacer onboarding antes de tocar el repo activo.

## Uso rapido

```bash
chmod +x ./start_work.sh
./start_work.sh
```

## Flujo esperado

1. ejecutar `start_work.sh`;
2. abrir `onboarding`;
3. pedir a la IA: `haz onboarding`;
4. entrar solo despues en el repo de trabajo necesario.

## Regla de cierre

Al terminar trabajo relevante:

1. debe quedar una salida final en HTML;
2. debe existir una URL publica comprobable;
3. si se usa `Nomeacuerd0`, no debe considerarse seguridad real.

## Dependencias

- `gh`
- autenticacion valida con GitHub
- acceso al repositorio `csilvasantin/onboarding`

## Repos que intenta sincronizar

- `onboarding`
- `game-platform`
- `diario`
- `ClaudeBot`
- `CodexBot`
- `xtanco-game`

## Relacion con onboarding

La fuente maestra de contexto sigue siendo `csilvasantin/onboarding`.

Este repositorio no sustituye ese contexto. Lo acelera.
