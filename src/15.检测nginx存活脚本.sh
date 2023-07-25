#! /bin/bash

CheckUrl() {
  timeout=5
  # 相当于定义一个计数器
  fails=0
  success=0
  while true
    do 
      wget --timeout=${timeout} --tries=1 http://pythonav.cn -q -O /dev/null
      echo "上一次wget的运行结果$?" 
      if [ $? -ne 0 ]
        then 
          let fails=fails+1 
      else 
        let success+=1
      fi

      sleep 1;
      # 判断当成功次数大于1，就是正确访问的
      # -ge 大于等于的意思
      echo "success=${success}"
      if [ $success -ge 1 ] 
        then
          echo "恭喜你，该网站健康的在运行"
          exit 0
      fi

      if [ $fails -ge 2 ] 
        then
          echo "网站挂了"
          exit 2
      fi
    done
}

CheckUrl
