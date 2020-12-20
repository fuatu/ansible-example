
#!/bin/sh
echo "-------------------------"
echo "run ssh"
echo "-------------------------"
nohup /usr/sbin/sshd -D > /var/log/nohup.out &
echo "-------------------------"
echo "create keys"
echo "-------------------------"
FILE=~/.ssh/id_rsa
echo "check if $FILE exists"
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "Create keys" 
    ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null
fi
cp ~/.ssh/id_rsa.pub /code 
mkdir /home/ansible/.ssh
cp ~/.ssh/id_rsa /home/ansible/.ssh
chown ansible /home/ansible/.ssh/id_rsa
chown ansible /home/ansible/.ssh
echo 'container started' ; 
echo "-------------------------"
echo "install ansible"
echo "-------------------------"
yum install epel-release -y
yum install ansible -y || true