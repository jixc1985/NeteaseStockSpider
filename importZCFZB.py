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
    df = pd.read_csv(rootdir+'/'+list+'/zcfzb.csv',encoding = "GBK")
    if df.columns[0] == '暂无数据':
        continue
    dt = df.T
    dt = dt.drop(['报告日期'])


    #将dt数据插入数据库表
    for row in dt.iterrows():
        try:
            cursor.execute("insert into t_zcfzb(code,date,hbzj,jsbfj,cczj,jyxjrzc,ysjrzc,yspj,yszk,yfkx,ysbf,ysfbzk,ysfbhtzbj,yslx,ysgl,qtysk,ysckts,ysbtk,ysbzj,nbysk,mrfsjrzc,ch,dtfy,dclldzcsy,ynndqdfldzc,qtldzc,ldzchj,ffdkjdk,kgcsjrzc,cyzdqtz,cqysk,cqgqtz,qtcqtz,tzxfdc,gdzcyz,ljzj,gdzcjz,gdzcjzzb,gdzc,zjgc,gcwz,gdzcql,scxswzc,gyxswzc,yqzc,wxzc,kfzc,sy,cqdtfy,gqfzltq,dysdszc,qtfldzc,fldzchj,zchj,dqjk,xzyyhjk,xsckjtycf,crzj,jyxjrfz,ysjrfz,yfpj,yfzk,yuszk,mchgjrzck,yfsxfjyj,yfzgxc,yjsf,yflx,yfgl,qtyjk,yfbzj,nbyfk,qtyfk,ytfy,yjldfz,yffbzk,bxhtzbj,dlmmzqk,dlcxzqk,gjpzjs,gnpzjs,dysy,yfdqzk,ynndqdfldfz,qtldfz,ldfzhj,cqjk,yfzq,cqyfk,zxyfk,yjfldfz,cqdysy,dysdsfz,qtfldfz,fldfzhj,fzhj,sszbhgb,zbgj,kcg,zxcb,yygj,ybfxzb,wqddtzss,wfplr,nfpxjgl,wbbbzsce,gsymgsgdqyhj,ssgdqy,syzqy,fzhsyzqyzh) "\
                           "values('%s','%s','%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                            "'%f','%f','%f','%f','%f',"\
                           "'%f','%f','%f')" \
                           % (list,row[0],\
                              float(row[1][0] if row[1][0]!='--' else 0),float(row[1][1] if row[1][1]!='--' else 0),float(row[1][2] if row[1][2]!='--' else 0),float(row[1][3] if row[1][3]!='--' else 0),float(row[1][4] if row[1][4]!='--' else 0),\
                              float(row[1][6] if row[1][6]!='--' else 0),float(row[1][6] if row[1][6]!='--' else 0),float(row[1][7] if row[1][7]!='--' else 0),float(row[1][8] if row[1][8]!='--' else 0),float(row[1][9] if row[1][9]!='--' else 0),\
                              float(row[1][10] if row[1][10]!='--' else 0),float(row[1][11] if row[1][11]!='--' else 0),float(row[1][12] if row[1][12]!='--' else 0),float(row[1][13] if row[1][13]!='--' else 0),float(row[1][14] if row[1][14]!='--' else 0),\
                              float(row[1][15] if row[1][15]!='--' else 0),float(row[1][16] if row[1][16]!='--' else 0),float(row[1][17] if row[1][17]!='--' else 0),float(row[1][18] if row[1][18]!='--' else 0),float(row[1][19] if row[1][19]!='--' else 0),\
                              float(row[1][20] if row[1][20]!='--' else 0),float(row[1][21] if row[1][21]!='--' else 0),float(row[1][22] if row[1][22]!='--' else 0),float(row[1][23] if row[1][23]!='--' else 0),float(row[1][24] if row[1][24]!='--' else 0),\
                              float(row[1][25] if row[1][25]!='--' else 0),float(row[1][26] if row[1][26]!='--' else 0),float(row[1][27] if row[1][27]!='--' else 0),float(row[1][28] if row[1][28]!='--' else 0),float(row[1][29] if row[1][29]!='--' else 0),\
                              float(row[1][30] if row[1][30]!='--' else 0),float(row[1][31] if row[1][31]!='--' else 0),float(row[1][32] if row[1][32]!='--' else 0),float(row[1][33] if row[1][33]!='--' else 0),float(row[1][34] if row[1][34]!='--' else 0),\
                              float(row[1][35] if row[1][35]!='--' else 0),float(row[1][36] if row[1][36]!='--' else 0),float(row[1][37] if row[1][37]!='--' else 0),float(row[1][38] if row[1][38]!='--' else 0),float(row[1][39] if row[1][39]!='--' else 0),\
                              float(row[1][40] if row[1][40]!='--' else 0),float(row[1][41] if row[1][41]!='--' else 0),float(row[1][42] if row[1][42]!='--' else 0),float(row[1][43] if row[1][43]!='--' else 0),float(row[1][44] if row[1][44]!='--' else 0),\
                              float(row[1][45] if row[1][45]!='--' else 0),float(row[1][46] if row[1][46]!='--' else 0),float(row[1][47] if row[1][47]!='--' else 0),float(row[1][48] if row[1][48]!='--' else 0),float(row[1][49] if row[1][49]!='--' else 0),\
                              float(row[1][50] if row[1][50]!='--' else 0),float(row[1][51] if row[1][51]!='--' else 0),float(row[1][52] if row[1][52]!='--' else 0),float(row[1][53] if row[1][53]!='--' else 0),float(row[1][54] if row[1][54]!='--' else 0),\
                              float(row[1][55] if row[1][55]!='--' else 0),float(row[1][56] if row[1][56]!='--' else 0),float(row[1][57] if row[1][57]!='--' else 0),float(row[1][58] if row[1][58]!='--' else 0),float(row[1][59] if row[1][59]!='--' else 0),\
                              float(row[1][60] if row[1][60]!='--' else 0),float(row[1][61] if row[1][61]!='--' else 0),float(row[1][62] if row[1][62]!='--' else 0),float(row[1][63] if row[1][63]!='--' else 0),float(row[1][64] if row[1][64]!='--' else 0),\
                              float(row[1][65] if row[1][65]!='--' else 0),float(row[1][66] if row[1][66]!='--' else 0),float(row[1][67] if row[1][67]!='--' else 0),float(row[1][68] if row[1][68]!='--' else 0),float(row[1][69] if row[1][69]!='--' else 0),\
                              float(row[1][70] if row[1][70]!='--' else 0),float(row[1][71] if row[1][71]!='--' else 0),float(row[1][72] if row[1][72]!='--' else 0),float(row[1][73] if row[1][73]!='--' else 0),float(row[1][74] if row[1][74]!='--' else 0),\
                              float(row[1][75] if row[1][75]!='--' else 0),float(row[1][76] if row[1][76]!='--' else 0),float(row[1][77] if row[1][77]!='--' else 0),float(row[1][78] if row[1][78]!='--' else 0),float(row[1][79] if row[1][79]!='--' else 0),\
                              float(row[1][80] if row[1][80]!='--' else 0),float(row[1][81] if row[1][81]!='--' else 0),float(row[1][82] if row[1][82]!='--' else 0),float(row[1][83] if row[1][83]!='--' else 0),float(row[1][84] if row[1][84]!='--' else 0),\
                              float(row[1][85] if row[1][85]!='--' else 0),float(row[1][86] if row[1][86]!='--' else 0),float(row[1][87] if row[1][87]!='--' else 0),float(row[1][88] if row[1][88]!='--' else 0),float(row[1][89] if row[1][89]!='--' else 0),\
                              float(row[1][90] if row[1][90]!='--' else 0),float(row[1][91] if row[1][91]!='--' else 0),float(row[1][92] if row[1][92]!='--' else 0),float(row[1][93] if row[1][93]!='--' else 0),float(row[1][94] if row[1][94]!='--' else 0),\
                              float(row[1][95] if row[1][95]!='--' else 0),float(row[1][96] if row[1][96]!='--' else 0),float(row[1][97] if row[1][97]!='--' else 0),float(row[1][98] if row[1][98]!='--' else 0),float(row[1][99] if row[1][99]!='--' else 0),\
                              float(row[1][100] if row[1][100]!='--' else 0),float(row[1][101] if row[1][101]!='--' else 0),float(row[1][102] if row[1][102]!='--' else 0),float(row[1][103] if row[1][103]!='--' else 0),float(row[1][104] if row[1][104]!='--' else 0),\
                              float(row[1][105] if row[1][105]!='--' else 0),float(row[1][106] if row[1][106]!='--' else 0),float(row[1][107] if row[1][107]!='--' else 0)))

            db.commit()
            i+=1
            num+=1
        except Exception as e:
            db.rollback()
            print(list+"出错在位置"+str(i))
            print(e)

    print(list+'资产负债表完成,共插入记录'+str(i)+'条')
    i=0

print('共插入'+str(num)+'条记录')
db.close()

