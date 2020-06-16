library('tidyverse')
library('titanic')
library('rpart')
library('rpart.plot')
library('RColorBrewer')

df <- titanic_train
#print(df)


arbol <- rpart(
		formula = Survived ~ Sex + Age,
		data = titanic_train,
		method = 'class' )

pdf('TreepLot.pdf')

predict <- predict(arbol, type = 'class')
titanic_predict <- cbind(titanic_train, predict)

print(titanic_predict)
fancyRpartPlot(arbol)
dev.off()

test <- predict(object = arbol,
				newdata = data.frame(Age = 4, Sex = 'male'),
				type = 'class')
print(test)				