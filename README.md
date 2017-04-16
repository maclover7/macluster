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

### deploy

To deploy the application, run:

```
ansible-playbook ansible/deploy.yml -i ansible/hosts --extra-vars="application=myApp applicationFull=myApp/myApp" --ask-value-pass
```

## Deploying a new application

1. Go to nginx.conf and add new rules. Follow the examples already
   there.
2. You may/may not need to comment out the "stop puma server" task while
   deploying for the first time. Sorry :(
3. Make sure you run the "playbook" playbook before the "deploy"
   playbook.
4. That should be it!

### License

Copyright (c) 2016 Jon Moss under the MIT License.
