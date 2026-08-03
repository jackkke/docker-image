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
[ "${CLEAN:-true}" = "true" ] && ARGS="clean $ARGS"
[ -n "$ARTIFACTORY_HOST" ] && ARGS="$ARGS -Partifactory_host=$ARTIFACTORY_HOST"
sed -i -E "s|url ['\"]https://maven\\.aliyun\\.com[^'\"]*['\"]|url 'http://192.168.75.90:8081/repository/maven-public'\n            allowInsecureProtocol = true|g" pangu/thdk-dist-bundle.gradle
exec gradle $ARGS "$@"
