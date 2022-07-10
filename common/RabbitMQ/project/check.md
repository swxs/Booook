# 问题排查

------

- [问题排查](#问题排查)
  - [2022/07/01](#20220701)
    - [rabbitmq ConnectionResetError (104, 'Connection reset by peer')](#rabbitmq-connectionreseterror-104-connection-reset-by-peer)

------

## 2022/07/01

### rabbitmq ConnectionResetError (104, 'Connection reset by peer')

``` sh
rabbitmqctl set_vm_memory_high_watermark 0.6
rabbitmqctl set_vm_memory_high_watermark absolute "4G"
```

文档
- [https://www.rabbitmq.com/memory.html](https://www.rabbitmq.com/memory.html)

