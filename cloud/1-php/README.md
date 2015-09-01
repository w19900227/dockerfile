## 自動部署
    $ ./build.sh

## 手動建置

#### 環境部署
    $ git clone https://github.com/w19900227/dockerfile.git
    $ cd docker/cloud/1-php

#### docker build
    $ sudo docker build -t php 

#### docker run
    $ sudo docker run -d -p 80:80 php
    $ curl http://localhost

### 參考網址
    1. https://github.com/tutumcloud/apache-php


    

