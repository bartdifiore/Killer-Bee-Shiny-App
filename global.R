
df <- read.table("data/trial.csv", header = T, sep = ",")

df <- df %>% group_by(first.name, last.name, overall) %>%
  gather(excersize, fitnesslevel, -date, -first.name, -last.name, -overall) %>%
  mutate(name = paste(first.name, last.name, sep = ' '))



















































