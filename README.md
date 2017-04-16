# macluster

@maclover7's Ansible playbooks for the "macluster" (haha) of personal
projects.

## Running playbooks

### setup

For first-time setup of a server, run:

```
ansible-playbook ansible/setup.yml -i ansible/hosts
```

### playbook

For advanced server setup tasks, run:

```
ansible-galaxy install -r ansible/requirements.yml -p ansible/roles
ansible-playbook ansible/playbook.yml -i ansible/hosts
```

### License

Copyright (c) 2016 Jon Moss under the MIT License.
