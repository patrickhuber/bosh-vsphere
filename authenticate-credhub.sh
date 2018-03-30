#!/bin/bash

credhub api \
--ca-cert=<(bosh int no-commit/creds.yml --path /credhub_ca/ca) \
--ca-cert=<(bosh int no-commit/creds.yml --path /uaa_ssl/ca) \
--server=192.168.2.1:8844

export CREDHUB_CLIENT_SECRET=$(bosh int no-commit/creds.yml --path /uaa_clients_director_to_credhub)

credhub login \
--client-name=director_to_credhub \
--client-secret=$CREDHUB_CLIENT_SECRET

cat ~/.credhub/config.json
