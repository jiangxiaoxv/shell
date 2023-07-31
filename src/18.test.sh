#! /bin/sh

# test -e "17.read.sh" || touch 'wo.js'
test -e "index.jss" 

if [ $? -eq 0 ]
  then
    echo "文件已存在"
  else
    echo "文件不存在"
fi

test -f "index.js"

if [ $? -eq 0 ]
  then
    echo "是文件"
  else
    echo "不是文件"
fi

# 判断字符串是否为空，空为真，否则为假
test -z "index.js" && echo "ok" || echo "error"

test -n "" && echo 'hah'  || echo 's'
