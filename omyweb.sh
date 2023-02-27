#!/usr/bin/bash
#
# script  : web.sh
# date    : 27-02-23
# author  : rnek0
# licence : No license
# -----------------------------------------------------------------------------

# Colors
RED=$(printf '\033[31m')
BLUE=$(printf '\033[34m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[m')
BELL=$(printf '\a')

# 
function yes_or_no() {
  while true; do
    read -p "$* [y/n]: " yn
      case $yn in
        [Yy]*) return 0  ;;  
        [Nn]*) echo "Proceso anulado." ; exit $SUCCES ;;
      esac
  done
}

#  'echo' is fine for printing single line messages,
#+  but somewhat problematic for for message blocks.
#   A 'cat' here document overcomes this limitation.

cat <<End-of-message
${RED}
░░░░░░  ░░░    ░░ ░░░░░░░ ░░   ░░  ░░░░░░                                                                                               ▒
▒▒   ▒▒ ▒▒▒▒   ▒▒ ▒▒      ▒▒  ▒▒  ▒▒  ▒▒▒▒                                                                                              ▒
▒▒▒▒▒▒  ▒▒ ▒▒  ▒▒ ▒▒▒▒▒   ▒▒▒▒▒   ▒▒ ▒▒ ▒▒                                                                                              ▒
▓▓   ▓▓ ▓▓  ▓▓ ▓▓ ▓▓      ▓▓  ▓▓  ▓▓▓▓  ▓▓                                                                                              ▒
██   ██ ██   ████ ███████ ██   ██  ██████  ${BLUE}   
en https://dev.lunarviews.net
${RESET}

Te gustaria ver mi pagina web ?

End-of-message


