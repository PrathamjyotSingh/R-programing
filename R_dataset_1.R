# Create a random dataset of 100 rows and 30 columns. All the values are defined between [1,200]

m1 <- matrix(runif(300, min=1, max=200),100,3)
write.csv(m1, file="NewDataset1.csv", row.names=FALSE)

# Replace all the values with NA in the dataset defined between [10, 60]

m1[m1>=10 & m1<=60]<-NA
print(m1)

# Print the count of number rows having missing values

count_missing_values <- sum(is.na(m1))
print(count_missing_values)

# Replace all the NA values with the average of the column value

m2<-na.omit(m1)
col_mea<-colMeans(m2)
print(col_mea)
m1[is.na(m1)]<-col_mea
