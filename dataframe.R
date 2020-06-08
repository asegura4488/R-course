Npoints <- 10000

print(' --- Running for ---- ')
print(Npoints)

x <- c(0:(Npoints-1))
y <- rnorm(Npoints,0,1)
z <- rep( c('A'), c(Npoints) )

df = data.frame(x,y,z)
#print(df)

getwd()

pdf(file = "Plot.pdf")
plot(df$x, df$y, xlab="Points", ylab="Random_Points")
dev.off()


for(i in 1:4){
	print(1:i)
}