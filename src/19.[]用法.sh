#! /bin/sh
# [] 前后需要空格,在条件测试中使用变量，必须添加双引号

[ -e "index.js" ]  && echo 1 || echo no

# 双 [[]]
# 验证 
# -r 文件是否可读
[[ -e "index.js" ]] && echo 2 || echo "no2"

# 对变量进行判断需要加""
file1="hah"
[ -f "file1" ] && echo "$file1" || echo "no3"