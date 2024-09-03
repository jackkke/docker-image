#!/bin/bash
set -eo pipefail
shopt -s nullglob
export JAVA_HOME=/etc/alternatives/graalvm-jdk-21.0.4+8.1
export MAVEN_HOME=/etc/alternatives/apache-maven-3.9.9
export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH
cd /workspace
mvn clean package
timeout 15s java -agentlib:native-image-agent=config-output-dir=./src/main/resources/META-INF/native-image -jar ./target/$JAR_NAME.jar || true
mvn -Pnative -DskipTests -DskipNativeTests clean package