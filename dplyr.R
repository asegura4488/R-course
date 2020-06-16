library('readr')
library('dplyr')
library('tidyverse')

evfile="TEMPST.csv"

df <-read.csv(evfile, header = TRUE, sep=",")

#df1 <- df %>% filter(TEMP > 15., AÑO > 2015)  
df1 <- df %>% filter(AÑO == 2016)  


#print(df)
print(df1)

counting <- df %>% filter(AÑO == 2016) %>% summarise(n())
max_temp <- df %>% filter(AÑO == 2016) %>% summarise(max(TEMP))

print(counting)
print(max_temp)

# agrupar por mes
df %>% 
	group_by(MES) %>%
	summarise(mean_value = mean(TEMP))
