#! /bin/sh
# 变量是存在内存中的 
# 变量和值之间不能有空格
name=jxx
echo $name
echo ${name} # 可以省略{}

# 变量的规则

# 变量的作用域
# sh，bash 进入一个新的shell环境
# exit退出shell环境
# 本地变量、环境变量、局部变量
# 位置参数变量：用于shell脚本 中传递的参数
# 特殊变量：shell内置的特殊功效变量
  $0 # 成功，判断上一行命令是否执行成功
# $1 - $255错误码

# 单引号变量不能够识别特殊语法
name="奥利给"
name2='${name}' 
echo $name2 # ${name}
# 双引号变量能够识别特殊语法
name3="${name}"
echo $name3 # 奥利给

# 不同的执行方式，不同的执行环境
  # 每次调用bash/sh 解释器执行脚本，都会开启一个子shell，因此不保留当前的shell变量，通过 pstree命令检查进程树
  # 调用source或者.符号是在当前shell环境加载脚本，因此保留变量

# `linux 命令` 
name4=`ls` # 先执行ls，把linux的ls执行命令结果赋值给name4

