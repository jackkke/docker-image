#!/bin/bash
set -eo pipefail
shopt -s nullglob
cd /workspace
mvn clean package
timeout 15s java -agentlib:native-image-agent=config-output-dir=./src/main/resources/META-INF/native-image -jar ./target/$JAR_NAME.jar || true
mvn -Pnative -DskipTests -DskipNativeTests clean package