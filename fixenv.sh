#!/usr/bin/env bash

ANSIBLE_CONFIG_CONTENTS="[defaults]
#stdout_callback = yaml
connection = smart
timeout = 60
deprecation_warnings = False
action_warnings = False
system_warnings = False
devel_warning = False
host_key_checking = False
collections_on_ansible_version_mismatch = ignore
retry_files_enabled = False
interpreter_python = auto_silent
#inventory = /home/student/lab_inventory/hosts
[persistent_connection]
connect_timeout = 200
command_timeout = 200
"

echo "${ANSIBLE_CONFIG_CONTENTS}" > /tmp/ansible.cfg
sudo mv /tmp/ansible.cfg /etc/ansible/ansible.cfg