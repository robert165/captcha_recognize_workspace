#!/bin/bash
#	liu,yu 2018-05-22 
#	V 1.0.0
#描述：captcha_recognize的docker镜像后台运行后执行的代码

cd /workspace/captcha_recognize/ctpn/lib/utils
sh $1
cd /workspace/captcha_recognize
python helloFlask.py



