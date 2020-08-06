Deploy HTTP server
==================

Deploy apache server, and maintain the SElinux for port and directories, with the capability to rollback

Requirements
------------

No specific requirements desired.

Role Variables
--------------

 Define virtual host port
  vhost_port      : 876

 Define virtual host Root Directory
  vhost_dir	: /vhosts      
    without trailing slash


Default Variables
-----------------

Virtual host name:
 vhost_name = {{ ansible_hostname }}

Domain name:
 vhost_domain = {{ ansible_domain }}

Dependencies
------------

Nothing rquired.


Example Playbook to run this role
----------------

Use the following play to run this role


 - name                 : Run web_server_role (Deploy httpd service)
   hosts                : web
   tasks                :
    - include_role      :
       name             : roles/abdusamy.web_server_role
      tags              : [deploy,destroy,backup,check]

Save the above play in "run-role.yml" file

Commands Guide
--------------

Run this command to deploy the web server:
ansible-playbook run-role.yml --tags deploy

Run this command to check your installed web server:
ansible-playbook run-role.yml --tags check

Run this command to to rollback your web server:
ansible-playbook run-role.yml --tags destroy

Run this command to backup your web server configuration and home page:
ansible-playbook run-role.yml --tags backup


---

License
-------

MIT

Author Information
------------------

AbduSamy@GitHub
