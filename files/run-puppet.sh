#!/bin/bash
cd /etc/puppetlabs/code/environments/production && git pull
#
/opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environments/production/files/
/opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests/
