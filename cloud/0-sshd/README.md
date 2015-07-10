### 建置
    $ git clone 
    $ cd docker/cloud/0-sshd
    $ sudo ssh-keygen -t rsa
    $ cat ~/.ssh/id_rsa.pub > adds/authorized_keys

### 建置
    $ sudo docker build -t sshd

### 查詢IP
    $ CONTAINER_ID=$(sudo docker run -d sshd)
    $ sudo docker inspect $CONTAINER_ID | grep IPAddress | awk '{ print $2 }' | tr -d ',"'

將回傳sshd container目前的IP

`[舉例]172.17.0.1`

    $ ssh root@172.17.0.1
    

