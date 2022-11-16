# 组合数学

------

- [组合数学](#组合数学)
  - [排列与组合](#排列与组合)
    - [加法原理](#加法原理)
    - [乘法原理](#乘法原理)
    - [减法原理](#减法原理)
    - [除法原理](#除法原理)

------

组合数学所关心的问题就是把某个集合中的对象排列成某种模式，使其满足一些指定的规则。下面时两种反复出现的通用问题：
- 排列的存在性。当我们想排列一个集合的对象使其满足特定条件时，这样的排列是否存在
- 排列的列举和分类。当指定的排列可行时，我们需要计数和分类不同类型的排列

组合数学是研究离散构造的存在、计数、分析和优化等问题的一门学科

例子：棋盘的完美覆盖、幻方、四色问题、36军官问题、最短路径问题、相互重叠的圆、Nim游戏


## 排列与组合

### 加法原理

$$
|S|=\left|S_{1}\right|+\left|S_{2}\right|+\cdots+\left|S_{m}\right|
$$

### 乘法原理

$$
|S|= p \times q
$$


### 减法原理

$$
|A|= |U| - |\overline{A}|
$$

### 除法原理

$$
k = \frac{ |S| }{在一个部分中的对象数目} 
$$

定理2.2.1

$$
P(n, r)=\frac{n !}{(n-r) !}
$$


定理2.3.1

$$
P(n, r) = r !\left(\begin{array}{l}
n \\
r
\end{array}\right) 
$$

因此

$$
\left(\begin{array}{l}
n \\
r
\end{array}\right) =
\frac{n !}{r !(n-r) !}
$$

推论2.3.2

$$
\left(\begin{array}{l}
n \\
r
\end{array}\right) =
\left(\begin{array}{l}
n \\
n - r
\end{array}\right)
$$

定理2.3.3(帕斯卡公式)

$$
\left(\begin{array}{l}
n \\
k
\end{array}\right) = 
\left(\begin{array}{l}
n-1 \\ 
k
\end{array}\right) + 
\left(\begin{array}{l}
n-1 \\
k-1
\end{array}\right)
$$

定理2.3.4

$$
\left(\begin{array}{l}
n \\
0
\end{array}\right)+\left(\begin{array}{l}
n \\
1
\end{array}\right)+\left(\begin{array}{l}
n \\
2
\end{array}\right)+\cdots+\left(\begin{array}{l}
n \\
n
\end{array}\right)=2^{n}
$$

定理2.4.1

设S是有k种不同类型对象的多重集合，每一个元素都有无限重复数。那么，S的r排列的数目是

$$k^{r}$$

定理2.4.2

设S是多重集合，它有k种不同类型的对象，且每一种类型的有限重复数分别是

$$n_{1}, n_{2},\cdots, n_{k}$$

设S的大小为

$$n = n_{1} + n_{2} +\cdots+ n_{k}$$

则S的排列数目等于

$$
\frac{n !}{n_{1}!n_{2}!\cdots n_{k}!}
$$

定理2.5.1

设S是有k种类型对象的多重集合，每种元素均具有无线的重复数。那么S的r组合的个数等于

$$
\left(\begin{array}{l}
r + k -1 \\
r
\end{array}\right) = \left(\begin{array}{l}
r + k -1 \\
k - 1
\end{array}\right)
$$

