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

for (i in 1:ncol(dataset)) {
  dataset[is.na(dataset[, i]), i] <- mean(dataset[, i], na.rm = TRUE)
}

# Print the dataset
print(dataset)

# Find the Pearson correlation among all the columns and plot heat map

library(plotly)
fig <- plot_ly(data.frame(correlation), x=100, y=30, z=correlation, type="heatmap")
fig <- fig %>% layout(title="Correlation Heatmap")
fig

