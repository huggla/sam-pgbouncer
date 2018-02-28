#!/bin/sh

set -e +a +m +s +i -f

unset PATH
if [ -f "$USER_ENVIRONMENT_FILE" ]
then
   /usr/bin/env > "$USER_ENVIRONMENT_FILE"
fi
unset password_$USER
exec /usr/bin/env -i "$(/usr/bin/dirname $0)/initpgbouncer.sh"
