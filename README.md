# BookServerDeploy
使用docker-compose快速部署nginx,Tomcat,mysql等各种服务
一键部署JavaWEB图书借阅管理系统

## 使用方法
1. 安装必要的依赖及Docker
```bash
sudo apt-get update && sudo apt-get install -y vim python-pip curl git docker.io
pip install docker-compose
```
2. 克隆部署目录
```
git clone https://github.com/lyz05/BookServerDeploy.git
```
3. 启动docker镜像
```
docker-compose up -d
```

## 管理命令
```
docker-compose up
docker-compose down
docker-compose start
docker-compose stop
docker system df
docker system prune -a
```