#!/usr/bin/env bash
set -eo pipefail; [[ -n "$PLUSHU_TRACE" ]] && set -x

shift

list="$PLUSHU_DIR/command.whitelist"

if [[ -e "$list" && grep -Fxq "$1" "$list" ]]; then
  "$@"
fi
