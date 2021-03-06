import urllib3
import os
import time
from StockCode import urlTolist

stock_nos = urlTolist('http://quote.eastmoney.com/stocklist.html')

for stock_no in stock_nos:
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
        os.mkdir('stocks/'+stock_no)

    response = http.request('GET', zycwzb)
    with open('stocks/'+ stock_no + '/zycwzb.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', ylnl)
    with open('stocks/'+ stock_no + '/ylnl.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', chnl)
    with open('stocks/'+ stock_no + '/chnl.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', cznl)
    with open('stocks/'+ stock_no + '/cznl.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', yynl)
    with open('stocks/'+ stock_no + '/yynl.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', cwbbzy)
    with open('stocks/'+ stock_no + '/cwbbzy.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', zcfzb)
    with open('stocks/'+ stock_no + '/zcfzb.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', lrb)
    with open('stocks/'+ stock_no + '/lrb.csv', 'wb') as f:
        f.write(response.data)

    response = http.request('GET', xjllb)
    with open('stocks/'+ stock_no + '/xjllb.csv', 'wb') as f:
        f.write(response.data)

    response.release_conn()
    print('完成'+stock_no)
    time.sleep(3)

print('全部完成')