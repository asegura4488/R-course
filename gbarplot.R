library(ggplot2)

print("--- Running ---")

file <- 'TEMPST.csv'
df<-read.csv(file, header = TRUE, sep = ",")

tb1 <- table(df$MES)
print(tb1)

pdf("BarTemp.pdf")
barplot(tb1, 
		main='test',
		col='blue',
		border='red',
		ylab='Frecuencies',
		legend=TRUE,
		horiz = FALSE)
dev.off()

pdf("gBarTemp.pdf")
ggplot(	data = df,
		mapping = aes(x = factor(MES)))+
		geom_bar()

p <- ggplot(data = df,
			mapping = aes(x = factor(MES), fill = factor(AÑO)) )

# stacked bar chart
p + geom_bar(position = 'stack', stat = 'count')
# stacked + percent barchart
p + geom_bar(position = 'fill', stat = 'count')
# dodge bar chart
p + geom_bar(position = 'dodge', stat = 'count')


dev.off()