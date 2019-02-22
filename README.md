# captcha_recognize_workspace
验证码识别

#1.准备验证码图片

将验证码图片分别放在 <工作目录>/data/train_data/ 用于模型训练，<工作目录>/data/valid_data/ 用于模型效果评估， <工作目录>/data/test_data/ 用于验证码识别测试，图片命名样式是 验证码内容_*.jpg 或者 验证码内容_*.png ，图片大小最好为 128x48 . 可以执行默认的验证码生成:
cd captcha_recognize
python captcha_gen_default.py

#2.将验证码图片转换为tfrecords格式

生成的结果为 <工作目录>/data/train.tfrecord 和 <工作目录>/data/valid.tfrecord ，执行：

python captcha_records.py

#3.模型训练

可以在CPU或者一个GPU上进行模型训练，执行：

python captcha_train.py

也可以在多个GPU上进行模型训练，执行：

python captcha_multi_gpu_train.py

#4.模型评估

用于评估训练的效果，执行：

python captcha_eval.py

#5.验证码识别

训练好模型后，可以对 <工作目录>/data/test_data/ 目录下的原始图片进行识别，执行：

python captcha_recognize.py

结果如下

...
image WFPMX_num552.png recognize ----> 'WFPMX'
image QUDKM_num468.png recognize ----> 'QUDKM'

