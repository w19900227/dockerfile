## 自動部署
    $ ./build.sh

## 手動建置

#### 環境部署
    $ git clone https://github.com/w19900227/dockerfile.git
    $ cd dockerfile/cloud/x-golang
    $ wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz

#### docker build
    $ sudo docker build -t golang . 

#### docker run
    $ sudo docker run -d golang

### 參考網址
1. golang安裝[https://golang.org/doc/install](https://golang.org/doc/install)    

