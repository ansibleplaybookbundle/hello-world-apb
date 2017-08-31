hello-world-apb
======================

An apb for deploying a simple [hello world](https://hub.docker.com/r/ansibleplaybookbundle/hello-world/) app that can bind to Postgres for testing purposes.

## What it does
* Deploys a bindable web app.

## Requirements

## Parameters
* NAMESPACE: Optional, default 'hello-world', Namespace to deploy the cluster in.
* OPENSHIFT_TARGET: Required, target openshift deployment
* OPENSHIFT_TOKEN: Required, openshift token to authenticate as

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_TOKEN=<token>" ansibleplaybookbundle/hello-world-apb provision`

## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_TOKEN=<token>" ansibleplaybookbundle/hello-world-apb deprovision`
