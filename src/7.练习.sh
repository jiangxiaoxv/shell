#! /bin/bash
# mv src/tmp/1_finished.txt src/tmp/1.txt
# ls
for file_name in `ls src/tmp/*.txt`
do 
  mv $file_name  `echo ${file_name//_finished/}`
#   mv $file_name  `echo ${file_name}_finished`

done