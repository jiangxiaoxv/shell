#! /bin/sh #开头使用bash解释器
#！/usr/bin/env 解释器名称，是一种在不同平台上都能找到解释器的办法
# 如果脚本未指定shebang，脚本执行的时候，默认用当前shell去解释脚本，即$SHELL
# 如果shebang制定了可执行的解释器，如/bin/bash /usr/bin/python,脚本在执行时，文件名会作为参数传递给解释器
# 如果#！指定的解释程序没有可执行权限，则会报错
# #！之后的解释程序，需要写其绝对路径（如：#!/bin/bash）,它是不会自动到$PATH中寻找解释器的
# 如果你使用 bash test.sh 这样的命令来执行脚本，那么#！这一行将会被忽略掉，解释器当然使用命令行中显示指定的bash

# echo $SHELL
# chmod +x 1.sh 赋予执行权限

# shell 是弱类型的语言， 无需声明变量类型，直接定义使用
# shell 语言定义的变量，数据类型默认都是字符串类型
# name = 12 也是默认字符串
# cat /etc/shells

echo 1212
