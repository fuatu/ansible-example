# Introduction
This is a simple ansible installation with 3 servers. 
- 1 Controller
- machines that controller can connect through ssh

the ansible files are under project folder and any command can be executed there

# Prerequisites
- docker and docker-compose installed

# Start 
run command under the project folder
```
$ docker-compose up
```

after the containers are up you can go into the container and check 
```
$ docker exec -it controller /bin/bash
```

when you are in just check if you can run ansible for 2 containers available.
If it asks for keys to be added to known hosts just accept it
```
# cd project/
# ansible all -m command -a "id ansible"
ansible1 | CHANGED | rc=0 >>
uid=1000(ansible) gid=1000(ansible) groups=1000(ansible),27(sudo)
ansible2 | CHANGED | rc=0 >>
uid=1000(ansible) gid=1000(ansible) groups=1000(ansible),10(wheel)
```