A <- c(12, 22, 35, 14, 25, 17)
B <- c(31, 26, 37, 43, 65, 38)
C <- c(25, 65, 34, 15, 65, 17)

Data <- data.frame(A, B, C)
print(Data)

Data <- as.matrix(Data)
print(Data)

pdf('BarPlot.pdf')
barplot(Data, 
	ylim = c(0,250), ylab = 'Sum of frecuencies', xlab = 'Tipography', 
	cex.axis = 0.8, cex.names = 0.8)
dev.off()