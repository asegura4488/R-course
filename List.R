print('--- Running ---')

Nombre <- c('Alejandro', 'Monica', 'Paula')
Edad   <- c( 32., 29., 26.)

df <- data.frame(Nombre, Edad)
names(df) <- c('Nombre','Edad')

df <- as.matrix(df)
print(df)

mylist <- list(Nombre, df)
names(mylist) <- c('Nombre','Matrix_Nombre_Edad')
print(mylist)


print(mylist[['Nombre']]) 
print(mylist[['Nombre']][1])

Edad = mylist[['Matrix_Nombre_Edad']][,2]
print(Edad)

# adding an element to de list

mylist[['Edad']] <- Edad
print(mylist)

# deleting an elemnto to de list
mylist[['Edad']] <- NULL
print(mylist)