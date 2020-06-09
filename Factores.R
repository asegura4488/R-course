
print('--- Runnnig ---')

tallas <- c('m','l','m','M','s','M','M','S','l','l')

fac_tallas <- factor(tallas)

# levels

lev_tallas <- levels(fac_tallas)
print(lev_tallas) 


fac1_tallas <- factor(tallas, ordered=TRUE, levels=c("l","m","M","s","S"),labels=c("s","S","m","M","l"))
print(fac1_tallas)


pdf("PlotFactor.pdf")

plot(fac1_tallas, main='Factors', xlab='Tallas', ylab='Frecuencies')

dev.off()