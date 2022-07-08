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
4. Run container with database (PostgresSql)

```sudo docker run -d \
--name zabbix-postgres \
--network zabbix-net \
-v /var/lib/zabbix/timezone:/etc/timezone \
-v /var/lib/zabbix/localtime:/etc/localtime \
-e POSTGRES_PASSWORD=zabbix \
-e POSTGRES_USER=zabbix postgres:alpine```

5. Run container with Zabbix-server

``` sudo docker run \
--name zabbix-server \
--network zabbix-net \
-v /var/lib/zabbix/alertscripts:/usr/lib/zabbix/alertscripts \
-v /var/lib/zabbix/timezone:/etc/timezone \
-v /var/lib/zabbix/localtime:/etc/localtime \
-p 10051:10051 -e DB_SERVER_HOST="zabbix-postgres" \
-e POSTGRES_USER="zabbix" \
-e POSTGRES_PASSWORD="zabbix" \
-d zabbix/zabbix-server-pgsql:alpine-latest ```