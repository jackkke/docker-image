#!/bin/sh
TASK=${1:-war}

debug="--info --stacktrace"
export GRADLE_OPTS="$GRADLE_OPTS -Dorg.gradle.caching=true -Dorg.gradle.parallel=true -Dorg.gradle.daemon=false -Dorg.gradle.vfs.watch=false"

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
exec gradle $ARGS "$@"
