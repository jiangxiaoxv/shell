#! /bin/bash
# 函数
print_usage(){
  printf "please enter an integer\n"
  # 给脚本的执行结果，赋予一个状态码，退出码
  exit 1
}
# 执行函数
# print_usage

read -p "please input your number:" firstnum

# -n 参数是if的语句，对字符串判断，如果字符串为空，条件就不成立，如果字符串不为空，条件成立
# sed的作用就是把上述字符串“qwe123” 进行替换，把所有的数字都替换为空，那么就剩下其他非数字的内容了
# echo 'haah' + $firstnum
if [ -n "`echo $firstnum|sed 's/[0-9]//g'`" ]
    then 
    print_usage
fi


read -p "please input your operator:" operator

if [ "${operator}" != "+" ] && [ "${operator}" != "-" ]
  then
    echo "只允许输入 + -"
    exit
fi

read -p "please input second number: " secondnum


if [ -n "`echo $secondnum|sed 's/[0-9]//g'`" ]
    then 
    print_usage
fi

# 数值计算
echo "${firstnum}${operator}%{secondnum}结果是：$((${firstnum}${operator}${secondnum}))"