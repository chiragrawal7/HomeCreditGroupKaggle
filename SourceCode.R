

#Installing the required packages
list.of.packages<-c("randomForest")
new.packages<-list.of.packages[!(list.of.packages %in% install.packages()[,"Package"])]
if(length(new.packages)) installed.packages(new.packages)
   

#Calling up the libraries
library(randomForest)


#Reading the train data

#Reading the data
traindata<-read.csv("C:/Users/chiragrawal/Desktop/Kaggle/Home Risk Default/Data/application_train.csv")
View(traindata)
str(traindata)

#spliting the train data to build and test the model





