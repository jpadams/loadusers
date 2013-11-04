#!/bin/bash

puppet=/opt/puppet/bin/puppet
#puppet=/usr/bin/puppet

$puppet resource user $1 ensure=present managehome=true

sudo -i -u $1 $puppet agent -t --certname $1 --server `hostname -f`

$puppet cert sign $1

sudo -i -u $1 $puppet agent -t --certname $1 --server `hostname -f`
