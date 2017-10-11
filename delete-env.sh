source no-commit/exports.sh
bosh delete-env ~/github.com/cloudfoundry/bosh-deployment/bosh.yml \
    -o ops-files/reserved-ips.yml \
    -o ops-files/static-ips.yml \
    -o ops-files/one-az.yml \
    -o ops-files/resize-vm-types.yml \
    -o ops-files/resize-disk-types.yml \
    -v director_name=$director_name \
    -v internal_cidr=$internal_cidr \
    -v internal_gw=$internal_gw \
    -v internal_ip=$internal_ip \
    -v internal_reserved_ips=$internal_reserved_ips \
    -v internal_static_ips=$internal_static_ips \
    -v network_name="$vcenter_network_name" \
    -v vcenter_dc=$vcenter_dc \
    -v vcenter_ds=$vcenter_ds \
    -v vcenter_ip=$vcenter_ip \
    -v vcenter_user=$vcenter_user \
    -v vcenter_password=$vcenter_password \
    -v vcenter_templates=$vcenter_templates \
    -v vcenter_vms=$vcenter_vms \
    -v vcenter_disks=$vcenter_disks \
    -v vcenter_cluster=$vcenter_cluster \

