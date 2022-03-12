export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

#export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#export LANGUAGE=en_US.UTF-8

#export LC_CTYPE=zh_CN.UTF-8
#export LC_ALL=zh_CN.UTF-8
#export LANG=zh_CN.UTF-8
#export LANGUAGE=zh_CN.UTF-8

# Go
export GO111MODULE="on"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/rey/.local/bin
export GOPROXY=https://goproxy.cn,direct
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$(go env GOPATH)/bin

# Rust
export PATH=$PATH:$HOME/.cargo/bin


# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

#script
export PATH=$PATH:~/scripts/somethingUseful

#$HADOOP_HOME/bin/hadoop fs -cat /usr/root/WordCountV1/input/file01

#$HADOOP_HOME/bin/hadoop fs -put example.txt /usr/root/WordCountV2/input/example

#$HADOOP_HOME/bin/hadoop fs -mkdir /usr/root/WordCountV2/input/example

#$HADOOP_HOME/bin/hadoop jar wc.jar WordCount /usr/root/WordCountV1/input /usr/root/WordCountV1/output

#$HADOOP_HOME/bin/hadoop fs -rmdir -f  /usr/root/WordCountV1/output/

#$HADOOP_HOME/bin/hadoop fs -cat  /usr/root/WordCountV1/output/part-r-00000
#$HADOOP_HOME/bin/hadoop fs -cat  /usr/root/WordCountV2/output/part-r-00000

#$HADOOP_HOME/bin/hadoop jar wc.jar WordCount2 /usr/root/WordCountV2/input/example /usr/root/WordCountV2/output

#$HADOOP_HOME/bin/hadoop fs -rm -r  /usr/root/WordCountV2/input/
#$HADOOP_HOME/bin/hadoop fs -rm -r  /usr/root/WordCountV2/output/
