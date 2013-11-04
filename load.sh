#!/bin/bash

# may have to remove /opt/puppet/share/puppet/modules/pe_puppetdb/lib/facter/puppetdb_server_status.rb
for name in `cat /tmp/loadusers/names`; do /tmp/loadusers/mkuser.sh $name; done
