Age <- c(30.,25.,50.,75.,8.,0.,1.,15.)

pdf("plot.pdf")

print("--- Running plot ---")

plot(Age, main='Ages', xlab='Position', ylab='Age')
dev.off()