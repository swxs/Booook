# 七周七并发

------
- [七周七并发](#七周七并发)
  - [锁模型](#锁模型)
    - [对资源访问互斥 -> 竞态条件 | 死锁](#对资源访问互斥---竞态条件--死锁)
  - [函数式编程](#函数式编程)
  - [资料](#资料)

------

## 锁模型

*线程与锁模型其实是对底层硬件运行过程的形式化。这种形式化既是该模型最大的优点，也是它最大的缺点。*

### 对资源访问互斥 -> 竞态条件 | 死锁

* 对共享变量的所有访问都需要同步化
* 读线程和写线程都需要同步化
* 按照约定的全局顺序来获取多把锁
* 当持有锁时避免调用外星方法
* 持有锁的时间应尽能短
* 在线程获取锁时中断它--ReentrantLock.lockInterruptibly
* 设置线程获取锁的超时时间--tryLock
* 按任意顺序获取和释放锁锁--交替锁
* 用条件变量等待某个条件变为真--条件变量， 注意:虚假唤醒（spurious wakeup）问题
* 使用原子变量避免锁的使用
* 使用线程池，而不直接创建线程
* 使用CopyOnWriteArrayList让监听器相关的代码更简单高效
* 使用ArrayBlockingQueue让生产者和消费者之间高效协作
* ConcurrentHashMap提供了更好的并发访问

## 函数式编程

* 用map或mapcat对一个序列的每个元素进行映射
* 用序列的懒加载特性来处理较大的序列，甚至无穷序列
* 用reduce将序列化简为一个值
* 用fold对reduce进行并行化


## 资料
* 非公平锁与公平锁: [https://www.jianshu.com/p/f584799f1c77](https://www.jianshu.com/p/f584799f1c77)
* 虚假唤醒（spurious wakeup）[https://www.jianshu.com/p/0eff666a4875](https://www.jianshu.com/p/0eff666a4875)
* Fork-join模型[https://zh.wikipedia.org/wiki/Fork-join%E6%A8%A1%E5%9E%8B](https://zh.wikipedia.org/wiki/Fork-join%E6%A8%A1%E5%9E%8B)
* 阿姆达尔定律: [https://zh.wikipedia.org/wiki/%E9%98%BF%E5%A7%86%E8%BE%BE%E5%B0%94%E5%AE%9A%E5%BE%8B](https://zh.wikipedia.org/wiki/%E9%98%BF%E5%A7%86%E8%BE%BE%E5%B0%94%E5%AE%9A%E5%BE%8B)
