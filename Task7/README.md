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
4. Run 3 container ```database``` ```zabbix server``` ```zabbix web server```
Detailed installing in ```install_zabbix.txt```

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/1.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/2.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/3.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/4.png" width="200" />

# ELK stack docker + log from docker 
1. Create ```docker-compose.yml```, ```filebeat.yml```, logstash directory with ```logstash.conf```, test log ```inlog.log```
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/7.png" width="200" />

2. Congigure ```docker-compose``` files, ```logstash.conf``` for deploying 4 containers 
3. 1 Elasticsearch, 2 Logstash, 3 Kibana, 4 Filebeat
4. Logstash take log from test directory
5. Filebeat from docker containers
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/8.png" width="200" />

6. Run browser with localhost page and port ```5601```
7. Check indexes in Kibana web drom logstash, filebeat

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/9.png" width="200" />

8. Create index paterns and customizae dashboard 

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/10.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/11.png" width="200" />

9. For opening port use ```firewall``` file

# Grafana in docker
1. Open 3000 port
2. Run official docker image with grafana  ```docker run -d --name=grafana -p 3000:3000 grafana/grafana-enterprise``` 
3. Check version of your environment(Ex:if elsricsearch 7.16 grafana 8.3.0 will not connect)
4. Add data source: ip addres your elasticsearch, index
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/12.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/13.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/14.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/15.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/16.png" width="200" />

5. Customize your dashboard
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task7/17.png" width="200" />

6. For troubleshooting connections between grafana and elasticsearch, verify that all containers are in the same network
7. Command: ```docker network connect YOUR_NETWORK YOUR_CONTAINER``` ```docker network disconnect YOUR_NETWORK YOUR_CONTAINER``` ```docker network inspect YOUR_NETWORK``` ```docker network ls```
8. You can write code for deploying grafana in ```docker-compose.yml```


