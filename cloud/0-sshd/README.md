## 自動部署
    $ ./build.sh

## 手動建置

#### 環境部署
    $ git clone https://github.com/w19900227/dockerfile.git
    $ cd docker/cloud/0-sshd
    $ sudo ssh-keygen -t rsa
    $ cat ~/.ssh/id_rsa.pub > adds/authorized_keys

#### docker build建置
    $ sudo docker build -t sshd

#### docker run
    $ sudo docker run -d -p 22:22 sshd

#### 查詢IP
    $ CONTAINER_ID=$(sudo docker run -d sshd)
    $ sudo docker inspect $CONTAINER_ID | grep IPAddress | awk '{ print $2 }' | tr -d ',"'

將回傳sshd container目前的IP

`[舉例]172.17.0.1`

    $ ssh root@172.17.0.1
    
### 參考網址
    1. https://github.com/sullof/docker-sshd

