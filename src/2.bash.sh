#! /bin/sh #开头使用bash解释器
# bash是一个命令处理器，运行在文本窗口中，并能执行用户直接输入的命令
# bash还能从文件中读取linxu命令，称之为脚本
# bash支持通配符、管道、命令替换、条件判断等逻辑控制语句
# history -c 清除历史命令
# history -r 恢复历史
# 调用历史记录命令 !历史命令id，快速执行历史命令
# !! 执行上次的命令

# bash 特性
  # 快捷键 ctrl + a, e, u, k, l
echo 1
echo $HISTSIZE