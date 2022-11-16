# 安装

------

- [安装](#安装)
  - [docker](#docker)
    - [max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]](#max-virtual-memory-areas-vmmax_map_count-65530-is-too-low-increase-to-at-least-262144)
    - [Java heap space error or java.lang.OutOfMemoryError](#java-heap-space-error-or-javalangoutofmemoryerror)

------

## docker

docker-compose.yaml

``` txt
version: "3"

services:
  sonarqube:
    image: sonarqube:community
    depends_on:
      - db
    environment:
      SONAR_JDBC_URL: jdbc:postgresql://db:5432/sonar
      SONAR_JDBC_USERNAME: sonar
      SONAR_JDBC_PASSWORD: sonar
    volumes:
      - sonarqube_data:/opt/sonarqube/data
      - sonarqube_extensions:/opt/sonarqube/extensions
      - sonarqube_logs:/opt/sonarqube/logs
    ports:
      - "9000:9000"
  db:
    image: postgres:12
    environment:
      POSTGRES_USER: sonar
      POSTGRES_PASSWORD: sonar
    volumes:
      - postgresql:/var/lib/postgresql
      - postgresql_data:/var/lib/postgresql/data

volumes:
  sonarqube_data:
  sonarqube_extensions:
  sonarqube_logs:
  postgresql:
  postgresql_data:
```

### max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]

修改配置
```
# /etc/sysctl.conf
vm.max_map_count=262144
```

`sysctl -p`

```
sysctl -w vm.max_map_count=262144
```

### Java heap space error or java.lang.OutOfMemoryError

Increase the memory via the SONAR_SCANNER_OPTS environment variable when running the scanner from a zip file:

`export SONAR_SCANNER_OPTS="-Xmx512m"`

In Windows environments, avoid the double-quotes, since they get misinterpreted and combine the two parameters into a single one.

`set SONAR_SCANNER_OPTS=-Xmx512m`
