rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
yum install puppet-agent
source /etc/profile
puppet --version
puppet apply --test -e 'notice("Hello,Puppet Book!")'