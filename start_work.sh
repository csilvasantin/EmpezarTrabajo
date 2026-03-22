#!/bin/zsh
set -euo pipefail

BASE_DIR="${HOME}/Documents/Codex"
ONBOARDING_PATH="${BASE_DIR}/onboarding"
ONBOARDING_REPO="csilvasantin/onboarding"

ensure_gh() {
  if ! command -v gh >/dev/null 2>&1; then
    echo "No encuentro 'gh'. Instala GitHub CLI antes de continuar."
    exit 1
  fi

  if ! gh auth status >/dev/null 2>&1; then
    echo "GitHub CLI no tiene una sesion valida. Ejecuta:"
    echo "gh auth login --hostname github.com --git-protocol https --web"
    exit 1
  fi
}

sync_onboarding() {
  if [ -d "${ONBOARDING_PATH}/.git" ]; then
    echo "Actualizando onboarding..."
    git -C "${ONBOARDING_PATH}" pull --ff-only
  else
    echo "Clonando onboarding..."
    gh repo clone "${ONBOARDING_REPO}" "${ONBOARDING_PATH}"
  fi
}

sync_work_repos() {
  if [ -x "${ONBOARDING_PATH}/update_work_repos.sh" ]; then
    echo "Sincronizando repos de trabajo..."
    "${ONBOARDING_PATH}/update_work_repos.sh"
  else
    echo "No encuentro update_work_repos.sh en onboarding."
    echo "Revisa ${ONBOARDING_PATH}."
    exit 1
  fi
}

print_next_steps() {
  echo
  echo "Arranque completado."
  echo "Siguiente paso:"
  echo "1. abrir ${ONBOARDING_PATH}"
  echo "2. pedir a la IA: haz onboarding"
  echo "3. continuar con el repo de trabajo activo"
}

main() {
  mkdir -p "${BASE_DIR}"
  ensure_gh
  sync_onboarding
  sync_work_repos
  print_next_steps
}

main "$@"
