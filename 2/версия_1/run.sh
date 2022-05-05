
#!/bin/bash

source /$PWD/env
echo "import mysql.connector
from random import randint as rdm
from time import sleep
while True:
  try:
    dbs = mysql.connector.connect(
    host='${server_ip}',
    user='${database_user}',
    password='${database_password}',
    port='${server_port}',
    database='${database}')

    cursor = dbs.cursor()
    cursor.execute('select * from articles')
    raws=[i for i in cursor]
    dbs.close()

    num=rdm(0,4)
    htm=['<html>', '<head>', '<title>tensor_l9</title>', '</head>', '<body>', '<h1>'+raws[num][1]+'</h1>', '<p><em>'+raws[num][2]+'</em></p>', '</body>', '</html>']
    f = open('/var/www/html/index.html','w')
    [print(i,file=f) for i in htm]
    f.close()
    sleep(10)
  except:
    pass" > web.py

docker build . -t tensor9_ip
sleep 4
docker run -p 81:80 -d tensor9_ip
sleep 6
echo "DONE! Now go and check your web-page on tcp-81 port."
