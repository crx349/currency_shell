#! /bin/bash
# author:Crx349
# url:www.xmspace.net
cat /var/log/secure|awk '/Failed/{print $(NF-3)}'|sort|uniq -c|awk '{print $2"="$1;}' > /root/black.txt
DEFINE="10"
for i in `cat /root/black.txt`
do
 IP=`echo $i |awk -F= '{print $1}'`
 NUM=`echo $i|awk -F= '{print $2}'`
 if [ $NUM -gt $DEFINE ];
 then
 grep $IP /etc/hosts.deny > /dev/null
 if [ $? -gt 0 ];
 then
 echo "sshd:$IP" >> /etc/hosts.deny
 fi
 fi
done
