## 支援項目
-  支援webscoket
-  支援mod_jk
-  啟動docker前先刪除無用的container與image
## 執行方式
```sh
docker build -t wales/httpd httpd/
docker build -t wales/tomcat tomcat/
docker-compose up -d
```

或直接利用
```sh
./docker.sh
```
