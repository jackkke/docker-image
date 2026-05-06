#!/bin/sh
TASK=${1:-war}

case "$TASK" in
  war) GRADLE_TASK=":pangu:pangu-webres:war" ;;
  oem) GRADLE_TASK="assemblePainting" ;;
  ddl) GRADLE_TASK=":pangu:compileDDL" ;;
  *) exec gradle "$@";;
esac
shift 1
ARGS="$GRADLE_TASK"
[ "${CLEAN:-false}" = "true" ] && ARGS="clean $ARGS"
[ -n "$ARTIFACTORY_HOST" ] && ARGS="$ARGS -Partifactory_host=$ARTIFACTORY_HOST"
[ "${DAEMON:-true}" != "true" ] && ARGS="$ARGS --no-daemon"
exec gradle $ARGS "$@"
