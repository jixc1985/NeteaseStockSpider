import urllib3
import os

stock_no = '600519'
zycwzb = 'http://quotes.money.163.com/service/zycwzb_'+ stock_no +'.html?type=report'
ylnl = 'http://quotes.money.163.com/service/zycwzb_'+ stock_no +'.html?type=report&part=ylnl'
chnl = 'http://quotes.money.163.com/service/zycwzb_'+ stock_no +'.html?type=report&part=chnl'
cznl = 'http://quotes.money.163.com/service/zycwzb_'+ stock_no +'.html?type=report&part=cznl'
yynl = 'http://quotes.money.163.com/service/zycwzb_'+ stock_no +'.html?type=report&part=yynl'
cwbbzy = 'http://quotes.money.163.com/service/cwbbzy_'+ stock_no +'.html'
zcfzb = 'http://quotes.money.163.com/service/zcfzb_'+ stock_no +'.html'
lrb = 'http://quotes.money.163.com/service/lrb_'+ stock_no +'.html'
xjllb = 'http://quotes.money.163.com/service/xjllb_'+ stock_no +'.html'

http = urllib3.PoolManager()

if not os.path.exists(stock_no):
    os.mkdir(stock_no)

response = http.request('GET', zycwzb)
with open(stock_no+'/zycwzb.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', ylnl)
with open(stock_no+'/ylnl.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', chnl)
with open(stock_no + '/chnl.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', cznl)
with open(stock_no + '/cznl.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', yynl)
with open(stock_no + '/yynl.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', cwbbzy)
with open(stock_no + '/cwbbzy.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', zcfzb)
with open(stock_no + '/zcfzb.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', lrb)
with open(stock_no + '/lrb.csv', 'wb') as f:
    f.write(response.data)

response = http.request('GET', xjllb)
with open(stock_no + '/xjllb.csv', 'wb') as f:
    f.write(response.data)

response.release_conn()

