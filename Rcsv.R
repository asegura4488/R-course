
library(readr)

evfile="TEMPST.csv"
names <- c('N/A','Year','Month','Temperature')


df<-read.csv(evfile, header = TRUE, sep=",") 

print(df)