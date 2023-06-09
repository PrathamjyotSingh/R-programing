m1 <- matrix(runif(300, min=1, max=200),100,3)
write.csv(m1, file="NewDataset1.csv", row.names=FALSE)
m1[m1>=10 & m1<=60]<-NA
print(m1)
count_missing_values <- sum(is.na(m1))
print(count_missing_values)
