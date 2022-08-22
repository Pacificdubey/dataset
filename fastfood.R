suppressPackageStartupMessages(library(openintro))
suppressPackageStartupMessages(library(tidyverse))

#load dataaset
fastfood <- openintro::fastfood

# Q1 highest calories ib between chick-fill-a and burger king
Q1 <- fastfood %>% filter(restaurant %in% c("Chick Fil-A","Burger King")) %>%
     arrange(desc(calories)) %>%
  subset(select = c("item")) %>% 
  head(1) %>% unlist(use.names = FALSE)

print(Q1)

# Q2 mean sugar amount from subway
Q2 <- fastfood %>% filter(restaurant %in% c("Subway")) %>%
       summarise(Mean_Sugar_Amt = mean(sugar)) %>% unlist(use.names = FALSE)

print(Q2)

# Q3 mean calories of taco bell
Q3 <- fastfood %>% filter(restaurant %in% c("Taco Bell")) %>%
  summarise(Mean_calories = mean(calories)) %>% unlist(use.names = FALSE)

print(Q3)


# Q4 top 3restaurant by fatXsugar
Q4 <- fastfood %>% mutate(fatXsugar = total_fat*sugar) %>%
  subset(select = c("restaurant","item", "fatXsugar"))  %>%
  arrange(desc(fatXsugar)) %>%
  head(3)

print(Q4)








