#!/bin/bash

GENERATOR_VERSION=4.3.1
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/${GENERATOR_VERSION}/openapi-generator-cli-${GENERATOR_VERSION}.jar -O /tmp/openapi-generator-cli.jar

java -jar /tmp/openapi-generator-cli.jar generate \
-i {{cookiecutter.openapi_url}} \
--api-package {{cookiecutter.api_package}} \
--model-package {{cookiecutter.model_package}} \
--invoker-package {{cookiecutter.invoker_package}} \
--group-id {{cookiecutter.group_id}} \
--artifact-id {{cookiecutter.artifact_id}} \
--artifact-version {{cookiecutter.artifact_version}} \
-g spring -p java8=true --library spring-cloud \
-o .
