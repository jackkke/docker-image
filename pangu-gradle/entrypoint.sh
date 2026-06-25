#!/bin/sh
TASK=${1:-war}

debug="--stacktrace"

case "$TASK" in
  war) GRADLE_TASK=":pangu:pangu-webres:war ${debug}" ;;
  oem) GRADLE_TASK="assemblePainting ${debug}" ;;
  ddl) GRADLE_TASK=":pangu:compileDDL ${debug}" ;;
  *) exec gradle "$@";;
esac
shift 1
ARGS="$GRADLE_TASK"
[ "${CLEAN:-false}" = "true" ] && ARGS="clean $ARGS"
[ -n "$ARTIFACTORY_HOST" ] && ARGS="$ARGS -Partifactory_host=$ARTIFACTORY_HOST"
[ "${DAEMON:-true}" != "true" ] && ARGS="$ARGS --no-daemon"
exec gradle $ARGS "$@"
