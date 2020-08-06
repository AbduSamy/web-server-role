Deploy HTTP server
==================

Deploy apache server, and maintain the SElinux for port and directories, with the capability to rollback

Requirements
------------

No specific requirements desired.

Role Variables
--------------

# Define virtual host port
vhost_port      : 876

# Define virtual host Root Directory
vhost_dir	: /vhosts      
## without trailing slash


Dependencies
------------

Nothing rquired.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:


---
 - name                 : Run web roles (Deploy httpd service)
   hosts                : web
   tasks                :
    - include_role      :
       name             : roles/abdusamy.web_server_role
      tags              : [deploy,destroy,backup,check]
...

Uss this command to run the role:
ansible-playbook run-roles.yml --tags deploy


License
-------

MIT

Author Information
------------------

AbduSamy@GitHub
