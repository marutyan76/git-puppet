sed -i s/\"UTC\"/\"Japan\"/ /etc/sysconfig/clock
ln -sf /usr/share/zoneinfo/Japan /etc/localtime
sed -i "$ a DNS1=10.0.1.224" /etc/sysconfig/network-scripts/ifcfg-eth0
vim /etc/sysconfig/network

yum -y install puppet3

yum -y install puppet3-server