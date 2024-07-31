#!/bin/bash

#if [ "$#" -ne 3 ]; then
#    echo "Usage: $0 <title> <server_key> <time>"
#    echo "title: 请使用英文，代表你要监控的名称，可以填机器标识或者钱包地址，自定义即可"
#    echo "server_key: server酱 申请的key"
#    echo "time: 采用定时任务，代表每个几个小时监控上报一次"
#    echo "以上具体用法可参考readme文档"
#    exit 1
#fi
#title = $!
#server_key = $2
#time = $3
# 更新包列表
sudo apt update

# 安装python3-pip
sudo apt install -y python3-pip

# 使用pip3安装requests包
pip3 install requests



# 假设这是你想要设置的新标题

# 使用sed命令进行替换
# -i表示直接修改文件内容
# '/^title=/c\' 表示找到以'title='开头的行，并用接下来的内容替换整行
#sed -i "/^title=/c\title=$title" nim_mon.py
#sed -i "/^sckey=/c\sckey=$server_key" nim_mon.py
#sed -i "/^timeout=/c\timeout=$time" nim_mon.py

nohup python3 nim_mon.py >>/opt/mon.log 2>&1 &


