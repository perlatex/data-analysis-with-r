library(tidyverse)

df <-  tibble::tribble(
  ~x, ~y,     ~sex, ~type,
   1,  6,   "male",   "a",
   2,  9,   "male",   "a",
   3,  2, "female",   "a",
   4,  5, "female",   "a"
  )

# 关于映射和设置
# 映射：看变量中有多少类别
# 设置：比较粗狂，大家都一样的颜色


# `aes(color = sex)`，这里变量sex有两个类别("male"和"female")，因此颜色应该是2种
df %>% 
  ggplot(aes(x = x, y = y, color = sex)) +
  geom_point()




# `aes(color = type)`，这里变量type只有一个类别("a")， 所以颜色就应该是1种(红橙黄绿青蓝紫中的第一个)
df %>% 
  ggplot(aes(x = x, y = y, color = type)) +
  geom_point()




# 也就说，映射给color的变量只有一个类别，那么对应的颜色也就只有1种，
# 所以，如下写法是上面代码的一种等价写法
df %>% 
  ggplot(aes(x = x, y = y, color = "a")) +
  geom_point()




# 事实上，"a" 换成 "b" 也是一样的
df %>% 
  ggplot(aes(x = x, y = y, color = "b")) +
  geom_point()

# 你懂了？