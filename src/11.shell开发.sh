#! /bin/bash
# whoami;
# date;ls;cd /tmp/;cd ~;cd -

# echo "当前时间日期是：`date`"

# echo命令，在linux中的格式化
echo "the time and date are: "
date

echo ''
echo "let's see who's login into the system: `whoami`"

# source 或者 . 是在当前shell环境中执行
# sh 或者sh 去执行脚本的时候，是开启子shell运行的，变量也是在子shell环境中加载，子shell退出后，变量也就消失了
# 对变量的引用一定加上符号

# linux , shell变量的替换引用
# shell 一大特性，就是可以从命令的执行结果中，再提取结果，因此特别适合便携脚本
  # $() 在括号中执行命令，且拿到执行命令的结果
  # `` 反引号


var="贵州茅台酒"
echo $(echo ${var})
echo `echo ${var}`
