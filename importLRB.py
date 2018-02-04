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
    df = pd.read_csv(rootdir+'/'+list+'/lrb.csv',encoding = "GBK")
    if df.columns[0] == '暂无数据':
        continue
    dt = df.T
    dt = dt.drop(['报告日期'])


    #将dt数据插入数据库表
    for row in dt.iterrows():
        try:
            cursor.execute("insert into t_lrb(code,date,yyzsr,yysr,lxsr,yzbf,sxfjyjsr,fdcxssr,qtywsr,yyzcb,yycb,lxzc,sxfjyjzc,fdcxscb,yffy,tbj,pfzcje,tqbxhtzbjje,bdhlzc,fbfy,qtywcb,yysjjfj,xsfy,glfy,cwfy,zcjzss,gyjzbdsy,tzsy,dyyqyhhyqydtzsy,hdsy,qhsy,tgsy,btsr,qtywlr,yylr,yywsr,yywzc,fldzcczss,lrze,sdsfy,wqrtzss,jlr,gsymgssyzdjlr,bhbfzhbqsxjlr,ssgdsy,jbmgsy,xsmgsy) values('%s','%s','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f','%f')" \
                           % (list,row[0],\
                              float(row[1][0] if row[1][0]!='--' else 0),float(row[1][1] if row[1][1]!='--' else 0),float(row[1][2] if row[1][2]!='--' else 0),float(row[1][3] if row[1][3]!='--' else 0),float(row[1][4] if row[1][4]!='--' else 0),\
                              float(row[1][5] if row[1][5]!='--' else 0),float(row[1][6] if row[1][6]!='--' else 0),float(row[1][7] if row[1][7]!='--' else 0),float(row[1][8] if row[1][8]!='--' else 0),float(row[1][9] if row[1][9]!='--' else 0),\
                              float(row[1][10] if row[1][10]!='--' else 0),float(row[1][11] if row[1][11]!='--' else 0),float(row[1][12] if row[1][12]!='--' else 0),float(row[1][13] if row[1][13]!='--' else 0),float(row[1][14] if row[1][14]!='--' else 0),\
                              float(row[1][15] if row[1][15]!='--' else 0),float(row[1][16] if row[1][16]!='--' else 0),float(row[1][17] if row[1][17]!='--' else 0),float(row[1][18] if row[1][18]!='--' else 0),float(row[1][19] if row[1][19]!='--' else 0),\
                              float(row[1][20] if row[1][20]!='--' else 0),float(row[1][21] if row[1][21]!='--' else 0),float(row[1][22] if row[1][22]!='--' else 0),float(row[1][23] if row[1][23]!='--' else 0),float(row[1][24] if row[1][24]!='--' else 0),\
                              float(row[1][25] if row[1][25]!='--' else 0),float(row[1][26] if row[1][26]!='--' else 0),float(row[1][27] if row[1][27]!='--' else 0),float(row[1][28] if row[1][28]!='--' else 0),float(row[1][29] if row[1][29]!='--' else 0),\
                              float(row[1][30] if row[1][30]!='--' else 0),float(row[1][31] if row[1][31]!='--' else 0),float(row[1][32] if row[1][32]!='--' else 0),float(row[1][33] if row[1][33]!='--' else 0),float(row[1][34] if row[1][34]!='--' else 0),\
                              float(row[1][35] if row[1][35]!='--' else 0),float(row[1][36] if row[1][36]!='--' else 0),float(row[1][37] if row[1][37]!='--' else 0),float(row[1][38] if row[1][38]!='--' else 0),float(row[1][39] if row[1][39]!='--' else 0),\
                              float(row[1][40] if row[1][40]!='--' else 0),float(row[1][41] if row[1][41]!='--' else 0),float(row[1][42] if row[1][42]!='--' else 0),float(row[1][43] if row[1][43]!='--' else 0),float(row[1][44] if row[1][44]!='--' else 0)))
            db.commit()
            i+=1
            num+=1
        except Exception as e:
            db.rollback()
            print(list+"出错在位置"+str(i))
            print(e)

    print(list+'利润表完成'+'共插入记录'+str(i)+'条')
    i=0

print('共插入'+str(num)+'条记录')
db.close()

