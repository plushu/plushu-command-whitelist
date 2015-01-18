#!/usr/bin/env bash
set -eo pipefail; [[ -n "$PLUSHU_TRACE" ]] && set -x

shift

list="$PLUSHU_DIR/command.whitelist"

for cmd in "$@"; do
  if [[ ! -e "$list" || ! grep -Fxq "$cmd" "$list" ]]; then
    printf '%s\n' "$cmd" >>"$list"
  fi
done
