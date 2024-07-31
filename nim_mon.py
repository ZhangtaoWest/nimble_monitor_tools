import requests
import os
import time


sckey=
title=
#res = "success"
#node_url = "https://mainnet.nimble.technology:443"
#huface_url="https://huggingface.co:443"
timeout=
def is_internet_available():
    node_url = "https://mainnet.nimble.technology:443"
    huface_url="https://huggingface.co:443"
    try:
        for url in [node_url,huface_url]:
            requests.get(url)
        return True
    except:
        return False
def is_miner_service_available():
    a = os.system("ps -ef|grep 'make run addr='| grep -v grep")
    if a==0:
        return True
    else:
        return False

def mon_task():
    global title
    res =  is_internet_available() & is_miner_service_available()
    if res:
        check_res="Success"
    else:
        check_res="Failed"
    title_last=time.strftime('%Y-%m-%d %H:%M:%S', time.localtime())+"--"+title
    mon_url = 'https://sc.ftqq.com/%s.send?text=%s&desp=%s'%(sckey,title_last,check_res)
    requests.get(mon_url)
if __name__ == "__main__":
    while True:
        mon_task()
        time.sleep(timeout)
