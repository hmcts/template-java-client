# template-java-client

Backstage template for bootstrapping java client from open api specification.

## purpose

The purpose of this template is to speed up the creation of java client from open api specification within HMCTS. It adds default configuration to be able to create and publish the artifact.

## Maintenance / Updating template

- [open-api-generator](https://github.com/OpenAPITools/openapi-generator) is used to generate code from swagger.
- currently, open-api-generator doesn't support generating gradle library, so we need to generate maven project and apply changes to [gradle]({{cookiecutter.component_id}}/build.gradle) 