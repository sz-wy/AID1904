'''
create table worddict(id int primary key auto_increment,word varchar(20),meanings varchar(200));
'''
import pymysql
import re
db =pymysql.connect(host='localhost',
                    port=3306,
                    user='root',
                    password='123456',
                    database='dict',
                    charset='utf8')

c=db.cursor()
sql = '''insert into worddict (word,meanings) values(%s,%s)'''
f=open('dict.txt','r')

for line in f:
    tup =re.findall(r"(\S+)\s+(.*)",line)[0]
    try:
        c.execute(sql,tup)
        db.commit()
    except Exception as e:
        print(tup)
        db.rollback()
c.close()
db.close()