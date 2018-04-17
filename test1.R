library(tidyverse)
# 取数 ----------------------------------------------------------------------

milk <- readr::read_csv("https://s3-ap-southeast-1.amazonaws.com/tmasjcdownloadsetc/milk.csv")

# 题一 ----------------------------------------------------------------------

milk %>% 
  ggplot(aes(protein)) + 
  stat_density(adjust = 0.7, alpha = 0.7) +
  facet_wrap( ~ Diet)

milk %>% 
  ggplot(aes(protein, fill = Diet)) + 
  stat_density(adjust = 0.7, alpha = 0.7)

# 题二 ----------------------------------------------------------------------

milk %>% 
  ggplot(aes(Time, protein)) + 
  stat_summary()

milk %>% 
  ggplot(aes(Time, protein)) + 
  geom_point() + 
  stat_summary(fun.y = "mean", colour = "red", size = 5, geom = "point")


# 题三 ----------------------------------------------------------------------

milk %>% 
  ggplot(aes(Time, protein, col = Diet)) + 
  geom_point() + 
  stat_smooth()

milk %>% 
  ggplot(aes(Diet, protein)) + 
  geom_boxplot()
