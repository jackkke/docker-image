#!/bin/sh
TASK=${1:-war}

case "$TASK" in
  war) GRADLE_TASK=":pangu:pangu-webres:war" ;;
  oem) GRADLE_TASK="assemblePainting" ;;
  ddl) GRADLE_TASK=":pangu:compileDDL" ;;
  *) GRADLE_TASK="$TASK" ;;
esac
if [ "${CLEAN:-true}" = "false" ] || [ "${CLEAN:-true}" = "FALSE" ] || [ "${CLEAN:-true}" = "0" ]; then
  exec gradle $GRADLE_TASK --no-daemon
else
  exec gradle clean $GRADLE_TASK --no-daemon
fi
