import pymysql
import pandas as pd
import os


rootdir = "C:/Users/Administrator/Desktop/stocks"
# 使用cursor()方法获取操作游标
db = pymysql.connect(host="localhost", user="root",password="7z5#UiWysZwA", db="neteasestock", port=3306,charset='utf8')
cursor = db.cursor()

num = 0
#取得文件夹列表
for list in os.listdir(rootdir):
    #读取利润表文件
    i = 0
    df = pd.read_csv(rootdir+'/'+list+'/cznl.csv',encoding = "GBK")
    if df.columns[0] == '暂无数据':
        continue
    dt = df.T
    dt = dt.drop(['报告日期'])


    #将dt数据插入数据库表
    for row in dt.iterrows():
        try:
            cursor.execute("insert into t_cznl(code,date,zyywzzl,jlrzzl) values('%s','%s','%f','%f')" \
                           % (list,row[0],\
                              float(row[1][0] if row[1][0]!='--' else 0),float(row[1][1] if row[1][1]!='--' else 0)))
            db.commit()
            i+=1
            num+=1
        except Exception as e:
            db.rollback()
            print(list+"出错在位置"+str(i))
            print(e)

    print(list+'成长能力完成'+'共插入记录'+str(i)+'条')
    i=0

print('共插入'+str(num)+'条记录')
db.close()

