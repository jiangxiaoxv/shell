#! /bin/bash
name=""
echo ${name:-word} # 如果name为空，返回word本身字符串,


echo ${name:=word} # 如果name为空，则word本身替代变量值，且返回其值, 同时name变量赋值为word本身
echo ${name}


echo ${name:?word} # 如果name为空，word当作stderr输出，否则输出变量值用于设置变量为空导致错误时，返回的错误信息

echo ${name:+word} # 如果name为空，什么都不做，否则word返回

# find xargs 搜索、且删除
# find 需要搜索的目录 -name 你要搜索的文件名字 -type 文件类型 -mtime +7|xargs rm -f
# dir_path="src/tmp"
find ${dir_path:=src/tmp} -name '*.tar.gz' -type f -mtime +7|xargs rm -f

echo `echo ${name}`
name="JXX"
echo "${name^}"