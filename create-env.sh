source no-commit/exports.sh
bosh create-env submodules/github.com/cloudfoundry/bosh-deployment/bosh.yml \
    --state=state.json \
    --vars-store=no-commit/creds.yml \
    -o submodules/github.com/cloudfoundry/bosh-deployment/vsphere/cpi.yml \
    -o submodules/github.com/cloudfoundry/bosh-deployment/jumpbox-user.yml \
    -o submodules/github.com/cloudfoundry/bosh-deployment/uaa.yml \
    -o submodules/github.com/cloudfoundry/bosh-deployment/credhub.yml \
    -o ops-files/reserved-ips.yml \
    -o ops-files/static-ips.yml \
    -l vars-files/lab.yml 
