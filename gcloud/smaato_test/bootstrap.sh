#!/bin/bash
#Setting hostname
echo "smaato-test" > /etc/hostname
hostname smaato-test

#Enable Zabbix repo
wget http://repo.zabbix.com/zabbix/3.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_3.2-1+xenial_all.deb
dpkg -i zabbix-release_3.2-1+xenial_all.deb
apt-get update -y

#Installing Zabbix-agent
#In this example it could be 'apt install my-monitoring-agent'
apt install -y zabbix-agent

#Enable HOME_DIR for users
echo "CREATE_HOME yes" >> /etc/login.defs

#Setting the hostname for Zabbix agent
#In this case could be hostname=xxx/hostname=`hostname` /etc/mon-agent/agent.conf
sed -i "s/Hostname=Zabbix\ server/Hostname=`hostname`/g" /etc/zabbix/zabbix_agentd.conf

#Adding group my-staff
groupadd my-staff

#Adding users
useradd alice -g my-staff -s /bin/bash -d /home/alice
useradd bob -g my-staff -s /bin/bash -d /home/bob

