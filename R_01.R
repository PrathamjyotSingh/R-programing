library(stringi)
getwd()
randomstring<-stri_rand_strings(1000,5)
write.csv(randomstring,file = "sample1")