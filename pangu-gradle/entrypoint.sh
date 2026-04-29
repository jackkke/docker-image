#!/bin/sh
TASK=${1:-war}

case "$TASK" in
  war) GRADLE_TASK=":pangu:pangu-webres:war" ;;
  oem) GRADLE_TASK="assemblePainting" ;;
  ddl) GRADLE_TASK=":pangu:compileDDL" ;;
  *) GRADLE_TASK="$TASK" ;;
esac
# -----------------------------
# 拼接所有 Gradle 参数
# -----------------------------
GRADLE_ARGS=""
CLEAN_FLAG=$(echo "${CLEAN:-true}" | tr '[:upper:]' '[:lower:]')
[ "$CLEAN_FLAG" != "false" ] && [ "$CLEAN_FLAG" != "0" ] && GRADLE_ARGS="$GRADLE_ARGS clean"
GRADLE_ARGS="$GRADLE_ARGS $GRADLE_TASK"
# Artifactory
[ -n "$ARTIFACTORY_HOST" ] && GRADLE_ARGS="$GRADLE_ARGS -Partifactory_host=$ARTIFACTORY_HOST"
# daemon 控制（默认关闭 daemon）
[ "$(echo "${DAEMON:-false}" | tr '[:upper:]' '[:lower:]')" != "true" ] && GRADLE_ARGS="$GRADLE_ARGS --no-daemon"
# -----------------------------
# 执行
# -----------------------------
exec gradle $GRADLE_ARGS
