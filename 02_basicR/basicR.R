## 基本运算

1 + 2
5 - 3
3 * 4
12 / 3
2^3
(2 + 4) / 3



## 对象

x <- 5
x

x <- 6
x


typeof(x) 
length(x)





## 向量就像冰糖葫芦

x <- c(3, 
       4, 
       5, 
       6, 
       7)

x <- c(3, 4, 5, 6, 7)
x

### 聚合成新向量
low      <- c(1, 2, 3)
high     <- c(4, 5, 6)
sequence <- c(low, high)
sequence


### 命名向量(named vector)
x <- c('a' = 5, 'b' = 6, 'c' = 7, 'd' = 8)
x



### 单个元素的向量
x <- c(6, 7, 8, 9)
x <- c(6)
x <- 6



### 两个基本属性(类型与长度)
x <- c(3, 4, 5, 6, 7)
typeof(x)
length(x)



## 数值型向量

x <- c(123, -0.125)    
x <- c(3e+06, 1.23e2)  



s1 <- seq(from = 0, to = 10, by = 0.5)
s1


s2 <- rep(x = c(0, 1), times = 3)
s2


s3 <- rep(x = c(0, 1), each = 3)
s3


s4 <- 0:10  # Colon operator (with by = 1):
s4


s5 <- 10:1
s5





## 字符串型向量

x <- c("a", "b", "c")    
x <- c('Alice', 'Bob', 'Charlie', 'Dave')    
x <- c("hello", "baby", "I love you!") 



x1 <- c("1", "2", "3")
x2 <- c(1, 2, 3)




## 逻辑型向量

x <- c(TRUE, TRUE, FALSE, FALSE)
x <- c(T, T, F, F)               # Equivalent, but not recommended


x1 <- c(TRUE, FALSE)             # logical
x2 <- c("TRUE", "FALSE")         # character




## 因子型向量

four_seasons <- c("spring", "summer", "autumn", "winter")
four_seasons

four_seasons_factor <- factor(four_seasons)
four_seasons_factor



four_seasons <- c("spring", "summer", "autumn", "winter")

four_seasons_factor <- factor(
  four_seasons, 
  levels = c("summer", "winter", "spring", "autumn")
)
four_seasons_factor






# 数据结构 

## 矩阵

m <- matrix(
  c(2, 4, 3, 1, 5, 7),
  nrow = 2, 
  ncol = 3
)
m


matrix(
  c(2, 4, 3, 1, 5, 7),
  nrow = 2, 
  ncol = 3,
  byrow = TRUE
)

class(m)
length(m)
dim(m)





## 列表

list1 <- list(
  a = c(5, 10),
  b = c("I", "love", "R", "language", "!"),
  c = c(TRUE, TRUE, FALSE, TRUE)
)
list1

class(list1)
length(list1)




## 数据框

df <- data.frame(
  name      = c("Alice", "Bob", "Carl", "Dave"),
  age       = c(23, 34, 23, 25),
  marriage  = c(TRUE, FALSE, TRUE, FALSE),
  color     = c("red", "blue", "orange", "purple")
)
df


class(df) 
nrow(df)
ncol(df)

