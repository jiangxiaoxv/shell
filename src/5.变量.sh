#! /bin/bash
# 特殊变量, 用在如脚本，函数传递参数使用，
echo $0 # 获取shell脚本文件名，以及脚本路径
echo $n # 获取shell脚本的第n个参数，n在1-9之间，$1,$2 大于9则需要写${10},参数空格隔开
echo $# # 获取执行shell脚本后面的参数总个数
echo $* # 获取shell脚本所有参数，不加引号等于$@,加上引号"$"作用是 接受所有参数为单个字符串，"$1 $2"
echo $@ # 不加引号同上，加引号，是接受所有参数为独立字符串，如"$1" "$2"

for var in $*
do 
    echo $var
done

# 特殊状态变量
echo $? #上一次命令执行状态返回值， 0 正确，非0失败
echo $$ # 当前shell脚本的进程
echo $! # 上一次后台进程的PID
echo $_ # 取得上一次执行之前的命令最后一个参数

# man bash 执行手册
[ $# -ne 2 ] && {
    echo "must be two args"
    exit 119 # 终止程序运行, 且返回119状态码，提供给当前shell的$?变量，若是在函数里可以return 119
}

echo ok