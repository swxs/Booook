# lua脚本

------

- [lua脚本](#lua脚本)
  - [读写锁](#读写锁)
  - [利用scan进行批量操作](#利用scan进行批量操作)
  - [链接](#链接)

------

## 读写锁

读锁

```lua
local write_key = 'write';
local mode = redis.call('hget', KEYS[1], 'mode');
if (mode == false) then
    redis.call('hset', KEYS[1], 'mode', 'read');
    redis.call('hset', KEYS[1], write_key, 0);
    redis.call('hset', KEYS[1], ARGV[2], 1);
    redis.call('pexpire', KEYS[1], ARGV[1]);
    return nil;
end;
if (mode == 'read') then
    local ind = redis.call('hincrby', KEYS[1], ARGV[2], 1); 
    local remainTime = redis.call('pttl', KEYS[1]);
    redis.call('pexpire', KEYS[1], math.max(remainTime, ARGV[1]));
    return nil;
end;
return redis.call('pttl', KEYS[1])
```

释放读锁

```lua 
local write_key = 'write';
local mode = redis.call('hget', KEYS[1], 'mode');
if (mode == false) then
    return 1;
end;
local lockExists = redis.call('hexists', KEYS[1], write_key);
if (lockExists == 0) then
    return nil;
end;
local counter = redis.call('hincrby', KEYS[1], ARGV[1], -1); 
if (counter == 0) then
    redis.call('hdel', KEYS[1], ARGV[1]); 
end;
if (redis.call('hlen', KEYS[1]) > 2) then
    if mode == 'write' then
        return 0;
    end;
    
    return nil;
end;
redis.call('del', KEYS[1]);
return 1;
```

写锁

```sh
local write_key = 'write'
local mode = redis.call('hget', KEYS[1], 'mode');
if (mode == false) then
    redis.call('hset', KEYS[1], 'mode', 'write');
    redis.call('hset', KEYS[1], write_key, 1);
    redis.call('pexpire', KEYS[1], ARGV[1]);
    return nil;
end;
if (mode == 'write') then
    if (redis.call('hexists', KEYS[1], write_key) == 1) then
        redis.call('hincrby', KEYS[1], write_key, 1);
        local currentExpire = redis.call('pttl', KEYS[1]); 
        redis.call('pexpire', KEYS[1], currentExpire + ARGV[1]); 
        return redis.call('pttl', KEYS[1]);
    end; 
end;
return redis.call('pttl', KEYS[1]);
```

释放写锁

```sh
local write_key = 'write'
local mode = redis.call('hget', KEYS[1], 'mode');
if (mode == false) then
    return 1;
end;
local lockExists = redis.call('hexists', KEYS[1], write_key);
if (lockExists == 0) then
    return nil;
end;
if (mode == 'write') then
    redis.call('del', KEYS[1]);
    return 1
end;
return 0; 
```

强制释放锁

```sh
if (redis.call('hget', KEYS[1], 'mode') == 'read') or (redis.call('hget', KEYS[1], 'mode') == 'write') then
    redis.call('del', KEYS[1]);
    return 1;
end;
return 0;
```

## 利用scan进行批量操作

查询符合条件的key数量

```lua
local cursor = '0'
local count = 0
repeat
    local result = redis.call('SCAN', cursor, 'MATCH', KEYS[1], 'COUNT', 100)
    cursor = result[1]
    count = count + #result[2]
until cursor == '0'
return count
```

删除符合条件的key，并返回删除的数量

```lua
redis.replicate_commands()
local cursor = '0'
local delete_count = 0
repeat
    local result = redis.call('scan', cursor, 'MATCH', KEYS[1], 'COUNT', 100)
    cursor = result[1]
    local list = result[2]
    delete_count = delete_count + #list
    redis.call('del', unpack(list))
until (cursor == '0')
return delete_count
```

## 链接
- Cuckoo Filter: [https://www.cs.cmu.edu/~dga/papers/cuckoo-conext2014.pdf](https://www.cs.cmu.edu/~dga/papers/cuckoo-conext2014.pdf)
