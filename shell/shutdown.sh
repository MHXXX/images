#!/bin/bash
### 关闭java服务
if [ $# == 0 ]
 then
  key=$(pwd)
 else
  key="$1"
fi
echo "$key"
PID=$(ps -ef | grep "$key" | grep -v grep | grep -v shutdown | awk '{ print $2 }')
echo $PID
if [ -z "$PID" ]
then
    echo 服务已关闭。
else
    echo 正在关闭服务：$PID
    kill -9 $PID
fi
