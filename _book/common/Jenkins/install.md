# install

---

- [install](#install)
  - [Docker安装](#docker%e5%ae%89%e8%a3%85)

---

## Docker安装

``` sh
docker pull jenkins

sudo mkdir /var/jenkins
sudo chown 1000:1000 /var/jenkins
sudo docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins:/var/jenkins_home --name my_jenkins -d jenkins
```
