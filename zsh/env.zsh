export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim


# Go
export GO111MODULE="on"
export PATH=$PATH:/usr/local/go/bin
export GOPROXY=https://goproxy.cn,direct
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$(go env GOPATH)/bin



# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

#script
export PATH=$PATH:~/scripts/somethingUseful
