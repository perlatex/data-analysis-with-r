library(dplyr)

# data
df <- tibble::tribble(
    ~name,      ~type,  ~score,
  "Alice",  "english",   80,
  "Alice",     "math",   60,
    "Bob",  "english",   70,
    "Bob",     "math",   69,
  "Carol",  "english",   80,
  "Carol",     "math",   90
)
df


# mutate()
df %>%
  mutate(extra = c(2, 5, 9, 8, 5, 6)) %>%
  mutate(total = score + extra)




# save to new data.frame
df <- df %>%
  mutate(extra = c(2, 5, 9, 8, 5, 6)) %>%
  mutate(total = score + extra)
df




# select()
df %>%
  select(name, type, score, total)

df %>%
  select(-extra)




# filter()
df %>%
  filter(score >= 75)


df %>%
  filter(score > mean(score))




# summarise()
df %>%
  summarise(
    mean_score = mean(score)
  )



# group_by() + summarise()
df %>%
  group_by(name) %>%
  summarise(
    mean_score = mean(score)
  )


df %>%
  group_by(name) %>%
  mutate(
    mean_score = mean(score),
    median_score = median(score)
  )




# left_join()
df1 <- df %>%
  group_by(name) %>%
  summarise(
    mean_score = mean(total)
  )
df1


df2 <- tibble(
  name = c("Alice", "Bob", "Dave"),
  age = c(12, 13, 14)
)
df2


left_join(df1, df2, by = "name")

df1 %>% left_join(df2, by = "name")




# right_join()
df1 %>% right_join(df2, by = "name")



# full_join()
df1 %>% full_join(df2, by = "name")
