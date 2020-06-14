library(ggplot2)
library(readr)

print("--- Running ---")
evfile <- "TEMPST.csv"

df<-read.csv(evfile, header = TRUE, sep=",") 


pdf("gplot.pdf")

ggplot( data = df, 
		mapping=aes(x=TEMP, 
					y=MES, 
					color=factor(AÑO))) +
geom_point(size = 3.) 
#geom_smooth() 
# For lineal regression
#geom_smooth(method='lm')


print(levels(factor(df$MES)))



#Elegir un tipo de data
ggplot(	data = df[df$MES == '3',],
 		mapping = aes(x=AÑO, y=TEMP))+
 		geom_line()    

ggplot(	data = df,
 		mapping = aes(x=1:155, y=TEMP, color = factor(MES)))+
 		geom_line()   

ggplot(	data = df,
		mapping = aes(x=MES, y=TEMP, fill=factor(MES)))+
		geom_boxplot()+
		geom_jitter()


dev.off()