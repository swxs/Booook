# 配置

------

- [配置](#配置)
  - [文件传输](#文件传输)
  - [HTTP](#http)
  - [TCP](#tcp)

------

## 文件传输

nginx传输文件注意文件权限问题
nginx传输文件注意文件大小问题

`client_max_body_size 2m;`

## HTTP

```
stream {
  upstream backend {
    server 10.10.12.45:80      weight=1;    
    server app.example.com:80  weight=2; 
  }

  server {    
    location / {        
      proxy_pass http://backend;    
    }
  }
}
```

## TCP
```
stream {    
	upstream mysql_read {        
		server read1.example.com:3306  weight=5;        
		server read2.example.com:3306;        
		server 10.10.12.34:3306 backup;    
	}     

	server {        
		listen 3306;        
		proxy_pass mysql_read;    
	} 
}
```