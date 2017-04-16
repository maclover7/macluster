# macluster

@maclover7's Ansible playbooks for the "macluster" (haha) of personal
projects.

## Running playbooks

### setup

For first-time setup of a server, run:

```
ansible-playbook ansible/setup.yml -i ansible/hosts
```

Install roles from Ansible Galaxy:

```bash
ansible-galaxy install -r ansible/requirements.yml -p ansible/roles
```

To run the playbook, use the following command:

```bash
ansible-playbook ansible/playbook.yml -i ansible/hosts
```

### License

Copyright (c) 2016 Jon Moss under the MIT License.
