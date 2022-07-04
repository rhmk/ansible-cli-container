
# Command Reference:

## Setup Ansible on Linux (non-RHEL) in python venv

````dd
python3 -m venv myansible
source myansible/bin/activate
pip install --upgrade pip
pip install ansible ansible-navigator

[Note]
====
example configuration files for ansible-navigator are in the folder `examples`
but not necessary when just runing locally
====

CleanUp an


Inventory Syntax INI Style
==========================

````
[groupname]
inventory_hostname1 ansible_host=1.2.3.4

[all:vars]
ansible_user=connection_user
ansible_ssh_pass=password
ansible_port=22
````


