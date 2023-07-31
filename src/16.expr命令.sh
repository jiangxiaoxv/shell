#! /bin/bash
# expr必须是传入的参数
# expr 基于空格传入参数，但是在shell里一些元字符都是有特殊含义的
# expr 4 + 3
# echo "`expr 5 \* 6`"
# expr length 1234567 # 不支持length
# expr 5 \> 6

# expr模式匹配
# : 冒号，计算字符串的字符数量
# .* 任意的字符串重复0次或者多次
# expr 字符串 ":"  "."

# expr yc.png666 ":" ".*p"
# expr yc.pngss ":" ".*\.png"


# expr命令判断文件名后缀是否合法
# 执行脚本，传入一个文件名，然后判断文件，是否是jpg图片文件
filename=$1
isJpg() {
  # echo $filename
  let s=`expr $filename ":" ".*\.jpg$"`
  # echo $s
  if [ $s -ne 0 ]
    then echo 'ha'
  else  
    echo 'ah'
  fi
}

isJpg

# -le 小于等于
# -

# for str1 in i am jxx121414
#   do
#     if [ `expr length $str1` -lt 5] 
#       then
#         echo $str1
#     fi
# done

# bc命令当作计算器来用的

echo "2.1 * 4" | bc
# echo {1..100}
# tr 命令，替换
echo {1..100} | tr " " "+" | bc
# seq -s "+" 10   # 1 2 3 4 5 6 7 8 9 10
# echo $((`seq -s "+" 100`))

# expr 命令，是接受
# seq -s " + " 100 | xargs expr

