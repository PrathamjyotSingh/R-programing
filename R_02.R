m1 <- matrix(runif(300, min=1, max=200),100,3)
write.csv(m1, file="NewDataset1.csv", row.names=FALSE)