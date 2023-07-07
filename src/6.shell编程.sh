#! /bin/bash
# bash一些基础的内置命令
echo 1 # 打印
  # -n 不换行输出
  # -e 解析字符串的特殊符号
  echo -e "你真好看\n, 我好喜欢"
  # \n 换行
  # \r 会车
  # \t 制表符
  # \b 退格
eval # 执行多个指令
  eval ls; cd /tmp

exec # 不创建子进程，执行后续命令，且执行完毕后，自动exit
 
export
read
shift

# shell 字串的花式用法
# ${变量} 返回变量值
# ${#变量} 返回变量长度，字符长度-----
name="jxx123456789"
cat 1.sh | wc -l
cat 1.sh | wc -L
# expr length "${name}"
echo "${#name}"
# ${变量:start} 返回变量start树枝之后的字符
# ${变量:start:length} 提取start之后的length限制的字符

# ${变量#word} 从变量开头删除最短匹配的word子串
echo ${name#j*x} # x123456789

# ${变量##word} 从变量开头，删除最长匹配的word子串
# ${变量%word} 从变量结尾删除最短的word

# ${变量%%word} 从变量结尾开始删除最长匹配的word子串

# ${变量/pattertn/string} 用string代替第一个匹配的pattern
# ${变量//pattertn/string} 用string代替所有匹配的pattern


# time 命令，统计命令执行时长
# for 循环的shell知识
    # for 变量 in 序列1-100 {1...100}
    # do
       # echo ${变量}
    # done

seq 10
seq -s ":" 10

time for n in {1..10}; do char=`seq -s " " 100`; echo ${#char} &>./src/tmp/1.txt; done;