
set.seed(123)
print("--- Running histogram ---")

pdf("Histogram.pdf")

distribution <- rnorm(n = 100000, mean = 0, sd = 1)
hist(distribution, col='blue', breaks=50, ylab='Frecuencia', main='Histo example')

dev.off()
