
library(plyr)
print('--- Runnnig ---')

tallas <- c('m','l','m','M','s','M','M','S','l','l')

# factor
fac_tallas <- factor(tallas)
fac_tallas <- revalue(fac_tallas, c('M'='m', 'S'='s'))

# levels
levels_ta <- levels(fac_tallas)
print(levels_ta)

#Ordenar de s a l 
fac_tallas <- factor(fac_tallas, 
	ordered = TRUE,
	levels=c('l','m','s'),
	labels=c('s','m','l'))

print(levels(fac_tallas))

pdf("PlotFactor.pdf")
plot(fac_tallas, main='Factors', xlab='Tallas', ylab='Frecuencies')
dev.off()