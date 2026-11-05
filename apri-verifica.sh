#!/bin/sh
set -eu

cartella_script=$(CDPATH= cd -P "$(dirname "$0")" && pwd)
pagina="$cartella_script/apri-verifica.html"

if [ ! -f "$pagina" ]; then
    printf '%s\n' 'Errore: file apri-verifica.html non trovato.' >&2
    exit 1
fi

case "$(uname -s)" in
    Darwin)
        open "$pagina"
        ;;
    Linux)
        if ! command -v xdg-open >/dev/null 2>&1; then
            printf '%s\n' 'Errore: xdg-open non disponibile. Apri apri-verifica.html con il browser.' >&2
            exit 1
        fi
        xdg-open "$pagina"
        ;;
    *)
        printf '%s\n' 'Sistema non supportato: apri apri-verifica.html con il browser.' >&2
        exit 1
        ;;
esac
