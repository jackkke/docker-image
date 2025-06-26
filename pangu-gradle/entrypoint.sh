#!/bin/sh
TASK=${1:-war}
if [ "$CLEAN" = "false" ]; then
  CLEAN_CMD=""
else
  CLEAN_CMD="clean"
fi
case "$TASK" in
  war) GRADLE_TASK=":pangu:pangu-webres:war" ;;
  oem) GRADLE_TASK="assemblePainting" ;;
  *) GRADLE_TASK="$TASK" ;;
esac
if [ -n "$CLEAN_CMD" ]; then
  gradle $CLEAN_CMD && exec gradle $GRADLE_TASK
else
  exec gradle $GRADLE_TASK
fi
