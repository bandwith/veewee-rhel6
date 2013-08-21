yum -y clean all

#verify removal of VirtualBox Guest Additions iso
rm -rf VBoxGuestAdditions_*.iso

#verify removal of VMware Fusion guest additions iso
rm -rf linux.iso

# Remove traces of mac address from network configuration
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-eth0
rm /etc/udev/rules.d/70-persistent-net.rules
