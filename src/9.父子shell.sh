#! /bin/bash
# source 和 . ,执行脚本，只在当前的shell环境中执行生效
# 指定bash sh解释器运行脚本，是开启subshell，开启子shell运行脚本命令
# ./script，都会指定shebang，通过解释器运行，也是开启subshell运行命令

# ps 进程管理命令，查看
# ps -ef
# -f 显示UID，PID，PPID
# -e 列出所有进程的信息，如同-A选项option
# ps -ef --forest
# var=" Hello, World"
# echo ${#var}

# arr=("jxxlqq" "2")
# echo ${arr}
# echo ${arr[1]}
# unset arr[1]
# echo ${arr}

# 执行一系列的shell命令
(ls; cd 'src/tmp'; pwd; echo "奥利给"; echo ${BASH_SUBSHELL})

# shell的进程列表概念，需要使用()小括号，如下执行方式，就称之为，进程列表
  # 加上()，就是开启子进程shell
# (cd ~;pwd;ls; cd /tmp/; pwd; ls;cho ${BASH_SUBSHELL})

# 检测是否在子shell环境中
  # 该变量的值特点，如果是0， 就是在当前shell环境中执行的，否则就是开辟子shell去运行的
  #  BASH_SUBSHELL
# 检测是否开启了子shell运行命令
# echo ${BASH_SUBSHELL}

# 子shell嵌套运行
(pwd; (echo ${BASH_SUBSHELL}))