#!/usr/bin/env bash
# tools/build.sh
# Build the paper PDF reproducibly via latexmk.
# Usage:
#   bash tools/build.sh
#   bash tools/build.sh clean
#   bash tools/build.sh distclean

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEX_FILE="${ROOT_DIR}/second-order-constraint-geometry.tex"

usage() {
  cat <<'EOF'
Usage:
  bash tools/build.sh [command]

Commands:
  build       Build the PDF (default)
  clean       Remove latexmk build artifacts
  distclean   clean + remove generated PDF
EOF
}

need_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "ERROR: missing required command: $1" >&2
    exit 127
  fi
}

cmd="${1:-build}"

need_cmd latexmk

if [[ ! -f "$TEX_FILE" ]]; then
  echo "ERROR: master TeX file not found: $TEX_FILE" >&2
  echo "Expected repo root to contain: second-order-constraint-geometry.tex" >&2
  exit 2
fi

cd "$ROOT_DIR"

case "$cmd" in
  build)
    echo "Building: $(basename "$TEX_FILE")"
    latexmk -pdf -interaction=nonstopmode -halt-on-error "$(basename "$TEX_FILE")"
    echo "OK: built PDF"
    ;;
  clean)
    echo "Cleaning latexmk artifacts..."
    latexmk -C "$(basename "$TEX_FILE")"
    echo "OK: cleaned"
    ;;
  distclean)
    echo "Cleaning latexmk artifacts..."
    latexmk -C "$(basename "$TEX_FILE")"
    pdf="${TEX_FILE%.tex}.pdf"
    if [[ -f "$pdf" ]]; then
      rm -f "$pdf"
      echo "Removed: $(basename "$pdf")"
    fi
    echo "OK: distclean complete"
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    echo "ERROR: unknown command: $cmd" >&2
    usage >&2
    exit 2
    ;;
esac