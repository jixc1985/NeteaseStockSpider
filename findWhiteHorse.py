import pandas as pd
import pymysql

db = pymysql.connect(host="localhost", user="root",password="7z5#UiWysZwA", db="neteasestock", port=3306,charset='utf8')
cursor = db.cursor()

