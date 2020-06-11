library(ggplot2)

print("--- Running ---")

file <- 'TEMPST.csv'
df<-read.csv(file, header = TRUE, sep = ",")

Temp <- df$TEMP
#print(Temp)

pdf("Temperatura.pdf")
hist(Temp, 
	breaks=seq(10,20,0.2),
	xlab='Temperatura', 
	ylab='Frecuencia', 
	main='',
	col='blue',
	border='black')
dev.off()

pdf("gplotTemp.pdf")
ggplot(	data = df,
		mapping = aes(x=TEMP, fill=factor(MES))) +
		geom_histogram(bins = 50, position = 'identity', alpha = 0.8)+
		labs(title = 'Temperatura por mes', fill='MES', x='Temperatura', y='Conteo')
dev.off()