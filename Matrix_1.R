
print('--- Running ---')

city1 <- c(20,20,16,17,17,22,16,2 ,6 ,18)
city2 <- c(11,13,11,8 ,12,11,12,8, 5 ,14)
city3 <- c(18,15,15,15,16,17,15,13,11,10)

# Creating matrix from the vectors

total <- matrix( c(city1,city2,city3),
				 nrow = 10, ncol = 3 )

# Rename the columns

colnames(total) <- c('city1','city2','city3')
# No commonly used rownames(total) <- c( ... ) 

#total <- total * 5

print(total)

#Selecting elements
print('Element 3,2')

x <- total[3,2] # or
x <- total[3,'city2']
print(x)

# Take a block from the original matrix
block1 = total[ c(2,3,4,5,10) ,  c('city1','city2')]
print( block1 )

# selecting a whole field
City = total[,'city1']
print(City)
