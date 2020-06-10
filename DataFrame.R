
print('--- Running ---')

Nombre <- c('Alejandro', 'Monica', 'Paula')
Edad   <- c( 32., 29., 26.)
Sexo   <- c('Masculino','Femenino','Femenino')

df <- data.frame(	Nombre,
					Edad,
					Sexo)

#print(df)
names(df) <- c('Nombre','Edad','Sexo')
print(df)

# selecting a single element
x <- df[2,2]
print(x)
# selecting a column

#Sexo_ <- df[,3]
Sexo_ <- df$Sexo
print(Sexo_)

# ordering by age
index <- order(df$Edad, decreasing=FALSE)
print(index)

Newdf <- df[index,]
print(Newdf)