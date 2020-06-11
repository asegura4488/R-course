library(ggplot2)

print("--- Running ---")


x <- c('2010', '2011', '2012','2013')
y <- c(11.,12.,13.,14.)

factores <- factor(x)

pdf("plot.pdf")
plot(	x,
		y, 
		main='', 
		xlab='Year', 
		ylab='Score',
		col='cornflowerblue',
		pch=16,
		panel.first=grid())

dev.off()


df <- data.frame(x,y)

# plot using layers

pdf("gplot.pdf")
ggplot(	data = df,
	   	mapping=aes(x=x,y=y) ) +
       	geom_point() +
       	labs(title = 'test')
dev.off()
