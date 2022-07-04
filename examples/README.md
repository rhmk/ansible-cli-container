
# Command Reference:

## Setup Ansible on Linux (non-RHEL) in python venv

````
python3 -m venv myansible
source myansible/bin/activate
pip install --upgrade pip
pip install ansible ansible-navigator
````

*Note* :example configuration files for ansible-navigator are in the folder `examples`
but not necessary when just runing locally


## CleanUp virtual python environment & installed collections

- Remove the ansible collection foldes in `${HOME}/ansible/.ansible/collections`
- Remove the folder with python virtual environment

## Inventory Syntax INI Style

````
[groupname]
inventory_hostname1 ansible_host=1.2.3.4

[all:vars]
ansible_user=connection_user
ansible_ssh_pass=password
ansible_port=22
````
## Ansible-Navigator Commands:

### generic options

`-m stdout` : do not switch to UI, just print to stdout

### subscommand `inventory`

 `ansible-navigator inventory` : browse groups and hosts in the UI

 `ansible-navigator inventory --list -m stdout` : full output of inventory incl. hosts and variables in json

`ansible-navigator inventory --graph -m stdout` : hierarchical dispaly of inventory groups and hosts (no variable definition is displayed).

`ansible-navigator inventory --host nodename -m stdout` : displays variable definitions of *nodename* in the inventory files

### subcommand `collections`

displays the installed collections in an image which are ready to ansible_use

### subcommand `images`

`ansible-navigator images` : list details of container images (runtimes) accessible to execute playbooks. The default is using the same run-time host where `ansible-navigator` is started. You can change the default behaviour in the file `${HOME}/.ansible-navigator.yml`. See examples in this github folder

### subcommand `config`

Displays the current configuration of the ansible Command (i.e. runs `ansible-config dump` in the configured runtime)

### subcommand `doc`
executes `ansible-doc` in the configured run-time environment

### subcommand `run`

 executes `ansible-playbook` in the configured run-time environment
