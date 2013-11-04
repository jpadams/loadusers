ensure:

/etc/puppetlabs/puppet/manifests/site.pp => #include saleseng::master

/etc/puppetlabs/puppet/autosign.conf => remove *

rm /opt/puppet/share/puppet/modules/pe_puppetdb/lib/facter/puppetdb_server_status.rb
