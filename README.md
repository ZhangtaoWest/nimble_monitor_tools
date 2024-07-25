###该监控脚本使用说明
该监控脚本实现功能：
（1）通过python对nimble 训练过程中主要涉及网址访问监控，涉及huggingface nimble.technology网址服务监控
（2）监控nimble训练任务进程是否存在
上面只要任意一项监控检查失败，则会输出Failed;通过检查输出Success；监控结果通过server酱平台推送到公众号上
安装说明：
