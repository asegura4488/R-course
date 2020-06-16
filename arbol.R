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
rpart.plot(arbol, extra = 106)
dev.off()

predict <- predict(arbol, type = 'class')
titanic_predict <- cbind(titanic_train, predict)
print(titanic_predict)

test <- predict(object = arbol,
				newdata = data.frame(Age = 10, Sex = 'female'),
				type = 'class')
print(test)				