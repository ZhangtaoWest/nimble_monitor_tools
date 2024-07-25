# 该监控脚本使用说明
该监控脚本实现功能：
（1）通过python对nimble 训练过程中主要涉及网址访问监控，涉及huggingface nimble.technology网址服务监控
（2）监控nimble训练任务进程是否存在
上面只要任意一项监控检查失败，则会输出Failed;通过检查输出Success；监控结果通过server酱平台推送到公众号上
## 安装说明：
下载该脚本git clone https://github.com/ZhangtaoWest/nimble_monitor_tools.git
(1)安装依赖pip3 install requests（2）修改该脚本中sckey="SCT253734TqNgReDJC8ztSvq2L1NY7h" title="4060ti-io4-nimnew" timeout=3*3600参数
sckey:为你在server 酱平台生成的sendkey
title:为你自己设置的标识，可以为机器名称或者钱包地址
timeout:为间隔时间，3*3600代表3小时，每3小时检查一次
备注：sckey 登录https://sct.ftqq.com/ 进行微信绑定生成，在key&&api tab中查看
（3）监控部署：nohup python3 nim_mon.py &
