#!/bin/bash
  
echo -e "The package installed       : $(rpm -qa | grep httpd-2 )"
echo -e "HTTPD Service active state  : $(systemctl is-active httpd)"
echo -e "HTTPD Service enable state  : $(systemctl is-enabled httpd)"
echo -e "Firewall ports opened       : $(firewall-cmd --list-ports)"
echo -e "Port Selinux                : $(semanage port -l | grep ^http_port_t)"
echo -e "Root directory Selinux      : \n$(ls -aZ $3/ | grep 'httpd_sys_content_t')"
echo -e "Port in configuration       : $(grep ^Listen /etc/httpd/conf.d/$1-vhost.conf)"
echo -e ""
echo -e "Configuration file          : \n$(cat /etc/httpd/conf.d/$1-vhost.conf)"
echo -e ""
echo -e "Home page                   : \n$(curl -s localhost:$2)"
echo -e ""
exit 0
