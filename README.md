# macluster

@maclover7's Ansible playbooks for the "macluster" (haha) of personal
projects.

## Running playbooks

### setup

For first-time setup of a server, run:

```
rake ansible:playbook:setup
```

### playbook

For advanced server setup tasks, run:

```
rake ansible:playbook:playbook
```

### deploy

To deploy an application, run:

```
rake ansible:playbook:deploy[myApp,myApp/myApp]
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

Copyright (c) 2017+ Jon Moss under the MIT License.
