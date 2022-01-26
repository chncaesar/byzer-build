#!/usr/bin/env bash

export SPARK_VERSION=${SPARK_VERSION:-3.1.1}
export BYZER_LANG_VERSION=${BYZER_LANG_VERSION:-2.2.0-SNAPSHOT}
export BYZER_NOTEBOOK_VERSION=${BYZER_NOTEBOOK_VERSION:-0.0.1-SNAPSHOT}
scala_version=2.12

docker build ./ \
--build-arg SPARK_VERSION=${SPARK_VERSION} \
--build-arg BYZER_LANG_VERSION=${BYZER_LANG_VERSION} \
--build-arg BYZER_NOTEBOOK_VERSION=${BYZER_NOTEBOOK_VERSION} \
--build-arg SCALA_VERSION=${scala_version} \
-t mlsql-sandbox:${BYZER_LANG_VERSION}