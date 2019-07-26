#!/bin/bash
cd /etc/puppetlabs/code/environments/production && git pull
##############################################################################################
/opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environments/production/files
/opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests
##############################################################################################
vi +':w ++ff=unix' +':q' "/etc/puppetlabs/code/environments/production/files/run-puppet.sh"
vi +':w ++ff=unix' +':q' "/usr/local/bin/run-puppet"
