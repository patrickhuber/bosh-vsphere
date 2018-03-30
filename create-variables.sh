#!/bin/bash
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=`bosh int ~/deployments/bosh-1/no-commit/creds.yml --path /admin_password`
export BOSH_ENVIRONMENT=bosh-1
export CREDHUB_CLIENT=director_to_credhub
export CREDHUB_SECRET=`bosh int ~/deployments/bosh-1/no-commit/creds.yml --path /uaa_clients_director_to_credhub`
