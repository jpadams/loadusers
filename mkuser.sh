#!/bin/bash

# assumes no autosign

puppet=/opt/puppet/bin/puppet
#puppet=/usr/bin/puppet

$puppet resource user $1 ensure=present managehome=true

sudo -i -u $1 $puppet agent -t --certname $1 --server `hostname -f`

$puppet cert sign $1

$puppet node classify \
--node-group="no mcollective" \
--enc-server=localhost \
--enc-port=443 \
--enc-auth-user=admin@puppetlabs.com \
--enc-auth-passwd=puppetlabs \
--insecure \
$1

sudo -i -u $1 $puppet agent -t --certname $1 --server `hostname -f`
