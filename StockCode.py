import urllib.request
import re

stock_CodeUrl = 'http://quote.eastmoney.com/stocklist.html'


# 获取股票代码列表
def urlTolist(url):
    allCodeList = []
    html = urllib.request.urlopen(url).read()
    html = html.decode('gbk')
    s = r'<li><a target="_blank" href="http://quote.eastmoney.com/\S\S(.*?).html">'
    pat = re.compile(s)
    code = pat.findall(html)
    for item in code:
        if item[0] == '6' or item[0] == '3' or item[0] == '0':
            allCodeList.append(item)
    return allCodeList


allCodelist = urlTolist(stock_CodeUrl)
print(allCodelist.length())

#for code in allCodelist:
    #print('有效代码' +code)
    #df = pd.read_html('http://quotes.money.163.com/trade/lsjysj_' + code + '.html#06f01')
    #df[3].to_csv('d:\\stock_code\\' + code + '.csv', index=None)
    #print('正在获取%s' % code)
