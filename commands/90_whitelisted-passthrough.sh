# If the whitelist exists
if [[ -e "$PLUSHU_DIR/command.whitelist" ]] &&
  # and this command is on the whitelist
  grep -Fxq "$1" "$PLUSHU_DIR/command.whitelist"; then

  # Execute the command
  "$@"

  # Mark that we handled this command
  export PLUSHU_COMMAND_HANDLED=$1
fi
