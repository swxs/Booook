# Nginx

---

- [Nginx](#nginx)
  - [图谱](#图谱)

---

## 图谱

{% simplemindmap type="txtmap" %}
``` txtmap
Nginx
    Load Balancing
        HTTP
            server 10.10.12.45:80      weight=1;    
	server app.example.com:80  weight=2; 
}

server {    
	location / {        
		proxy_pass http://backend;    
	}
 }
            load 算法
                least connections
                least time
                generic hash
                IP hash
        TCP
            stream {    
	upstream mysql_read {        
		server read1.example.com:3306  weight=5;        
		server read2.example.com:3306;        
		server 10.10.12.34:3306                  backup;    
	}     

	server {        
		listen 3306;        
		proxy_pass mysql_read;    
	} 
}
    访问控制
        屏蔽
            deny ip;
            deny all;
            deny ip/n;
        开放
            allow ip;
            allow all;
            allow ip/n;
```
{% endsimplemindmap %}
