
#!/bin/sh
echo "-------------------------"
echo "copy public key and configure ssh"
echo "-------------------------"
FILE=/home/ansible/.ssh
echo "check if $FILE exists"
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "Create folder $FILE. and add public_key to authorized_keys" 
    mkdir $FILE 
    cat /code/id_rsa.pub >> $FILE/authorized_keys 
    sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin without-password/g' /etc/ssh/sshd_config
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    service ssh restart
fi
echo 'container started' ; 
