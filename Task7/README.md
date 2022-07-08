## Task7 Monitoring
# Zabbix in docker
1. Create resorces for zabbix, and network
2. Create network for docker containers 
```sudo docker network create zabbix-net```
3. ```mkdir /var/lib/zabbix/```
```cd /var/lib/zabbix/```
```ln -s /usr/share/zoneinfo/Europe/Minsk localtime```
```echo 'Europe/Minsk' > timezone```
```sudo docker network create zabbix-net```
4. Run 3 container ```database``` ```zabbix servr``` ```zabbix web server```
Detailed installing in ```install_zabbix.txt```

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/1.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/2.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/3.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/4.png" width="200" />
