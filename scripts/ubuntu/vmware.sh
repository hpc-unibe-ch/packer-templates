#!/usr/bin/env bash

# Install the VMware Fusion guest tools
echo "Installing vmware-tools."
mkdir -p /mnt/vmware
mount -o loop /home/vagrant/linux.iso /mnt/vmware

cd /tmp
tar xzf /mnt/vmware/VMwareTools-*.tar.gz

umount /mnt/vmware
rm -fr /home/vagrant/linux.iso

/tmp/vmware-tools-distrib/vmware-install.pl -d >/dev/null
rm -fr /tmp/vmware-tools-distrib

exit 0
