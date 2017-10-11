export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=`bosh int ./no-commit/creds.yml --path /admin_password`
export BOSH_ENVIRONMENT=bosh-1
